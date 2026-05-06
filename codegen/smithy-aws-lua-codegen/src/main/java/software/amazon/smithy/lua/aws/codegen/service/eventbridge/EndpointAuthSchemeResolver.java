package software.amazon.smithy.lua.aws.codegen.service.eventbridge;

import java.util.List;
import software.amazon.smithy.lua.codegen.ConfigResolver;
import software.amazon.smithy.lua.codegen.LuaContext;
import software.amazon.smithy.lua.codegen.LuaIntegration;
import software.amazon.smithy.model.shapes.ShapeId;

/**
 * Replaces the default auth scheme resolver with an endpoint-driven one for EventBridge.
 *
 * <p>EventBridge endpoint rules can return sigv4a for global endpoints.
 */
public final class EndpointAuthSchemeResolver implements LuaIntegration {
    private static final ShapeId EVENTBRIDGE = ShapeId.from("com.amazonaws.eventbridge#AWSEvents");

    @Override
    public boolean forService(ShapeId service) {
        return service.equals(EVENTBRIDGE);
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
