



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("ssmincidents.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("ssmincidents.schemas")
local traits = require("smithy.traits")
local types = require("ssmincidents.types")
local sdk_defaults = require("aws.sdk_defaults")





































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "SSMIncidents"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ssm-incidents", signing_region = c.region } }
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

function C:batchGetIncidentFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetIncidentFindings, input, options)
end

function C:createReplicationSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateReplicationSet, input, options)
end

function C:createResponsePlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateResponsePlan, input, options)
end

function C:createTimelineEvent(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTimelineEvent, input, options)
end

function C:deleteIncidentRecord(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIncidentRecord, input, options)
end

function C:deleteReplicationSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteReplicationSet, input, options)
end

function C:deleteResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcePolicy, input, options)
end

function C:deleteResponsePlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResponsePlan, input, options)
end

function C:deleteTimelineEvent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTimelineEvent, input, options)
end

function C:getIncidentRecord(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIncidentRecord, input, options)
end

function C:getReplicationSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReplicationSet, input, options)
end

function C:getResourcePolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcePolicies, input, options)
end

function C:getResponsePlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResponsePlan, input, options)
end

function C:getTimelineEvent(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTimelineEvent, input, options)
end

function C:listIncidentFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIncidentFindings, input, options)
end

function C:listIncidentRecords(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIncidentRecords, input, options)
end

function C:listRelatedItems(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRelatedItems, input, options)
end

function C:listReplicationSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReplicationSets, input, options)
end

function C:listResponsePlans(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResponsePlans, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTimelineEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTimelineEvents, input, options)
end

function C:putResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourcePolicy, input, options)
end

function C:startIncident(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartIncident, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateDeletionProtection(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDeletionProtection, input, options)
end

function C:updateIncidentRecord(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIncidentRecord, input, options)
end

function C:updateRelatedItems(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRelatedItems, input, options)
end

function C:updateReplicationSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateReplicationSet, input, options)
end

function C:updateResponsePlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateResponsePlan, input, options)
end

function C:updateTimelineEvent(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTimelineEvent, input, options)
end

return M
