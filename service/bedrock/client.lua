



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("bedrock.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("bedrock.schemas")
local traits = require("smithy.traits")
local types = require("bedrock.types")
local sdk_defaults = require("aws.sdk_defaults")











































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonBedrockControlPlaneService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "bedrock", signing_region = c.region } }
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

function C:batchDeleteEvaluationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteEvaluationJob, input, options)
end

function C:cancelAutomatedReasoningPolicyBuildWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelAutomatedReasoningPolicyBuildWorkflow, input, options)
end

function C:createAutomatedReasoningPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAutomatedReasoningPolicy, input, options)
end

function C:createAutomatedReasoningPolicyTestCase(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAutomatedReasoningPolicyTestCase, input, options)
end

function C:createAutomatedReasoningPolicyVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAutomatedReasoningPolicyVersion, input, options)
end

function C:createCustomModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCustomModel, input, options)
end

function C:createCustomModelDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCustomModelDeployment, input, options)
end

function C:createEvaluationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEvaluationJob, input, options)
end

function C:createFoundationModelAgreement(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFoundationModelAgreement, input, options)
end

function C:createGuardrail(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGuardrail, input, options)
end

function C:createGuardrailVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGuardrailVersion, input, options)
end

function C:createInferenceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInferenceProfile, input, options)
end

function C:createMarketplaceModelEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMarketplaceModelEndpoint, input, options)
end

function C:createModelCopyJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateModelCopyJob, input, options)
end

function C:createModelCustomizationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateModelCustomizationJob, input, options)
end

function C:createModelImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateModelImportJob, input, options)
end

function C:createModelInvocationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateModelInvocationJob, input, options)
end

function C:createPromptRouter(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePromptRouter, input, options)
end

function C:createProvisionedModelThroughput(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProvisionedModelThroughput, input, options)
end

function C:deleteAutomatedReasoningPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAutomatedReasoningPolicy, input, options)
end

function C:deleteAutomatedReasoningPolicyBuildWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAutomatedReasoningPolicyBuildWorkflow, input, options)
end

function C:deleteAutomatedReasoningPolicyTestCase(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAutomatedReasoningPolicyTestCase, input, options)
end

function C:deleteCustomModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCustomModel, input, options)
end

function C:deleteCustomModelDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCustomModelDeployment, input, options)
end

function C:deleteEnforcedGuardrailConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEnforcedGuardrailConfiguration, input, options)
end

function C:deleteFoundationModelAgreement(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFoundationModelAgreement, input, options)
end

function C:deleteGuardrail(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGuardrail, input, options)
end

function C:deleteImportedModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteImportedModel, input, options)
end

function C:deleteInferenceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInferenceProfile, input, options)
end

function C:deleteMarketplaceModelEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMarketplaceModelEndpoint, input, options)
end

function C:deleteModelInvocationLoggingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteModelInvocationLoggingConfiguration, input, options)
end

function C:deletePromptRouter(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePromptRouter, input, options)
end

function C:deleteProvisionedModelThroughput(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProvisionedModelThroughput, input, options)
end

function C:deleteResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcePolicy, input, options)
end

function C:deregisterMarketplaceModelEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterMarketplaceModelEndpoint, input, options)
end

function C:exportAutomatedReasoningPolicyVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportAutomatedReasoningPolicyVersion, input, options)
end

function C:getAutomatedReasoningPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAutomatedReasoningPolicy, input, options)
end

function C:getAutomatedReasoningPolicyAnnotations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAutomatedReasoningPolicyAnnotations, input, options)
end

function C:getAutomatedReasoningPolicyBuildWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAutomatedReasoningPolicyBuildWorkflow, input, options)
end

function C:getAutomatedReasoningPolicyBuildWorkflowResultAssets(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAutomatedReasoningPolicyBuildWorkflowResultAssets, input, options)
end

function C:getAutomatedReasoningPolicyNextScenario(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAutomatedReasoningPolicyNextScenario, input, options)
end

function C:getAutomatedReasoningPolicyTestCase(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAutomatedReasoningPolicyTestCase, input, options)
end

function C:getAutomatedReasoningPolicyTestResult(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAutomatedReasoningPolicyTestResult, input, options)
end

function C:getCustomModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCustomModel, input, options)
end

function C:getCustomModelDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCustomModelDeployment, input, options)
end

