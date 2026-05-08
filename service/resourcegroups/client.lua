



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("resourcegroups.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("resourcegroups.schemas")
local traits = require("smithy.traits")
local types = require("resourcegroups.types")
local sdk_defaults = require("aws.sdk_defaults")





























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "Ardi"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "resource-groups", signing_region = c.region } }
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

function C:cancelTagSyncTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelTagSyncTask, input, options)
end

function C:createGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGroup, input, options)
end

function C:deleteGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGroup, input, options)
end

function C:getAccountSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccountSettings, input, options)
end

function C:getGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGroup, input, options)
end

function C:getGroupConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGroupConfiguration, input, options)
end

function C:getGroupQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGroupQuery, input, options)
end

function C:getTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTags, input, options)
end

function C:getTagSyncTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTagSyncTask, input, options)
end

function C:groupResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.GroupResources, input, options)
end

function C:listGroupingStatuses(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGroupingStatuses, input, options)
end

function C:listGroupResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGroupResources, input, options)
end

function C:listGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGroups, input, options)
end

function C:listTagSyncTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagSyncTasks, input, options)
end

function C:putGroupConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutGroupConfiguration, input, options)
end

function C:searchResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchResources, input, options)
end

function C:startTagSyncTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartTagSyncTask, input, options)
end

function C:tag(input, options)
   return self:invokeOperation(schemas.Service, schemas.Tag, input, options)
end

function C:ungroupResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.UngroupResources, input, options)
end

function C:untag(input, options)
   return self:invokeOperation(schemas.Service, schemas.Untag, input, options)
end

function C:updateAccountSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAccountSettings, input, options)
end

function C:updateGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGroup, input, options)
end

function C:updateGroupQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGroupQuery, input, options)
end

return M
