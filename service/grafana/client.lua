local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("grafana.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("grafana.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSGrafanaControlPlane"
    cfg.signing_name = "grafana"
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

function Client:associateLicense(input, options)
    return self:invokeOperation(input, {
        name = "AssociateLicense",
        input_schema = types.AssociateLicenseInput,
        output_schema = types.AssociateLicenseOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/licenses/{licenseType}",
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

function Client:createWorkspaceApiKey(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkspaceApiKey",
        input_schema = types.CreateWorkspaceApiKeyInput,
        output_schema = types.CreateWorkspaceApiKeyOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/apikeys",
    }, options)
end

function Client:createWorkspaceServiceAccount(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkspaceServiceAccount",
        input_schema = types.CreateWorkspaceServiceAccountInput,
        output_schema = types.CreateWorkspaceServiceAccountOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/serviceaccounts",
    }, options)
end

function Client:createWorkspaceServiceAccountToken(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkspaceServiceAccountToken",
        input_schema = types.CreateWorkspaceServiceAccountTokenInput,
        output_schema = types.CreateWorkspaceServiceAccountTokenOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/serviceaccounts/{serviceAccountId}/tokens",
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

function Client:deleteWorkspaceApiKey(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkspaceApiKey",
        input_schema = types.DeleteWorkspaceApiKeyInput,
        output_schema = types.DeleteWorkspaceApiKeyOutput,
        http_method = "DELETE",
        http_path = "/workspaces/{workspaceId}/apikeys/{keyName}",
    }, options)
end

function Client:deleteWorkspaceServiceAccount(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkspaceServiceAccount",
        input_schema = types.DeleteWorkspaceServiceAccountInput,
        output_schema = types.DeleteWorkspaceServiceAccountOutput,
        http_method = "DELETE",
        http_path = "/workspaces/{workspaceId}/serviceaccounts/{serviceAccountId}",
    }, options)
end

function Client:deleteWorkspaceServiceAccountToken(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkspaceServiceAccountToken",
        input_schema = types.DeleteWorkspaceServiceAccountTokenInput,
        output_schema = types.DeleteWorkspaceServiceAccountTokenOutput,
        http_method = "DELETE",
        http_path = "/workspaces/{workspaceId}/serviceaccounts/{serviceAccountId}/tokens/{tokenId}",
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

function Client:describeWorkspaceAuthentication(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWorkspaceAuthentication",
        input_schema = types.DescribeWorkspaceAuthenticationInput,
        output_schema = types.DescribeWorkspaceAuthenticationOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}/authentication",
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

function Client:disassociateLicense(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateLicense",
        input_schema = types.DisassociateLicenseInput,
        output_schema = types.DisassociateLicenseOutput,
        http_method = "DELETE",
        http_path = "/workspaces/{workspaceId}/licenses/{licenseType}",
    }, options)
end

function Client:listPermissions(input, options)
    return self:invokeOperation(input, {
        name = "ListPermissions",
        input_schema = types.ListPermissionsInput,
        output_schema = types.ListPermissionsOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}/permissions",
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

function Client:listVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListVersions",
        input_schema = types.ListVersionsInput,
        output_schema = types.ListVersionsOutput,
        http_method = "GET",
        http_path = "/versions",
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

function Client:listWorkspaceServiceAccounts(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkspaceServiceAccounts",
        input_schema = types.ListWorkspaceServiceAccountsInput,
        output_schema = types.ListWorkspaceServiceAccountsOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}/serviceaccounts",
    }, options)
end

function Client:listWorkspaceServiceAccountTokens(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkspaceServiceAccountTokens",
        input_schema = types.ListWorkspaceServiceAccountTokensInput,
        output_schema = types.ListWorkspaceServiceAccountTokensOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}/serviceaccounts/{serviceAccountId}/tokens",
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

function Client:updatePermissions(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePermissions",
        input_schema = types.UpdatePermissionsInput,
        output_schema = types.UpdatePermissionsOutput,
        http_method = "PATCH",
        http_path = "/workspaces/{workspaceId}/permissions",
    }, options)
end

function Client:updateWorkspace(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkspace",
        input_schema = types.UpdateWorkspaceInput,
        output_schema = types.UpdateWorkspaceOutput,
        http_method = "PUT",
        http_path = "/workspaces/{workspaceId}",
    }, options)
end

function Client:updateWorkspaceAuthentication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkspaceAuthentication",
        input_schema = types.UpdateWorkspaceAuthenticationInput,
        output_schema = types.UpdateWorkspaceAuthenticationOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/authentication",
    }, options)
end

function Client:updateWorkspaceConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkspaceConfiguration",
        input_schema = types.UpdateWorkspaceConfigurationInput,
        output_schema = types.UpdateWorkspaceConfigurationOutput,
        http_method = "PUT",
        http_path = "/workspaces/{workspaceId}/configuration",
    }, options)
end

return M
