package software.amazon.smithy.lua.aws.codegen.service.s3;

import java.util.List;
import software.amazon.smithy.lua.codegen.ConfigResolver;
import software.amazon.smithy.lua.codegen.LuaContext;
import software.amazon.smithy.lua.codegen.LuaIntegration;
import software.amazon.smithy.model.shapes.ShapeId;

/**
 * Replaces the default auth scheme resolver with an endpoint-driven one for S3.
 *
 * <p>S3 endpoint rules can return different auth schemes (e.g. sigv4a for MRAP)
 * that override the modeled operation auth schemes entirely.
 */
public final class EndpointAuthSchemeResolver implements LuaIntegration {
    private static final ShapeId S3 = ShapeId.from("com.amazonaws.s3#AmazonS3");

    @Override
    public boolean forService(ShapeId service) {
        return service.equals(S3);
    }

    @Override
    public List<ConfigResolver> getConfigResolvers(LuaContext context) {
        return List.of(
                new ConfigResolver(
                        "smithy.auth.endpoint_auth_resolver",
                        "endpoint_auth_resolver",
                        "cfg.auth_scheme_resolver = endpoint_auth_resolver.new(cfg)"
                )
        );
    }
}
