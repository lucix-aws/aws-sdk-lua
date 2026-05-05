local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("amp.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("amp.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonPrometheusService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "aps", signing_region = cfg.region } }
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

function Client:createAlertManagerDefinition(input, options)
    return self:invokeOperation(input, {
        name = "CreateAlertManagerDefinition",
        input_schema = schemas.CreateAlertManagerDefinitionInput,
        output_schema = schemas.CreateAlertManagerDefinitionOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/alertmanager/definition",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAnomalyDetector(input, options)
    return self:invokeOperation(input, {
        name = "CreateAnomalyDetector",
        input_schema = schemas.CreateAnomalyDetectorInput,
        output_schema = schemas.CreateAnomalyDetectorOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/anomalydetectors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateLoggingConfiguration",
        input_schema = schemas.CreateLoggingConfigurationInput,
        output_schema = schemas.CreateLoggingConfigurationOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/logging",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createQueryLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateQueryLoggingConfiguration",
        input_schema = schemas.CreateQueryLoggingConfigurationInput,
        output_schema = schemas.CreateQueryLoggingConfigurationOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/logging/query",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRuleGroupsNamespace(input, options)
    return self:invokeOperation(input, {
        name = "CreateRuleGroupsNamespace",
        input_schema = schemas.CreateRuleGroupsNamespaceInput,
        output_schema = schemas.CreateRuleGroupsNamespaceOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/rulegroupsnamespaces",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createScraper(input, options)
    return self:invokeOperation(input, {
        name = "CreateScraper",
        input_schema = schemas.CreateScraperInput,
        output_schema = schemas.CreateScraperOutput,
        http_method = "POST",
        http_path = "/scrapers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWorkspace(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkspace",
        input_schema = schemas.CreateWorkspaceInput,
        output_schema = schemas.CreateWorkspaceOutput,
        http_method = "POST",
        http_path = "/workspaces",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAlertManagerDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAlertManagerDefinition",
        input_schema = schemas.DeleteAlertManagerDefinitionInput,
        output_schema = schemas.DeleteAlertManagerDefinitionOutput,
        http_method = "DELETE",
        http_path = "/workspaces/{workspaceId}/alertmanager/definition",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAnomalyDetector(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAnomalyDetector",
        input_schema = schemas.DeleteAnomalyDetectorInput,
        output_schema = schemas.DeleteAnomalyDetectorOutput,
        http_method = "DELETE",
        http_path = "/workspaces/{workspaceId}/anomalydetectors/{anomalyDetectorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLoggingConfiguration",
        input_schema = schemas.DeleteLoggingConfigurationInput,
        output_schema = schemas.DeleteLoggingConfigurationOutput,
        http_method = "DELETE",
        http_path = "/workspaces/{workspaceId}/logging",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteQueryLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteQueryLoggingConfiguration",
        input_schema = schemas.DeleteQueryLoggingConfigurationInput,
        output_schema = schemas.DeleteQueryLoggingConfigurationOutput,
        http_method = "DELETE",
        http_path = "/workspaces/{workspaceId}/logging/query",
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
        http_path = "/workspaces/{workspaceId}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRuleGroupsNamespace(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRuleGroupsNamespace",
        input_schema = schemas.DeleteRuleGroupsNamespaceInput,
        output_schema = schemas.DeleteRuleGroupsNamespaceOutput,
        http_method = "DELETE",
        http_path = "/workspaces/{workspaceId}/rulegroupsnamespaces/{name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteScraper(input, options)
    return self:invokeOperation(input, {
        name = "DeleteScraper",
        input_schema = schemas.DeleteScraperInput,
        output_schema = schemas.DeleteScraperOutput,
        http_method = "DELETE",
        http_path = "/scrapers/{scraperId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteScraperLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteScraperLoggingConfiguration",
        input_schema = schemas.DeleteScraperLoggingConfigurationInput,
        output_schema = schemas.DeleteScraperLoggingConfigurationOutput,
        http_method = "DELETE",
        http_path = "/scrapers/{scraperId}/logging-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWorkspace(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkspace",
        input_schema = schemas.DeleteWorkspaceInput,
        output_schema = schemas.DeleteWorkspaceOutput,
        http_method = "DELETE",
        http_path = "/workspaces/{workspaceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAlertManagerDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAlertManagerDefinition",
        input_schema = schemas.DescribeAlertManagerDefinitionInput,
        output_schema = schemas.DescribeAlertManagerDefinitionOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}/alertmanager/definition",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAnomalyDetector(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAnomalyDetector",
        input_schema = schemas.DescribeAnomalyDetectorInput,
        output_schema = schemas.DescribeAnomalyDetectorOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}/anomalydetectors/{anomalyDetectorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLoggingConfiguration",
        input_schema = schemas.DescribeLoggingConfigurationInput,
        output_schema = schemas.DescribeLoggingConfigurationOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}/logging",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeQueryLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeQueryLoggingConfiguration",
        input_schema = schemas.DescribeQueryLoggingConfigurationInput,
        output_schema = schemas.DescribeQueryLoggingConfigurationOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}/logging/query",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DescribeResourcePolicy",
        input_schema = schemas.DescribeResourcePolicyInput,
        output_schema = schemas.DescribeResourcePolicyOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRuleGroupsNamespace(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRuleGroupsNamespace",
        input_schema = schemas.DescribeRuleGroupsNamespaceInput,
        output_schema = schemas.DescribeRuleGroupsNamespaceOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}/rulegroupsnamespaces/{name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeScraper(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScraper",
        input_schema = schemas.DescribeScraperInput,
        output_schema = schemas.DescribeScraperOutput,
        http_method = "GET",
        http_path = "/scrapers/{scraperId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeScraperLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScraperLoggingConfiguration",
        input_schema = schemas.DescribeScraperLoggingConfigurationInput,
        output_schema = schemas.DescribeScraperLoggingConfigurationOutput,
        http_method = "GET",
        http_path = "/scrapers/{scraperId}/logging-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeWorkspace(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWorkspace",
        input_schema = schemas.DescribeWorkspaceInput,
        output_schema = schemas.DescribeWorkspaceOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeWorkspaceConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWorkspaceConfiguration",
        input_schema = schemas.DescribeWorkspaceConfigurationInput,
        output_schema = schemas.DescribeWorkspaceConfigurationOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}/configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDefaultScraperConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetDefaultScraperConfiguration",
        input_schema = schemas.GetDefaultScraperConfigurationInput,
        output_schema = schemas.GetDefaultScraperConfigurationOutput,
        http_method = "GET",
        http_path = "/scraperconfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAnomalyDetectors(input, options)
    return self:invokeOperation(input, {
        name = "ListAnomalyDetectors",
        input_schema = schemas.ListAnomalyDetectorsInput,
        output_schema = schemas.ListAnomalyDetectorsOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}/anomalydetectors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRuleGroupsNamespaces(input, options)
    return self:invokeOperation(input, {
        name = "ListRuleGroupsNamespaces",
        input_schema = schemas.ListRuleGroupsNamespacesInput,
        output_schema = schemas.ListRuleGroupsNamespacesOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}/rulegroupsnamespaces",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listScrapers(input, options)
    return self:invokeOperation(input, {
        name = "ListScrapers",
        input_schema = schemas.ListScrapersInput,
        output_schema = schemas.ListScrapersOutput,
        http_method = "GET",
        http_path = "/scrapers",
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

function Client:listWorkspaces(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkspaces",
        input_schema = schemas.ListWorkspacesInput,
        output_schema = schemas.ListWorkspacesOutput,
        http_method = "GET",
        http_path = "/workspaces",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putAlertManagerDefinition(input, options)
    return self:invokeOperation(input, {
        name = "PutAlertManagerDefinition",
        input_schema = schemas.PutAlertManagerDefinitionInput,
        output_schema = schemas.PutAlertManagerDefinitionOutput,
        http_method = "PUT",
        http_path = "/workspaces/{workspaceId}/alertmanager/definition",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putAnomalyDetector(input, options)
    return self:invokeOperation(input, {
        name = "PutAnomalyDetector",
        input_schema = schemas.PutAnomalyDetectorInput,
        output_schema = schemas.PutAnomalyDetectorOutput,
        http_method = "PUT",
        http_path = "/workspaces/{workspaceId}/anomalydetectors/{anomalyDetectorId}",
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
        http_path = "/workspaces/{workspaceId}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putRuleGroupsNamespace(input, options)
    return self:invokeOperation(input, {
        name = "PutRuleGroupsNamespace",
        input_schema = schemas.PutRuleGroupsNamespaceInput,
        output_schema = schemas.PutRuleGroupsNamespaceOutput,
        http_method = "PUT",
        http_path = "/workspaces/{workspaceId}/rulegroupsnamespaces/{name}",
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

function Client:updateLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLoggingConfiguration",
        input_schema = schemas.UpdateLoggingConfigurationInput,
        output_schema = schemas.UpdateLoggingConfigurationOutput,
        http_method = "PUT",
        http_path = "/workspaces/{workspaceId}/logging",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateQueryLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQueryLoggingConfiguration",
        input_schema = schemas.UpdateQueryLoggingConfigurationInput,
        output_schema = schemas.UpdateQueryLoggingConfigurationOutput,
        http_method = "PUT",
        http_path = "/workspaces/{workspaceId}/logging/query",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateScraper(input, options)
    return self:invokeOperation(input, {
        name = "UpdateScraper",
        input_schema = schemas.UpdateScraperInput,
        output_schema = schemas.UpdateScraperOutput,
        http_method = "PUT",
        http_path = "/scrapers/{scraperId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateScraperLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateScraperLoggingConfiguration",
        input_schema = schemas.UpdateScraperLoggingConfigurationInput,
        output_schema = schemas.UpdateScraperLoggingConfigurationOutput,
        http_method = "PUT",
        http_path = "/scrapers/{scraperId}/logging-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWorkspaceAlias(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkspaceAlias",
        input_schema = schemas.UpdateWorkspaceAliasInput,
        output_schema = schemas.UpdateWorkspaceAliasOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/alias",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWorkspaceConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkspaceConfiguration",
        input_schema = schemas.UpdateWorkspaceConfigurationInput,
        output_schema = schemas.UpdateWorkspaceConfigurationOutput,
        http_method = "PATCH",
        http_path = "/workspaces/{workspaceId}/configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
