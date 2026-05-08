



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("globalaccelerator.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("globalaccelerator.schemas")
local traits = require("smithy.traits")
local types = require("globalaccelerator.types")
local sdk_defaults = require("aws.sdk_defaults")






























































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "GlobalAccelerator_V20180706"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.1", service_id = c.service_id }) end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "globalaccelerator", signing_region = c.region } }
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

function C:addCustomRoutingEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddCustomRoutingEndpoints, input, options)
end

function C:addEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddEndpoints, input, options)
end

function C:advertiseByoipCidr(input, options)
   return self:invokeOperation(schemas.Service, schemas.AdvertiseByoipCidr, input, options)
end

function C:allowCustomRoutingTraffic(input, options)
   return self:invokeOperation(schemas.Service, schemas.AllowCustomRoutingTraffic, input, options)
end

function C:createAccelerator(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAccelerator, input, options)
end

function C:createCrossAccountAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCrossAccountAttachment, input, options)
end

function C:createCustomRoutingAccelerator(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCustomRoutingAccelerator, input, options)
end

function C:createCustomRoutingEndpointGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCustomRoutingEndpointGroup, input, options)
end

function C:createCustomRoutingListener(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCustomRoutingListener, input, options)
end

function C:createEndpointGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEndpointGroup, input, options)
end

function C:createListener(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateListener, input, options)
end

function C:deleteAccelerator(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccelerator, input, options)
end

function C:deleteCrossAccountAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCrossAccountAttachment, input, options)
end

function C:deleteCustomRoutingAccelerator(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCustomRoutingAccelerator, input, options)
end

function C:deleteCustomRoutingEndpointGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCustomRoutingEndpointGroup, input, options)
end

function C:deleteCustomRoutingListener(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCustomRoutingListener, input, options)
end

function C:deleteEndpointGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEndpointGroup, input, options)
end

function C:deleteListener(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteListener, input, options)
end

function C:denyCustomRoutingTraffic(input, options)
   return self:invokeOperation(schemas.Service, schemas.DenyCustomRoutingTraffic, input, options)
end

function C:deprovisionByoipCidr(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeprovisionByoipCidr, input, options)
end

function C:describeAccelerator(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccelerator, input, options)
end

function C:describeAcceleratorAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAcceleratorAttributes, input, options)
end

function C:describeCrossAccountAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCrossAccountAttachment, input, options)
end

function C:describeCustomRoutingAccelerator(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCustomRoutingAccelerator, input, options)
end

function C:describeCustomRoutingAcceleratorAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCustomRoutingAcceleratorAttributes, input, options)
end

function C:describeCustomRoutingEndpointGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCustomRoutingEndpointGroup, input, options)
end

function C:describeCustomRoutingListener(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCustomRoutingListener, input, options)
end

function C:describeEndpointGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEndpointGroup, input, options)
end

function C:describeListener(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeListener, input, options)
end

function C:listAccelerators(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccelerators, input, options)
end

function C:listByoipCidrs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListByoipCidrs, input, options)
end

function C:listCrossAccountAttachments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCrossAccountAttachments, input, options)
end

function C:listCrossAccountResourceAccounts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCrossAccountResourceAccounts, input, options)
end

function C:listCrossAccountResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCrossAccountResources, input, options)
end

function C:listCustomRoutingAccelerators(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCustomRoutingAccelerators, input, options)
end

function C:listCustomRoutingEndpointGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCustomRoutingEndpointGroups, input, options)
end

function C:listCustomRoutingListeners(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCustomRoutingListeners, input, options)
end

function C:listCustomRoutingPortMappings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCustomRoutingPortMappings, input, options)
end

function C:listCustomRoutingPortMappingsByDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCustomRoutingPortMappingsByDestination, input, options)
end

function C:listEndpointGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEndpointGroups, input, options)
end

function C:listListeners(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListListeners, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:provisionByoipCidr(input, options)
   return self:invokeOperation(schemas.Service, schemas.ProvisionByoipCidr, input, options)
end

function C:removeCustomRoutingEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveCustomRoutingEndpoints, input, options)
end

function C:removeEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveEndpoints, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAccelerator(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAccelerator, input, options)
end

function C:updateAcceleratorAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAcceleratorAttributes, input, options)
end

function C:updateCrossAccountAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCrossAccountAttachment, input, options)
end

function C:updateCustomRoutingAccelerator(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCustomRoutingAccelerator, input, options)
end

function C:updateCustomRoutingAcceleratorAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCustomRoutingAcceleratorAttributes, input, options)
end

function C:updateCustomRoutingListener(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCustomRoutingListener, input, options)
end

function C:updateEndpointGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEndpointGroup, input, options)
end

function C:updateListener(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateListener, input, options)
end

function C:withdrawByoipCidr(input, options)
   return self:invokeOperation(schemas.Service, schemas.WithdrawByoipCidr, input, options)
end

return M
