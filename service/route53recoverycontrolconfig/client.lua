



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("route53recoverycontrolconfig.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("route53recoverycontrolconfig.schemas")
local traits = require("smithy.traits")
local types = require("route53recoverycontrolconfig.types")
local sdk_defaults = require("aws.sdk_defaults")































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "Route53RecoveryControlConfig"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "route53-recovery-control-config", signing_region = c.region } }
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

function C:createCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCluster, input, options)
end

function C:createControlPanel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateControlPanel, input, options)
end

function C:createRoutingControl(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRoutingControl, input, options)
end

function C:createSafetyRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSafetyRule, input, options)
end

function C:deleteCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCluster, input, options)
end

function C:deleteControlPanel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteControlPanel, input, options)
end

function C:deleteRoutingControl(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRoutingControl, input, options)
end

function C:deleteSafetyRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSafetyRule, input, options)
end

function C:describeCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCluster, input, options)
end

function C:describeControlPanel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeControlPanel, input, options)
end

function C:describeRoutingControl(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRoutingControl, input, options)
end

function C:describeSafetyRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSafetyRule, input, options)
end

function C:getResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcePolicy, input, options)
end

function C:listAssociatedRoute53HealthChecks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssociatedRoute53HealthChecks, input, options)
end

function C:listClusters(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListClusters, input, options)
end

function C:listControlPanels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListControlPanels, input, options)
end

function C:listRoutingControls(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRoutingControls, input, options)
end

function C:listSafetyRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSafetyRules, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCluster, input, options)
end

function C:updateControlPanel(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateControlPanel, input, options)
end

function C:updateRoutingControl(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRoutingControl, input, options)
end

function C:updateSafetyRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSafetyRule, input, options)
end

return M
