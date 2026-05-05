local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("lambda.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("lambda.schemas")
local sdk_defaults = require("aws.sdk_defaults")

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
        input_schema = schemas.AddLayerVersionPermissionInput,
        output_schema = schemas.AddLayerVersionPermissionOutput,
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
        input_schema = schemas.AddPermissionInput,
        output_schema = schemas.AddPermissionOutput,
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
        input_schema = schemas.CheckpointDurableExecutionInput,
        output_schema = schemas.CheckpointDurableExecutionOutput,
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
        input_schema = schemas.CreateAliasInput,
        output_schema = schemas.CreateAliasOutput,
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
        input_schema = schemas.CreateCapacityProviderInput,
        output_schema = schemas.CreateCapacityProviderOutput,
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
        input_schema = schemas.CreateCodeSigningConfigInput,
        output_schema = schemas.CreateCodeSigningConfigOutput,
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
        input_schema = schemas.CreateEventSourceMappingInput,
        output_schema = schemas.CreateEventSourceMappingOutput,
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
        input_schema = schemas.CreateFunctionInput,
        output_schema = schemas.CreateFunctionOutput,
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
        input_schema = schemas.CreateFunctionUrlConfigInput,
        output_schema = schemas.CreateFunctionUrlConfigOutput,
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
        input_schema = schemas.DeleteAliasInput,
        output_schema = schemas.DeleteAliasOutput,
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
        input_schema = schemas.DeleteCapacityProviderInput,
        output_schema = schemas.DeleteCapacityProviderOutput,
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
        input_schema = schemas.DeleteCodeSigningConfigInput,
        output_schema = schemas.DeleteCodeSigningConfigOutput,
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
        input_schema = schemas.DeleteEventSourceMappingInput,
        output_schema = schemas.DeleteEventSourceMappingOutput,
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
        input_schema = schemas.DeleteFunctionInput,
        output_schema = schemas.DeleteFunctionOutput,
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
        input_schema = schemas.DeleteFunctionCodeSigningConfigInput,
        output_schema = schemas.DeleteFunctionCodeSigningConfigOutput,
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
        input_schema = schemas.DeleteFunctionConcurrencyInput,
        output_schema = schemas.DeleteFunctionConcurrencyOutput,
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
        input_schema = schemas.DeleteFunctionEventInvokeConfigInput,
        output_schema = schemas.DeleteFunctionEventInvokeConfigOutput,
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
        input_schema = schemas.DeleteFunctionUrlConfigInput,
        output_schema = schemas.DeleteFunctionUrlConfigOutput,
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
        input_schema = schemas.DeleteLayerVersionInput,
        output_schema = schemas.DeleteLayerVersionOutput,
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
        input_schema = schemas.DeleteProvisionedConcurrencyConfigInput,
        output_schema = schemas.DeleteProvisionedConcurrencyConfigOutput,
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
        input_schema = schemas.GetAccountSettingsInput,
        output_schema = schemas.GetAccountSettingsOutput,
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
        input_schema = schemas.GetAliasInput,
        output_schema = schemas.GetAliasOutput,
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
        input_schema = schemas.GetCapacityProviderInput,
        output_schema = schemas.GetCapacityProviderOutput,
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
        input_schema = schemas.GetCodeSigningConfigInput,
        output_schema = schemas.GetCodeSigningConfigOutput,
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
        input_schema = schemas.GetDurableExecutionInput,
        output_schema = schemas.GetDurableExecutionOutput,
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
        input_schema = schemas.GetDurableExecutionHistoryInput,
        output_schema = schemas.GetDurableExecutionHistoryOutput,
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
        input_schema = schemas.GetDurableExecutionStateInput,
        output_schema = schemas.GetDurableExecutionStateOutput,
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
        input_schema = schemas.GetEventSourceMappingInput,
        output_schema = schemas.GetEventSourceMappingOutput,
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
        input_schema = schemas.GetFunctionInput,
        output_schema = schemas.GetFunctionOutput,
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
        input_schema = schemas.GetFunctionCodeSigningConfigInput,
        output_schema = schemas.GetFunctionCodeSigningConfigOutput,
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
        input_schema = schemas.GetFunctionConcurrencyInput,
        output_schema = schemas.GetFunctionConcurrencyOutput,
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
        input_schema = schemas.GetFunctionConfigurationInput,
        output_schema = schemas.GetFunctionConfigurationOutput,
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
        input_schema = schemas.GetFunctionEventInvokeConfigInput,
        output_schema = schemas.GetFunctionEventInvokeConfigOutput,
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
        input_schema = schemas.GetFunctionRecursionConfigInput,
        output_schema = schemas.GetFunctionRecursionConfigOutput,
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
        input_schema = schemas.GetFunctionScalingConfigInput,
        output_schema = schemas.GetFunctionScalingConfigOutput,
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
        input_schema = schemas.GetFunctionUrlConfigInput,
        output_schema = schemas.GetFunctionUrlConfigOutput,
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
        input_schema = schemas.GetLayerVersionInput,
        output_schema = schemas.GetLayerVersionOutput,
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
        input_schema = schemas.GetLayerVersionByArnInput,
        output_schema = schemas.GetLayerVersionByArnOutput,
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
        input_schema = schemas.GetLayerVersionPolicyInput,
        output_schema = schemas.GetLayerVersionPolicyOutput,
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
        input_schema = schemas.GetPolicyInput,
        output_schema = schemas.GetPolicyOutput,
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
        input_schema = schemas.GetProvisionedConcurrencyConfigInput,
        output_schema = schemas.GetProvisionedConcurrencyConfigOutput,
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
        input_schema = schemas.GetRuntimeManagementConfigInput,
        output_schema = schemas.GetRuntimeManagementConfigOutput,
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
        input_schema = schemas.InvokeInput,
        output_schema = schemas.InvokeOutput,
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
        input_schema = schemas.InvokeAsyncInput,
        output_schema = schemas.InvokeAsyncOutput,
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
        input_schema = schemas.InvokeWithResponseStreamInput,
        output_schema = schemas.InvokeWithResponseStreamOutput,
        http_method = "POST",
        http_path = "/2021-11-15/functions/{FunctionName}/response-streaming-invocations",
        event_stream = schemas.InvokeWithResponseStreamResponseEvent,
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAliases(input, options)
    return self:invokeOperation(input, {
        name = "ListAliases",
        input_schema = schemas.ListAliasesInput,
        output_schema = schemas.ListAliasesOutput,
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
        input_schema = schemas.ListCapacityProvidersInput,
        output_schema = schemas.ListCapacityProvidersOutput,
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
        input_schema = schemas.ListCodeSigningConfigsInput,
        output_schema = schemas.ListCodeSigningConfigsOutput,
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
        input_schema = schemas.ListDurableExecutionsByFunctionInput,
        output_schema = schemas.ListDurableExecutionsByFunctionOutput,
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
        input_schema = schemas.ListEventSourceMappingsInput,
        output_schema = schemas.ListEventSourceMappingsOutput,
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
        input_schema = schemas.ListFunctionEventInvokeConfigsInput,
        output_schema = schemas.ListFunctionEventInvokeConfigsOutput,
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
        input_schema = schemas.ListFunctionsInput,
        output_schema = schemas.ListFunctionsOutput,
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
        input_schema = schemas.ListFunctionsByCodeSigningConfigInput,
        output_schema = schemas.ListFunctionsByCodeSigningConfigOutput,
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
        input_schema = schemas.ListFunctionUrlConfigsInput,
        output_schema = schemas.ListFunctionUrlConfigsOutput,
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
        input_schema = schemas.ListFunctionVersionsByCapacityProviderInput,
        output_schema = schemas.ListFunctionVersionsByCapacityProviderOutput,
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
        input_schema = schemas.ListLayersInput,
        output_schema = schemas.ListLayersOutput,
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
        input_schema = schemas.ListLayerVersionsInput,
        output_schema = schemas.ListLayerVersionsOutput,
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
        input_schema = schemas.ListProvisionedConcurrencyConfigsInput,
        output_schema = schemas.ListProvisionedConcurrencyConfigsOutput,
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
        input_schema = schemas.ListTagsInput,
        output_schema = schemas.ListTagsOutput,
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
        input_schema = schemas.ListVersionsByFunctionInput,
        output_schema = schemas.ListVersionsByFunctionOutput,
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
        input_schema = schemas.PublishLayerVersionInput,
        output_schema = schemas.PublishLayerVersionOutput,
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
        input_schema = schemas.PublishVersionInput,
        output_schema = schemas.PublishVersionOutput,
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
        input_schema = schemas.PutFunctionCodeSigningConfigInput,
        output_schema = schemas.PutFunctionCodeSigningConfigOutput,
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
        input_schema = schemas.PutFunctionConcurrencyInput,
        output_schema = schemas.PutFunctionConcurrencyOutput,
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
        input_schema = schemas.PutFunctionEventInvokeConfigInput,
        output_schema = schemas.PutFunctionEventInvokeConfigOutput,
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
        input_schema = schemas.PutFunctionRecursionConfigInput,
        output_schema = schemas.PutFunctionRecursionConfigOutput,
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
        input_schema = schemas.PutFunctionScalingConfigInput,
        output_schema = schemas.PutFunctionScalingConfigOutput,
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
        input_schema = schemas.PutProvisionedConcurrencyConfigInput,
        output_schema = schemas.PutProvisionedConcurrencyConfigOutput,
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
        input_schema = schemas.PutRuntimeManagementConfigInput,
        output_schema = schemas.PutRuntimeManagementConfigOutput,
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
        input_schema = schemas.RemoveLayerVersionPermissionInput,
        output_schema = schemas.RemoveLayerVersionPermissionOutput,
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
        input_schema = schemas.RemovePermissionInput,
        output_schema = schemas.RemovePermissionOutput,
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
        input_schema = schemas.SendDurableExecutionCallbackFailureInput,
        output_schema = schemas.SendDurableExecutionCallbackFailureOutput,
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
        input_schema = schemas.SendDurableExecutionCallbackHeartbeatInput,
        output_schema = schemas.SendDurableExecutionCallbackHeartbeatOutput,
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
        input_schema = schemas.SendDurableExecutionCallbackSuccessInput,
        output_schema = schemas.SendDurableExecutionCallbackSuccessOutput,
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
        input_schema = schemas.StopDurableExecutionInput,
        output_schema = schemas.StopDurableExecutionOutput,
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
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
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
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
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
        input_schema = schemas.UpdateAliasInput,
        output_schema = schemas.UpdateAliasOutput,
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
        input_schema = schemas.UpdateCapacityProviderInput,
        output_schema = schemas.UpdateCapacityProviderOutput,
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
        input_schema = schemas.UpdateCodeSigningConfigInput,
        output_schema = schemas.UpdateCodeSigningConfigOutput,
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
        input_schema = schemas.UpdateEventSourceMappingInput,
        output_schema = schemas.UpdateEventSourceMappingOutput,
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
        input_schema = schemas.UpdateFunctionCodeInput,
        output_schema = schemas.UpdateFunctionCodeOutput,
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
        input_schema = schemas.UpdateFunctionConfigurationInput,
        output_schema = schemas.UpdateFunctionConfigurationOutput,
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
        input_schema = schemas.UpdateFunctionEventInvokeConfigInput,
        output_schema = schemas.UpdateFunctionEventInvokeConfigOutput,
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
        input_schema = schemas.UpdateFunctionUrlConfigInput,
        output_schema = schemas.UpdateFunctionUrlConfigOutput,
        http_method = "PUT",
        http_path = "/2021-10-31/functions/{FunctionName}/url",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
