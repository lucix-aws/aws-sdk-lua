local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("bedrockagentcorecontrol.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("bedrockagentcorecontrol.schemas")
local sdk_defaults = require("sdk_defaults")

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
        input_schema = schemas.CreateAgentRuntimeInput,
        output_schema = schemas.CreateAgentRuntimeOutput,
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
        input_schema = schemas.CreateAgentRuntimeEndpointInput,
        output_schema = schemas.CreateAgentRuntimeEndpointOutput,
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
        input_schema = schemas.CreateApiKeyCredentialProviderInput,
        output_schema = schemas.CreateApiKeyCredentialProviderOutput,
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
        input_schema = schemas.CreateBrowserInput,
        output_schema = schemas.CreateBrowserOutput,
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
        input_schema = schemas.CreateBrowserProfileInput,
        output_schema = schemas.CreateBrowserProfileOutput,
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
        input_schema = schemas.CreateCodeInterpreterInput,
        output_schema = schemas.CreateCodeInterpreterOutput,
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
        input_schema = schemas.CreateConfigurationBundleInput,
        output_schema = schemas.CreateConfigurationBundleOutput,
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
        input_schema = schemas.CreateEvaluatorInput,
        output_schema = schemas.CreateEvaluatorOutput,
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
        input_schema = schemas.CreateGatewayInput,
        output_schema = schemas.CreateGatewayOutput,
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
        input_schema = schemas.CreateGatewayRuleInput,
        output_schema = schemas.CreateGatewayRuleOutput,
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
        input_schema = schemas.CreateGatewayTargetInput,
        output_schema = schemas.CreateGatewayTargetOutput,
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
        input_schema = schemas.CreateHarnessInput,
        output_schema = schemas.CreateHarnessOutput,
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
        input_schema = schemas.CreateMemoryInput,
        output_schema = schemas.CreateMemoryOutput,
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
        input_schema = schemas.CreateOauth2CredentialProviderInput,
        output_schema = schemas.CreateOauth2CredentialProviderOutput,
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
        input_schema = schemas.CreateOnlineEvaluationConfigInput,
        output_schema = schemas.CreateOnlineEvaluationConfigOutput,
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
        input_schema = schemas.CreatePolicyInput,
        output_schema = schemas.CreatePolicyOutput,
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
        input_schema = schemas.CreatePolicyEngineInput,
        output_schema = schemas.CreatePolicyEngineOutput,
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
        input_schema = schemas.CreateRegistryInput,
        output_schema = schemas.CreateRegistryOutput,
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
        input_schema = schemas.CreateRegistryRecordInput,
        output_schema = schemas.CreateRegistryRecordOutput,
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
        input_schema = schemas.CreateWorkloadIdentityInput,
        output_schema = schemas.CreateWorkloadIdentityOutput,
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
        input_schema = schemas.DeleteAgentRuntimeInput,
        output_schema = schemas.DeleteAgentRuntimeOutput,
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
        input_schema = schemas.DeleteAgentRuntimeEndpointInput,
        output_schema = schemas.DeleteAgentRuntimeEndpointOutput,
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
        input_schema = schemas.DeleteApiKeyCredentialProviderInput,
        output_schema = schemas.DeleteApiKeyCredentialProviderOutput,
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
        input_schema = schemas.DeleteBrowserInput,
        output_schema = schemas.DeleteBrowserOutput,
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
        input_schema = schemas.DeleteBrowserProfileInput,
        output_schema = schemas.DeleteBrowserProfileOutput,
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
        input_schema = schemas.DeleteCodeInterpreterInput,
        output_schema = schemas.DeleteCodeInterpreterOutput,
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
        input_schema = schemas.DeleteConfigurationBundleInput,
        output_schema = schemas.DeleteConfigurationBundleOutput,
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
        input_schema = schemas.DeleteEvaluatorInput,
        output_schema = schemas.DeleteEvaluatorOutput,
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
        input_schema = schemas.DeleteGatewayInput,
        output_schema = schemas.DeleteGatewayOutput,
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
        input_schema = schemas.DeleteGatewayRuleInput,
        output_schema = schemas.DeleteGatewayRuleOutput,
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
        input_schema = schemas.DeleteGatewayTargetInput,
        output_schema = schemas.DeleteGatewayTargetOutput,
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
        input_schema = schemas.DeleteHarnessInput,
        output_schema = schemas.DeleteHarnessOutput,
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
        input_schema = schemas.DeleteMemoryInput,
        output_schema = schemas.DeleteMemoryOutput,
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
        input_schema = schemas.DeleteOauth2CredentialProviderInput,
        output_schema = schemas.DeleteOauth2CredentialProviderOutput,
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
        input_schema = schemas.DeleteOnlineEvaluationConfigInput,
        output_schema = schemas.DeleteOnlineEvaluationConfigOutput,
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
        input_schema = schemas.DeletePolicyInput,
        output_schema = schemas.DeletePolicyOutput,
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
        input_schema = schemas.DeletePolicyEngineInput,
        output_schema = schemas.DeletePolicyEngineOutput,
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
        input_schema = schemas.DeleteRegistryInput,
        output_schema = schemas.DeleteRegistryOutput,
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
        input_schema = schemas.DeleteRegistryRecordInput,
        output_schema = schemas.DeleteRegistryRecordOutput,
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
        input_schema = schemas.DeleteResourcePolicyInput,
        output_schema = schemas.DeleteResourcePolicyOutput,
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
        input_schema = schemas.DeleteWorkloadIdentityInput,
        output_schema = schemas.DeleteWorkloadIdentityOutput,
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
        input_schema = schemas.GetAgentRuntimeInput,
        output_schema = schemas.GetAgentRuntimeOutput,
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
        input_schema = schemas.GetAgentRuntimeEndpointInput,
        output_schema = schemas.GetAgentRuntimeEndpointOutput,
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
        input_schema = schemas.GetApiKeyCredentialProviderInput,
        output_schema = schemas.GetApiKeyCredentialProviderOutput,
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
        input_schema = schemas.GetBrowserInput,
        output_schema = schemas.GetBrowserOutput,
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
        input_schema = schemas.GetBrowserProfileInput,
        output_schema = schemas.GetBrowserProfileOutput,
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
        input_schema = schemas.GetCodeInterpreterInput,
        output_schema = schemas.GetCodeInterpreterOutput,
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
        input_schema = schemas.GetConfigurationBundleInput,
        output_schema = schemas.GetConfigurationBundleOutput,
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
        input_schema = schemas.GetConfigurationBundleVersionInput,
        output_schema = schemas.GetConfigurationBundleVersionOutput,
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
        input_schema = schemas.GetEvaluatorInput,
        output_schema = schemas.GetEvaluatorOutput,
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
        input_schema = schemas.GetGatewayInput,
        output_schema = schemas.GetGatewayOutput,
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
        input_schema = schemas.GetGatewayRuleInput,
        output_schema = schemas.GetGatewayRuleOutput,
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
        input_schema = schemas.GetGatewayTargetInput,
        output_schema = schemas.GetGatewayTargetOutput,
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
        input_schema = schemas.GetHarnessInput,
        output_schema = schemas.GetHarnessOutput,
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
        input_schema = schemas.GetMemoryInput,
        output_schema = schemas.GetMemoryOutput,
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
        input_schema = schemas.GetOauth2CredentialProviderInput,
        output_schema = schemas.GetOauth2CredentialProviderOutput,
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
        input_schema = schemas.GetOnlineEvaluationConfigInput,
        output_schema = schemas.GetOnlineEvaluationConfigOutput,
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
        input_schema = schemas.GetPolicyInput,
        output_schema = schemas.GetPolicyOutput,
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
        input_schema = schemas.GetPolicyEngineInput,
        output_schema = schemas.GetPolicyEngineOutput,
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
        input_schema = schemas.GetPolicyGenerationInput,
        output_schema = schemas.GetPolicyGenerationOutput,
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
        input_schema = schemas.GetRegistryInput,
        output_schema = schemas.GetRegistryOutput,
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
        input_schema = schemas.GetRegistryRecordInput,
        output_schema = schemas.GetRegistryRecordOutput,
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
        input_schema = schemas.GetResourcePolicyInput,
        output_schema = schemas.GetResourcePolicyOutput,
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
        input_schema = schemas.GetTokenVaultInput,
        output_schema = schemas.GetTokenVaultOutput,
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
        input_schema = schemas.GetWorkloadIdentityInput,
        output_schema = schemas.GetWorkloadIdentityOutput,
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
        input_schema = schemas.ListAgentRuntimeEndpointsInput,
        output_schema = schemas.ListAgentRuntimeEndpointsOutput,
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
        input_schema = schemas.ListAgentRuntimesInput,
        output_schema = schemas.ListAgentRuntimesOutput,
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
        input_schema = schemas.ListAgentRuntimeVersionsInput,
        output_schema = schemas.ListAgentRuntimeVersionsOutput,
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
        input_schema = schemas.ListApiKeyCredentialProvidersInput,
        output_schema = schemas.ListApiKeyCredentialProvidersOutput,
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
        input_schema = schemas.ListBrowserProfilesInput,
        output_schema = schemas.ListBrowserProfilesOutput,
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
        input_schema = schemas.ListBrowsersInput,
        output_schema = schemas.ListBrowsersOutput,
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
        input_schema = schemas.ListCodeInterpretersInput,
        output_schema = schemas.ListCodeInterpretersOutput,
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
        input_schema = schemas.ListConfigurationBundlesInput,
        output_schema = schemas.ListConfigurationBundlesOutput,
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
        input_schema = schemas.ListConfigurationBundleVersionsInput,
        output_schema = schemas.ListConfigurationBundleVersionsOutput,
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
        input_schema = schemas.ListEvaluatorsInput,
        output_schema = schemas.ListEvaluatorsOutput,
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
        input_schema = schemas.ListGatewayRulesInput,
        output_schema = schemas.ListGatewayRulesOutput,
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
        input_schema = schemas.ListGatewaysInput,
        output_schema = schemas.ListGatewaysOutput,
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
        input_schema = schemas.ListGatewayTargetsInput,
        output_schema = schemas.ListGatewayTargetsOutput,
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
        input_schema = schemas.ListHarnessesInput,
        output_schema = schemas.ListHarnessesOutput,
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
        input_schema = schemas.ListMemoriesInput,
        output_schema = schemas.ListMemoriesOutput,
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
        input_schema = schemas.ListOauth2CredentialProvidersInput,
        output_schema = schemas.ListOauth2CredentialProvidersOutput,
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
        input_schema = schemas.ListOnlineEvaluationConfigsInput,
        output_schema = schemas.ListOnlineEvaluationConfigsOutput,
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
        input_schema = schemas.ListPoliciesInput,
        output_schema = schemas.ListPoliciesOutput,
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
        input_schema = schemas.ListPolicyEnginesInput,
        output_schema = schemas.ListPolicyEnginesOutput,
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
        input_schema = schemas.ListPolicyGenerationAssetsInput,
        output_schema = schemas.ListPolicyGenerationAssetsOutput,
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
        input_schema = schemas.ListPolicyGenerationsInput,
        output_schema = schemas.ListPolicyGenerationsOutput,
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
        input_schema = schemas.ListRegistriesInput,
        output_schema = schemas.ListRegistriesOutput,
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
        input_schema = schemas.ListRegistryRecordsInput,
        output_schema = schemas.ListRegistryRecordsOutput,
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
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
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
        input_schema = schemas.ListWorkloadIdentitiesInput,
        output_schema = schemas.ListWorkloadIdentitiesOutput,
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
        input_schema = schemas.PutResourcePolicyInput,
        output_schema = schemas.PutResourcePolicyOutput,
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
        input_schema = schemas.SetTokenVaultCMKInput,
        output_schema = schemas.SetTokenVaultCMKOutput,
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
        input_schema = schemas.StartPolicyGenerationInput,
        output_schema = schemas.StartPolicyGenerationOutput,
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
        input_schema = schemas.SubmitRegistryRecordForApprovalInput,
        output_schema = schemas.SubmitRegistryRecordForApprovalOutput,
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
        input_schema = schemas.SynchronizeGatewayTargetsInput,
        output_schema = schemas.SynchronizeGatewayTargetsOutput,
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
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
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
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
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
        input_schema = schemas.UpdateAgentRuntimeInput,
        output_schema = schemas.UpdateAgentRuntimeOutput,
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
        input_schema = schemas.UpdateAgentRuntimeEndpointInput,
        output_schema = schemas.UpdateAgentRuntimeEndpointOutput,
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
        input_schema = schemas.UpdateApiKeyCredentialProviderInput,
        output_schema = schemas.UpdateApiKeyCredentialProviderOutput,
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
        input_schema = schemas.UpdateConfigurationBundleInput,
        output_schema = schemas.UpdateConfigurationBundleOutput,
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
        input_schema = schemas.UpdateEvaluatorInput,
        output_schema = schemas.UpdateEvaluatorOutput,
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
        input_schema = schemas.UpdateGatewayInput,
        output_schema = schemas.UpdateGatewayOutput,
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
        input_schema = schemas.UpdateGatewayRuleInput,
        output_schema = schemas.UpdateGatewayRuleOutput,
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
        input_schema = schemas.UpdateGatewayTargetInput,
        output_schema = schemas.UpdateGatewayTargetOutput,
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
        input_schema = schemas.UpdateHarnessInput,
        output_schema = schemas.UpdateHarnessOutput,
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
        input_schema = schemas.UpdateMemoryInput,
        output_schema = schemas.UpdateMemoryOutput,
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
        input_schema = schemas.UpdateOauth2CredentialProviderInput,
        output_schema = schemas.UpdateOauth2CredentialProviderOutput,
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
        input_schema = schemas.UpdateOnlineEvaluationConfigInput,
        output_schema = schemas.UpdateOnlineEvaluationConfigOutput,
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
        input_schema = schemas.UpdatePolicyInput,
        output_schema = schemas.UpdatePolicyOutput,
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
        input_schema = schemas.UpdatePolicyEngineInput,
        output_schema = schemas.UpdatePolicyEngineOutput,
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
        input_schema = schemas.UpdateRegistryInput,
        output_schema = schemas.UpdateRegistryOutput,
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
        input_schema = schemas.UpdateRegistryRecordInput,
        output_schema = schemas.UpdateRegistryRecordOutput,
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
        input_schema = schemas.UpdateRegistryRecordStatusInput,
        output_schema = schemas.UpdateRegistryRecordStatusOutput,
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
        input_schema = schemas.UpdateWorkloadIdentityInput,
        output_schema = schemas.UpdateWorkloadIdentityOutput,
        http_method = "POST",
        http_path = "/identities/UpdateWorkloadIdentity",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
