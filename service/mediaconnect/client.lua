local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("mediaconnect.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("mediaconnect.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "MediaConnect"
    cfg.signing_name = "mediaconnect"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:addBridgeOutputs(input, options)
    return self:invokeOperation(input, {
        name = "AddBridgeOutputs",
        input_schema = types.AddBridgeOutputsInput,
        output_schema = types.AddBridgeOutputsOutput,
        http_method = "POST",
        http_path = "/v1/bridges/{BridgeArn}/outputs",
    }, options)
end

function Client:addBridgeSources(input, options)
    return self:invokeOperation(input, {
        name = "AddBridgeSources",
        input_schema = types.AddBridgeSourcesInput,
        output_schema = types.AddBridgeSourcesOutput,
        http_method = "POST",
        http_path = "/v1/bridges/{BridgeArn}/sources",
    }, options)
end

function Client:addFlowMediaStreams(input, options)
    return self:invokeOperation(input, {
        name = "AddFlowMediaStreams",
        input_schema = types.AddFlowMediaStreamsInput,
        output_schema = types.AddFlowMediaStreamsOutput,
        http_method = "POST",
        http_path = "/v1/flows/{FlowArn}/mediaStreams",
    }, options)
end

function Client:addFlowOutputs(input, options)
    return self:invokeOperation(input, {
        name = "AddFlowOutputs",
        input_schema = types.AddFlowOutputsInput,
        output_schema = types.AddFlowOutputsOutput,
        http_method = "POST",
        http_path = "/v1/flows/{FlowArn}/outputs",
    }, options)
end

function Client:addFlowSources(input, options)
    return self:invokeOperation(input, {
        name = "AddFlowSources",
        input_schema = types.AddFlowSourcesInput,
        output_schema = types.AddFlowSourcesOutput,
        http_method = "POST",
        http_path = "/v1/flows/{FlowArn}/source",
    }, options)
end

function Client:addFlowVpcInterfaces(input, options)
    return self:invokeOperation(input, {
        name = "AddFlowVpcInterfaces",
        input_schema = types.AddFlowVpcInterfacesInput,
        output_schema = types.AddFlowVpcInterfacesOutput,
        http_method = "POST",
        http_path = "/v1/flows/{FlowArn}/vpcInterfaces",
    }, options)
end

function Client:batchGetRouterInput(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetRouterInput",
        input_schema = types.BatchGetRouterInputInput,
        output_schema = types.BatchGetRouterInputOutput,
        http_method = "GET",
        http_path = "/v1/routerInputs",
    }, options)
end

function Client:batchGetRouterNetworkInterface(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetRouterNetworkInterface",
        input_schema = types.BatchGetRouterNetworkInterfaceInput,
        output_schema = types.BatchGetRouterNetworkInterfaceOutput,
        http_method = "GET",
        http_path = "/v1/routerNetworkInterfaces",
    }, options)
end

function Client:batchGetRouterOutput(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetRouterOutput",
        input_schema = types.BatchGetRouterOutputInput,
        output_schema = types.BatchGetRouterOutputOutput,
        http_method = "GET",
        http_path = "/v1/routerOutputs",
    }, options)
end

function Client:createBridge(input, options)
    return self:invokeOperation(input, {
        name = "CreateBridge",
        input_schema = types.CreateBridgeInput,
        output_schema = types.CreateBridgeOutput,
        http_method = "POST",
        http_path = "/v1/bridges",
    }, options)
end

function Client:createFlow(input, options)
    return self:invokeOperation(input, {
        name = "CreateFlow",
        input_schema = types.CreateFlowInput,
        output_schema = types.CreateFlowOutput,
        http_method = "POST",
        http_path = "/v1/flows",
    }, options)
end

function Client:createGateway(input, options)
    return self:invokeOperation(input, {
        name = "CreateGateway",
        input_schema = types.CreateGatewayInput,
        output_schema = types.CreateGatewayOutput,
        http_method = "POST",
        http_path = "/v1/gateways",
    }, options)
end

