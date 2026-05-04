local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("amp.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("amp.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonPrometheusService"
    cfg.signing_name = "amazonprometheusservice"
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

function Client:createAlertManagerDefinition(input, options)
    return self:invokeOperation(input, {
        name = "CreateAlertManagerDefinition",
        input_schema = types.CreateAlertManagerDefinitionInput,
        output_schema = types.CreateAlertManagerDefinitionOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/alertmanager/definition",
    }, options)
end

function Client:createAnomalyDetector(input, options)
    return self:invokeOperation(input, {
        name = "CreateAnomalyDetector",
        input_schema = types.CreateAnomalyDetectorInput,
        output_schema = types.CreateAnomalyDetectorOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/anomalydetectors",
    }, options)
end

function Client:createLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateLoggingConfiguration",
        input_schema = types.CreateLoggingConfigurationInput,
        output_schema = types.CreateLoggingConfigurationOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/logging",
    }, options)
end

function Client:createQueryLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateQueryLoggingConfiguration",
        input_schema = types.CreateQueryLoggingConfigurationInput,
        output_schema = types.CreateQueryLoggingConfigurationOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/logging/query",
    }, options)
end

function Client:createRuleGroupsNamespace(input, options)
    return self:invokeOperation(input, {
        name = "CreateRuleGroupsNamespace",
        input_schema = types.CreateRuleGroupsNamespaceInput,
        output_schema = types.CreateRuleGroupsNamespaceOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/rulegroupsnamespaces",
    }, options)
end

function Client:createScraper(input, options)
    return self:invokeOperation(input, {
        name = "CreateScraper",
        input_schema = types.CreateScraperInput,
        output_schema = types.CreateScraperOutput,
        http_method = "POST",
        http_path = "/scrapers",
    }, options)
end

function Client:createWorkspace(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkspace",
        input_schema = types.CreateWorkspaceInput,
        output_schema = types.CreateWorkspaceOutput,
        http_method = "POST",
        http_path = "/workspaces",
    }, options)
end

function Client:deleteAlertManagerDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAlertManagerDefinition",
        input_schema = types.DeleteAlertManagerDefinitionInput,
        output_schema = types.DeleteAlertManagerDefinitionOutput,
        http_method = "DELETE",
        http_path = "/workspaces/{workspaceId}/alertmanager/definition",
    }, options)
end

function Client:deleteAnomalyDetector(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAnomalyDetector",
        input_schema = types.DeleteAnomalyDetectorInput,
        output_schema = types.DeleteAnomalyDetectorOutput,
        http_method = "DELETE",
        http_path = "/workspaces/{workspaceId}/anomalydetectors/{anomalyDetectorId}",
    }, options)
end

function Client:deleteLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLoggingConfiguration",
        input_schema = types.DeleteLoggingConfigurationInput,
        output_schema = types.DeleteLoggingConfigurationOutput,
        http_method = "DELETE",
        http_path = "/workspaces/{workspaceId}/logging",
    }, options)
end

function Client:deleteQueryLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteQueryLoggingConfiguration",
        input_schema = types.DeleteQueryLoggingConfigurationInput,
        output_schema = types.DeleteQueryLoggingConfigurationOutput,
        http_method = "DELETE",
        http_path = "/workspaces/{workspaceId}/logging/query",
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = types.DeleteResourcePolicyInput,
        output_schema = types.DeleteResourcePolicyOutput,
        http_method = "DELETE",
        http_path = "/workspaces/{workspaceId}/policy",
    }, options)
end

function Client:deleteRuleGroupsNamespace(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRuleGroupsNamespace",
        input_schema = types.DeleteRuleGroupsNamespaceInput,
        output_schema = types.DeleteRuleGroupsNamespaceOutput,
        http_method = "DELETE",
        http_path = "/workspaces/{workspaceId}/rulegroupsnamespaces/{name}",
    }, options)
end

