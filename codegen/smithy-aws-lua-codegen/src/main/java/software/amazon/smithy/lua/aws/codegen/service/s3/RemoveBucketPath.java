package software.amazon.smithy.lua.aws.codegen.service.s3;

import java.util.regex.Pattern;
import software.amazon.smithy.lua.codegen.LuaIntegration;
import software.amazon.smithy.lua.codegen.LuaSettings;
import software.amazon.smithy.model.Model;
import software.amazon.smithy.model.pattern.UriPattern;
import software.amazon.smithy.model.shapes.ShapeId;
import software.amazon.smithy.model.traits.HttpTrait;
import software.amazon.smithy.model.transform.ModelTransformer;

/**
 * Removes {@code {Bucket}/} from S3 HTTP URI patterns.
 *
 * <p>S3 endpoint rules already place the bucket in the correct location
 * (hostname for virtual-host, URL path for path-style). The modeled URI
 * includes the bucket label which would cause it to appear twice.
 */
public final class RemoveBucketPath implements LuaIntegration {
    private static final ShapeId S3 = ShapeId.from("com.amazonaws.s3#AmazonS3");
    private static final Pattern BUCKET_PATTERN = Pattern.compile("\\{Bucket}/?");

    @Override
    public boolean forService(ShapeId service) {
        return service.equals(S3);
    }

    @Override
    public Model preprocessModel(Model model, LuaSettings settings) {
        if (!settings.service().equals(S3)) {
            return model;
        }
        return ModelTransformer.create().mapTraits(model, (shape, trait) -> {
            if (trait instanceof HttpTrait httpTrait) {
                var filtered = BUCKET_PATTERN.matcher(httpTrait.getUri().toString()).replaceAll("");
                return httpTrait.toBuilder()
                        .uri(UriPattern.parse(filtered))
                        .build();
            }
            return trait;
        });
    }
}