function Client:createRouterInput(input, options)
    return self:invokeOperation(input, {
        name = "CreateRouterInput",
        input_schema = types.CreateRouterInputInput,
        output_schema = types.CreateRouterInputOutput,
        http_method = "POST",
        http_path = "/v1/routerInput",
    }, options)
end

function Client:createRouterNetworkInterface(input, options)
    return self:invokeOperation(input, {
        name = "CreateRouterNetworkInterface",
        input_schema = types.CreateRouterNetworkInterfaceInput,
        output_schema = types.CreateRouterNetworkInterfaceOutput,
        http_method = "POST",
        http_path = "/v1/routerNetworkInterface",
    }, options)
end

function Client:createRouterOutput(input, options)
    return self:invokeOperation(input, {
        name = "CreateRouterOutput",
        input_schema = types.CreateRouterOutputInput,
        output_schema = types.CreateRouterOutputOutput,
        http_method = "POST",
        http_path = "/v1/routerOutput",
    }, options)
end

function Client:deleteBridge(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBridge",
        input_schema = types.DeleteBridgeInput,
        output_schema = types.DeleteBridgeOutput,
        http_method = "DELETE",
        http_path = "/v1/bridges/{BridgeArn}",
    }, options)
end

function Client:deleteFlow(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFlow",
        input_schema = types.DeleteFlowInput,
        output_schema = types.DeleteFlowOutput,
        http_method = "DELETE",
        http_path = "/v1/flows/{FlowArn}",
    }, options)
end

function Client:deleteGateway(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGateway",
        input_schema = types.DeleteGatewayInput,
        output_schema = types.DeleteGatewayOutput,
        http_method = "DELETE",
        http_path = "/v1/gateways/{GatewayArn}",
    }, options)
end

function Client:deleteRouterInput(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRouterInput",
        input_schema = types.DeleteRouterInputInput,
        output_schema = types.DeleteRouterInputOutput,
        http_method = "DELETE",
        http_path = "/v1/routerInput/{Arn}",
    }, options)
end

function Client:deleteRouterNetworkInterface(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRouterNetworkInterface",
        input_schema = types.DeleteRouterNetworkInterfaceInput,
        output_schema = types.DeleteRouterNetworkInterfaceOutput,
        http_method = "DELETE",
        http_path = "/v1/routerNetworkInterface/{Arn}",
    }, options)
end

function Client:deleteRouterOutput(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRouterOutput",
        input_schema = types.DeleteRouterOutputInput,
        output_schema = types.DeleteRouterOutputOutput,
        http_method = "DELETE",
        http_path = "/v1/routerOutput/{Arn}",
    }, options)
end

function Client:deregisterGatewayInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterGatewayInstance",
        input_schema = types.DeregisterGatewayInstanceInput,
        output_schema = types.DeregisterGatewayInstanceOutput,
        http_method = "DELETE",
        http_path = "/v1/gateway-instances/{GatewayInstanceArn}",
    }, options)
end

function Client:describeBridge(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBridge",
        input_schema = types.DescribeBridgeInput,
        output_schema = types.DescribeBridgeOutput,
        http_method = "GET",
        http_path = "/v1/bridges/{BridgeArn}",
    }, options)
end

function Client:describeFlow(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFlow",
        input_schema = types.DescribeFlowInput,
        output_schema = types.DescribeFlowOutput,
        http_method = "GET",
        http_path = "/v1/flows/{FlowArn}",
    }, options)
end

function Client:describeFlowSourceMetadata(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFlowSourceMetadata",
        input_schema = types.DescribeFlowSourceMetadataInput,
        output_schema = types.DescribeFlowSourceMetadataOutput,
        http_method = "GET",
        http_path = "/v1/flows/{FlowArn}/source-metadata",
    }, options)
end

function Client:describeFlowSourceThumbnail(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFlowSourceThumbnail",
        input_schema = types.DescribeFlowSourceThumbnailInput,
        output_schema = types.DescribeFlowSourceThumbnailOutput,
        http_method = "GET",
        http_path = "/v1/flows/{FlowArn}/source-thumbnail",
    }, options)
end

function Client:describeGateway(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGateway",
        input_schema = types.DescribeGatewayInput,
        output_schema = types.DescribeGatewayOutput,
        http_method = "GET",
        http_path = "/v1/gateways/{GatewayArn}",
    }, options)
