local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("lambda.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("lambda.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSGirApiService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "lambda", signing_region = cfg.region } }
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

function Client:addLayerVersionPermission(input, options)
    return self:invokeOperation(input, {
        name = "AddLayerVersionPermission",
        input_schema = types.AddLayerVersionPermissionInput,
        output_schema = types.AddLayerVersionPermissionOutput,
        http_method = "POST",
        http_path = "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addPermission(input, options)
    return self:invokeOperation(input, {
        name = "AddPermission",
        input_schema = types.AddPermissionInput,
        output_schema = types.AddPermissionOutput,
        http_method = "POST",
        http_path = "/2015-03-31/functions/{FunctionName}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:checkpointDurableExecution(input, options)
    return self:invokeOperation(input, {
        name = "CheckpointDurableExecution",
        input_schema = types.CheckpointDurableExecutionInput,
        output_schema = types.CheckpointDurableExecutionOutput,
        http_method = "POST",
        http_path = "/2025-12-01/durable-executions/{DurableExecutionArn}/checkpoint",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAlias(input, options)
    return self:invokeOperation(input, {
        name = "CreateAlias",
        input_schema = types.CreateAliasInput,
        output_schema = types.CreateAliasOutput,
        http_method = "POST",
        http_path = "/2015-03-31/functions/{FunctionName}/aliases",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCapacityProvider(input, options)
    return self:invokeOperation(input, {
        name = "CreateCapacityProvider",
        input_schema = types.CreateCapacityProviderInput,
        output_schema = types.CreateCapacityProviderOutput,
        http_method = "POST",
        http_path = "/2025-11-30/capacity-providers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCodeSigningConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateCodeSigningConfig",
        input_schema = types.CreateCodeSigningConfigInput,
        output_schema = types.CreateCodeSigningConfigOutput,
        http_method = "POST",
        http_path = "/2020-04-22/code-signing-configs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEventSourceMapping(input, options)
    return self:invokeOperation(input, {
        name = "CreateEventSourceMapping",
        input_schema = types.CreateEventSourceMappingInput,
        output_schema = types.CreateEventSourceMappingOutput,
        http_method = "POST",
        http_path = "/2015-03-31/event-source-mappings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFunction(input, options)
    return self:invokeOperation(input, {
        name = "CreateFunction",
        input_schema = types.CreateFunctionInput,
        output_schema = types.CreateFunctionOutput,
        http_method = "POST",
        http_path = "/2015-03-31/functions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFunctionUrlConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateFunctionUrlConfig",
        input_schema = types.CreateFunctionUrlConfigInput,
        output_schema = types.CreateFunctionUrlConfigOutput,
        http_method = "POST",
        http_path = "/2021-10-31/functions/{FunctionName}/url",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAlias(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAlias",
        input_schema = types.DeleteAliasInput,
        output_schema = types.DeleteAliasOutput,
        http_method = "DELETE",
        http_path = "/2015-03-31/functions/{FunctionName}/aliases/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCapacityProvider(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCapacityProvider",
        input_schema = types.DeleteCapacityProviderInput,
        output_schema = types.DeleteCapacityProviderOutput,
        http_method = "DELETE",
        http_path = "/2025-11-30/capacity-providers/{CapacityProviderName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCodeSigningConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCodeSigningConfig",
        input_schema = types.DeleteCodeSigningConfigInput,
        output_schema = types.DeleteCodeSigningConfigOutput,
        http_method = "DELETE",
        http_path = "/2020-04-22/code-signing-configs/{CodeSigningConfigArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEventSourceMapping(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventSourceMapping",
        input_schema = types.DeleteEventSourceMappingInput,
        output_schema = types.DeleteEventSourceMappingOutput,
        http_method = "DELETE",
        http_path = "/2015-03-31/event-source-mappings/{UUID}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFunction(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFunction",
        input_schema = types.DeleteFunctionInput,
        output_schema = types.DeleteFunctionOutput,
        http_method = "DELETE",
        http_path = "/2015-03-31/functions/{FunctionName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFunctionCodeSigningConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFunctionCodeSigningConfig",
        input_schema = types.DeleteFunctionCodeSigningConfigInput,
        output_schema = types.DeleteFunctionCodeSigningConfigOutput,
        http_method = "DELETE",
        http_path = "/2020-06-30/functions/{FunctionName}/code-signing-config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFunctionConcurrency(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFunctionConcurrency",
        input_schema = types.DeleteFunctionConcurrencyInput,
        output_schema = types.DeleteFunctionConcurrencyOutput,
        http_method = "DELETE",
        http_path = "/2017-10-31/functions/{FunctionName}/concurrency",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFunctionEventInvokeConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFunctionEventInvokeConfig",
        input_schema = types.DeleteFunctionEventInvokeConfigInput,
        output_schema = types.DeleteFunctionEventInvokeConfigOutput,
        http_method = "DELETE",
        http_path = "/2019-09-25/functions/{FunctionName}/event-invoke-config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFunctionUrlConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFunctionUrlConfig",
        input_schema = types.DeleteFunctionUrlConfigInput,
        output_schema = types.DeleteFunctionUrlConfigOutput,
        http_method = "DELETE",
        http_path = "/2021-10-31/functions/{FunctionName}/url",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLayerVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLayerVersion",
        input_schema = types.DeleteLayerVersionInput,
        output_schema = types.DeleteLayerVersionOutput,
        http_method = "DELETE",
        http_path = "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProvisionedConcurrencyConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProvisionedConcurrencyConfig",
        input_schema = types.DeleteProvisionedConcurrencyConfigInput,
        output_schema = types.DeleteProvisionedConcurrencyConfigOutput,
        http_method = "DELETE",
        http_path = "/2019-09-30/functions/{FunctionName}/provisioned-concurrency",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccountSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountSettings",
        input_schema = types.GetAccountSettingsInput,
        output_schema = types.GetAccountSettingsOutput,
        http_method = "GET",
        http_path = "/2016-08-19/account-settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAlias(input, options)
    return self:invokeOperation(input, {
        name = "GetAlias",
        input_schema = types.GetAliasInput,
        output_schema = types.GetAliasOutput,
        http_method = "GET",
        http_path = "/2015-03-31/functions/{FunctionName}/aliases/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCapacityProvider(input, options)
    return self:invokeOperation(input, {
        name = "GetCapacityProvider",
        input_schema = types.GetCapacityProviderInput,
        output_schema = types.GetCapacityProviderOutput,
        http_method = "GET",
        http_path = "/2025-11-30/capacity-providers/{CapacityProviderName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCodeSigningConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetCodeSigningConfig",
        input_schema = types.GetCodeSigningConfigInput,
        output_schema = types.GetCodeSigningConfigOutput,
        http_method = "GET",
        http_path = "/2020-04-22/code-signing-configs/{CodeSigningConfigArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDurableExecution(input, options)
    return self:invokeOperation(input, {
        name = "GetDurableExecution",
        input_schema = types.GetDurableExecutionInput,
        output_schema = types.GetDurableExecutionOutput,
        http_method = "GET",
        http_path = "/2025-12-01/durable-executions/{DurableExecutionArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDurableExecutionHistory(input, options)
    return self:invokeOperation(input, {
        name = "GetDurableExecutionHistory",
        input_schema = types.GetDurableExecutionHistoryInput,
        output_schema = types.GetDurableExecutionHistoryOutput,
        http_method = "GET",
        http_path = "/2025-12-01/durable-executions/{DurableExecutionArn}/history",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDurableExecutionState(input, options)
    return self:invokeOperation(input, {
        name = "GetDurableExecutionState",
        input_schema = types.GetDurableExecutionStateInput,
        output_schema = types.GetDurableExecutionStateOutput,
        http_method = "GET",
        http_path = "/2025-12-01/durable-executions/{DurableExecutionArn}/state",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEventSourceMapping(input, options)
    return self:invokeOperation(input, {
        name = "GetEventSourceMapping",
        input_schema = types.GetEventSourceMappingInput,
        output_schema = types.GetEventSourceMappingOutput,
        http_method = "GET",
        http_path = "/2015-03-31/event-source-mappings/{UUID}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFunction(input, options)
    return self:invokeOperation(input, {
        name = "GetFunction",
        input_schema = types.GetFunctionInput,
        output_schema = types.GetFunctionOutput,
        http_method = "GET",
        http_path = "/2015-03-31/functions/{FunctionName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFunctionCodeSigningConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetFunctionCodeSigningConfig",
        input_schema = types.GetFunctionCodeSigningConfigInput,
        output_schema = types.GetFunctionCodeSigningConfigOutput,
        http_method = "GET",
        http_path = "/2020-06-30/functions/{FunctionName}/code-signing-config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFunctionConcurrency(input, options)
    return self:invokeOperation(input, {
        name = "GetFunctionConcurrency",
        input_schema = types.GetFunctionConcurrencyInput,
        output_schema = types.GetFunctionConcurrencyOutput,
        http_method = "GET",
        http_path = "/2019-09-30/functions/{FunctionName}/concurrency",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFunctionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetFunctionConfiguration",
        input_schema = types.GetFunctionConfigurationInput,
        output_schema = types.GetFunctionConfigurationOutput,
        http_method = "GET",
        http_path = "/2015-03-31/functions/{FunctionName}/configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFunctionEventInvokeConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetFunctionEventInvokeConfig",
        input_schema = types.GetFunctionEventInvokeConfigInput,
        output_schema = types.GetFunctionEventInvokeConfigOutput,
        http_method = "GET",
        http_path = "/2019-09-25/functions/{FunctionName}/event-invoke-config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFunctionRecursionConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetFunctionRecursionConfig",
        input_schema = types.GetFunctionRecursionConfigInput,
        output_schema = types.GetFunctionRecursionConfigOutput,
        http_method = "GET",
        http_path = "/2024-08-31/functions/{FunctionName}/recursion-config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFunctionScalingConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetFunctionScalingConfig",
        input_schema = types.GetFunctionScalingConfigInput,
        output_schema = types.GetFunctionScalingConfigOutput,
        http_method = "GET",
        http_path = "/2025-11-30/functions/{FunctionName}/function-scaling-config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFunctionUrlConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetFunctionUrlConfig",
        input_schema = types.GetFunctionUrlConfigInput,
        output_schema = types.GetFunctionUrlConfigOutput,
        http_method = "GET",
        http_path = "/2021-10-31/functions/{FunctionName}/url",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLayerVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetLayerVersion",
        input_schema = types.GetLayerVersionInput,
        output_schema = types.GetLayerVersionOutput,
        http_method = "GET",
        http_path = "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLayerVersionByArn(input, options)
    return self:invokeOperation(input, {
        name = "GetLayerVersionByArn",
        input_schema = types.GetLayerVersionByArnInput,
        output_schema = types.GetLayerVersionByArnOutput,
        http_method = "GET",
        http_path = "/2018-10-31/layers?find=LayerVersion",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLayerVersionPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetLayerVersionPolicy",
        input_schema = types.GetLayerVersionPolicyInput,
        output_schema = types.GetLayerVersionPolicyOutput,
        http_method = "GET",
        http_path = "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}/policy",
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
        http_path = "/2015-03-31/functions/{FunctionName}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getProvisionedConcurrencyConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetProvisionedConcurrencyConfig",
        input_schema = types.GetProvisionedConcurrencyConfigInput,
        output_schema = types.GetProvisionedConcurrencyConfigOutput,
        http_method = "GET",
        http_path = "/2019-09-30/functions/{FunctionName}/provisioned-concurrency",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRuntimeManagementConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetRuntimeManagementConfig",
        input_schema = types.GetRuntimeManagementConfigInput,
        output_schema = types.GetRuntimeManagementConfigOutput,
        http_method = "GET",
        http_path = "/2021-07-20/functions/{FunctionName}/runtime-management-config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:invoke(input, options)
    return self:invokeOperation(input, {
        name = "Invoke",
        input_schema = types.InvokeInput,
        output_schema = types.InvokeOutput,
        http_method = "POST",
        http_path = "/2015-03-31/functions/{FunctionName}/invocations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:invokeAsync(input, options)
    return self:invokeOperation(input, {
        name = "InvokeAsync",
        input_schema = types.InvokeAsyncInput,
        output_schema = types.InvokeAsyncOutput,
        http_method = "POST",
        http_path = "/2014-11-13/functions/{FunctionName}/invoke-async",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:invokeWithResponseStream(input, options)
    return self:invokeOperation(input, {
        name = "InvokeWithResponseStream",
        input_schema = types.InvokeWithResponseStreamInput,
        output_schema = types.InvokeWithResponseStreamOutput,
        http_method = "POST",
        http_path = "/2021-11-15/functions/{FunctionName}/response-streaming-invocations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAliases(input, options)
    return self:invokeOperation(input, {
        name = "ListAliases",
        input_schema = types.ListAliasesInput,
        output_schema = types.ListAliasesOutput,
        http_method = "GET",
        http_path = "/2015-03-31/functions/{FunctionName}/aliases",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCapacityProviders(input, options)
    return self:invokeOperation(input, {
        name = "ListCapacityProviders",
        input_schema = types.ListCapacityProvidersInput,
        output_schema = types.ListCapacityProvidersOutput,
        http_method = "GET",
        http_path = "/2025-11-30/capacity-providers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCodeSigningConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListCodeSigningConfigs",
        input_schema = types.ListCodeSigningConfigsInput,
        output_schema = types.ListCodeSigningConfigsOutput,
        http_method = "GET",
        http_path = "/2020-04-22/code-signing-configs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDurableExecutionsByFunction(input, options)
    return self:invokeOperation(input, {
        name = "ListDurableExecutionsByFunction",
        input_schema = types.ListDurableExecutionsByFunctionInput,
        output_schema = types.ListDurableExecutionsByFunctionOutput,
        http_method = "GET",
        http_path = "/2025-12-01/functions/{FunctionName}/durable-executions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEventSourceMappings(input, options)
    return self:invokeOperation(input, {
        name = "ListEventSourceMappings",
        input_schema = types.ListEventSourceMappingsInput,
        output_schema = types.ListEventSourceMappingsOutput,
        http_method = "GET",
        http_path = "/2015-03-31/event-source-mappings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFunctionEventInvokeConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListFunctionEventInvokeConfigs",
        input_schema = types.ListFunctionEventInvokeConfigsInput,
        output_schema = types.ListFunctionEventInvokeConfigsOutput,
        http_method = "GET",
        http_path = "/2019-09-25/functions/{FunctionName}/event-invoke-config/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFunctions(input, options)
    return self:invokeOperation(input, {
        name = "ListFunctions",
        input_schema = types.ListFunctionsInput,
        output_schema = types.ListFunctionsOutput,
        http_method = "GET",
        http_path = "/2015-03-31/functions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFunctionsByCodeSigningConfig(input, options)
    return self:invokeOperation(input, {
        name = "ListFunctionsByCodeSigningConfig",
        input_schema = types.ListFunctionsByCodeSigningConfigInput,
        output_schema = types.ListFunctionsByCodeSigningConfigOutput,
        http_method = "GET",
        http_path = "/2020-04-22/code-signing-configs/{CodeSigningConfigArn}/functions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFunctionUrlConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListFunctionUrlConfigs",
        input_schema = types.ListFunctionUrlConfigsInput,
        output_schema = types.ListFunctionUrlConfigsOutput,
        http_method = "GET",
        http_path = "/2021-10-31/functions/{FunctionName}/urls",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFunctionVersionsByCapacityProvider(input, options)
    return self:invokeOperation(input, {
        name = "ListFunctionVersionsByCapacityProvider",
        input_schema = types.ListFunctionVersionsByCapacityProviderInput,
        output_schema = types.ListFunctionVersionsByCapacityProviderOutput,
        http_method = "GET",
        http_path = "/2025-11-30/capacity-providers/{CapacityProviderName}/function-versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLayers(input, options)
    return self:invokeOperation(input, {
        name = "ListLayers",
        input_schema = types.ListLayersInput,
        output_schema = types.ListLayersOutput,
        http_method = "GET",
        http_path = "/2018-10-31/layers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLayerVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListLayerVersions",
        input_schema = types.ListLayerVersionsInput,
        output_schema = types.ListLayerVersionsOutput,
        http_method = "GET",
        http_path = "/2018-10-31/layers/{LayerName}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProvisionedConcurrencyConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListProvisionedConcurrencyConfigs",
        input_schema = types.ListProvisionedConcurrencyConfigsInput,
        output_schema = types.ListProvisionedConcurrencyConfigsOutput,
        http_method = "GET",
        http_path = "/2019-09-30/functions/{FunctionName}/provisioned-concurrency?List=ALL",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTags(input, options)
    return self:invokeOperation(input, {
        name = "ListTags",
        input_schema = types.ListTagsInput,
        output_schema = types.ListTagsOutput,
        http_method = "GET",
        http_path = "/2017-03-31/tags/{Resource}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVersionsByFunction(input, options)
    return self:invokeOperation(input, {
        name = "ListVersionsByFunction",
        input_schema = types.ListVersionsByFunctionInput,
        output_schema = types.ListVersionsByFunctionOutput,
        http_method = "GET",
        http_path = "/2015-03-31/functions/{FunctionName}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:publishLayerVersion(input, options)
    return self:invokeOperation(input, {
        name = "PublishLayerVersion",
        input_schema = types.PublishLayerVersionInput,
        output_schema = types.PublishLayerVersionOutput,
        http_method = "POST",
        http_path = "/2018-10-31/layers/{LayerName}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:publishVersion(input, options)
    return self:invokeOperation(input, {
        name = "PublishVersion",
        input_schema = types.PublishVersionInput,
        output_schema = types.PublishVersionOutput,
        http_method = "POST",
        http_path = "/2015-03-31/functions/{FunctionName}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putFunctionCodeSigningConfig(input, options)
    return self:invokeOperation(input, {
        name = "PutFunctionCodeSigningConfig",
        input_schema = types.PutFunctionCodeSigningConfigInput,
        output_schema = types.PutFunctionCodeSigningConfigOutput,
        http_method = "PUT",
        http_path = "/2020-06-30/functions/{FunctionName}/code-signing-config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putFunctionConcurrency(input, options)
    return self:invokeOperation(input, {
        name = "PutFunctionConcurrency",
        input_schema = types.PutFunctionConcurrencyInput,
        output_schema = types.PutFunctionConcurrencyOutput,
        http_method = "PUT",
        http_path = "/2017-10-31/functions/{FunctionName}/concurrency",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putFunctionEventInvokeConfig(input, options)
    return self:invokeOperation(input, {
        name = "PutFunctionEventInvokeConfig",
        input_schema = types.PutFunctionEventInvokeConfigInput,
        output_schema = types.PutFunctionEventInvokeConfigOutput,
        http_method = "PUT",
        http_path = "/2019-09-25/functions/{FunctionName}/event-invoke-config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putFunctionRecursionConfig(input, options)
    return self:invokeOperation(input, {
        name = "PutFunctionRecursionConfig",
        input_schema = types.PutFunctionRecursionConfigInput,
        output_schema = types.PutFunctionRecursionConfigOutput,
        http_method = "PUT",
        http_path = "/2024-08-31/functions/{FunctionName}/recursion-config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putFunctionScalingConfig(input, options)
    return self:invokeOperation(input, {
        name = "PutFunctionScalingConfig",
        input_schema = types.PutFunctionScalingConfigInput,
        output_schema = types.PutFunctionScalingConfigOutput,
        http_method = "PUT",
        http_path = "/2025-11-30/functions/{FunctionName}/function-scaling-config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putProvisionedConcurrencyConfig(input, options)
    return self:invokeOperation(input, {
        name = "PutProvisionedConcurrencyConfig",
        input_schema = types.PutProvisionedConcurrencyConfigInput,
        output_schema = types.PutProvisionedConcurrencyConfigOutput,
        http_method = "PUT",
        http_path = "/2019-09-30/functions/{FunctionName}/provisioned-concurrency",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putRuntimeManagementConfig(input, options)
    return self:invokeOperation(input, {
        name = "PutRuntimeManagementConfig",
        input_schema = types.PutRuntimeManagementConfigInput,
        output_schema = types.PutRuntimeManagementConfigOutput,
        http_method = "PUT",
        http_path = "/2021-07-20/functions/{FunctionName}/runtime-management-config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeLayerVersionPermission(input, options)
    return self:invokeOperation(input, {
        name = "RemoveLayerVersionPermission",
        input_schema = types.RemoveLayerVersionPermissionInput,
        output_schema = types.RemoveLayerVersionPermissionOutput,
        http_method = "DELETE",
        http_path = "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}/policy/{StatementId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removePermission(input, options)
    return self:invokeOperation(input, {
        name = "RemovePermission",
        input_schema = types.RemovePermissionInput,
        output_schema = types.RemovePermissionOutput,
        http_method = "DELETE",
        http_path = "/2015-03-31/functions/{FunctionName}/policy/{StatementId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendDurableExecutionCallbackFailure(input, options)
    return self:invokeOperation(input, {
        name = "SendDurableExecutionCallbackFailure",
        input_schema = types.SendDurableExecutionCallbackFailureInput,
        output_schema = types.SendDurableExecutionCallbackFailureOutput,
        http_method = "POST",
        http_path = "/2025-12-01/durable-execution-callbacks/{CallbackId}/fail",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendDurableExecutionCallbackHeartbeat(input, options)
    return self:invokeOperation(input, {
        name = "SendDurableExecutionCallbackHeartbeat",
        input_schema = types.SendDurableExecutionCallbackHeartbeatInput,
        output_schema = types.SendDurableExecutionCallbackHeartbeatOutput,
        http_method = "POST",
        http_path = "/2025-12-01/durable-execution-callbacks/{CallbackId}/heartbeat",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendDurableExecutionCallbackSuccess(input, options)
    return self:invokeOperation(input, {
        name = "SendDurableExecutionCallbackSuccess",
        input_schema = types.SendDurableExecutionCallbackSuccessInput,
        output_schema = types.SendDurableExecutionCallbackSuccessOutput,
        http_method = "POST",
        http_path = "/2025-12-01/durable-execution-callbacks/{CallbackId}/succeed",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopDurableExecution(input, options)
    return self:invokeOperation(input, {
        name = "StopDurableExecution",
        input_schema = types.StopDurableExecutionInput,
        output_schema = types.StopDurableExecutionOutput,
        http_method = "POST",
        http_path = "/2025-12-01/durable-executions/{DurableExecutionArn}/stop",
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
        http_path = "/2017-03-31/tags/{Resource}",
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
        http_path = "/2017-03-31/tags/{Resource}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAlias(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAlias",
        input_schema = types.UpdateAliasInput,
        output_schema = types.UpdateAliasOutput,
        http_method = "PUT",
        http_path = "/2015-03-31/functions/{FunctionName}/aliases/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCapacityProvider(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCapacityProvider",
        input_schema = types.UpdateCapacityProviderInput,
        output_schema = types.UpdateCapacityProviderOutput,
        http_method = "PUT",
        http_path = "/2025-11-30/capacity-providers/{CapacityProviderName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCodeSigningConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCodeSigningConfig",
        input_schema = types.UpdateCodeSigningConfigInput,
        output_schema = types.UpdateCodeSigningConfigOutput,
        http_method = "PUT",
        http_path = "/2020-04-22/code-signing-configs/{CodeSigningConfigArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEventSourceMapping(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEventSourceMapping",
        input_schema = types.UpdateEventSourceMappingInput,
        output_schema = types.UpdateEventSourceMappingOutput,
        http_method = "PUT",
        http_path = "/2015-03-31/event-source-mappings/{UUID}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFunctionCode(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFunctionCode",
        input_schema = types.UpdateFunctionCodeInput,
        output_schema = types.UpdateFunctionCodeOutput,
        http_method = "PUT",
        http_path = "/2015-03-31/functions/{FunctionName}/code",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFunctionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFunctionConfiguration",
        input_schema = types.UpdateFunctionConfigurationInput,
        output_schema = types.UpdateFunctionConfigurationOutput,
        http_method = "PUT",
        http_path = "/2015-03-31/functions/{FunctionName}/configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFunctionEventInvokeConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFunctionEventInvokeConfig",
        input_schema = types.UpdateFunctionEventInvokeConfigInput,
        output_schema = types.UpdateFunctionEventInvokeConfigOutput,
        http_method = "POST",
        http_path = "/2019-09-25/functions/{FunctionName}/event-invoke-config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFunctionUrlConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFunctionUrlConfig",
        input_schema = types.UpdateFunctionUrlConfigInput,
        output_schema = types.UpdateFunctionUrlConfigOutput,
        http_method = "PUT",
        http_path = "/2021-10-31/functions/{FunctionName}/url",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
