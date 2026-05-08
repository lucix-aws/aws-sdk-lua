



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("codestarconnections.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("codestarconnections.schemas")
local traits = require("smithy.traits")
local types = require("codestarconnections.types")
local sdk_defaults = require("aws.sdk_defaults")

































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "CodeStar_connections_20191201"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.0", service_id = c.service_id }) end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "codestar-connections", signing_region = c.region } }
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

function C:createConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConnection, input, options)
end

function C:createHost(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateHost, input, options)
end

function C:createRepositoryLink(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRepositoryLink, input, options)
end

function C:createSyncConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSyncConfiguration, input, options)
end

function C:deleteConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConnection, input, options)
end

function C:deleteHost(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteHost, input, options)
end

function C:deleteRepositoryLink(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRepositoryLink, input, options)
end

function C:deleteSyncConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSyncConfiguration, input, options)
end

function C:getConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConnection, input, options)
end

function C:getHost(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetHost, input, options)
end

function C:getRepositoryLink(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRepositoryLink, input, options)
end

function C:getRepositorySyncStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRepositorySyncStatus, input, options)
end

function C:getResourceSyncStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourceSyncStatus, input, options)
end

function C:getSyncBlockerSummary(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSyncBlockerSummary, input, options)
end

function C:getSyncConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSyncConfiguration, input, options)
end

function C:listConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConnections, input, options)
end

function C:listHosts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListHosts, input, options)
end

function C:listRepositoryLinks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRepositoryLinks, input, options)
end

function C:listRepositorySyncDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRepositorySyncDefinitions, input, options)
end

function C:listSyncConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSyncConfigurations, input, options)
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

function C:updateHost(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateHost, input, options)
end

function C:updateRepositoryLink(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRepositoryLink, input, options)
end

function C:updateSyncBlocker(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSyncBlocker, input, options)
end

function C:updateSyncConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSyncConfiguration, input, options)
end

return M