end

function Client:describeGatewayInstance(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGatewayInstance",
        input_schema = types.DescribeGatewayInstanceInput,
        output_schema = types.DescribeGatewayInstanceOutput,
        http_method = "GET",
        http_path = "/v1/gateway-instances/{GatewayInstanceArn}",
    }, options)
end

function Client:describeOffering(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOffering",
        input_schema = types.DescribeOfferingInput,
        output_schema = types.DescribeOfferingOutput,
        http_method = "GET",
        http_path = "/v1/offerings/{OfferingArn}",
    }, options)
end

function Client:describeReservation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReservation",
        input_schema = types.DescribeReservationInput,
        output_schema = types.DescribeReservationOutput,
        http_method = "GET",
        http_path = "/v1/reservations/{ReservationArn}",
    }, options)
end

function Client:getRouterInput(input, options)
    return self:invokeOperation(input, {
        name = "GetRouterInput",
        input_schema = types.GetRouterInputInput,
        output_schema = types.GetRouterInputOutput,
        http_method = "GET",
        http_path = "/v1/routerInput/{Arn}",
    }, options)
end

function Client:getRouterInputSourceMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetRouterInputSourceMetadata",
        input_schema = types.GetRouterInputSourceMetadataInput,
        output_schema = types.GetRouterInputSourceMetadataOutput,
        http_method = "GET",
        http_path = "/v1/routerInput/{Arn}/source-metadata",
    }, options)
end

function Client:getRouterInputThumbnail(input, options)
    return self:invokeOperation(input, {
        name = "GetRouterInputThumbnail",
        input_schema = types.GetRouterInputThumbnailInput,
        output_schema = types.GetRouterInputThumbnailOutput,
        http_method = "GET",
        http_path = "/v1/routerInput/{Arn}/thumbnail",
    }, options)
end

function Client:getRouterNetworkInterface(input, options)
    return self:invokeOperation(input, {
        name = "GetRouterNetworkInterface",
        input_schema = types.GetRouterNetworkInterfaceInput,
        output_schema = types.GetRouterNetworkInterfaceOutput,
        http_method = "GET",
        http_path = "/v1/routerNetworkInterface/{Arn}",
    }, options)
end

function Client:getRouterOutput(input, options)
    return self:invokeOperation(input, {
        name = "GetRouterOutput",
        input_schema = types.GetRouterOutputInput,
        output_schema = types.GetRouterOutputOutput,
        http_method = "GET",
        http_path = "/v1/routerOutput/{Arn}",
    }, options)
end

function Client:grantFlowEntitlements(input, options)
    return self:invokeOperation(input, {
        name = "GrantFlowEntitlements",
        input_schema = types.GrantFlowEntitlementsInput,
        output_schema = types.GrantFlowEntitlementsOutput,
        http_method = "POST",
        http_path = "/v1/flows/{FlowArn}/entitlements",
    }, options)
end

function Client:listBridges(input, options)
    return self:invokeOperation(input, {
        name = "ListBridges",
        input_schema = types.ListBridgesInput,
        output_schema = types.ListBridgesOutput,
        http_method = "GET",
        http_path = "/v1/bridges",
    }, options)
end

function Client:listEntitlements(input, options)
    return self:invokeOperation(input, {
        name = "ListEntitlements",
        input_schema = types.ListEntitlementsInput,
        output_schema = types.ListEntitlementsOutput,
        http_method = "GET",
        http_path = "/v1/entitlements",
    }, options)
end

function Client:listFlows(input, options)
    return self:invokeOperation(input, {
        name = "ListFlows",
        input_schema = types.ListFlowsInput,
        output_schema = types.ListFlowsOutput,
        http_method = "GET",
        http_path = "/v1/flows",
    }, options)
end

function Client:listGatewayInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListGatewayInstances",
        input_schema = types.ListGatewayInstancesInput,
        output_schema = types.ListGatewayInstancesOutput,
        http_method = "GET",
        http_path = "/v1/gateway-instances",
    }, options)
end

