local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("ssmsap.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("ssmsap.schemas")
local sdk_defaults = require("sdk_defaults")

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
        input_schema = schemas.DeleteResourcePermissionInput,
        output_schema = schemas.DeleteResourcePermissionOutput,
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
        input_schema = schemas.DeregisterApplicationInput,
        output_schema = schemas.DeregisterApplicationOutput,
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
        input_schema = schemas.GetApplicationInput,
        output_schema = schemas.GetApplicationOutput,
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
        input_schema = schemas.GetComponentInput,
        output_schema = schemas.GetComponentOutput,
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
        input_schema = schemas.GetConfigurationCheckOperationInput,
        output_schema = schemas.GetConfigurationCheckOperationOutput,
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
        input_schema = schemas.GetDatabaseInput,
        output_schema = schemas.GetDatabaseOutput,
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
        input_schema = schemas.GetOperationInput,
        output_schema = schemas.GetOperationOutput,
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
        input_schema = schemas.GetResourcePermissionInput,
        output_schema = schemas.GetResourcePermissionOutput,
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
        input_schema = schemas.ListApplicationsInput,
        output_schema = schemas.ListApplicationsOutput,
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
        input_schema = schemas.ListComponentsInput,
        output_schema = schemas.ListComponentsOutput,
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
        input_schema = schemas.ListConfigurationCheckDefinitionsInput,
        output_schema = schemas.ListConfigurationCheckDefinitionsOutput,
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
        input_schema = schemas.ListConfigurationCheckOperationsInput,
        output_schema = schemas.ListConfigurationCheckOperationsOutput,
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
        input_schema = schemas.ListDatabasesInput,
        output_schema = schemas.ListDatabasesOutput,
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
        input_schema = schemas.ListOperationEventsInput,
        output_schema = schemas.ListOperationEventsOutput,
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
        input_schema = schemas.ListOperationsInput,
        output_schema = schemas.ListOperationsOutput,
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
        input_schema = schemas.ListSubCheckResultsInput,
        output_schema = schemas.ListSubCheckResultsOutput,
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
        input_schema = schemas.ListSubCheckRuleResultsInput,
        output_schema = schemas.ListSubCheckRuleResultsOutput,
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
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
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
        input_schema = schemas.PutResourcePermissionInput,
        output_schema = schemas.PutResourcePermissionOutput,
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
        input_schema = schemas.RegisterApplicationInput,
        output_schema = schemas.RegisterApplicationOutput,
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
        input_schema = schemas.StartApplicationInput,
        output_schema = schemas.StartApplicationOutput,
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
        input_schema = schemas.StartApplicationRefreshInput,
        output_schema = schemas.StartApplicationRefreshOutput,
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
        input_schema = schemas.StartConfigurationChecksInput,
        output_schema = schemas.StartConfigurationChecksOutput,
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
        input_schema = schemas.StopApplicationInput,
        output_schema = schemas.StopApplicationOutput,
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

function Client:updateApplicationSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplicationSettings",
        input_schema = schemas.UpdateApplicationSettingsInput,
        output_schema = schemas.UpdateApplicationSettingsOutput,
        http_method = "POST",
        http_path = "/update-application-settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
