package software.amazon.smithy.lua.aws.codegen.service.eventbridge;

import software.amazon.smithy.lua.aws.codegen.service.EndpointAuthSchemeResolver;
import software.amazon.smithy.model.shapes.ShapeId;

/**
 * Endpoint-driven auth scheme resolver for EventBridge.
 *
 * <p>EventBridge endpoint rules can return sigv4a for global endpoints.
 */
public final class EventBridgeEndpointAuthSchemeResolver extends EndpointAuthSchemeResolver {

    @Override
    public boolean forService(ShapeId service) {
        return service.equals(ShapeId.from("com.amazonaws.eventbridge#AWSEvents"));
    }
}
