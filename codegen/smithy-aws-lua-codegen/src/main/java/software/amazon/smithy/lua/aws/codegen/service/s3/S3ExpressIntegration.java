package software.amazon.smithy.lua.aws.codegen.service.s3;

import java.util.List;
import software.amazon.smithy.lua.codegen.ConfigResolver;
import software.amazon.smithy.lua.codegen.LuaContext;
import software.amazon.smithy.lua.codegen.LuaIntegration;
import software.amazon.smithy.model.shapes.ShapeId;

/**
 * S3Express auth integration: registers the sigv4-s3express auth scheme
 * and wires the S3Express identity resolver post-construction.
 */
public final class S3ExpressIntegration implements LuaIntegration {

    @Override
    public boolean forService(ShapeId service) {
        return service.equals(ShapeId.from("com.amazonaws.s3#AmazonS3"));
    }

    @Override
    public List<ConfigResolver> getConfigResolvers(LuaContext context) {
        return List.of(
                new ConfigResolver(
                        "aws.s3express_defaults",
                        "s3express_defaults",
                        "s3express_defaults.resolve(cfg)"
                )
        );
    }

    @Override
    public List<ConfigResolver> getConfigFinalizers(LuaContext context) {
        return List.of(
                new ConfigResolver(
                        "aws.s3express_defaults",
                        "s3express_defaults",
                        "s3express_defaults.finalize(cfg, self)"
                )
        );
    }
}