function C:getEvaluationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEvaluationJob, input, options)
end

function C:getFoundationModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFoundationModel, input, options)
end

function C:getFoundationModelAvailability(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFoundationModelAvailability, input, options)
end

function C:getGuardrail(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGuardrail, input, options)
end

function C:getImportedModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetImportedModel, input, options)
end

function C:getInferenceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInferenceProfile, input, options)
end

function C:getMarketplaceModelEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMarketplaceModelEndpoint, input, options)
end

function C:getModelCopyJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetModelCopyJob, input, options)
end

function C:getModelCustomizationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetModelCustomizationJob, input, options)
end

function C:getModelImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetModelImportJob, input, options)
end

function C:getModelInvocationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetModelInvocationJob, input, options)
end

function C:getModelInvocationLoggingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetModelInvocationLoggingConfiguration, input, options)
end

function C:getPromptRouter(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPromptRouter, input, options)
end

function C:getProvisionedModelThroughput(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProvisionedModelThroughput, input, options)
end

function C:getResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcePolicy, input, options)
end

function C:getUseCaseForModelAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUseCaseForModelAccess, input, options)
end

function C:listAutomatedReasoningPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAutomatedReasoningPolicies, input, options)
end

function C:listAutomatedReasoningPolicyBuildWorkflows(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAutomatedReasoningPolicyBuildWorkflows, input, options)
end

function C:listAutomatedReasoningPolicyTestCases(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAutomatedReasoningPolicyTestCases, input, options)
end

function C:listAutomatedReasoningPolicyTestResults(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAutomatedReasoningPolicyTestResults, input, options)
end

function C:listCustomModelDeployments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCustomModelDeployments, input, options)
end

function C:listCustomModels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCustomModels, input, options)
end

function C:listEnforcedGuardrailsConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEnforcedGuardrailsConfiguration, input, options)
end

function C:listEvaluationJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEvaluationJobs, input, options)
end

function C:listFoundationModelAgreementOffers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFoundationModelAgreementOffers, input, options)
end

function C:listFoundationModels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFoundationModels, input, options)
end

function C:listGuardrails(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGuardrails, input, options)
end

function C:listImportedModels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListImportedModels, input, options)
end

function C:listInferenceProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInferenceProfiles, input, options)
end

function C:listMarketplaceModelEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMarketplaceModelEndpoints, input, options)
end

function C:listModelCopyJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListModelCopyJobs, input, options)
end

function C:listModelCustomizationJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListModelCustomizationJobs, input, options)
end

function C:listModelImportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListModelImportJobs, input, options)
end

function C:listModelInvocationJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListModelInvocationJobs, input, options)
end

function C:listPromptRouters(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPromptRouters, input, options)
end

function C:listProvisionedModelThroughputs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProvisionedModelThroughputs, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putEnforcedGuardrailConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutEnforcedGuardrailConfiguration, input, options)
end

function C:putModelInvocationLoggingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutModelInvocationLoggingConfiguration, input, options)
end

function C:putResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourcePolicy, input, options)
end

function C:putUseCaseForModelAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutUseCaseForModelAccess, input, options)
end

function C:registerMarketplaceModelEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterMarketplaceModelEndpoint, input, options)
end

function C:startAutomatedReasoningPolicyBuildWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartAutomatedReasoningPolicyBuildWorkflow, input, options)
end

function C:startAutomatedReasoningPolicyTestWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartAutomatedReasoningPolicyTestWorkflow, input, options)
end

function C:stopEvaluationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopEvaluationJob, input, options)
end

function C:stopModelCustomizationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopModelCustomizationJob, input, options)
end

function C:stopModelInvocationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopModelInvocationJob, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAutomatedReasoningPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAutomatedReasoningPolicy, input, options)
end

function C:updateAutomatedReasoningPolicyAnnotations(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAutomatedReasoningPolicyAnnotations, input, options)
end

function C:updateAutomatedReasoningPolicyTestCase(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAutomatedReasoningPolicyTestCase, input, options)
end

function C:updateCustomModelDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCustomModelDeployment, input, options)
end

function C:updateGuardrail(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGuardrail, input, options)
end

function C:updateMarketplaceModelEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMarketplaceModelEndpoint, input, options)
end

function C:updateProvisionedModelThroughput(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProvisionedModelThroughput, input, options)
end

return M
