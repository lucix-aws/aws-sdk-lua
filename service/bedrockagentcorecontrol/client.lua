local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("bedrockagentcorecontrol.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("bedrockagentcorecontrol.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonBedrockAgentCoreControl"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "bedrock-agentcore", signing_region = cfg.region } }
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

function Client:createAgentRuntime(input, options)
    return self:invokeOperation(input, {
        name = "CreateAgentRuntime",
        input_schema = types.CreateAgentRuntimeInput,
        output_schema = types.CreateAgentRuntimeOutput,
        http_method = "PUT",
        http_path = "/runtimes/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAgentRuntimeEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateAgentRuntimeEndpoint",
        input_schema = types.CreateAgentRuntimeEndpointInput,
        output_schema = types.CreateAgentRuntimeEndpointOutput,
        http_method = "PUT",
        http_path = "/runtimes/{agentRuntimeId}/runtime-endpoints/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createApiKeyCredentialProvider(input, options)
    return self:invokeOperation(input, {
        name = "CreateApiKeyCredentialProvider",
        input_schema = types.CreateApiKeyCredentialProviderInput,
        output_schema = types.CreateApiKeyCredentialProviderOutput,
        http_method = "POST",
        http_path = "/identities/CreateApiKeyCredentialProvider",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBrowser(input, options)
    return self:invokeOperation(input, {
        name = "CreateBrowser",
        input_schema = types.CreateBrowserInput,
        output_schema = types.CreateBrowserOutput,
        http_method = "PUT",
        http_path = "/browsers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBrowserProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateBrowserProfile",
        input_schema = types.CreateBrowserProfileInput,
        output_schema = types.CreateBrowserProfileOutput,
        http_method = "PUT",
        http_path = "/browser-profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCodeInterpreter(input, options)
    return self:invokeOperation(input, {
        name = "CreateCodeInterpreter",
        input_schema = types.CreateCodeInterpreterInput,
        output_schema = types.CreateCodeInterpreterOutput,
        http_method = "PUT",
        http_path = "/code-interpreters",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConfigurationBundle(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfigurationBundle",
        input_schema = types.CreateConfigurationBundleInput,
        output_schema = types.CreateConfigurationBundleOutput,
        http_method = "POST",
        http_path = "/configuration-bundles/create",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEvaluator(input, options)
    return self:invokeOperation(input, {
        name = "CreateEvaluator",
        input_schema = types.CreateEvaluatorInput,
        output_schema = types.CreateEvaluatorOutput,
        http_method = "POST",
        http_path = "/evaluators/create",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGateway(input, options)
    return self:invokeOperation(input, {
        name = "CreateGateway",
        input_schema = types.CreateGatewayInput,
        output_schema = types.CreateGatewayOutput,
        http_method = "POST",
        http_path = "/gateways/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGatewayRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateGatewayRule",
        input_schema = types.CreateGatewayRuleInput,
        output_schema = types.CreateGatewayRuleOutput,
        http_method = "POST",
        http_path = "/gateways/{gatewayIdentifier}/rules",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGatewayTarget(input, options)
    return self:invokeOperation(input, {
        name = "CreateGatewayTarget",
        input_schema = types.CreateGatewayTargetInput,
        output_schema = types.CreateGatewayTargetOutput,
        http_method = "POST",
        http_path = "/gateways/{gatewayIdentifier}/targets/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createHarness(input, options)
    return self:invokeOperation(input, {
        name = "CreateHarness",
        input_schema = types.CreateHarnessInput,
        output_schema = types.CreateHarnessOutput,
        http_method = "POST",
        http_path = "/harnesses",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMemory(input, options)
    return self:invokeOperation(input, {
        name = "CreateMemory",
        input_schema = types.CreateMemoryInput,
        output_schema = types.CreateMemoryOutput,
        http_method = "POST",
        http_path = "/memories/create",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createOauth2CredentialProvider(input, options)
    return self:invokeOperation(input, {
        name = "CreateOauth2CredentialProvider",
        input_schema = types.CreateOauth2CredentialProviderInput,
        output_schema = types.CreateOauth2CredentialProviderOutput,
        http_method = "POST",
        http_path = "/identities/CreateOauth2CredentialProvider",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createOnlineEvaluationConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateOnlineEvaluationConfig",
        input_schema = types.CreateOnlineEvaluationConfigInput,
        output_schema = types.CreateOnlineEvaluationConfigOutput,
        http_method = "POST",
        http_path = "/online-evaluation-configs/create",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreatePolicy",
        input_schema = types.CreatePolicyInput,
        output_schema = types.CreatePolicyOutput,
        http_method = "POST",
        http_path = "/policy-engines/{policyEngineId}/policies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPolicyEngine(input, options)
    return self:invokeOperation(input, {
        name = "CreatePolicyEngine",
        input_schema = types.CreatePolicyEngineInput,
        output_schema = types.CreatePolicyEngineOutput,
        http_method = "POST",
        http_path = "/policy-engines",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRegistry(input, options)
    return self:invokeOperation(input, {
        name = "CreateRegistry",
        input_schema = types.CreateRegistryInput,
        output_schema = types.CreateRegistryOutput,
        http_method = "POST",
        http_path = "/registries",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRegistryRecord(input, options)
    return self:invokeOperation(input, {
        name = "CreateRegistryRecord",
        input_schema = types.CreateRegistryRecordInput,
        output_schema = types.CreateRegistryRecordOutput,
        http_method = "POST",
        http_path = "/registries/{registryId}/records",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWorkloadIdentity(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkloadIdentity",
        input_schema = types.CreateWorkloadIdentityInput,
        output_schema = types.CreateWorkloadIdentityOutput,
        http_method = "POST",
        http_path = "/identities/CreateWorkloadIdentity",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAgentRuntime(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAgentRuntime",
        input_schema = types.DeleteAgentRuntimeInput,
        output_schema = types.DeleteAgentRuntimeOutput,
        http_method = "DELETE",
        http_path = "/runtimes/{agentRuntimeId}/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAgentRuntimeEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAgentRuntimeEndpoint",
        input_schema = types.DeleteAgentRuntimeEndpointInput,
        output_schema = types.DeleteAgentRuntimeEndpointOutput,
        http_method = "DELETE",
        http_path = "/runtimes/{agentRuntimeId}/runtime-endpoints/{endpointName}/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApiKeyCredentialProvider(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApiKeyCredentialProvider",
        input_schema = types.DeleteApiKeyCredentialProviderInput,
        output_schema = types.DeleteApiKeyCredentialProviderOutput,
        http_method = "POST",
        http_path = "/identities/DeleteApiKeyCredentialProvider",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBrowser(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBrowser",
        input_schema = types.DeleteBrowserInput,
        output_schema = types.DeleteBrowserOutput,
        http_method = "DELETE",
        http_path = "/browsers/{browserId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBrowserProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBrowserProfile",
        input_schema = types.DeleteBrowserProfileInput,
        output_schema = types.DeleteBrowserProfileOutput,
        http_method = "DELETE",
        http_path = "/browser-profiles/{profileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCodeInterpreter(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCodeInterpreter",
        input_schema = types.DeleteCodeInterpreterInput,
        output_schema = types.DeleteCodeInterpreterOutput,
        http_method = "DELETE",
        http_path = "/code-interpreters/{codeInterpreterId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConfigurationBundle(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfigurationBundle",
        input_schema = types.DeleteConfigurationBundleInput,
        output_schema = types.DeleteConfigurationBundleOutput,
        http_method = "DELETE",
        http_path = "/configuration-bundles/{bundleId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEvaluator(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEvaluator",
        input_schema = types.DeleteEvaluatorInput,
        output_schema = types.DeleteEvaluatorOutput,
        http_method = "DELETE",
        http_path = "/evaluators/{evaluatorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGateway(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGateway",
        input_schema = types.DeleteGatewayInput,
        output_schema = types.DeleteGatewayOutput,
        http_method = "DELETE",
        http_path = "/gateways/{gatewayIdentifier}/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGatewayRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGatewayRule",
        input_schema = types.DeleteGatewayRuleInput,
        output_schema = types.DeleteGatewayRuleOutput,
        http_method = "DELETE",
        http_path = "/gateways/{gatewayIdentifier}/rules/{ruleId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGatewayTarget(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGatewayTarget",
        input_schema = types.DeleteGatewayTargetInput,
        output_schema = types.DeleteGatewayTargetOutput,
        http_method = "DELETE",
        http_path = "/gateways/{gatewayIdentifier}/targets/{targetId}/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteHarness(input, options)
    return self:invokeOperation(input, {
        name = "DeleteHarness",
        input_schema = types.DeleteHarnessInput,
        output_schema = types.DeleteHarnessOutput,
        http_method = "DELETE",
        http_path = "/harnesses/{harnessId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMemory(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMemory",
        input_schema = types.DeleteMemoryInput,
        output_schema = types.DeleteMemoryOutput,
        http_method = "DELETE",
        http_path = "/memories/{memoryId}/delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteOauth2CredentialProvider(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOauth2CredentialProvider",
        input_schema = types.DeleteOauth2CredentialProviderInput,
        output_schema = types.DeleteOauth2CredentialProviderOutput,
        http_method = "POST",
        http_path = "/identities/DeleteOauth2CredentialProvider",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteOnlineEvaluationConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOnlineEvaluationConfig",
        input_schema = types.DeleteOnlineEvaluationConfigInput,
        output_schema = types.DeleteOnlineEvaluationConfigOutput,
        http_method = "DELETE",
        http_path = "/online-evaluation-configs/{onlineEvaluationConfigId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeletePolicy",
        input_schema = types.DeletePolicyInput,
        output_schema = types.DeletePolicyOutput,
        http_method = "DELETE",
        http_path = "/policy-engines/{policyEngineId}/policies/{policyId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePolicyEngine(input, options)
    return self:invokeOperation(input, {
        name = "DeletePolicyEngine",
        input_schema = types.DeletePolicyEngineInput,
        output_schema = types.DeletePolicyEngineOutput,
        http_method = "DELETE",
        http_path = "/policy-engines/{policyEngineId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRegistry(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRegistry",
        input_schema = types.DeleteRegistryInput,
        output_schema = types.DeleteRegistryOutput,
        http_method = "DELETE",
        http_path = "/registries/{registryId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRegistryRecord(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRegistryRecord",
        input_schema = types.DeleteRegistryRecordInput,
        output_schema = types.DeleteRegistryRecordOutput,
        http_method = "DELETE",
        http_path = "/registries/{registryId}/records/{recordId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = types.DeleteResourcePolicyInput,
        output_schema = types.DeleteResourcePolicyOutput,
        http_method = "DELETE",
        http_path = "/resourcepolicy/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWorkloadIdentity(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkloadIdentity",
        input_schema = types.DeleteWorkloadIdentityInput,
        output_schema = types.DeleteWorkloadIdentityOutput,
        http_method = "POST",
        http_path = "/identities/DeleteWorkloadIdentity",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAgentRuntime(input, options)
    return self:invokeOperation(input, {
        name = "GetAgentRuntime",
        input_schema = types.GetAgentRuntimeInput,
        output_schema = types.GetAgentRuntimeOutput,
        http_method = "GET",
        http_path = "/runtimes/{agentRuntimeId}/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAgentRuntimeEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "GetAgentRuntimeEndpoint",
        input_schema = types.GetAgentRuntimeEndpointInput,
        output_schema = types.GetAgentRuntimeEndpointOutput,
        http_method = "GET",
        http_path = "/runtimes/{agentRuntimeId}/runtime-endpoints/{endpointName}/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApiKeyCredentialProvider(input, options)
    return self:invokeOperation(input, {
        name = "GetApiKeyCredentialProvider",
        input_schema = types.GetApiKeyCredentialProviderInput,
        output_schema = types.GetApiKeyCredentialProviderOutput,
        http_method = "POST",
        http_path = "/identities/GetApiKeyCredentialProvider",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBrowser(input, options)
    return self:invokeOperation(input, {
        name = "GetBrowser",
        input_schema = types.GetBrowserInput,
        output_schema = types.GetBrowserOutput,
        http_method = "GET",
        http_path = "/browsers/{browserId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBrowserProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetBrowserProfile",
        input_schema = types.GetBrowserProfileInput,
        output_schema = types.GetBrowserProfileOutput,
        http_method = "GET",
        http_path = "/browser-profiles/{profileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCodeInterpreter(input, options)
    return self:invokeOperation(input, {
        name = "GetCodeInterpreter",
        input_schema = types.GetCodeInterpreterInput,
        output_schema = types.GetCodeInterpreterOutput,
        http_method = "GET",
        http_path = "/code-interpreters/{codeInterpreterId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConfigurationBundle(input, options)
    return self:invokeOperation(input, {
        name = "GetConfigurationBundle",
        input_schema = types.GetConfigurationBundleInput,
        output_schema = types.GetConfigurationBundleOutput,
        http_method = "GET",
        http_path = "/configuration-bundles/{bundleId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConfigurationBundleVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetConfigurationBundleVersion",
        input_schema = types.GetConfigurationBundleVersionInput,
        output_schema = types.GetConfigurationBundleVersionOutput,
        http_method = "GET",
        http_path = "/configuration-bundles/{bundleId}/versions/{versionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEvaluator(input, options)
    return self:invokeOperation(input, {
        name = "GetEvaluator",
        input_schema = types.GetEvaluatorInput,
        output_schema = types.GetEvaluatorOutput,
        http_method = "GET",
        http_path = "/evaluators/{evaluatorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGateway(input, options)
    return self:invokeOperation(input, {
        name = "GetGateway",
        input_schema = types.GetGatewayInput,
        output_schema = types.GetGatewayOutput,
        http_method = "GET",
        http_path = "/gateways/{gatewayIdentifier}/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGatewayRule(input, options)
    return self:invokeOperation(input, {
        name = "GetGatewayRule",
        input_schema = types.GetGatewayRuleInput,
        output_schema = types.GetGatewayRuleOutput,
        http_method = "GET",
        http_path = "/gateways/{gatewayIdentifier}/rules/{ruleId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGatewayTarget(input, options)
    return self:invokeOperation(input, {
        name = "GetGatewayTarget",
        input_schema = types.GetGatewayTargetInput,
        output_schema = types.GetGatewayTargetOutput,
        http_method = "GET",
        http_path = "/gateways/{gatewayIdentifier}/targets/{targetId}/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getHarness(input, options)
    return self:invokeOperation(input, {
        name = "GetHarness",
        input_schema = types.GetHarnessInput,
        output_schema = types.GetHarnessOutput,
        http_method = "GET",
        http_path = "/harnesses/{harnessId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMemory(input, options)
    return self:invokeOperation(input, {
        name = "GetMemory",
        input_schema = types.GetMemoryInput,
        output_schema = types.GetMemoryOutput,
        http_method = "GET",
        http_path = "/memories/{memoryId}/details",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOauth2CredentialProvider(input, options)
    return self:invokeOperation(input, {
        name = "GetOauth2CredentialProvider",
        input_schema = types.GetOauth2CredentialProviderInput,
        output_schema = types.GetOauth2CredentialProviderOutput,
        http_method = "POST",
        http_path = "/identities/GetOauth2CredentialProvider",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOnlineEvaluationConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetOnlineEvaluationConfig",
        input_schema = types.GetOnlineEvaluationConfigInput,
        output_schema = types.GetOnlineEvaluationConfigOutput,
        http_method = "GET",
        http_path = "/online-evaluation-configs/{onlineEvaluationConfigId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetPolicy",
        input_schema = types.GetPolicyInput,
        output_schema = types.GetPolicyOutput,
        http_method = "GET",
        http_path = "/policy-engines/{policyEngineId}/policies/{policyId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPolicyEngine(input, options)
    return self:invokeOperation(input, {
        name = "GetPolicyEngine",
        input_schema = types.GetPolicyEngineInput,
        output_schema = types.GetPolicyEngineOutput,
        http_method = "GET",
        http_path = "/policy-engines/{policyEngineId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPolicyGeneration(input, options)
    return self:invokeOperation(input, {
        name = "GetPolicyGeneration",
        input_schema = types.GetPolicyGenerationInput,
        output_schema = types.GetPolicyGenerationOutput,
        http_method = "GET",
        http_path = "/policy-engines/{policyEngineId}/policy-generations/{policyGenerationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRegistry(input, options)
    return self:invokeOperation(input, {
        name = "GetRegistry",
        input_schema = types.GetRegistryInput,
        output_schema = types.GetRegistryOutput,
        http_method = "GET",
        http_path = "/registries/{registryId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRegistryRecord(input, options)
    return self:invokeOperation(input, {
        name = "GetRegistryRecord",
        input_schema = types.GetRegistryRecordInput,
        output_schema = types.GetRegistryRecordOutput,
        http_method = "GET",
        http_path = "/registries/{registryId}/records/{recordId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = types.GetResourcePolicyInput,
        output_schema = types.GetResourcePolicyOutput,
        http_method = "GET",
        http_path = "/resourcepolicy/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTokenVault(input, options)
    return self:invokeOperation(input, {
        name = "GetTokenVault",
        input_schema = types.GetTokenVaultInput,
        output_schema = types.GetTokenVaultOutput,
        http_method = "POST",
        http_path = "/identities/get-token-vault",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWorkloadIdentity(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkloadIdentity",
        input_schema = types.GetWorkloadIdentityInput,
        output_schema = types.GetWorkloadIdentityOutput,
        http_method = "POST",
        http_path = "/identities/GetWorkloadIdentity",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAgentRuntimeEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListAgentRuntimeEndpoints",
        input_schema = types.ListAgentRuntimeEndpointsInput,
        output_schema = types.ListAgentRuntimeEndpointsOutput,
        http_method = "POST",
        http_path = "/runtimes/{agentRuntimeId}/runtime-endpoints/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAgentRuntimes(input, options)
    return self:invokeOperation(input, {
        name = "ListAgentRuntimes",
        input_schema = types.ListAgentRuntimesInput,
        output_schema = types.ListAgentRuntimesOutput,
        http_method = "POST",
        http_path = "/runtimes/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAgentRuntimeVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListAgentRuntimeVersions",
        input_schema = types.ListAgentRuntimeVersionsInput,
        output_schema = types.ListAgentRuntimeVersionsOutput,
        http_method = "POST",
        http_path = "/runtimes/{agentRuntimeId}/versions/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApiKeyCredentialProviders(input, options)
    return self:invokeOperation(input, {
        name = "ListApiKeyCredentialProviders",
        input_schema = types.ListApiKeyCredentialProvidersInput,
        output_schema = types.ListApiKeyCredentialProvidersOutput,
        http_method = "POST",
        http_path = "/identities/ListApiKeyCredentialProviders",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBrowserProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListBrowserProfiles",
        input_schema = types.ListBrowserProfilesInput,
        output_schema = types.ListBrowserProfilesOutput,
        http_method = "POST",
        http_path = "/browser-profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBrowsers(input, options)
    return self:invokeOperation(input, {
        name = "ListBrowsers",
        input_schema = types.ListBrowsersInput,
        output_schema = types.ListBrowsersOutput,
        http_method = "POST",
        http_path = "/browsers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCodeInterpreters(input, options)
    return self:invokeOperation(input, {
        name = "ListCodeInterpreters",
        input_schema = types.ListCodeInterpretersInput,
        output_schema = types.ListCodeInterpretersOutput,
        http_method = "POST",
        http_path = "/code-interpreters",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConfigurationBundles(input, options)
    return self:invokeOperation(input, {
        name = "ListConfigurationBundles",
        input_schema = types.ListConfigurationBundlesInput,
        output_schema = types.ListConfigurationBundlesOutput,
        http_method = "POST",
        http_path = "/configuration-bundles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConfigurationBundleVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListConfigurationBundleVersions",
        input_schema = types.ListConfigurationBundleVersionsInput,
        output_schema = types.ListConfigurationBundleVersionsOutput,
        http_method = "POST",
        http_path = "/configuration-bundles/{bundleId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEvaluators(input, options)
    return self:invokeOperation(input, {
        name = "ListEvaluators",
        input_schema = types.ListEvaluatorsInput,
        output_schema = types.ListEvaluatorsOutput,
        http_method = "POST",
        http_path = "/evaluators",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGatewayRules(input, options)
    return self:invokeOperation(input, {
        name = "ListGatewayRules",
        input_schema = types.ListGatewayRulesInput,
        output_schema = types.ListGatewayRulesOutput,
        http_method = "GET",
        http_path = "/gateways/{gatewayIdentifier}/rules",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGateways(input, options)
    return self:invokeOperation(input, {
        name = "ListGateways",
        input_schema = types.ListGatewaysInput,
        output_schema = types.ListGatewaysOutput,
        http_method = "GET",
        http_path = "/gateways/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGatewayTargets(input, options)
    return self:invokeOperation(input, {
        name = "ListGatewayTargets",
        input_schema = types.ListGatewayTargetsInput,
        output_schema = types.ListGatewayTargetsOutput,
        http_method = "GET",
        http_path = "/gateways/{gatewayIdentifier}/targets/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listHarnesses(input, options)
    return self:invokeOperation(input, {
        name = "ListHarnesses",
        input_schema = types.ListHarnessesInput,
        output_schema = types.ListHarnessesOutput,
        http_method = "GET",
        http_path = "/harnesses",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMemories(input, options)
    return self:invokeOperation(input, {
        name = "ListMemories",
        input_schema = types.ListMemoriesInput,
        output_schema = types.ListMemoriesOutput,
        http_method = "POST",
        http_path = "/memories/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOauth2CredentialProviders(input, options)
    return self:invokeOperation(input, {
        name = "ListOauth2CredentialProviders",
        input_schema = types.ListOauth2CredentialProvidersInput,
        output_schema = types.ListOauth2CredentialProvidersOutput,
        http_method = "POST",
        http_path = "/identities/ListOauth2CredentialProviders",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOnlineEvaluationConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListOnlineEvaluationConfigs",
        input_schema = types.ListOnlineEvaluationConfigsInput,
        output_schema = types.ListOnlineEvaluationConfigsOutput,
        http_method = "POST",
        http_path = "/online-evaluation-configs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListPolicies",
        input_schema = types.ListPoliciesInput,
        output_schema = types.ListPoliciesOutput,
        http_method = "GET",
        http_path = "/policy-engines/{policyEngineId}/policies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPolicyEngines(input, options)
    return self:invokeOperation(input, {
        name = "ListPolicyEngines",
        input_schema = types.ListPolicyEnginesInput,
        output_schema = types.ListPolicyEnginesOutput,
        http_method = "GET",
        http_path = "/policy-engines",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPolicyGenerationAssets(input, options)
    return self:invokeOperation(input, {
        name = "ListPolicyGenerationAssets",
        input_schema = types.ListPolicyGenerationAssetsInput,
        output_schema = types.ListPolicyGenerationAssetsOutput,
        http_method = "GET",
        http_path = "/policy-engines/{policyEngineId}/policy-generations/{policyGenerationId}/assets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPolicyGenerations(input, options)
    return self:invokeOperation(input, {
        name = "ListPolicyGenerations",
        input_schema = types.ListPolicyGenerationsInput,
        output_schema = types.ListPolicyGenerationsOutput,
        http_method = "GET",
        http_path = "/policy-engines/{policyEngineId}/policy-generations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRegistries(input, options)
    return self:invokeOperation(input, {
        name = "ListRegistries",
        input_schema = types.ListRegistriesInput,
        output_schema = types.ListRegistriesOutput,
        http_method = "GET",
        http_path = "/registries",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRegistryRecords(input, options)
    return self:invokeOperation(input, {
        name = "ListRegistryRecords",
        input_schema = types.ListRegistryRecordsInput,
        output_schema = types.ListRegistryRecordsOutput,
        http_method = "GET",
        http_path = "/registries/{registryId}/records",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkloadIdentities(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkloadIdentities",
        input_schema = types.ListWorkloadIdentitiesInput,
        output_schema = types.ListWorkloadIdentitiesOutput,
        http_method = "POST",
        http_path = "/identities/ListWorkloadIdentities",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = types.PutResourcePolicyInput,
        output_schema = types.PutResourcePolicyOutput,
        http_method = "PUT",
        http_path = "/resourcepolicy/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setTokenVaultCMK(input, options)
    return self:invokeOperation(input, {
        name = "SetTokenVaultCMK",
        input_schema = types.SetTokenVaultCMKInput,
        output_schema = types.SetTokenVaultCMKOutput,
        http_method = "POST",
        http_path = "/identities/set-token-vault-cmk",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startPolicyGeneration(input, options)
    return self:invokeOperation(input, {
        name = "StartPolicyGeneration",
        input_schema = types.StartPolicyGenerationInput,
        output_schema = types.StartPolicyGenerationOutput,
        http_method = "POST",
        http_path = "/policy-engines/{policyEngineId}/policy-generations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:submitRegistryRecordForApproval(input, options)
    return self:invokeOperation(input, {
        name = "SubmitRegistryRecordForApproval",
        input_schema = types.SubmitRegistryRecordForApprovalInput,
        output_schema = types.SubmitRegistryRecordForApprovalOutput,
        http_method = "POST",
        http_path = "/registries/{registryId}/records/{recordId}/submit-for-approval",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:synchronizeGatewayTargets(input, options)
    return self:invokeOperation(input, {
        name = "SynchronizeGatewayTargets",
        input_schema = types.SynchronizeGatewayTargetsInput,
        output_schema = types.SynchronizeGatewayTargetsOutput,
        http_method = "PUT",
        http_path = "/gateways/{gatewayIdentifier}/synchronizeTargets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAgentRuntime(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAgentRuntime",
        input_schema = types.UpdateAgentRuntimeInput,
        output_schema = types.UpdateAgentRuntimeOutput,
        http_method = "PUT",
        http_path = "/runtimes/{agentRuntimeId}/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAgentRuntimeEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAgentRuntimeEndpoint",
        input_schema = types.UpdateAgentRuntimeEndpointInput,
        output_schema = types.UpdateAgentRuntimeEndpointOutput,
        http_method = "PUT",
        http_path = "/runtimes/{agentRuntimeId}/runtime-endpoints/{endpointName}/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApiKeyCredentialProvider(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApiKeyCredentialProvider",
        input_schema = types.UpdateApiKeyCredentialProviderInput,
        output_schema = types.UpdateApiKeyCredentialProviderOutput,
        http_method = "POST",
        http_path = "/identities/UpdateApiKeyCredentialProvider",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConfigurationBundle(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConfigurationBundle",
        input_schema = types.UpdateConfigurationBundleInput,
        output_schema = types.UpdateConfigurationBundleOutput,
        http_method = "PUT",
        http_path = "/configuration-bundles/{bundleId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEvaluator(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEvaluator",
        input_schema = types.UpdateEvaluatorInput,
        output_schema = types.UpdateEvaluatorOutput,
        http_method = "PUT",
        http_path = "/evaluators/{evaluatorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGateway(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGateway",
        input_schema = types.UpdateGatewayInput,
        output_schema = types.UpdateGatewayOutput,
        http_method = "PUT",
        http_path = "/gateways/{gatewayIdentifier}/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGatewayRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGatewayRule",
        input_schema = types.UpdateGatewayRuleInput,
        output_schema = types.UpdateGatewayRuleOutput,
        http_method = "PATCH",
        http_path = "/gateways/{gatewayIdentifier}/rules/{ruleId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGatewayTarget(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGatewayTarget",
        input_schema = types.UpdateGatewayTargetInput,
        output_schema = types.UpdateGatewayTargetOutput,
        http_method = "PUT",
        http_path = "/gateways/{gatewayIdentifier}/targets/{targetId}/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateHarness(input, options)
    return self:invokeOperation(input, {
        name = "UpdateHarness",
        input_schema = types.UpdateHarnessInput,
        output_schema = types.UpdateHarnessOutput,
        http_method = "PATCH",
        http_path = "/harnesses/{harnessId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMemory(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMemory",
        input_schema = types.UpdateMemoryInput,
        output_schema = types.UpdateMemoryOutput,
        http_method = "PUT",
        http_path = "/memories/{memoryId}/update",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateOauth2CredentialProvider(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOauth2CredentialProvider",
        input_schema = types.UpdateOauth2CredentialProviderInput,
        output_schema = types.UpdateOauth2CredentialProviderOutput,
        http_method = "POST",
        http_path = "/identities/UpdateOauth2CredentialProvider",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateOnlineEvaluationConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOnlineEvaluationConfig",
        input_schema = types.UpdateOnlineEvaluationConfigInput,
        output_schema = types.UpdateOnlineEvaluationConfigOutput,
        http_method = "PUT",
        http_path = "/online-evaluation-configs/{onlineEvaluationConfigId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePolicy",
        input_schema = types.UpdatePolicyInput,
        output_schema = types.UpdatePolicyOutput,
        http_method = "PATCH",
        http_path = "/policy-engines/{policyEngineId}/policies/{policyId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePolicyEngine(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePolicyEngine",
        input_schema = types.UpdatePolicyEngineInput,
        output_schema = types.UpdatePolicyEngineOutput,
        http_method = "PATCH",
        http_path = "/policy-engines/{policyEngineId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRegistry(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRegistry",
        input_schema = types.UpdateRegistryInput,
        output_schema = types.UpdateRegistryOutput,
        http_method = "PATCH",
        http_path = "/registries/{registryId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRegistryRecord(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRegistryRecord",
        input_schema = types.UpdateRegistryRecordInput,
        output_schema = types.UpdateRegistryRecordOutput,
        http_method = "PATCH",
        http_path = "/registries/{registryId}/records/{recordId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRegistryRecordStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRegistryRecordStatus",
        input_schema = types.UpdateRegistryRecordStatusInput,
        output_schema = types.UpdateRegistryRecordStatusOutput,
        http_method = "PATCH",
        http_path = "/registries/{registryId}/records/{recordId}/status",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWorkloadIdentity(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkloadIdentity",
        input_schema = types.UpdateWorkloadIdentityInput,
        output_schema = types.UpdateWorkloadIdentityOutput,
        http_method = "POST",
        http_path = "/identities/UpdateWorkloadIdentity",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