function Client:listGateways(input, options)
    return self:invokeOperation(input, {
        name = "ListGateways",
        input_schema = types.ListGatewaysInput,
        output_schema = types.ListGatewaysOutput,
        http_method = "GET",
        http_path = "/v1/gateways",
    }, options)
end

function Client:listOfferings(input, options)
    return self:invokeOperation(input, {
        name = "ListOfferings",
        input_schema = types.ListOfferingsInput,
        output_schema = types.ListOfferingsOutput,
        http_method = "GET",
        http_path = "/v1/offerings",
    }, options)
end

function Client:listReservations(input, options)
    return self:invokeOperation(input, {
        name = "ListReservations",
        input_schema = types.ListReservationsInput,
        output_schema = types.ListReservationsOutput,
        http_method = "GET",
        http_path = "/v1/reservations",
    }, options)
end

function Client:listRouterInputs(input, options)
    return self:invokeOperation(input, {
        name = "ListRouterInputs",
        input_schema = types.ListRouterInputsInput,
        output_schema = types.ListRouterInputsOutput,
        http_method = "POST",
        http_path = "/v1/routerInputs",
    }, options)
end

function Client:listRouterNetworkInterfaces(input, options)
    return self:invokeOperation(input, {
        name = "ListRouterNetworkInterfaces",
        input_schema = types.ListRouterNetworkInterfacesInput,
        output_schema = types.ListRouterNetworkInterfacesOutput,
        http_method = "POST",
        http_path = "/v1/routerNetworkInterfaces",
    }, options)
end

function Client:listRouterOutputs(input, options)
    return self:invokeOperation(input, {
        name = "ListRouterOutputs",
        input_schema = types.ListRouterOutputsInput,
        output_schema = types.ListRouterOutputsOutput,
        http_method = "POST",
        http_path = "/v1/routerOutputs",
    }, options)
end

function Client:listTagsForGlobalResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForGlobalResource",
        input_schema = types.ListTagsForGlobalResourceInput,
        output_schema = types.ListTagsForGlobalResourceOutput,
        http_method = "GET",
        http_path = "/tags/global/{ResourceArn}",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:purchaseOffering(input, options)
    return self:invokeOperation(input, {
        name = "PurchaseOffering",
        input_schema = types.PurchaseOfferingInput,
        output_schema = types.PurchaseOfferingOutput,
        http_method = "POST",
        http_path = "/v1/offerings/{OfferingArn}",
    }, options)
end

function Client:removeBridgeOutput(input, options)
    return self:invokeOperation(input, {
        name = "RemoveBridgeOutput",
        input_schema = types.RemoveBridgeOutputInput,
        output_schema = types.RemoveBridgeOutputOutput,
        http_method = "DELETE",
        http_path = "/v1/bridges/{BridgeArn}/outputs/{OutputName}",
    }, options)
end

function Client:removeBridgeSource(input, options)
    return self:invokeOperation(input, {
        name = "RemoveBridgeSource",
        input_schema = types.RemoveBridgeSourceInput,
        output_schema = types.RemoveBridgeSourceOutput,
        http_method = "DELETE",
        http_path = "/v1/bridges/{BridgeArn}/sources/{SourceName}",
    }, options)
end

function Client:removeFlowMediaStream(input, options)
    return self:invokeOperation(input, {
        name = "RemoveFlowMediaStream",
        input_schema = types.RemoveFlowMediaStreamInput,
        output_schema = types.RemoveFlowMediaStreamOutput,
        http_method = "DELETE",
        http_path = "/v1/flows/{FlowArn}/mediaStreams/{MediaStreamName}",
    }, options)
end

function Client:removeFlowOutput(input, options)
    return self:invokeOperation(input, {
        name = "RemoveFlowOutput",
        input_schema = types.RemoveFlowOutputInput,
        output_schema = types.RemoveFlowOutputOutput,
        http_method = "DELETE",
        http_path = "/v1/flows/{FlowArn}/outputs/{OutputArn}",
    }, options)
end