function Client:deleteScraper(input, options)
    return self:invokeOperation(input, {
        name = "DeleteScraper",
        input_schema = types.DeleteScraperInput,
        output_schema = types.DeleteScraperOutput,
        http_method = "DELETE",
        http_path = "/scrapers/{scraperId}",
    }, options)
end

function Client:deleteScraperLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteScraperLoggingConfiguration",
        input_schema = types.DeleteScraperLoggingConfigurationInput,
        output_schema = types.DeleteScraperLoggingConfigurationOutput,
        http_method = "DELETE",
        http_path = "/scrapers/{scraperId}/logging-configuration",
    }, options)
end

function Client:deleteWorkspace(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkspace",
        input_schema = types.DeleteWorkspaceInput,
        output_schema = types.DeleteWorkspaceOutput,
        http_method = "DELETE",
        http_path = "/workspaces/{workspaceId}",
    }, options)
end

function Client:describeAlertManagerDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAlertManagerDefinition",
        input_schema = types.DescribeAlertManagerDefinitionInput,
        output_schema = types.DescribeAlertManagerDefinitionOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}/alertmanager/definition",
    }, options)
end

function Client:describeAnomalyDetector(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAnomalyDetector",
        input_schema = types.DescribeAnomalyDetectorInput,
        output_schema = types.DescribeAnomalyDetectorOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}/anomalydetectors/{anomalyDetectorId}",
    }, options)
end

function Client:describeLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLoggingConfiguration",
        input_schema = types.DescribeLoggingConfigurationInput,
        output_schema = types.DescribeLoggingConfigurationOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}/logging",
    }, options)
end

function Client:describeQueryLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeQueryLoggingConfiguration",
        input_schema = types.DescribeQueryLoggingConfigurationInput,
        output_schema = types.DescribeQueryLoggingConfigurationOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}/logging/query",
    }, options)
end

function Client:describeResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DescribeResourcePolicy",
        input_schema = types.DescribeResourcePolicyInput,
        output_schema = types.DescribeResourcePolicyOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}/policy",
    }, options)
end

function Client:describeRuleGroupsNamespace(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRuleGroupsNamespace",
        input_schema = types.DescribeRuleGroupsNamespaceInput,
        output_schema = types.DescribeRuleGroupsNamespaceOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}/rulegroupsnamespaces/{name}",
    }, options)
end

function Client:describeScraper(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScraper",
        input_schema = types.DescribeScraperInput,
        output_schema = types.DescribeScraperOutput,
        http_method = "GET",
        http_path = "/scrapers/{scraperId}",
    }, options)
end

function Client:describeScraperLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScraperLoggingConfiguration",
        input_schema = types.DescribeScraperLoggingConfigurationInput,
        output_schema = types.DescribeScraperLoggingConfigurationOutput,
        http_method = "GET",
        http_path = "/scrapers/{scraperId}/logging-configuration",
    }, options)
end

function Client:describeWorkspace(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWorkspace",
        input_schema = types.DescribeWorkspaceInput,
        output_schema = types.DescribeWorkspaceOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}",
    }, options)
end

function Client:describeWorkspaceConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWorkspaceConfiguration",
        input_schema = types.DescribeWorkspaceConfigurationInput,
        output_schema = types.DescribeWorkspaceConfigurationOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}/configuration",
    }, options)
end

function Client:getDefaultScraperConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetDefaultScraperConfiguration",
        input_schema = types.GetDefaultScraperConfigurationInput,
        output_schema = types.GetDefaultScraperConfigurationOutput,
        http_method = "GET",
        http_path = "/scraperconfiguration",
    }, options)
end

function Client:listAnomalyDetectors(input, options)
    return self:invokeOperation(input, {
        name = "ListAnomalyDetectors",
        input_schema = types.ListAnomalyDetectorsInput,
        output_schema = types.ListAnomalyDetectorsOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}/anomalydetectors",
    }, options)
end

