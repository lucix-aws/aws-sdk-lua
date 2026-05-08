



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("mediaconnect.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("mediaconnect.schemas")
local traits = require("smithy.traits")
local types = require("mediaconnect.types")
local sdk_defaults = require("aws.sdk_defaults")
























































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "MediaConnect"
   if not c.protocol then c.protocol = restjson_protocol.new() end
   if not c.endpoint_provider then
      c.endpoint_provider = function(params)
         return endpoint.resolve(endpoint_rules, params)
      end
   end
   if not c.auth_scheme_resolver then
      c.auth_scheme_resolver = function(_service, operation)
         local auth_trait = operation:trait(traits.AUTH) or _service:trait(traits.AUTH)
         local options = {}
         for _, scheme in ipairs(auth_trait or {}) do
            local scheme_id = scheme.scheme_id or scheme
            if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "mediaconnect", signing_region = c.region } }
            else
               options[#options + 1] = { scheme_id = scheme_id }
            end
         end
         return options
      end
   end
   defaults.resolve_auth_schemes(c)
   defaults.resolve_identity_resolvers(c)
   defaults.resolve_http_client(c)
   defaults.resolve_retry_strategy(c)
   sdk_defaults.resolve_identity_resolver(c)
   local self = setmetatable(base_client.new(c), Client_mt)
   return self
end

function C:addBridgeOutputs(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddBridgeOutputs, input, options)
end

function C:addBridgeSources(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddBridgeSources, input, options)
end

function C:addFlowMediaStreams(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddFlowMediaStreams, input, options)
end

function C:addFlowOutputs(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddFlowOutputs, input, options)
end

function C:addFlowSources(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddFlowSources, input, options)
end

function C:addFlowVpcInterfaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddFlowVpcInterfaces, input, options)
end

function C:batchGetRouterInput(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetRouterInput, input, options)
end

function C:batchGetRouterNetworkInterface(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetRouterNetworkInterface, input, options)
end

function C:batchGetRouterOutput(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetRouterOutput, input, options)
end

function C:createBridge(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBridge, input, options)
end

function C:createFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFlow, input, options)
end

function C:createGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGateway, input, options)
end

function C:createRouterInput(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRouterInput, input, options)
end

function C:createRouterNetworkInterface(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRouterNetworkInterface, input, options)
end

function C:createRouterOutput(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRouterOutput, input, options)
end

function C:deleteBridge(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBridge, input, options)
end

function C:deleteFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFlow, input, options)
end

function C:deleteGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGateway, input, options)
end

function C:deleteRouterInput(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRouterInput, input, options)
end

function C:deleteRouterNetworkInterface(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRouterNetworkInterface, input, options)
end

function C:deleteRouterOutput(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRouterOutput, input, options)
end

function C:deregisterGatewayInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterGatewayInstance, input, options)
end

function C:describeBridge(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBridge, input, options)
end

function C:describeFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFlow, input, options)
end

function C:describeFlowSourceMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFlowSourceMetadata, input, options)
end

function C:describeFlowSourceThumbnail(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFlowSourceThumbnail, input, options)
end

function C:describeGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeGateway, input, options)
end

function C:describeGatewayInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeGatewayInstance, input, options)
end

function C:describeOffering(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOffering, input, options)
end

function C:describeReservation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReservation, input, options)
end

function C:getRouterInput(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRouterInput, input, options)
end

function C:getRouterInputSourceMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRouterInputSourceMetadata, input, options)
end

function C:getRouterInputThumbnail(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRouterInputThumbnail, input, options)
end

function C:getRouterNetworkInterface(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRouterNetworkInterface, input, options)
end

function C:getRouterOutput(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRouterOutput, input, options)
end

function C:grantFlowEntitlements(input, options)
   return self:invokeOperation(schemas.Service, schemas.GrantFlowEntitlements, input, options)
end

function C:listBridges(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBridges, input, options)
end

function C:listEntitlements(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEntitlements, input, options)
end

function C:listFlows(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFlows, input, options)
end

function C:listGatewayInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGatewayInstances, input, options)
end

function C:listGateways(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGateways, input, options)
end

function C:listOfferings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOfferings, input, options)
end

function C:listReservations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReservations, input, options)
end

function C:listRouterInputs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRouterInputs, input, options)
end

function C:listRouterNetworkInterfaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRouterNetworkInterfaces, input, options)
end

function C:listRouterOutputs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRouterOutputs, input, options)
end

function C:listTagsForGlobalResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForGlobalResource, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:purchaseOffering(input, options)
   return self:invokeOperation(schemas.Service, schemas.PurchaseOffering, input, options)
end

function C:removeBridgeOutput(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveBridgeOutput, input, options)
end

function C:removeBridgeSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveBridgeSource, input, options)
end

function C:removeFlowMediaStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveFlowMediaStream, input, options)
end

function C:removeFlowOutput(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveFlowOutput, input, options)
end

function C:removeFlowSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveFlowSource, input, options)
end

function C:removeFlowVpcInterface(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveFlowVpcInterface, input, options)
end

function C:restartRouterInput(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestartRouterInput, input, options)
end

function C:restartRouterOutput(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestartRouterOutput, input, options)
end

function C:revokeFlowEntitlement(input, options)
   return self:invokeOperation(schemas.Service, schemas.RevokeFlowEntitlement, input, options)
end

function C:startFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartFlow, input, options)
end

function C:startRouterInput(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartRouterInput, input, options)
end

function C:startRouterOutput(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartRouterOutput, input, options)
end

function C:stopFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopFlow, input, options)
end

function C:stopRouterInput(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopRouterInput, input, options)
end

function C:stopRouterOutput(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopRouterOutput, input, options)
end

function C:tagGlobalResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagGlobalResource, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:takeRouterInput(input, options)
   return self:invokeOperation(schemas.Service, schemas.TakeRouterInput, input, options)
end

function C:untagGlobalResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagGlobalResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateBridge(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBridge, input, options)
end

function C:updateBridgeOutput(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBridgeOutput, input, options)
end

function C:updateBridgeSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBridgeSource, input, options)
end

function C:updateBridgeState(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBridgeState, input, options)
end

function C:updateFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFlow, input, options)
end

function C:updateFlowEntitlement(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFlowEntitlement, input, options)
end

function C:updateFlowMediaStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFlowMediaStream, input, options)
end

function C:updateFlowOutput(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFlowOutput, input, options)
end

function C:updateFlowSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFlowSource, input, options)
end

function C:updateGatewayInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGatewayInstance, input, options)
end

function C:updateRouterInput(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRouterInput, input, options)
end

function C:updateRouterNetworkInterface(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRouterNetworkInterface, input, options)
end

function C:updateRouterOutput(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRouterOutput, input, options)
end

return M
