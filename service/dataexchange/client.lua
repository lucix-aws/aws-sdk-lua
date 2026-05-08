



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("dataexchange.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("dataexchange.schemas")
local traits = require("smithy.traits")
local types = require("dataexchange.types")
local sdk_defaults = require("aws.sdk_defaults")











































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "DataExchange"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "dataexchange", signing_region = c.region } }
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

function C:acceptDataGrant(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptDataGrant, input, options)
end

function C:cancelJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelJob, input, options)
end

function C:createDataGrant(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataGrant, input, options)
end

function C:createDataSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataSet, input, options)
end

function C:createEventAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEventAction, input, options)
end

function C:createJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateJob, input, options)
end

function C:createRevision(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRevision, input, options)
end

function C:deleteAsset(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAsset, input, options)
end

function C:deleteDataGrant(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataGrant, input, options)
end

function C:deleteDataSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataSet, input, options)
end

function C:deleteEventAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEventAction, input, options)
end

function C:deleteRevision(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRevision, input, options)
end

function C:getAsset(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAsset, input, options)
end

function C:getDataGrant(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataGrant, input, options)
end

function C:getDataSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataSet, input, options)
end

function C:getEventAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEventAction, input, options)
end

function C:getJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetJob, input, options)
end

function C:getReceivedDataGrant(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReceivedDataGrant, input, options)
end

function C:getRevision(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRevision, input, options)
end

function C:listDataGrants(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataGrants, input, options)
end

function C:listDataSetRevisions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataSetRevisions, input, options)
end

function C:listDataSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataSets, input, options)
end

function C:listEventActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEventActions, input, options)
end

function C:listJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListJobs, input, options)
end

function C:listReceivedDataGrants(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReceivedDataGrants, input, options)
end

function C:listRevisionAssets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRevisionAssets, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:revokeRevision(input, options)
   return self:invokeOperation(schemas.Service, schemas.RevokeRevision, input, options)
end

function C:sendApiAsset(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendApiAsset, input, options)
end

function C:sendDataSetNotification(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendDataSetNotification, input, options)
end

function C:startJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartJob, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAsset(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAsset, input, options)
end

function C:updateDataSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataSet, input, options)
end

function C:updateEventAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEventAction, input, options)
end

function C:updateRevision(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRevision, input, options)
end

return M
