



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("amplify.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("amplify.schemas")
local traits = require("smithy.traits")
local types = require("amplify.types")
local sdk_defaults = require("aws.sdk_defaults")











































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "Amplify"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "amplify", signing_region = c.region } }
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

function C:createApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApp, input, options)
end

function C:createBackendEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBackendEnvironment, input, options)
end

function C:createBranch(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBranch, input, options)
end

function C:createDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDeployment, input, options)
end

function C:createDomainAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDomainAssociation, input, options)
end

function C:createWebhook(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWebhook, input, options)
end

function C:deleteApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApp, input, options)
end

function C:deleteBackendEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBackendEnvironment, input, options)
end

function C:deleteBranch(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBranch, input, options)
end

function C:deleteDomainAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDomainAssociation, input, options)
end

function C:deleteJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteJob, input, options)
end

function C:deleteWebhook(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWebhook, input, options)
end

function C:generateAccessLogs(input, options)
   return self:invokeOperation(schemas.Service, schemas.GenerateAccessLogs, input, options)
end

function C:getApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApp, input, options)
end

function C:getArtifactUrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetArtifactUrl, input, options)
end

function C:getBackendEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBackendEnvironment, input, options)
end

function C:getBranch(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBranch, input, options)
end

function C:getDomainAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDomainAssociation, input, options)
end

function C:getJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetJob, input, options)
end

function C:getWebhook(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWebhook, input, options)
end

function C:listApps(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApps, input, options)
end

function C:listArtifacts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListArtifacts, input, options)
end

function C:listBackendEnvironments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBackendEnvironments, input, options)
end

function C:listBranches(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBranches, input, options)
end

function C:listDomainAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDomainAssociations, input, options)
end

function C:listJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListJobs, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listWebhooks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWebhooks, input, options)
end

function C:startDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDeployment, input, options)
end

function C:startJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartJob, input, options)
end

function C:stopJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopJob, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApp, input, options)
end

function C:updateBranch(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBranch, input, options)
end

function C:updateDomainAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDomainAssociation, input, options)
end

function C:updateWebhook(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWebhook, input, options)
end

return M
