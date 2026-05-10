package software.amazon.smithy.lua.aws.codegen;

import java.util.List;
import software.amazon.smithy.lua.codegen.ConfigResolver;
import software.amazon.smithy.lua.codegen.LuaContext;
import software.amazon.smithy.lua.codegen.LuaIntegration;

/**
 * AWS SDK integration that registers the default credential chain resolver.
 */
public final class AwsSdkIntegration implements LuaIntegration {

    @Override
    public List<ConfigResolver> getConfigResolvers(LuaContext context) {
        return List.of(
                new ConfigResolver(
                        "aws.sdk.runtime.sdk_defaults",
                        "sdk_defaults",
                        "sdk_defaults.resolve_identity_resolver(cfg)"
                )
        );
    }
}
