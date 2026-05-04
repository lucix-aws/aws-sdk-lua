local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("bedrock.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("bedrock.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonBedrockControlPlaneService"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    if not cfg.auth_scheme_resolver then
        cfg.auth_scheme_resolver = function(operation)
            local options = {}
            for _, scheme_id in ipairs(operation.effective_auth_schemes) do
                if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "bedrock", signing_region = cfg.region } }
                else
                    options[#options + 1] = { scheme_id = scheme_id }
                end
            end
            return options
        end
    end
    defaults.resolve_auth_schemes(cfg)
    defaults.resolve_identity_resolvers(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:batchDeleteEvaluationJob(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteEvaluationJob",
        input_schema = types.BatchDeleteEvaluationJobInput,
        output_schema = types.BatchDeleteEvaluationJobOutput,
        http_method = "POST",
        http_path = "/evaluation-jobs/batch-delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:cancelAutomatedReasoningPolicyBuildWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "CancelAutomatedReasoningPolicyBuildWorkflow",
        input_schema = types.CancelAutomatedReasoningPolicyBuildWorkflowInput,
        output_schema = types.CancelAutomatedReasoningPolicyBuildWorkflowOutput,
        http_method = "POST",
        http_path = "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/cancel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:createAutomatedReasoningPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateAutomatedReasoningPolicy",
        input_schema = types.CreateAutomatedReasoningPolicyInput,
        output_schema = types.CreateAutomatedReasoningPolicyOutput,
        http_method = "POST",
        http_path = "/automated-reasoning-policies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:createAutomatedReasoningPolicyTestCase(input, options)
    return self:invokeOperation(input, {
        name = "CreateAutomatedReasoningPolicyTestCase",
        input_schema = types.CreateAutomatedReasoningPolicyTestCaseInput,
        output_schema = types.CreateAutomatedReasoningPolicyTestCaseOutput,
        http_method = "POST",
        http_path = "/automated-reasoning-policies/{policyArn}/test-cases",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:createAutomatedReasoningPolicyVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateAutomatedReasoningPolicyVersion",
        input_schema = types.CreateAutomatedReasoningPolicyVersionInput,
        output_schema = types.CreateAutomatedReasoningPolicyVersionOutput,
        http_method = "POST",
        http_path = "/automated-reasoning-policies/{policyArn}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:createCustomModel(input, options)
    return self:invokeOperation(input, {
        name = "CreateCustomModel",
        input_schema = types.CreateCustomModelInput,
        output_schema = types.CreateCustomModelOutput,
        http_method = "POST",
        http_path = "/custom-models/create-custom-model",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:createCustomModelDeployment(input, options)
    return self:invokeOperation(input, {
        name = "CreateCustomModelDeployment",
        input_schema = types.CreateCustomModelDeploymentInput,
        output_schema = types.CreateCustomModelDeploymentOutput,
        http_method = "POST",
        http_path = "/model-customization/custom-model-deployments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:createEvaluationJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateEvaluationJob",
        input_schema = types.CreateEvaluationJobInput,
        output_schema = types.CreateEvaluationJobOutput,
        http_method = "POST",
        http_path = "/evaluation-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:createFoundationModelAgreement(input, options)
    return self:invokeOperation(input, {
        name = "CreateFoundationModelAgreement",
        input_schema = types.CreateFoundationModelAgreementInput,
        output_schema = types.CreateFoundationModelAgreementOutput,
        http_method = "POST",
        http_path = "/create-foundation-model-agreement",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:createGuardrail(input, options)
    return self:invokeOperation(input, {
        name = "CreateGuardrail",
        input_schema = types.CreateGuardrailInput,
        output_schema = types.CreateGuardrailOutput,
        http_method = "POST",
        http_path = "/guardrails",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:createGuardrailVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateGuardrailVersion",
        input_schema = types.CreateGuardrailVersionInput,
        output_schema = types.CreateGuardrailVersionOutput,
        http_method = "POST",
        http_path = "/guardrails/{guardrailIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:createInferenceProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateInferenceProfile",
        input_schema = types.CreateInferenceProfileInput,
        output_schema = types.CreateInferenceProfileOutput,
        http_method = "POST",
        http_path = "/inference-profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:createMarketplaceModelEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateMarketplaceModelEndpoint",
        input_schema = types.CreateMarketplaceModelEndpointInput,
        output_schema = types.CreateMarketplaceModelEndpointOutput,
        http_method = "POST",
        http_path = "/marketplace-model/endpoints",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:createModelCopyJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateModelCopyJob",
        input_schema = types.CreateModelCopyJobInput,
        output_schema = types.CreateModelCopyJobOutput,
        http_method = "POST",
        http_path = "/model-copy-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:createModelCustomizationJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateModelCustomizationJob",
        input_schema = types.CreateModelCustomizationJobInput,
        output_schema = types.CreateModelCustomizationJobOutput,
        http_method = "POST",
        http_path = "/model-customization-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:createModelImportJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateModelImportJob",
        input_schema = types.CreateModelImportJobInput,
        output_schema = types.CreateModelImportJobOutput,
        http_method = "POST",
        http_path = "/model-import-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:createModelInvocationJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateModelInvocationJob",
        input_schema = types.CreateModelInvocationJobInput,
        output_schema = types.CreateModelInvocationJobOutput,
        http_method = "POST",
        http_path = "/model-invocation-job",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:createPromptRouter(input, options)
    return self:invokeOperation(input, {
        name = "CreatePromptRouter",
        input_schema = types.CreatePromptRouterInput,
        output_schema = types.CreatePromptRouterOutput,
        http_method = "POST",
        http_path = "/prompt-routers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:createProvisionedModelThroughput(input, options)
    return self:invokeOperation(input, {
        name = "CreateProvisionedModelThroughput",
        input_schema = types.CreateProvisionedModelThroughputInput,
        output_schema = types.CreateProvisionedModelThroughputOutput,
        http_method = "POST",
        http_path = "/provisioned-model-throughput",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:deleteAutomatedReasoningPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAutomatedReasoningPolicy",
        input_schema = types.DeleteAutomatedReasoningPolicyInput,
        output_schema = types.DeleteAutomatedReasoningPolicyOutput,
        http_method = "DELETE",
        http_path = "/automated-reasoning-policies/{policyArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:deleteAutomatedReasoningPolicyBuildWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAutomatedReasoningPolicyBuildWorkflow",
        input_schema = types.DeleteAutomatedReasoningPolicyBuildWorkflowInput,
        output_schema = types.DeleteAutomatedReasoningPolicyBuildWorkflowOutput,
        http_method = "DELETE",
        http_path = "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:deleteAutomatedReasoningPolicyTestCase(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAutomatedReasoningPolicyTestCase",
        input_schema = types.DeleteAutomatedReasoningPolicyTestCaseInput,
        output_schema = types.DeleteAutomatedReasoningPolicyTestCaseOutput,
        http_method = "DELETE",
        http_path = "/automated-reasoning-policies/{policyArn}/test-cases/{testCaseId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:deleteCustomModel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCustomModel",
        input_schema = types.DeleteCustomModelInput,
        output_schema = types.DeleteCustomModelOutput,
        http_method = "DELETE",
        http_path = "/custom-models/{modelIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:deleteCustomModelDeployment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCustomModelDeployment",
        input_schema = types.DeleteCustomModelDeploymentInput,
        output_schema = types.DeleteCustomModelDeploymentOutput,
        http_method = "DELETE",
        http_path = "/model-customization/custom-model-deployments/{customModelDeploymentIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:deleteEnforcedGuardrailConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEnforcedGuardrailConfiguration",
        input_schema = types.DeleteEnforcedGuardrailConfigurationInput,
        output_schema = types.DeleteEnforcedGuardrailConfigurationOutput,
        http_method = "DELETE",
        http_path = "/enforcedGuardrailsConfiguration/{configId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:deleteFoundationModelAgreement(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFoundationModelAgreement",
        input_schema = types.DeleteFoundationModelAgreementInput,
        output_schema = types.DeleteFoundationModelAgreementOutput,
        http_method = "POST",
        http_path = "/delete-foundation-model-agreement",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:deleteGuardrail(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGuardrail",
        input_schema = types.DeleteGuardrailInput,
        output_schema = types.DeleteGuardrailOutput,
        http_method = "DELETE",
        http_path = "/guardrails/{guardrailIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:deleteImportedModel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteImportedModel",
        input_schema = types.DeleteImportedModelInput,
        output_schema = types.DeleteImportedModelOutput,
        http_method = "DELETE",
        http_path = "/imported-models/{modelIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:deleteInferenceProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInferenceProfile",
        input_schema = types.DeleteInferenceProfileInput,
        output_schema = types.DeleteInferenceProfileOutput,
        http_method = "DELETE",
        http_path = "/inference-profiles/{inferenceProfileIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:deleteMarketplaceModelEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMarketplaceModelEndpoint",
        input_schema = types.DeleteMarketplaceModelEndpointInput,
        output_schema = types.DeleteMarketplaceModelEndpointOutput,
        http_method = "DELETE",
        http_path = "/marketplace-model/endpoints/{endpointArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:deleteModelInvocationLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteModelInvocationLoggingConfiguration",
        input_schema = types.DeleteModelInvocationLoggingConfigurationInput,
        output_schema = types.DeleteModelInvocationLoggingConfigurationOutput,
        http_method = "DELETE",
        http_path = "/logging/modelinvocations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:deletePromptRouter(input, options)
    return self:invokeOperation(input, {
        name = "DeletePromptRouter",
        input_schema = types.DeletePromptRouterInput,
        output_schema = types.DeletePromptRouterOutput,
        http_method = "DELETE",
        http_path = "/prompt-routers/{promptRouterArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:deleteProvisionedModelThroughput(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProvisionedModelThroughput",
        input_schema = types.DeleteProvisionedModelThroughputInput,
        output_schema = types.DeleteProvisionedModelThroughputOutput,
        http_method = "DELETE",
        http_path = "/provisioned-model-throughput/{provisionedModelId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = types.DeleteResourcePolicyInput,
        output_schema = types.DeleteResourcePolicyOutput,
        http_method = "DELETE",
        http_path = "/resource-policy/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:deregisterMarketplaceModelEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterMarketplaceModelEndpoint",
        input_schema = types.DeregisterMarketplaceModelEndpointInput,
        output_schema = types.DeregisterMarketplaceModelEndpointOutput,
        http_method = "DELETE",
        http_path = "/marketplace-model/endpoints/{endpointArn}/registration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:exportAutomatedReasoningPolicyVersion(input, options)
    return self:invokeOperation(input, {
        name = "ExportAutomatedReasoningPolicyVersion",
        input_schema = types.ExportAutomatedReasoningPolicyVersionInput,
        output_schema = types.ExportAutomatedReasoningPolicyVersionOutput,
        http_method = "GET",
        http_path = "/automated-reasoning-policies/{policyArn}/export",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getAutomatedReasoningPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetAutomatedReasoningPolicy",
        input_schema = types.GetAutomatedReasoningPolicyInput,
        output_schema = types.GetAutomatedReasoningPolicyOutput,
        http_method = "GET",
        http_path = "/automated-reasoning-policies/{policyArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getAutomatedReasoningPolicyAnnotations(input, options)
    return self:invokeOperation(input, {
        name = "GetAutomatedReasoningPolicyAnnotations",
        input_schema = types.GetAutomatedReasoningPolicyAnnotationsInput,
        output_schema = types.GetAutomatedReasoningPolicyAnnotationsOutput,
        http_method = "GET",
        http_path = "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/annotations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getAutomatedReasoningPolicyBuildWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "GetAutomatedReasoningPolicyBuildWorkflow",
        input_schema = types.GetAutomatedReasoningPolicyBuildWorkflowInput,
        output_schema = types.GetAutomatedReasoningPolicyBuildWorkflowOutput,
        http_method = "GET",
        http_path = "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getAutomatedReasoningPolicyBuildWorkflowResultAssets(input, options)
    return self:invokeOperation(input, {
        name = "GetAutomatedReasoningPolicyBuildWorkflowResultAssets",
        input_schema = types.GetAutomatedReasoningPolicyBuildWorkflowResultAssetsInput,
        output_schema = types.GetAutomatedReasoningPolicyBuildWorkflowResultAssetsOutput,
        http_method = "GET",
        http_path = "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/result-assets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getAutomatedReasoningPolicyNextScenario(input, options)
    return self:invokeOperation(input, {
        name = "GetAutomatedReasoningPolicyNextScenario",
        input_schema = types.GetAutomatedReasoningPolicyNextScenarioInput,
        output_schema = types.GetAutomatedReasoningPolicyNextScenarioOutput,
        http_method = "GET",
        http_path = "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/scenarios",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getAutomatedReasoningPolicyTestCase(input, options)
    return self:invokeOperation(input, {
        name = "GetAutomatedReasoningPolicyTestCase",
        input_schema = types.GetAutomatedReasoningPolicyTestCaseInput,
        output_schema = types.GetAutomatedReasoningPolicyTestCaseOutput,
        http_method = "GET",
        http_path = "/automated-reasoning-policies/{policyArn}/test-cases/{testCaseId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getAutomatedReasoningPolicyTestResult(input, options)
    return self:invokeOperation(input, {
        name = "GetAutomatedReasoningPolicyTestResult",
        input_schema = types.GetAutomatedReasoningPolicyTestResultInput,
        output_schema = types.GetAutomatedReasoningPolicyTestResultOutput,
        http_method = "GET",
        http_path = "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/test-cases/{testCaseId}/test-results",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getCustomModel(input, options)
    return self:invokeOperation(input, {
        name = "GetCustomModel",
        input_schema = types.GetCustomModelInput,
        output_schema = types.GetCustomModelOutput,
        http_method = "GET",
        http_path = "/custom-models/{modelIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getCustomModelDeployment(input, options)
    return self:invokeOperation(input, {
        name = "GetCustomModelDeployment",
        input_schema = types.GetCustomModelDeploymentInput,
        output_schema = types.GetCustomModelDeploymentOutput,
        http_method = "GET",
        http_path = "/model-customization/custom-model-deployments/{customModelDeploymentIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getEvaluationJob(input, options)
    return self:invokeOperation(input, {
        name = "GetEvaluationJob",
        input_schema = types.GetEvaluationJobInput,
        output_schema = types.GetEvaluationJobOutput,
        http_method = "GET",
        http_path = "/evaluation-jobs/{jobIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getFoundationModel(input, options)
    return self:invokeOperation(input, {
        name = "GetFoundationModel",
        input_schema = types.GetFoundationModelInput,
        output_schema = types.GetFoundationModelOutput,
        http_method = "GET",
        http_path = "/foundation-models/{modelIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getFoundationModelAvailability(input, options)
    return self:invokeOperation(input, {
        name = "GetFoundationModelAvailability",
        input_schema = types.GetFoundationModelAvailabilityInput,
        output_schema = types.GetFoundationModelAvailabilityOutput,
        http_method = "GET",
        http_path = "/foundation-model-availability/{modelId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getGuardrail(input, options)
    return self:invokeOperation(input, {
        name = "GetGuardrail",
        input_schema = types.GetGuardrailInput,
        output_schema = types.GetGuardrailOutput,
        http_method = "GET",
        http_path = "/guardrails/{guardrailIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getImportedModel(input, options)
    return self:invokeOperation(input, {
        name = "GetImportedModel",
        input_schema = types.GetImportedModelInput,
        output_schema = types.GetImportedModelOutput,
        http_method = "GET",
        http_path = "/imported-models/{modelIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getInferenceProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetInferenceProfile",
        input_schema = types.GetInferenceProfileInput,
        output_schema = types.GetInferenceProfileOutput,
        http_method = "GET",
        http_path = "/inference-profiles/{inferenceProfileIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getMarketplaceModelEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "GetMarketplaceModelEndpoint",
        input_schema = types.GetMarketplaceModelEndpointInput,
        output_schema = types.GetMarketplaceModelEndpointOutput,
        http_method = "GET",
        http_path = "/marketplace-model/endpoints/{endpointArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getModelCopyJob(input, options)
    return self:invokeOperation(input, {
        name = "GetModelCopyJob",
        input_schema = types.GetModelCopyJobInput,
        output_schema = types.GetModelCopyJobOutput,
        http_method = "GET",
        http_path = "/model-copy-jobs/{jobArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getModelCustomizationJob(input, options)
    return self:invokeOperation(input, {
        name = "GetModelCustomizationJob",
        input_schema = types.GetModelCustomizationJobInput,
        output_schema = types.GetModelCustomizationJobOutput,
        http_method = "GET",
        http_path = "/model-customization-jobs/{jobIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getModelImportJob(input, options)
    return self:invokeOperation(input, {
        name = "GetModelImportJob",
        input_schema = types.GetModelImportJobInput,
        output_schema = types.GetModelImportJobOutput,
        http_method = "GET",
        http_path = "/model-import-jobs/{jobIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getModelInvocationJob(input, options)
    return self:invokeOperation(input, {
        name = "GetModelInvocationJob",
        input_schema = types.GetModelInvocationJobInput,
        output_schema = types.GetModelInvocationJobOutput,
        http_method = "GET",
        http_path = "/model-invocation-job/{jobIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getModelInvocationLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetModelInvocationLoggingConfiguration",
        input_schema = types.GetModelInvocationLoggingConfigurationInput,
        output_schema = types.GetModelInvocationLoggingConfigurationOutput,
        http_method = "GET",
        http_path = "/logging/modelinvocations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getPromptRouter(input, options)
    return self:invokeOperation(input, {
        name = "GetPromptRouter",
        input_schema = types.GetPromptRouterInput,
        output_schema = types.GetPromptRouterOutput,
        http_method = "GET",
        http_path = "/prompt-routers/{promptRouterArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getProvisionedModelThroughput(input, options)
    return self:invokeOperation(input, {
        name = "GetProvisionedModelThroughput",
        input_schema = types.GetProvisionedModelThroughputInput,
        output_schema = types.GetProvisionedModelThroughputOutput,
        http_method = "GET",
        http_path = "/provisioned-model-throughput/{provisionedModelId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = types.GetResourcePolicyInput,
        output_schema = types.GetResourcePolicyOutput,
        http_method = "GET",
        http_path = "/resource-policy/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getUseCaseForModelAccess(input, options)
    return self:invokeOperation(input, {
        name = "GetUseCaseForModelAccess",
        input_schema = types.GetUseCaseForModelAccessInput,
        output_schema = types.GetUseCaseForModelAccessOutput,
        http_method = "GET",
        http_path = "/use-case-for-model-access",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listAutomatedReasoningPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListAutomatedReasoningPolicies",
        input_schema = types.ListAutomatedReasoningPoliciesInput,
        output_schema = types.ListAutomatedReasoningPoliciesOutput,
        http_method = "GET",
        http_path = "/automated-reasoning-policies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listAutomatedReasoningPolicyBuildWorkflows(input, options)
    return self:invokeOperation(input, {
        name = "ListAutomatedReasoningPolicyBuildWorkflows",
        input_schema = types.ListAutomatedReasoningPolicyBuildWorkflowsInput,
        output_schema = types.ListAutomatedReasoningPolicyBuildWorkflowsOutput,
        http_method = "GET",
        http_path = "/automated-reasoning-policies/{policyArn}/build-workflows",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listAutomatedReasoningPolicyTestCases(input, options)
    return self:invokeOperation(input, {
        name = "ListAutomatedReasoningPolicyTestCases",
        input_schema = types.ListAutomatedReasoningPolicyTestCasesInput,
        output_schema = types.ListAutomatedReasoningPolicyTestCasesOutput,
        http_method = "GET",
        http_path = "/automated-reasoning-policies/{policyArn}/test-cases",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listAutomatedReasoningPolicyTestResults(input, options)
    return self:invokeOperation(input, {
        name = "ListAutomatedReasoningPolicyTestResults",
        input_schema = types.ListAutomatedReasoningPolicyTestResultsInput,
        output_schema = types.ListAutomatedReasoningPolicyTestResultsOutput,
        http_method = "GET",
        http_path = "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/test-results",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listCustomModelDeployments(input, options)
    return self:invokeOperation(input, {
        name = "ListCustomModelDeployments",
        input_schema = types.ListCustomModelDeploymentsInput,
        output_schema = types.ListCustomModelDeploymentsOutput,
        http_method = "GET",
        http_path = "/model-customization/custom-model-deployments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listCustomModels(input, options)
    return self:invokeOperation(input, {
        name = "ListCustomModels",
        input_schema = types.ListCustomModelsInput,
        output_schema = types.ListCustomModelsOutput,
        http_method = "GET",
        http_path = "/custom-models",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listEnforcedGuardrailsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "ListEnforcedGuardrailsConfiguration",
        input_schema = types.ListEnforcedGuardrailsConfigurationInput,
        output_schema = types.ListEnforcedGuardrailsConfigurationOutput,
        http_method = "GET",
        http_path = "/enforcedGuardrailsConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listEvaluationJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListEvaluationJobs",
        input_schema = types.ListEvaluationJobsInput,
        output_schema = types.ListEvaluationJobsOutput,
        http_method = "GET",
        http_path = "/evaluation-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listFoundationModelAgreementOffers(input, options)
    return self:invokeOperation(input, {
        name = "ListFoundationModelAgreementOffers",
        input_schema = types.ListFoundationModelAgreementOffersInput,
        output_schema = types.ListFoundationModelAgreementOffersOutput,
        http_method = "GET",
        http_path = "/list-foundation-model-agreement-offers/{modelId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listFoundationModels(input, options)
    return self:invokeOperation(input, {
        name = "ListFoundationModels",
        input_schema = types.ListFoundationModelsInput,
        output_schema = types.ListFoundationModelsOutput,
        http_method = "GET",
        http_path = "/foundation-models",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listGuardrails(input, options)
    return self:invokeOperation(input, {
        name = "ListGuardrails",
        input_schema = types.ListGuardrailsInput,
        output_schema = types.ListGuardrailsOutput,
        http_method = "GET",
        http_path = "/guardrails",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listImportedModels(input, options)
    return self:invokeOperation(input, {
        name = "ListImportedModels",
        input_schema = types.ListImportedModelsInput,
        output_schema = types.ListImportedModelsOutput,
        http_method = "GET",
        http_path = "/imported-models",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listInferenceProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListInferenceProfiles",
        input_schema = types.ListInferenceProfilesInput,
        output_schema = types.ListInferenceProfilesOutput,
        http_method = "GET",
        http_path = "/inference-profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listMarketplaceModelEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListMarketplaceModelEndpoints",
        input_schema = types.ListMarketplaceModelEndpointsInput,
        output_schema = types.ListMarketplaceModelEndpointsOutput,
        http_method = "GET",
        http_path = "/marketplace-model/endpoints",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listModelCopyJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListModelCopyJobs",
        input_schema = types.ListModelCopyJobsInput,
        output_schema = types.ListModelCopyJobsOutput,
        http_method = "GET",
        http_path = "/model-copy-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listModelCustomizationJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListModelCustomizationJobs",
        input_schema = types.ListModelCustomizationJobsInput,
        output_schema = types.ListModelCustomizationJobsOutput,
        http_method = "GET",
        http_path = "/model-customization-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listModelImportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListModelImportJobs",
        input_schema = types.ListModelImportJobsInput,
        output_schema = types.ListModelImportJobsOutput,
        http_method = "GET",
        http_path = "/model-import-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listModelInvocationJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListModelInvocationJobs",
        input_schema = types.ListModelInvocationJobsInput,
        output_schema = types.ListModelInvocationJobsOutput,
        http_method = "GET",
        http_path = "/model-invocation-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listPromptRouters(input, options)
    return self:invokeOperation(input, {
        name = "ListPromptRouters",
        input_schema = types.ListPromptRoutersInput,
        output_schema = types.ListPromptRoutersOutput,
        http_method = "GET",
        http_path = "/prompt-routers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listProvisionedModelThroughputs(input, options)
    return self:invokeOperation(input, {
        name = "ListProvisionedModelThroughputs",
        input_schema = types.ListProvisionedModelThroughputsInput,
        output_schema = types.ListProvisionedModelThroughputsOutput,
        http_method = "GET",
        http_path = "/provisioned-model-throughputs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/listTagsForResource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:putEnforcedGuardrailConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutEnforcedGuardrailConfiguration",
        input_schema = types.PutEnforcedGuardrailConfigurationInput,
        output_schema = types.PutEnforcedGuardrailConfigurationOutput,
        http_method = "PUT",
        http_path = "/enforcedGuardrailsConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:putModelInvocationLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutModelInvocationLoggingConfiguration",
        input_schema = types.PutModelInvocationLoggingConfigurationInput,
        output_schema = types.PutModelInvocationLoggingConfigurationOutput,
        http_method = "PUT",
        http_path = "/logging/modelinvocations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = types.PutResourcePolicyInput,
        output_schema = types.PutResourcePolicyOutput,
        http_method = "POST",
        http_path = "/resource-policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:putUseCaseForModelAccess(input, options)
    return self:invokeOperation(input, {
        name = "PutUseCaseForModelAccess",
        input_schema = types.PutUseCaseForModelAccessInput,
        output_schema = types.PutUseCaseForModelAccessOutput,
        http_method = "POST",
        http_path = "/use-case-for-model-access",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:registerMarketplaceModelEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "RegisterMarketplaceModelEndpoint",
        input_schema = types.RegisterMarketplaceModelEndpointInput,
        output_schema = types.RegisterMarketplaceModelEndpointOutput,
        http_method = "POST",
        http_path = "/marketplace-model/endpoints/{endpointIdentifier}/registration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:startAutomatedReasoningPolicyBuildWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "StartAutomatedReasoningPolicyBuildWorkflow",
        input_schema = types.StartAutomatedReasoningPolicyBuildWorkflowInput,
        output_schema = types.StartAutomatedReasoningPolicyBuildWorkflowOutput,
        http_method = "POST",
        http_path = "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowType}/start",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:startAutomatedReasoningPolicyTestWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "StartAutomatedReasoningPolicyTestWorkflow",
        input_schema = types.StartAutomatedReasoningPolicyTestWorkflowInput,
        output_schema = types.StartAutomatedReasoningPolicyTestWorkflowOutput,
        http_method = "POST",
        http_path = "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/test-workflows",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:stopEvaluationJob(input, options)
    return self:invokeOperation(input, {
        name = "StopEvaluationJob",
        input_schema = types.StopEvaluationJobInput,
        output_schema = types.StopEvaluationJobOutput,
        http_method = "POST",
        http_path = "/evaluation-job/{jobIdentifier}/stop",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:stopModelCustomizationJob(input, options)
    return self:invokeOperation(input, {
        name = "StopModelCustomizationJob",
        input_schema = types.StopModelCustomizationJobInput,
        output_schema = types.StopModelCustomizationJobOutput,
        http_method = "POST",
        http_path = "/model-customization-jobs/{jobIdentifier}/stop",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:stopModelInvocationJob(input, options)
    return self:invokeOperation(input, {
        name = "StopModelInvocationJob",
        input_schema = types.StopModelInvocationJobInput,
        output_schema = types.StopModelInvocationJobOutput,
        http_method = "POST",
        http_path = "/model-invocation-job/{jobIdentifier}/stop",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tagResource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/untagResource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:updateAutomatedReasoningPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAutomatedReasoningPolicy",
        input_schema = types.UpdateAutomatedReasoningPolicyInput,
        output_schema = types.UpdateAutomatedReasoningPolicyOutput,
        http_method = "PATCH",
        http_path = "/automated-reasoning-policies/{policyArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:updateAutomatedReasoningPolicyAnnotations(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAutomatedReasoningPolicyAnnotations",
        input_schema = types.UpdateAutomatedReasoningPolicyAnnotationsInput,
        output_schema = types.UpdateAutomatedReasoningPolicyAnnotationsOutput,
        http_method = "PATCH",
        http_path = "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/annotations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:updateAutomatedReasoningPolicyTestCase(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAutomatedReasoningPolicyTestCase",
        input_schema = types.UpdateAutomatedReasoningPolicyTestCaseInput,
        output_schema = types.UpdateAutomatedReasoningPolicyTestCaseOutput,
        http_method = "PATCH",
        http_path = "/automated-reasoning-policies/{policyArn}/test-cases/{testCaseId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:updateCustomModelDeployment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCustomModelDeployment",
        input_schema = types.UpdateCustomModelDeploymentInput,
        output_schema = types.UpdateCustomModelDeploymentOutput,
        http_method = "PATCH",
        http_path = "/model-customization/custom-model-deployments/{customModelDeploymentIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:updateGuardrail(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGuardrail",
        input_schema = types.UpdateGuardrailInput,
        output_schema = types.UpdateGuardrailOutput,
        http_method = "PUT",
        http_path = "/guardrails/{guardrailIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:updateMarketplaceModelEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMarketplaceModelEndpoint",
        input_schema = types.UpdateMarketplaceModelEndpointInput,
        output_schema = types.UpdateMarketplaceModelEndpointOutput,
        http_method = "PATCH",
        http_path = "/marketplace-model/endpoints/{endpointArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:updateProvisionedModelThroughput(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProvisionedModelThroughput",
        input_schema = types.UpdateProvisionedModelThroughputInput,
        output_schema = types.UpdateProvisionedModelThroughputOutput,
        http_method = "PATCH",
        http_path = "/provisioned-model-throughput/{provisionedModelId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

return M
