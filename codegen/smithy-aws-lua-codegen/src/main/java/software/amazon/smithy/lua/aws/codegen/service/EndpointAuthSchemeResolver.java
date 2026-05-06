package software.amazon.smithy.lua.aws.codegen.service;

import java.util.List;
import software.amazon.smithy.lua.codegen.ConfigResolver;
import software.amazon.smithy.lua.codegen.LuaContext;
import software.amazon.smithy.lua.codegen.LuaIntegration;

/**
 * Abstract base for services whose endpoint rules can return auth schemes
 * (e.g. sigv4a) that override the modeled operation auth schemes.
 *
 * <p>Subclasses only need to implement {@code forService()}.
 */
public abstract class EndpointAuthSchemeResolver implements LuaIntegration {

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
