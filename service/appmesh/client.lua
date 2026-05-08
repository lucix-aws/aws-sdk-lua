



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("appmesh.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("appmesh.schemas")
local traits = require("smithy.traits")
local types = require("appmesh.types")
local sdk_defaults = require("aws.sdk_defaults")












































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AppMesh"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "appmesh", signing_region = c.region } }
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

function C:createGatewayRoute(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGatewayRoute, input, options)
end

function C:createMesh(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMesh, input, options)
end

function C:createRoute(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRoute, input, options)
end

function C:createVirtualGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVirtualGateway, input, options)
end

function C:createVirtualNode(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVirtualNode, input, options)
end

function C:createVirtualRouter(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVirtualRouter, input, options)
end

function C:createVirtualService(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVirtualService, input, options)
end

function C:deleteGatewayRoute(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGatewayRoute, input, options)
end

function C:deleteMesh(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMesh, input, options)
end

function C:deleteRoute(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRoute, input, options)
end

function C:deleteVirtualGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVirtualGateway, input, options)
end

function C:deleteVirtualNode(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVirtualNode, input, options)
end

function C:deleteVirtualRouter(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVirtualRouter, input, options)
end

function C:deleteVirtualService(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVirtualService, input, options)
end

function C:describeGatewayRoute(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeGatewayRoute, input, options)
end

function C:describeMesh(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMesh, input, options)
end

function C:describeRoute(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRoute, input, options)
end

function C:describeVirtualGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVirtualGateway, input, options)
end

function C:describeVirtualNode(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVirtualNode, input, options)
end

function C:describeVirtualRouter(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVirtualRouter, input, options)
end

function C:describeVirtualService(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVirtualService, input, options)
end

function C:listGatewayRoutes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGatewayRoutes, input, options)
end

function C:listMeshes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMeshes, input, options)
end

function C:listRoutes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRoutes, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listVirtualGateways(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVirtualGateways, input, options)
end

function C:listVirtualNodes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVirtualNodes, input, options)
end

function C:listVirtualRouters(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVirtualRouters, input, options)
end

function C:listVirtualServices(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVirtualServices, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateGatewayRoute(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGatewayRoute, input, options)
end

function C:updateMesh(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMesh, input, options)
end

function C:updateRoute(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRoute, input, options)
end

function C:updateVirtualGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateVirtualGateway, input, options)
end

function C:updateVirtualNode(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateVirtualNode, input, options)
end

function C:updateVirtualRouter(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateVirtualRouter, input, options)
end

function C:updateVirtualService(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateVirtualService, input, options)
end

return M
