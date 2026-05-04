local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("applicationsignals.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("applicationsignals.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ApplicationSignals"
    cfg.signing_name = "applicationsignals"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:batchGetServiceLevelObjectiveBudgetReport(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetServiceLevelObjectiveBudgetReport",
        input_schema = types.BatchGetServiceLevelObjectiveBudgetReportInput,
        output_schema = types.BatchGetServiceLevelObjectiveBudgetReportOutput,
        http_method = "POST",
        http_path = "/budget-report",
    }, options)
end

function Client:batchUpdateExclusionWindows(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateExclusionWindows",
        input_schema = types.BatchUpdateExclusionWindowsInput,
        output_schema = types.BatchUpdateExclusionWindowsOutput,
        http_method = "PATCH",
        http_path = "/exclusion-windows",
    }, options)
end

function Client:createServiceLevelObjective(input, options)
    return self:invokeOperation(input, {
        name = "CreateServiceLevelObjective",
        input_schema = types.CreateServiceLevelObjectiveInput,
        output_schema = types.CreateServiceLevelObjectiveOutput,
        http_method = "POST",
        http_path = "/slo",
    }, options)
end

function Client:deleteGroupingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGroupingConfiguration",
        input_schema = types.DeleteGroupingConfigurationInput,
        output_schema = types.DeleteGroupingConfigurationOutput,
        http_method = "DELETE",
        http_path = "/grouping-configuration",
    }, options)
end

function Client:deleteServiceLevelObjective(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServiceLevelObjective",
        input_schema = types.DeleteServiceLevelObjectiveInput,
        output_schema = types.DeleteServiceLevelObjectiveOutput,
        http_method = "DELETE",
        http_path = "/slo/{Id}",
    }, options)
end

function Client:getService(input, options)
    return self:invokeOperation(input, {
        name = "GetService",
        input_schema = types.GetServiceInput,
        output_schema = types.GetServiceOutput,
        http_method = "POST",
        http_path = "/service",
    }, options)
end

function Client:getServiceLevelObjective(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceLevelObjective",
        input_schema = types.GetServiceLevelObjectiveInput,
        output_schema = types.GetServiceLevelObjectiveOutput,
        http_method = "GET",
        http_path = "/slo/{Id}",
    }, options)
end

function Client:listAuditFindings(input, options)
    return self:invokeOperation(input, {
        name = "ListAuditFindings",
        input_schema = types.ListAuditFindingsInput,
        output_schema = types.ListAuditFindingsOutput,
        http_method = "POST",
        http_path = "/auditFindings",
    }, options)
end

function Client:listEntityEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListEntityEvents",
        input_schema = types.ListEntityEventsInput,
        output_schema = types.ListEntityEventsOutput,
        http_method = "POST",
        http_path = "/events",
    }, options)
end

function Client:listGroupingAttributeDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListGroupingAttributeDefinitions",
        input_schema = types.ListGroupingAttributeDefinitionsInput,
        output_schema = types.ListGroupingAttributeDefinitionsOutput,
        http_method = "POST",
        http_path = "/grouping-attribute-definitions",
    }, options)
end

function Client:listServiceDependencies(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceDependencies",
        input_schema = types.ListServiceDependenciesInput,
        output_schema = types.ListServiceDependenciesOutput,
        http_method = "POST",
        http_path = "/service-dependencies",
    }, options)
end

function Client:listServiceDependents(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceDependents",
        input_schema = types.ListServiceDependentsInput,
        output_schema = types.ListServiceDependentsOutput,
        http_method = "POST",
        http_path = "/service-dependents",
    }, options)
end

function Client:listServiceLevelObjectiveExclusionWindows(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceLevelObjectiveExclusionWindows",
        input_schema = types.ListServiceLevelObjectiveExclusionWindowsInput,
        output_schema = types.ListServiceLevelObjectiveExclusionWindowsOutput,
        http_method = "GET",
        http_path = "/slo/{Id}/exclusion-windows",
    }, options)
end

function Client:listServiceLevelObjectives(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceLevelObjectives",
        input_schema = types.ListServiceLevelObjectivesInput,
        output_schema = types.ListServiceLevelObjectivesOutput,
        http_method = "POST",
        http_path = "/slos",
    }, options)
end

function Client:listServiceOperations(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceOperations",
        input_schema = types.ListServiceOperationsInput,
        output_schema = types.ListServiceOperationsOutput,
        http_method = "POST",
        http_path = "/service-operations",
    }, options)
end

function Client:listServices(input, options)
    return self:invokeOperation(input, {
        name = "ListServices",
        input_schema = types.ListServicesInput,
        output_schema = types.ListServicesOutput,
        http_method = "GET",
        http_path = "/services",
    }, options)
end

function Client:listServiceStates(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceStates",
        input_schema = types.ListServiceStatesInput,
        output_schema = types.ListServiceStatesOutput,
        http_method = "POST",
        http_path = "/service/states",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags",
    }, options)
end

function Client:putGroupingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutGroupingConfiguration",
        input_schema = types.PutGroupingConfigurationInput,
        output_schema = types.PutGroupingConfigurationOutput,
        http_method = "PUT",
        http_path = "/grouping-configuration",
    }, options)
end

function Client:startDiscovery(input, options)
    return self:invokeOperation(input, {
        name = "StartDiscovery",
        input_schema = types.StartDiscoveryInput,
        output_schema = types.StartDiscoveryOutput,
        http_method = "POST",
        http_path = "/start-discovery",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tag-resource",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/untag-resource",
    }, options)
end

function Client:updateServiceLevelObjective(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceLevelObjective",
        input_schema = types.UpdateServiceLevelObjectiveInput,
        output_schema = types.UpdateServiceLevelObjectiveOutput,
        http_method = "PATCH",
        http_path = "/slo/{Id}",
    }, options)
end

return M