function Client:removeFlowSource(input, options)
    return self:invokeOperation(input, {
        name = "RemoveFlowSource",
        input_schema = types.RemoveFlowSourceInput,
        output_schema = types.RemoveFlowSourceOutput,
        http_method = "DELETE",
        http_path = "/v1/flows/{FlowArn}/source/{SourceArn}",
    }, options)
end

function Client:removeFlowVpcInterface(input, options)
    return self:invokeOperation(input, {
        name = "RemoveFlowVpcInterface",
        input_schema = types.RemoveFlowVpcInterfaceInput,
        output_schema = types.RemoveFlowVpcInterfaceOutput,
        http_method = "DELETE",
        http_path = "/v1/flows/{FlowArn}/vpcInterfaces/{VpcInterfaceName}",
    }, options)
end

function Client:restartRouterInput(input, options)
    return self:invokeOperation(input, {
        name = "RestartRouterInput",
        input_schema = types.RestartRouterInputInput,
        output_schema = types.RestartRouterInputOutput,
        http_method = "POST",
        http_path = "/v1/routerInput/restart/{Arn}",
    }, options)
end

function Client:restartRouterOutput(input, options)
    return self:invokeOperation(input, {
        name = "RestartRouterOutput",
        input_schema = types.RestartRouterOutputInput,
        output_schema = types.RestartRouterOutputOutput,
        http_method = "POST",
        http_path = "/v1/routerOutput/restart/{Arn}",
    }, options)
end

function Client:revokeFlowEntitlement(input, options)
    return self:invokeOperation(input, {
        name = "RevokeFlowEntitlement",
        input_schema = types.RevokeFlowEntitlementInput,
        output_schema = types.RevokeFlowEntitlementOutput,
        http_method = "DELETE",
        http_path = "/v1/flows/{FlowArn}/entitlements/{EntitlementArn}",
    }, options)
end

function Client:startFlow(input, options)
    return self:invokeOperation(input, {
        name = "StartFlow",
        input_schema = types.StartFlowInput,
        output_schema = types.StartFlowOutput,
        http_method = "POST",
        http_path = "/v1/flows/start/{FlowArn}",
    }, options)
end

function Client:startRouterInput(input, options)
    return self:invokeOperation(input, {
        name = "StartRouterInput",
        input_schema = types.StartRouterInputInput,
        output_schema = types.StartRouterInputOutput,
        http_method = "POST",
        http_path = "/v1/routerInput/start/{Arn}",
    }, options)
end

function Client:startRouterOutput(input, options)
    return self:invokeOperation(input, {
        name = "StartRouterOutput",
        input_schema = types.StartRouterOutputInput,
        output_schema = types.StartRouterOutputOutput,
        http_method = "POST",
        http_path = "/v1/routerOutput/start/{Arn}",
    }, options)
end

function Client:stopFlow(input, options)
    return self:invokeOperation(input, {
        name = "StopFlow",
        input_schema = types.StopFlowInput,
        output_schema = types.StopFlowOutput,
        http_method = "POST",
        http_path = "/v1/flows/stop/{FlowArn}",
    }, options)
end

function Client:stopRouterInput(input, options)
    return self:invokeOperation(input, {
        name = "StopRouterInput",
        input_schema = types.StopRouterInputInput,
        output_schema = types.StopRouterInputOutput,
        http_method = "POST",
        http_path = "/v1/routerInput/stop/{Arn}",
    }, options)
end

function Client:stopRouterOutput(input, options)
    return self:invokeOperation(input, {
        name = "StopRouterOutput",
        input_schema = types.StopRouterOutputInput,
        output_schema = types.StopRouterOutputOutput,
        http_method = "POST",
        http_path = "/v1/routerOutput/stop/{Arn}",
    }, options)
end

