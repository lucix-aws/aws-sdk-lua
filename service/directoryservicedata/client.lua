local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("directoryservicedata.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("directoryservicedata.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "DirectoryServiceData"
    cfg.signing_name = "directoryservicedata"
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

function Client:addGroupMember(input, options)
    return self:invokeOperation(input, {
        name = "AddGroupMember",
        input_schema = types.AddGroupMemberInput,
        output_schema = types.AddGroupMemberOutput,
        http_method = "POST",
        http_path = "/GroupMemberships/AddGroupMember",
    }, options)
end

function Client:createGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateGroup",
        input_schema = types.CreateGroupInput,
        output_schema = types.CreateGroupOutput,
        http_method = "POST",
        http_path = "/Groups/CreateGroup",
    }, options)
end

function Client:createUser(input, options)
    return self:invokeOperation(input, {
        name = "CreateUser",
        input_schema = types.CreateUserInput,
        output_schema = types.CreateUserOutput,
        http_method = "POST",
        http_path = "/Users/CreateUser",
    }, options)
end

function Client:deleteGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGroup",
        input_schema = types.DeleteGroupInput,
        output_schema = types.DeleteGroupOutput,
        http_method = "POST",
        http_path = "/Groups/DeleteGroup",
    }, options)
end

function Client:deleteUser(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUser",
        input_schema = types.DeleteUserInput,
        output_schema = types.DeleteUserOutput,
        http_method = "POST",
        http_path = "/Users/DeleteUser",
    }, options)
end

function Client:describeGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGroup",
        input_schema = types.DescribeGroupInput,
        output_schema = types.DescribeGroupOutput,
        http_method = "POST",
        http_path = "/Groups/DescribeGroup",
    }, options)
end

function Client:describeUser(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUser",
        input_schema = types.DescribeUserInput,
        output_schema = types.DescribeUserOutput,
        http_method = "POST",
        http_path = "/Users/DescribeUser",
    }, options)
end

function Client:disableUser(input, options)
    return self:invokeOperation(input, {
        name = "DisableUser",
        input_schema = types.DisableUserInput,
        output_schema = types.DisableUserOutput,
        http_method = "POST",
        http_path = "/Users/DisableUser",
    }, options)
end

function Client:listGroupMembers(input, options)
    return self:invokeOperation(input, {
        name = "ListGroupMembers",
        input_schema = types.ListGroupMembersInput,
        output_schema = types.ListGroupMembersOutput,
        http_method = "POST",
        http_path = "/GroupMemberships/ListGroupMembers",
    }, options)
end

function Client:listGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListGroups",
        input_schema = types.ListGroupsInput,
        output_schema = types.ListGroupsOutput,
        http_method = "POST",
        http_path = "/Groups/ListGroups",
    }, options)
end

function Client:listGroupsForMember(input, options)
    return self:invokeOperation(input, {
        name = "ListGroupsForMember",
        input_schema = types.ListGroupsForMemberInput,
        output_schema = types.ListGroupsForMemberOutput,
        http_method = "POST",
        http_path = "/GroupMemberships/ListGroupsForMember",
    }, options)
end

function Client:listUsers(input, options)
    return self:invokeOperation(input, {
        name = "ListUsers",
        input_schema = types.ListUsersInput,
        output_schema = types.ListUsersOutput,
        http_method = "POST",
        http_path = "/Users/ListUsers",
    }, options)
end

function Client:removeGroupMember(input, options)
    return self:invokeOperation(input, {
        name = "RemoveGroupMember",
        input_schema = types.RemoveGroupMemberInput,
        output_schema = types.RemoveGroupMemberOutput,
        http_method = "POST",
        http_path = "/GroupMemberships/RemoveGroupMember",
    }, options)
end

function Client:searchGroups(input, options)
    return self:invokeOperation(input, {
        name = "SearchGroups",
        input_schema = types.SearchGroupsInput,
        output_schema = types.SearchGroupsOutput,
        http_method = "POST",
        http_path = "/Groups/SearchGroups",
    }, options)
end

function Client:searchUsers(input, options)
    return self:invokeOperation(input, {
        name = "SearchUsers",
        input_schema = types.SearchUsersInput,
        output_schema = types.SearchUsersOutput,
        http_method = "POST",
        http_path = "/Users/SearchUsers",
    }, options)
end

function Client:updateGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGroup",
        input_schema = types.UpdateGroupInput,
        output_schema = types.UpdateGroupOutput,
        http_method = "POST",
        http_path = "/Groups/UpdateGroup",
    }, options)
end

function Client:updateUser(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUser",
        input_schema = types.UpdateUserInput,
        output_schema = types.UpdateUserOutput,
        http_method = "POST",
        http_path = "/Users/UpdateUser",
    }, options)
end

return M
