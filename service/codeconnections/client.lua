local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("codeconnections.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("codeconnections.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "CodeConnections_20231201"
    cfg.signing_name = "codeconnections_20231201"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.0")
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

function Client:createConnection(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnection",
        input_schema = types.CreateConnectionInput,
        output_schema = types.CreateConnectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createHost(input, options)
    return self:invokeOperation(input, {
        name = "CreateHost",
        input_schema = types.CreateHostInput,
        output_schema = types.CreateHostOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createRepositoryLink(input, options)
    return self:invokeOperation(input, {
        name = "CreateRepositoryLink",
        input_schema = types.CreateRepositoryLinkInput,
        output_schema = types.CreateRepositoryLinkOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createSyncConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateSyncConfiguration",
        input_schema = types.CreateSyncConfigurationInput,
        output_schema = types.CreateSyncConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnection",
        input_schema = types.DeleteConnectionInput,
        output_schema = types.DeleteConnectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteHost(input, options)
    return self:invokeOperation(input, {
        name = "DeleteHost",
        input_schema = types.DeleteHostInput,
        output_schema = types.DeleteHostOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteRepositoryLink(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRepositoryLink",
        input_schema = types.DeleteRepositoryLinkInput,
        output_schema = types.DeleteRepositoryLinkOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteSyncConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSyncConfiguration",
        input_schema = types.DeleteSyncConfigurationInput,
        output_schema = types.DeleteSyncConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getConnection(input, options)
    return self:invokeOperation(input, {
        name = "GetConnection",
        input_schema = types.GetConnectionInput,
        output_schema = types.GetConnectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getHost(input, options)
    return self:invokeOperation(input, {
        name = "GetHost",
        input_schema = types.GetHostInput,
        output_schema = types.GetHostOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getRepositoryLink(input, options)
    return self:invokeOperation(input, {
        name = "GetRepositoryLink",
        input_schema = types.GetRepositoryLinkInput,
        output_schema = types.GetRepositoryLinkOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getRepositorySyncStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetRepositorySyncStatus",
        input_schema = types.GetRepositorySyncStatusInput,
        output_schema = types.GetRepositorySyncStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getResourceSyncStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceSyncStatus",
        input_schema = types.GetResourceSyncStatusInput,
        output_schema = types.GetResourceSyncStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getSyncBlockerSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetSyncBlockerSummary",
        input_schema = types.GetSyncBlockerSummaryInput,
        output_schema = types.GetSyncBlockerSummaryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getSyncConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetSyncConfiguration",
        input_schema = types.GetSyncConfigurationInput,
        output_schema = types.GetSyncConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listConnections(input, options)
    return self:invokeOperation(input, {
        name = "ListConnections",
        input_schema = types.ListConnectionsInput,
        output_schema = types.ListConnectionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listHosts(input, options)
    return self:invokeOperation(input, {
        name = "ListHosts",
        input_schema = types.ListHostsInput,
        output_schema = types.ListHostsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listRepositoryLinks(input, options)
    return self:invokeOperation(input, {
        name = "ListRepositoryLinks",
        input_schema = types.ListRepositoryLinksInput,
        output_schema = types.ListRepositoryLinksOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listRepositorySyncDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListRepositorySyncDefinitions",
        input_schema = types.ListRepositorySyncDefinitionsInput,
        output_schema = types.ListRepositorySyncDefinitionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listSyncConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListSyncConfigurations",
        input_schema = types.ListSyncConfigurationsInput,
        output_schema = types.ListSyncConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateHost(input, options)
    return self:invokeOperation(input, {
        name = "UpdateHost",
        input_schema = types.UpdateHostInput,
        output_schema = types.UpdateHostOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateRepositoryLink(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRepositoryLink",
        input_schema = types.UpdateRepositoryLinkInput,
        output_schema = types.UpdateRepositoryLinkOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateSyncBlocker(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSyncBlocker",
        input_schema = types.UpdateSyncBlockerInput,
        output_schema = types.UpdateSyncBlockerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateSyncConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSyncConfiguration",
        input_schema = types.UpdateSyncConfigurationInput,
        output_schema = types.UpdateSyncConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