function Client:listRuleGroupsNamespaces(input, options)
    return self:invokeOperation(input, {
        name = "ListRuleGroupsNamespaces",
        input_schema = types.ListRuleGroupsNamespacesInput,
        output_schema = types.ListRuleGroupsNamespacesOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}/rulegroupsnamespaces",
    }, options)
end

function Client:listScrapers(input, options)
    return self:invokeOperation(input, {
        name = "ListScrapers",
        input_schema = types.ListScrapersInput,
        output_schema = types.ListScrapersOutput,
        http_method = "GET",
        http_path = "/scrapers",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:listWorkspaces(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkspaces",
        input_schema = types.ListWorkspacesInput,
        output_schema = types.ListWorkspacesOutput,
        http_method = "GET",
        http_path = "/workspaces",
    }, options)
end

function Client:putAlertManagerDefinition(input, options)
    return self:invokeOperation(input, {
        name = "PutAlertManagerDefinition",
        input_schema = types.PutAlertManagerDefinitionInput,
        output_schema = types.PutAlertManagerDefinitionOutput,
        http_method = "PUT",
        http_path = "/workspaces/{workspaceId}/alertmanager/definition",
    }, options)
end

function Client:putAnomalyDetector(input, options)
    return self:invokeOperation(input, {
        name = "PutAnomalyDetector",
        input_schema = types.PutAnomalyDetectorInput,
        output_schema = types.PutAnomalyDetectorOutput,
        http_method = "PUT",
        http_path = "/workspaces/{workspaceId}/anomalydetectors/{anomalyDetectorId}",
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = types.PutResourcePolicyInput,
        output_schema = types.PutResourcePolicyOutput,
        http_method = "PUT",
        http_path = "/workspaces/{workspaceId}/policy",
    }, options)
end

function Client:putRuleGroupsNamespace(input, options)
    return self:invokeOperation(input, {
        name = "PutRuleGroupsNamespace",
        input_schema = types.PutRuleGroupsNamespaceInput,
        output_schema = types.PutRuleGroupsNamespaceOutput,
        http_method = "PUT",
        http_path = "/workspaces/{workspaceId}/rulegroupsnamespaces/{name}",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:updateLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLoggingConfiguration",
        input_schema = types.UpdateLoggingConfigurationInput,
        output_schema = types.UpdateLoggingConfigurationOutput,
        http_method = "PUT",
        http_path = "/workspaces/{workspaceId}/logging",
    }, options)
end

function Client:updateQueryLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQueryLoggingConfiguration",
        input_schema = types.UpdateQueryLoggingConfigurationInput,
        output_schema = types.UpdateQueryLoggingConfigurationOutput,
        http_method = "PUT",
        http_path = "/workspaces/{workspaceId}/logging/query",
    }, options)
end

function Client:updateScraper(input, options)
    return self:invokeOperation(input, {
        name = "UpdateScraper",
        input_schema = types.UpdateScraperInput,
        output_schema = types.UpdateScraperOutput,
        http_method = "PUT",
        http_path = "/scrapers/{scraperId}",
    }, options)
end

function Client:updateScraperLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateScraperLoggingConfiguration",
        input_schema = types.UpdateScraperLoggingConfigurationInput,
        output_schema = types.UpdateScraperLoggingConfigurationOutput,
        http_method = "PUT",
        http_path = "/scrapers/{scraperId}/logging-configuration",
    }, options)
end

function Client:updateWorkspaceAlias(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkspaceAlias",
        input_schema = types.UpdateWorkspaceAliasInput,
        output_schema = types.UpdateWorkspaceAliasOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/alias",
    }, options)
end

function Client:updateWorkspaceConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkspaceConfiguration",
        input_schema = types.UpdateWorkspaceConfigurationInput,
        output_schema = types.UpdateWorkspaceConfigurationOutput,
        http_method = "PATCH",
        http_path = "/workspaces/{workspaceId}/configuration",
    }, options)
end

return M
