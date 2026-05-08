



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("grafana.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("grafana.schemas")
local traits = require("smithy.traits")
local types = require("grafana.types")
local sdk_defaults = require("aws.sdk_defaults")































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSGrafanaControlPlane"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "grafana", signing_region = c.region } }
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

function C:associateLicense(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateLicense, input, options)
end

function C:createWorkspace(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkspace, input, options)
end

function C:createWorkspaceApiKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkspaceApiKey, input, options)
end

function C:createWorkspaceServiceAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkspaceServiceAccount, input, options)
end

function C:createWorkspaceServiceAccountToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkspaceServiceAccountToken, input, options)
end

function C:deleteWorkspace(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkspace, input, options)
end

function C:deleteWorkspaceApiKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkspaceApiKey, input, options)
end

function C:deleteWorkspaceServiceAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkspaceServiceAccount, input, options)
end

function C:deleteWorkspaceServiceAccountToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkspaceServiceAccountToken, input, options)
end

function C:describeWorkspace(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWorkspace, input, options)
end

function C:describeWorkspaceAuthentication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWorkspaceAuthentication, input, options)
end

function C:describeWorkspaceConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWorkspaceConfiguration, input, options)
end

function C:disassociateLicense(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateLicense, input, options)
end

function C:listPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPermissions, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVersions, input, options)
end

function C:listWorkspaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkspaces, input, options)
end

function C:listWorkspaceServiceAccounts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkspaceServiceAccounts, input, options)
end

function C:listWorkspaceServiceAccountTokens(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkspaceServiceAccountTokens, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updatePermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePermissions, input, options)
end

function C:updateWorkspace(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWorkspace, input, options)
end

function C:updateWorkspaceAuthentication(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWorkspaceAuthentication, input, options)
end

function C:updateWorkspaceConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWorkspaceConfiguration, input, options)
end

return M