function Client:tagGlobalResource(input, options)
    return self:invokeOperation(input, {
        name = "TagGlobalResource",
        input_schema = types.TagGlobalResourceInput,
        output_schema = types.TagGlobalResourceOutput,
        http_method = "POST",
        http_path = "/tags/global/{ResourceArn}",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:takeRouterInput(input, options)
    return self:invokeOperation(input, {
        name = "TakeRouterInput",
        input_schema = types.TakeRouterInputInput,
        output_schema = types.TakeRouterInputOutput,
        http_method = "PUT",
        http_path = "/v1/routerOutput/takeRouterInput/{RouterOutputArn}",
    }, options)
end

function Client:untagGlobalResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagGlobalResource",
        input_schema = types.UntagGlobalResourceInput,
        output_schema = types.UntagGlobalResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/global/{ResourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:updateBridge(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBridge",
        input_schema = types.UpdateBridgeInput,
        output_schema = types.UpdateBridgeOperationOutput,
        http_method = "PUT",
        http_path = "/v1/bridges/{BridgeArn}",
    }, options)
end

function Client:updateBridgeOutput(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBridgeOutput",
        input_schema = types.UpdateBridgeOutputInput,
        output_schema = types.UpdateBridgeOutputOutput,
        http_method = "PUT",
        http_path = "/v1/bridges/{BridgeArn}/outputs/{OutputName}",
    }, options)
end

function Client:updateBridgeSource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBridgeSource",
        input_schema = types.UpdateBridgeSourceInput,
        output_schema = types.UpdateBridgeSourceOutput,
        http_method = "PUT",
        http_path = "/v1/bridges/{BridgeArn}/sources/{SourceName}",
    }, options)
end

function Client:updateBridgeState(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBridgeState",
        input_schema = types.UpdateBridgeStateInput,
        output_schema = types.UpdateBridgeStateOutput,
        http_method = "PUT",
        http_path = "/v1/bridges/{BridgeArn}/state",
    }, options)
end

function Client:updateFlow(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFlow",
        input_schema = types.UpdateFlowInput,
        output_schema = types.UpdateFlowOperationOutput,
        http_method = "PUT",
        http_path = "/v1/flows/{FlowArn}",
    }, options)
end

function Client:updateFlowEntitlement(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFlowEntitlement",
        input_schema = types.UpdateFlowEntitlementInput,
        output_schema = types.UpdateFlowEntitlementOutput,
        http_method = "PUT",
        http_path = "/v1/flows/{FlowArn}/entitlements/{EntitlementArn}",
    }, options)
end

function Client:updateFlowMediaStream(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFlowMediaStream",
        input_schema = types.UpdateFlowMediaStreamInput,
        output_schema = types.UpdateFlowMediaStreamOutput,
        http_method = "PUT",
        http_path = "/v1/flows/{FlowArn}/mediaStreams/{MediaStreamName}",
    }, options)
end

function Client:updateFlowOutput(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFlowOutput",
        input_schema = types.UpdateFlowOutputInput,
        output_schema = types.UpdateFlowOutputOutput,
        http_method = "PUT",
        http_path = "/v1/flows/{FlowArn}/outputs/{OutputArn}",
    }, options)
end

function Client:updateFlowSource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFlowSource",
        input_schema = types.UpdateFlowSourceInput,
        output_schema = types.UpdateFlowSourceOutput,
        http_method = "PUT",
        http_path = "/v1/flows/{FlowArn}/source/{SourceArn}",
    }, options)
end

function Client:updateGatewayInstance(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGatewayInstance",
        input_schema = types.UpdateGatewayInstanceInput,
        output_schema = types.UpdateGatewayInstanceOutput,
        http_method = "PUT",
        http_path = "/v1/gateway-instances/{GatewayInstanceArn}",
    }, options)
end

function Client:updateRouterInput(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRouterInput",
        input_schema = types.UpdateRouterInputInput,
        output_schema = types.UpdateRouterInputOutput,
        http_method = "PUT",
        http_path = "/v1/routerInput/{Arn}",
    }, options)
end

function Client:updateRouterNetworkInterface(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRouterNetworkInterface",
        input_schema = types.UpdateRouterNetworkInterfaceInput,
        output_schema = types.UpdateRouterNetworkInterfaceOutput,
        http_method = "PUT",
        http_path = "/v1/routerNetworkInterface/{Arn}",
    }, options)
end

function Client:updateRouterOutput(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRouterOutput",
        input_schema = types.UpdateRouterOutputInput,
        output_schema = types.UpdateRouterOutputOutput,
        http_method = "PUT",
        http_path = "/v1/routerOutput/{Arn}",
    }, options)
end

return M
