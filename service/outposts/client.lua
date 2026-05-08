



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("outposts.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("outposts.schemas")
local traits = require("smithy.traits")
local types = require("outposts.types")
local sdk_defaults = require("aws.sdk_defaults")











































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "OutpostsOlafService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "outposts", signing_region = c.region } }
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

function C:cancelCapacityTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelCapacityTask, input, options)
end

function C:cancelOrder(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelOrder, input, options)
end

function C:createOrder(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateOrder, input, options)
end

function C:createOutpost(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateOutpost, input, options)
end

function C:createRenewal(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRenewal, input, options)
end

function C:createSite(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSite, input, options)
end

function C:deleteOutpost(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteOutpost, input, options)
end

function C:deleteSite(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSite, input, options)
end

function C:getCapacityTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCapacityTask, input, options)
end

function C:getCatalogItem(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCatalogItem, input, options)
end

function C:getConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConnection, input, options)
end

function C:getOrder(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOrder, input, options)
end

function C:getOutpost(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOutpost, input, options)
end

function C:getOutpostBillingInformation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOutpostBillingInformation, input, options)
end

function C:getOutpostInstanceTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOutpostInstanceTypes, input, options)
end

function C:getOutpostSupportedInstanceTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOutpostSupportedInstanceTypes, input, options)
end

function C:getRenewalPricing(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRenewalPricing, input, options)
end

function C:getSite(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSite, input, options)
end

function C:getSiteAddress(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSiteAddress, input, options)
end

function C:listAssetInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssetInstances, input, options)
end

function C:listAssets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssets, input, options)
end

function C:listBlockingInstancesForCapacityTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBlockingInstancesForCapacityTask, input, options)
end

function C:listCapacityTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCapacityTasks, input, options)
end

function C:listCatalogItems(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCatalogItems, input, options)
end

function C:listOrders(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOrders, input, options)
end

function C:listOutposts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOutposts, input, options)
end

function C:listSites(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSites, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:startCapacityTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartCapacityTask, input, options)
end

function C:startConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartConnection, input, options)
end

function C:startOutpostDecommission(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartOutpostDecommission, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateOutpost(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateOutpost, input, options)
end

function C:updateSite(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSite, input, options)
end

function C:updateSiteAddress(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSiteAddress, input, options)
end

function C:updateSiteRackPhysicalProperties(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSiteRackPhysicalProperties, input, options)
end

return M
