local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("codestarconnections.endpoint_rules")
local schemas = require("codestarconnections.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "CodeStar_connections_20191201"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "codestar-connections", signing_region = cfg.region } }
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

function Client:createConnection(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnection",
        input_schema = schemas.CreateConnectionInput,
        output_schema = schemas.CreateConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createHost(input, options)
    return self:invokeOperation(input, {
        name = "CreateHost",
        input_schema = schemas.CreateHostInput,
        output_schema = schemas.CreateHostOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRepositoryLink(input, options)
    return self:invokeOperation(input, {
        name = "CreateRepositoryLink",
        input_schema = schemas.CreateRepositoryLinkInput,
        output_schema = schemas.CreateRepositoryLinkOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSyncConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateSyncConfiguration",
        input_schema = schemas.CreateSyncConfigurationInput,
        output_schema = schemas.CreateSyncConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnection",
        input_schema = schemas.DeleteConnectionInput,
        output_schema = schemas.DeleteConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteHost(input, options)
    return self:invokeOperation(input, {
        name = "DeleteHost",
        input_schema = schemas.DeleteHostInput,
        output_schema = schemas.DeleteHostOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRepositoryLink(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRepositoryLink",
        input_schema = schemas.DeleteRepositoryLinkInput,
        output_schema = schemas.DeleteRepositoryLinkOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSyncConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSyncConfiguration",
        input_schema = schemas.DeleteSyncConfigurationInput,
        output_schema = schemas.DeleteSyncConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConnection(input, options)
    return self:invokeOperation(input, {
        name = "GetConnection",
        input_schema = schemas.GetConnectionInput,
        output_schema = schemas.GetConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getHost(input, options)
    return self:invokeOperation(input, {
        name = "GetHost",
        input_schema = schemas.GetHostInput,
        output_schema = schemas.GetHostOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRepositoryLink(input, options)
    return self:invokeOperation(input, {
        name = "GetRepositoryLink",
        input_schema = schemas.GetRepositoryLinkInput,
        output_schema = schemas.GetRepositoryLinkOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRepositorySyncStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetRepositorySyncStatus",
        input_schema = schemas.GetRepositorySyncStatusInput,
        output_schema = schemas.GetRepositorySyncStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourceSyncStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceSyncStatus",
        input_schema = schemas.GetResourceSyncStatusInput,
        output_schema = schemas.GetResourceSyncStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSyncBlockerSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetSyncBlockerSummary",
        input_schema = schemas.GetSyncBlockerSummaryInput,
        output_schema = schemas.GetSyncBlockerSummaryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSyncConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetSyncConfiguration",
        input_schema = schemas.GetSyncConfigurationInput,
        output_schema = schemas.GetSyncConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConnections(input, options)
    return self:invokeOperation(input, {
        name = "ListConnections",
        input_schema = schemas.ListConnectionsInput,
        output_schema = schemas.ListConnectionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listHosts(input, options)
    return self:invokeOperation(input, {
        name = "ListHosts",
        input_schema = schemas.ListHostsInput,
        output_schema = schemas.ListHostsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRepositoryLinks(input, options)
    return self:invokeOperation(input, {
        name = "ListRepositoryLinks",
        input_schema = schemas.ListRepositoryLinksInput,
        output_schema = schemas.ListRepositoryLinksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRepositorySyncDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListRepositorySyncDefinitions",
        input_schema = schemas.ListRepositorySyncDefinitionsInput,
        output_schema = schemas.ListRepositorySyncDefinitionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSyncConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListSyncConfigurations",
        input_schema = schemas.ListSyncConfigurationsInput,
        output_schema = schemas.ListSyncConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
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
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateHost(input, options)
    return self:invokeOperation(input, {
        name = "UpdateHost",
        input_schema = schemas.UpdateHostInput,
        output_schema = schemas.UpdateHostOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRepositoryLink(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRepositoryLink",
        input_schema = schemas.UpdateRepositoryLinkInput,
        output_schema = schemas.UpdateRepositoryLinkOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSyncBlocker(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSyncBlocker",
        input_schema = schemas.UpdateSyncBlockerInput,
        output_schema = schemas.UpdateSyncBlockerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSyncConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSyncConfiguration",
        input_schema = schemas.UpdateSyncConfigurationInput,
        output_schema = schemas.UpdateSyncConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
