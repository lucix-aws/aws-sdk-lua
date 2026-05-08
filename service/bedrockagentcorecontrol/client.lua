



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("bedrockagentcorecontrol.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("bedrockagentcorecontrol.schemas")
local traits = require("smithy.traits")
local types = require("bedrockagentcorecontrol.types")
local sdk_defaults = require("aws.sdk_defaults")

























































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonBedrockAgentCoreControl"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "bedrock-agentcore", signing_region = c.region } }
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

function C:createAgentRuntime(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAgentRuntime, input, options)
end

function C:createAgentRuntimeEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAgentRuntimeEndpoint, input, options)
end

function C:createApiKeyCredentialProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApiKeyCredentialProvider, input, options)
end

function C:createBrowser(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBrowser, input, options)
end

function C:createBrowserProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBrowserProfile, input, options)
end

function C:createCodeInterpreter(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCodeInterpreter, input, options)
end

function C:createConfigurationBundle(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConfigurationBundle, input, options)
end

function C:createEvaluator(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEvaluator, input, options)
end

function C:createGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGateway, input, options)
end

function C:createGatewayRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGatewayRule, input, options)
end

function C:createGatewayTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGatewayTarget, input, options)
end

function C:createHarness(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateHarness, input, options)
end

function C:createMemory(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMemory, input, options)
end

function C:createOauth2CredentialProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateOauth2CredentialProvider, input, options)
end

function C:createOnlineEvaluationConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateOnlineEvaluationConfig, input, options)
end

function C:createPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePolicy, input, options)
end

function C:createPolicyEngine(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePolicyEngine, input, options)
end

function C:createRegistry(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRegistry, input, options)
end

function C:createRegistryRecord(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRegistryRecord, input, options)
end

function C:createWorkloadIdentity(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkloadIdentity, input, options)
end

function C:deleteAgentRuntime(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAgentRuntime, input, options)
end

function C:deleteAgentRuntimeEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAgentRuntimeEndpoint, input, options)
end

function C:deleteApiKeyCredentialProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApiKeyCredentialProvider, input, options)
end

function C:deleteBrowser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBrowser, input, options)
end

function C:deleteBrowserProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBrowserProfile, input, options)
end

function C:deleteCodeInterpreter(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCodeInterpreter, input, options)
end

function C:deleteConfigurationBundle(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConfigurationBundle, input, options)
end

function C:deleteEvaluator(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEvaluator, input, options)
end

function C:deleteGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGateway, input, options)
end

function C:deleteGatewayRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGatewayRule, input, options)
end

function C:deleteGatewayTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGatewayTarget, input, options)
end

function C:deleteHarness(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteHarness, input, options)
end

function C:deleteMemory(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMemory, input, options)
end

function C:deleteOauth2CredentialProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteOauth2CredentialProvider, input, options)
end

function C:deleteOnlineEvaluationConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteOnlineEvaluationConfig, input, options)
end

function C:deletePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePolicy, input, options)
end

function C:deletePolicyEngine(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePolicyEngine, input, options)
end

function C:deleteRegistry(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRegistry, input, options)
end

function C:deleteRegistryRecord(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRegistryRecord, input, options)
end

function C:deleteResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcePolicy, input, options)
end

function C:deleteWorkloadIdentity(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkloadIdentity, input, options)
end

function C:getAgentRuntime(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAgentRuntime, input, options)
end

function C:getAgentRuntimeEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAgentRuntimeEndpoint, input, options)
end

function C:getApiKeyCredentialProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApiKeyCredentialProvider, input, options)
end

function C:getBrowser(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBrowser, input, options)
end

function C:getBrowserProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBrowserProfile, input, options)
end

function C:getCodeInterpreter(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCodeInterpreter, input, options)
end

function C:getConfigurationBundle(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConfigurationBundle, input, options)
end

function C:getConfigurationBundleVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConfigurationBundleVersion, input, options)
end

function C:getEvaluator(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEvaluator, input, options)
end

function C:getGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGateway, input, options)
end

function C:getGatewayRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGatewayRule, input, options)
end

function C:getGatewayTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGatewayTarget, input, options)
end

