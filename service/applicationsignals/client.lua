local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("applicationsignals.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("applicationsignals.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ApplicationSignals"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "application-signals", signing_region = cfg.region } }
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

function Client:batchGetServiceLevelObjectiveBudgetReport(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetServiceLevelObjectiveBudgetReport",
        input_schema = schemas.BatchGetServiceLevelObjectiveBudgetReportInput,
        output_schema = schemas.BatchGetServiceLevelObjectiveBudgetReportOutput,
        http_method = "POST",
        http_path = "/budget-report",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchUpdateExclusionWindows(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateExclusionWindows",
        input_schema = schemas.BatchUpdateExclusionWindowsInput,
        output_schema = schemas.BatchUpdateExclusionWindowsOutput,
        http_method = "PATCH",
        http_path = "/exclusion-windows",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createServiceLevelObjective(input, options)
    return self:invokeOperation(input, {
        name = "CreateServiceLevelObjective",
        input_schema = schemas.CreateServiceLevelObjectiveInput,
        output_schema = schemas.CreateServiceLevelObjectiveOutput,
        http_method = "POST",
        http_path = "/slo",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGroupingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGroupingConfiguration",
        input_schema = schemas.DeleteGroupingConfigurationInput,
        output_schema = schemas.DeleteGroupingConfigurationOutput,
        http_method = "DELETE",
        http_path = "/grouping-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteServiceLevelObjective(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServiceLevelObjective",
        input_schema = schemas.DeleteServiceLevelObjectiveInput,
        output_schema = schemas.DeleteServiceLevelObjectiveOutput,
        http_method = "DELETE",
        http_path = "/slo/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getService(input, options)
    return self:invokeOperation(input, {
        name = "GetService",
        input_schema = schemas.GetServiceInput,
        output_schema = schemas.GetServiceOutput,
        http_method = "POST",
        http_path = "/service",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getServiceLevelObjective(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceLevelObjective",
        input_schema = schemas.GetServiceLevelObjectiveInput,
        output_schema = schemas.GetServiceLevelObjectiveOutput,
        http_method = "GET",
        http_path = "/slo/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAuditFindings(input, options)
    return self:invokeOperation(input, {
        name = "ListAuditFindings",
        input_schema = schemas.ListAuditFindingsInput,
        output_schema = schemas.ListAuditFindingsOutput,
        http_method = "POST",
        http_path = "/auditFindings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEntityEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListEntityEvents",
        input_schema = schemas.ListEntityEventsInput,
        output_schema = schemas.ListEntityEventsOutput,
        http_method = "POST",
        http_path = "/events",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGroupingAttributeDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListGroupingAttributeDefinitions",
        input_schema = schemas.ListGroupingAttributeDefinitionsInput,
        output_schema = schemas.ListGroupingAttributeDefinitionsOutput,
        http_method = "POST",
        http_path = "/grouping-attribute-definitions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServiceDependencies(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceDependencies",
        input_schema = schemas.ListServiceDependenciesInput,
        output_schema = schemas.ListServiceDependenciesOutput,
        http_method = "POST",
        http_path = "/service-dependencies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServiceDependents(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceDependents",
        input_schema = schemas.ListServiceDependentsInput,
        output_schema = schemas.ListServiceDependentsOutput,
        http_method = "POST",
        http_path = "/service-dependents",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServiceLevelObjectiveExclusionWindows(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceLevelObjectiveExclusionWindows",
        input_schema = schemas.ListServiceLevelObjectiveExclusionWindowsInput,
        output_schema = schemas.ListServiceLevelObjectiveExclusionWindowsOutput,
        http_method = "GET",
        http_path = "/slo/{Id}/exclusion-windows",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServiceLevelObjectives(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceLevelObjectives",
        input_schema = schemas.ListServiceLevelObjectivesInput,
        output_schema = schemas.ListServiceLevelObjectivesOutput,
        http_method = "POST",
        http_path = "/slos",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServiceOperations(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceOperations",
        input_schema = schemas.ListServiceOperationsInput,
        output_schema = schemas.ListServiceOperationsOutput,
        http_method = "POST",
        http_path = "/service-operations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServices(input, options)
    return self:invokeOperation(input, {
        name = "ListServices",
        input_schema = schemas.ListServicesInput,
        output_schema = schemas.ListServicesOutput,
        http_method = "GET",
        http_path = "/services",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServiceStates(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceStates",
        input_schema = schemas.ListServiceStatesInput,
        output_schema = schemas.ListServiceStatesOutput,
        http_method = "POST",
        http_path = "/service/states",
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
        http_path = "/tags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putGroupingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutGroupingConfiguration",
        input_schema = schemas.PutGroupingConfigurationInput,
        output_schema = schemas.PutGroupingConfigurationOutput,
        http_method = "PUT",
        http_path = "/grouping-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startDiscovery(input, options)
    return self:invokeOperation(input, {
        name = "StartDiscovery",
        input_schema = schemas.StartDiscoveryInput,
        output_schema = schemas.StartDiscoveryOutput,
        http_method = "POST",
        http_path = "/start-discovery",
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
        http_path = "/tag-resource",
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
        http_method = "POST",
        http_path = "/untag-resource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateServiceLevelObjective(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceLevelObjective",
        input_schema = schemas.UpdateServiceLevelObjectiveInput,
        output_schema = schemas.UpdateServiceLevelObjectiveOutput,
        http_method = "PATCH",
        http_path = "/slo/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
