



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("securityagent.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("securityagent.schemas")
local traits = require("smithy.traits")
local types = require("securityagent.types")
local sdk_defaults = require("aws.sdk_defaults")
























































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "SecurityAgent"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "securityagent", signing_region = c.region } }
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

function C:addArtifact(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddArtifact, input, options)
end

function C:batchDeletePentests(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeletePentests, input, options)
end

function C:batchGetAgentSpaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetAgentSpaces, input, options)
end

function C:batchGetArtifactMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetArtifactMetadata, input, options)
end

function C:batchGetFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetFindings, input, options)
end

function C:batchGetPentestJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetPentestJobs, input, options)
end

function C:batchGetPentestJobTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetPentestJobTasks, input, options)
end

function C:batchGetPentests(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetPentests, input, options)
end

function C:batchGetTargetDomains(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetTargetDomains, input, options)
end

function C:createAgentSpace(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAgentSpace, input, options)
end

function C:createApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApplication, input, options)
end

function C:createIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIntegration, input, options)
end

function C:createMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMembership, input, options)
end

function C:createPentest(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePentest, input, options)
end

function C:createTargetDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTargetDomain, input, options)
end

function C:deleteAgentSpace(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAgentSpace, input, options)
end

function C:deleteApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApplication, input, options)
end

function C:deleteArtifact(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteArtifact, input, options)
end

function C:deleteIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIntegration, input, options)
end

function C:deleteMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMembership, input, options)
end

function C:deleteTargetDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTargetDomain, input, options)
end

function C:getApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApplication, input, options)
end

function C:getArtifact(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetArtifact, input, options)
end

function C:getIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIntegration, input, options)
end

function C:initiateProviderRegistration(input, options)
   return self:invokeOperation(schemas.Service, schemas.InitiateProviderRegistration, input, options)
end

function C:listAgentSpaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAgentSpaces, input, options)
end

function C:listApplications(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApplications, input, options)
end

function C:listArtifacts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListArtifacts, input, options)
end

function C:listDiscoveredEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDiscoveredEndpoints, input, options)
end

function C:listFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFindings, input, options)
end

function C:listIntegratedResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIntegratedResources, input, options)
end

function C:listIntegrations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIntegrations, input, options)
end

function C:listMemberships(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMemberships, input, options)
end

function C:listPentestJobsForPentest(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPentestJobsForPentest, input, options)
end

function C:listPentestJobTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPentestJobTasks, input, options)
end

function C:listPentests(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPentests, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTargetDomains(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTargetDomains, input, options)
end

function C:startCodeRemediation(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartCodeRemediation, input, options)
end

function C:startPentestJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartPentestJob, input, options)
end

function C:stopPentestJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopPentestJob, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAgentSpace(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAgentSpace, input, options)
end

function C:updateApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApplication, input, options)
end

function C:updateFinding(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFinding, input, options)
end

function C:updateIntegratedResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIntegratedResources, input, options)
end

function C:updatePentest(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePentest, input, options)
end

function C:updateTargetDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTargetDomain, input, options)
end

function C:verifyTargetDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.VerifyTargetDomain, input, options)
end

return M