function C:getHarness(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetHarness, input, options)
end

function C:getMemory(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMemory, input, options)
end

function C:getOauth2CredentialProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOauth2CredentialProvider, input, options)
end

function C:getOnlineEvaluationConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOnlineEvaluationConfig, input, options)
end

function C:getPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPolicy, input, options)
end

function C:getPolicyEngine(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPolicyEngine, input, options)
end

function C:getPolicyGeneration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPolicyGeneration, input, options)
end

function C:getRegistry(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRegistry, input, options)
end

function C:getRegistryRecord(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRegistryRecord, input, options)
end

function C:getResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcePolicy, input, options)
end

function C:getTokenVault(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTokenVault, input, options)
end

function C:getWorkloadIdentity(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkloadIdentity, input, options)
end

function C:listAgentRuntimeEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAgentRuntimeEndpoints, input, options)
end

function C:listAgentRuntimes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAgentRuntimes, input, options)
end

function C:listAgentRuntimeVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAgentRuntimeVersions, input, options)
end

function C:listApiKeyCredentialProviders(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApiKeyCredentialProviders, input, options)
end

function C:listBrowserProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBrowserProfiles, input, options)
end

function C:listBrowsers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBrowsers, input, options)
end

function C:listCodeInterpreters(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCodeInterpreters, input, options)
end

function C:listConfigurationBundles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConfigurationBundles, input, options)
end

function C:listConfigurationBundleVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConfigurationBundleVersions, input, options)
end

function C:listEvaluators(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEvaluators, input, options)
end

function C:listGatewayRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGatewayRules, input, options)
end

function C:listGateways(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGateways, input, options)
end

function C:listGatewayTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGatewayTargets, input, options)
end

function C:listHarnesses(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListHarnesses, input, options)
end

function C:listMemories(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMemories, input, options)
end

function C:listOauth2CredentialProviders(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOauth2CredentialProviders, input, options)
end

function C:listOnlineEvaluationConfigs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOnlineEvaluationConfigs, input, options)
end

function C:listPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPolicies, input, options)
end

function C:listPolicyEngines(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPolicyEngines, input, options)
end

function C:listPolicyGenerationAssets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPolicyGenerationAssets, input, options)
end

function C:listPolicyGenerations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPolicyGenerations, input, options)
end

function C:listRegistries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRegistries, input, options)
end

function C:listRegistryRecords(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRegistryRecords, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listWorkloadIdentities(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkloadIdentities, input, options)
end

function C:putResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourcePolicy, input, options)
end

function C:setTokenVaultCMK(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetTokenVaultCMK, input, options)
end

function C:startPolicyGeneration(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartPolicyGeneration, input, options)
end

function C:submitRegistryRecordForApproval(input, options)
   return self:invokeOperation(schemas.Service, schemas.SubmitRegistryRecordForApproval, input, options)
end

function C:synchronizeGatewayTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.SynchronizeGatewayTargets, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAgentRuntime(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAgentRuntime, input, options)
end

function C:updateAgentRuntimeEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAgentRuntimeEndpoint, input, options)
end

function C:updateApiKeyCredentialProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApiKeyCredentialProvider, input, options)
end

function C:updateConfigurationBundle(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConfigurationBundle, input, options)
end

function C:updateEvaluator(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEvaluator, input, options)
end

function C:updateGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGateway, input, options)
end

function C:updateGatewayRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGatewayRule, input, options)
end

function C:updateGatewayTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGatewayTarget, input, options)
end

function C:updateHarness(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateHarness, input, options)
end

function C:updateMemory(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMemory, input, options)
end

function C:updateOauth2CredentialProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateOauth2CredentialProvider, input, options)
end

function C:updateOnlineEvaluationConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateOnlineEvaluationConfig, input, options)
end

function C:updatePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePolicy, input, options)
end

function C:updatePolicyEngine(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePolicyEngine, input, options)
end

function C:updateRegistry(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRegistry, input, options)
end

function C:updateRegistryRecord(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRegistryRecord, input, options)
end

function C:updateRegistryRecordStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRegistryRecordStatus, input, options)
end

function C:updateWorkloadIdentity(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWorkloadIdentity, input, options)
end

return M
