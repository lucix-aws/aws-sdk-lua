local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("resourcegroups.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("resourcegroups.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Ardi"
    cfg.signing_name = "ardi"
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

function Client:cancelTagSyncTask(input, options)
    return self:invokeOperation(input, {
        name = "CancelTagSyncTask",
        input_schema = types.CancelTagSyncTaskInput,
        output_schema = types.CancelTagSyncTaskOutput,
        http_method = "POST",
        http_path = "/cancel-tag-sync-task",
    }, options)
end

function Client:createGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateGroup",
        input_schema = types.CreateGroupInput,
        output_schema = types.CreateGroupOutput,
        http_method = "POST",
        http_path = "/groups",
    }, options)
end

function Client:deleteGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGroup",
        input_schema = types.DeleteGroupInput,
        output_schema = types.DeleteGroupOutput,
        http_method = "POST",
        http_path = "/delete-group",
    }, options)
end

function Client:getAccountSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountSettings",
        input_schema = types.GetAccountSettingsInput,
        output_schema = types.GetAccountSettingsOutput,
        http_method = "POST",
        http_path = "/get-account-settings",
    }, options)
end

function Client:getGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetGroup",
        input_schema = types.GetGroupInput,
        output_schema = types.GetGroupOutput,
        http_method = "POST",
        http_path = "/get-group",
    }, options)
end

function Client:getGroupConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetGroupConfiguration",
        input_schema = types.GetGroupConfigurationInput,
        output_schema = types.GetGroupConfigurationOutput,
        http_method = "POST",
        http_path = "/get-group-configuration",
    }, options)
end

function Client:getGroupQuery(input, options)
    return self:invokeOperation(input, {
        name = "GetGroupQuery",
        input_schema = types.GetGroupQueryInput,
        output_schema = types.GetGroupQueryOutput,
        http_method = "POST",
        http_path = "/get-group-query",
    }, options)
end

function Client:getTags(input, options)
    return self:invokeOperation(input, {
        name = "GetTags",
        input_schema = types.GetTagsInput,
        output_schema = types.GetTagsOutput,
        http_method = "GET",
        http_path = "/resources/{Arn}/tags",
    }, options)
end

function Client:getTagSyncTask(input, options)
    return self:invokeOperation(input, {
        name = "GetTagSyncTask",
        input_schema = types.GetTagSyncTaskInput,
        output_schema = types.GetTagSyncTaskOutput,
        http_method = "POST",
        http_path = "/get-tag-sync-task",
    }, options)
end

function Client:groupResources(input, options)
    return self:invokeOperation(input, {
        name = "GroupResources",
        input_schema = types.GroupResourcesInput,
        output_schema = types.GroupResourcesOutput,
        http_method = "POST",
        http_path = "/group-resources",
    }, options)
end

function Client:listGroupingStatuses(input, options)
    return self:invokeOperation(input, {
        name = "ListGroupingStatuses",
        input_schema = types.ListGroupingStatusesInput,
        output_schema = types.ListGroupingStatusesOutput,
        http_method = "POST",
        http_path = "/list-grouping-statuses",
    }, options)
end

function Client:listGroupResources(input, options)
    return self:invokeOperation(input, {
        name = "ListGroupResources",
        input_schema = types.ListGroupResourcesInput,
        output_schema = types.ListGroupResourcesOutput,
        http_method = "POST",
        http_path = "/list-group-resources",
    }, options)
end

function Client:listGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListGroups",
        input_schema = types.ListGroupsInput,
        output_schema = types.ListGroupsOutput,
        http_method = "POST",
        http_path = "/groups-list",
    }, options)
end

function Client:listTagSyncTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListTagSyncTasks",
        input_schema = types.ListTagSyncTasksInput,
        output_schema = types.ListTagSyncTasksOutput,
        http_method = "POST",
        http_path = "/list-tag-sync-tasks",
    }, options)
end

function Client:putGroupConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutGroupConfiguration",
        input_schema = types.PutGroupConfigurationInput,
        output_schema = types.PutGroupConfigurationOutput,
        http_method = "POST",
        http_path = "/put-group-configuration",
    }, options)
end

function Client:searchResources(input, options)
    return self:invokeOperation(input, {
        name = "SearchResources",
        input_schema = types.SearchResourcesInput,
        output_schema = types.SearchResourcesOutput,
        http_method = "POST",
        http_path = "/resources/search",
    }, options)
end

function Client:startTagSyncTask(input, options)
    return self:invokeOperation(input, {
        name = "StartTagSyncTask",
        input_schema = types.StartTagSyncTaskInput,
        output_schema = types.StartTagSyncTaskOutput,
        http_method = "POST",
        http_path = "/start-tag-sync-task",
    }, options)
end

function Client:tag(input, options)
    return self:invokeOperation(input, {
        name = "Tag",
        input_schema = types.TagInput,
        output_schema = types.TagOutput,
        http_method = "PUT",
        http_path = "/resources/{Arn}/tags",
    }, options)
end

function Client:ungroupResources(input, options)
    return self:invokeOperation(input, {
        name = "UngroupResources",
        input_schema = types.UngroupResourcesInput,
        output_schema = types.UngroupResourcesOutput,
        http_method = "POST",
        http_path = "/ungroup-resources",
    }, options)
end

function Client:untag(input, options)
    return self:invokeOperation(input, {
        name = "Untag",
        input_schema = types.UntagInput,
        output_schema = types.UntagOutput,
        http_method = "PATCH",
        http_path = "/resources/{Arn}/tags",
    }, options)
end

function Client:updateAccountSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccountSettings",
        input_schema = types.UpdateAccountSettingsInput,
        output_schema = types.UpdateAccountSettingsOutput,
        http_method = "POST",
        http_path = "/update-account-settings",
    }, options)
end

function Client:updateGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGroup",
        input_schema = types.UpdateGroupInput,
        output_schema = types.UpdateGroupOutput,
        http_method = "POST",
        http_path = "/update-group",
    }, options)
end

function Client:updateGroupQuery(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGroupQuery",
        input_schema = types.UpdateGroupQueryInput,
        output_schema = types.UpdateGroupQueryOutput,
        http_method = "POST",
        http_path = "/update-group-query",
    }, options)
end

return M
