package software.amazon.smithy.lua.aws.codegen.service.s3;

import software.amazon.smithy.lua.aws.codegen.service.EndpointAuthSchemeResolver;
import software.amazon.smithy.model.shapes.ShapeId;

/**
 * Endpoint-driven auth scheme resolver for S3.
 *
 * <p>S3 endpoint rules can return different auth schemes (e.g. sigv4a for MRAP).
 */
public final class S3EndpointAuthSchemeResolver extends EndpointAuthSchemeResolver {

    @Override
    public boolean forService(ShapeId service) {
        return service.equals(ShapeId.from("com.amazonaws.s3#AmazonS3"));
    }
}
