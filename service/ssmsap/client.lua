local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("ssmsap.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("ssmsap.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "SsmSap"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ssm-sap", signing_region = cfg.region } }
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

function Client:deleteResourcePermission(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePermission",
        input_schema = types.DeleteResourcePermissionInput,
        output_schema = types.DeleteResourcePermissionOutput,
        http_method = "POST",
        http_path = "/delete-resource-permission",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterApplication(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterApplication",
        input_schema = types.DeregisterApplicationInput,
        output_schema = types.DeregisterApplicationOutput,
        http_method = "POST",
        http_path = "/deregister-application",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApplication(input, options)
    return self:invokeOperation(input, {
        name = "GetApplication",
        input_schema = types.GetApplicationInput,
        output_schema = types.GetApplicationOutput,
        http_method = "POST",
        http_path = "/get-application",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getComponent(input, options)
    return self:invokeOperation(input, {
        name = "GetComponent",
        input_schema = types.GetComponentInput,
        output_schema = types.GetComponentOutput,
        http_method = "POST",
        http_path = "/get-component",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConfigurationCheckOperation(input, options)
    return self:invokeOperation(input, {
        name = "GetConfigurationCheckOperation",
        input_schema = types.GetConfigurationCheckOperationInput,
        output_schema = types.GetConfigurationCheckOperationOutput,
        http_method = "POST",
        http_path = "/get-configuration-check-operation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDatabase(input, options)
    return self:invokeOperation(input, {
        name = "GetDatabase",
        input_schema = types.GetDatabaseInput,
        output_schema = types.GetDatabaseOutput,
        http_method = "POST",
        http_path = "/get-database",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOperation(input, options)
    return self:invokeOperation(input, {
        name = "GetOperation",
        input_schema = types.GetOperationInput,
        output_schema = types.GetOperationOutput,
        http_method = "POST",
        http_path = "/get-operation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourcePermission(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePermission",
        input_schema = types.GetResourcePermissionInput,
        output_schema = types.GetResourcePermissionOutput,
        http_method = "POST",
        http_path = "/get-resource-permission",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApplications(input, options)
    return self:invokeOperation(input, {
        name = "ListApplications",
        input_schema = types.ListApplicationsInput,
        output_schema = types.ListApplicationsOutput,
        http_method = "POST",
        http_path = "/list-applications",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listComponents(input, options)
    return self:invokeOperation(input, {
        name = "ListComponents",
        input_schema = types.ListComponentsInput,
        output_schema = types.ListComponentsOutput,
        http_method = "POST",
        http_path = "/list-components",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConfigurationCheckDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListConfigurationCheckDefinitions",
        input_schema = types.ListConfigurationCheckDefinitionsInput,
        output_schema = types.ListConfigurationCheckDefinitionsOutput,
        http_method = "POST",
        http_path = "/list-configuration-check-definitions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConfigurationCheckOperations(input, options)
    return self:invokeOperation(input, {
        name = "ListConfigurationCheckOperations",
        input_schema = types.ListConfigurationCheckOperationsInput,
        output_schema = types.ListConfigurationCheckOperationsOutput,
        http_method = "POST",
        http_path = "/list-configuration-check-operations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDatabases(input, options)
    return self:invokeOperation(input, {
        name = "ListDatabases",
        input_schema = types.ListDatabasesInput,
        output_schema = types.ListDatabasesOutput,
        http_method = "POST",
        http_path = "/list-databases",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOperationEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListOperationEvents",
        input_schema = types.ListOperationEventsInput,
        output_schema = types.ListOperationEventsOutput,
        http_method = "POST",
        http_path = "/list-operation-events",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOperations(input, options)
    return self:invokeOperation(input, {
        name = "ListOperations",
        input_schema = types.ListOperationsInput,
        output_schema = types.ListOperationsOutput,
        http_method = "POST",
        http_path = "/list-operations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSubCheckResults(input, options)
    return self:invokeOperation(input, {
        name = "ListSubCheckResults",
        input_schema = types.ListSubCheckResultsInput,
        output_schema = types.ListSubCheckResultsOutput,
        http_method = "POST",
        http_path = "/list-sub-check-results",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSubCheckRuleResults(input, options)
    return self:invokeOperation(input, {
        name = "ListSubCheckRuleResults",
        input_schema = types.ListSubCheckRuleResultsInput,
        output_schema = types.ListSubCheckRuleResultsOutput,
        http_method = "POST",
        http_path = "/list-sub-check-rule-results",
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

function Client:putResourcePermission(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePermission",
        input_schema = types.PutResourcePermissionInput,
        output_schema = types.PutResourcePermissionOutput,
        http_method = "POST",
        http_path = "/put-resource-permission",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerApplication(input, options)
    return self:invokeOperation(input, {
        name = "RegisterApplication",
        input_schema = types.RegisterApplicationInput,
        output_schema = types.RegisterApplicationOutput,
        http_method = "POST",
        http_path = "/register-application",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startApplication(input, options)
    return self:invokeOperation(input, {
        name = "StartApplication",
        input_schema = types.StartApplicationInput,
        output_schema = types.StartApplicationOutput,
        http_method = "POST",
        http_path = "/start-application",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startApplicationRefresh(input, options)
    return self:invokeOperation(input, {
        name = "StartApplicationRefresh",
        input_schema = types.StartApplicationRefreshInput,
        output_schema = types.StartApplicationRefreshOutput,
        http_method = "POST",
        http_path = "/start-application-refresh",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startConfigurationChecks(input, options)
    return self:invokeOperation(input, {
        name = "StartConfigurationChecks",
        input_schema = types.StartConfigurationChecksInput,
        output_schema = types.StartConfigurationChecksOutput,
        http_method = "POST",
        http_path = "/start-configuration-checks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopApplication(input, options)
    return self:invokeOperation(input, {
        name = "StopApplication",
        input_schema = types.StopApplicationInput,
        output_schema = types.StopApplicationOutput,
        http_method = "POST",
        http_path = "/stop-application",
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

function Client:updateApplicationSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplicationSettings",
        input_schema = types.UpdateApplicationSettingsInput,
        output_schema = types.UpdateApplicationSettingsOutput,
        http_method = "POST",
        http_path = "/update-application-settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
