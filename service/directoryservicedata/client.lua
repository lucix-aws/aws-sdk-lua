local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("directoryservicedata.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("directoryservicedata.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "DirectoryServiceData"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ds-data", signing_region = cfg.region } }
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

function Client:addGroupMember(input, options)
    return self:invokeOperation(input, {
        name = "AddGroupMember",
        input_schema = schemas.AddGroupMemberInput,
        output_schema = schemas.AddGroupMemberOutput,
        http_method = "POST",
        http_path = "/GroupMemberships/AddGroupMember",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateGroup",
        input_schema = schemas.CreateGroupInput,
        output_schema = schemas.CreateGroupOutput,
        http_method = "POST",
        http_path = "/Groups/CreateGroup",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createUser(input, options)
    return self:invokeOperation(input, {
        name = "CreateUser",
        input_schema = schemas.CreateUserInput,
        output_schema = schemas.CreateUserOutput,
        http_method = "POST",
        http_path = "/Users/CreateUser",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGroup",
        input_schema = schemas.DeleteGroupInput,
        output_schema = schemas.DeleteGroupOutput,
        http_method = "POST",
        http_path = "/Groups/DeleteGroup",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteUser(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUser",
        input_schema = schemas.DeleteUserInput,
        output_schema = schemas.DeleteUserOutput,
        http_method = "POST",
        http_path = "/Users/DeleteUser",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGroup",
        input_schema = schemas.DescribeGroupInput,
        output_schema = schemas.DescribeGroupOutput,
        http_method = "POST",
        http_path = "/Groups/DescribeGroup",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeUser(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUser",
        input_schema = schemas.DescribeUserInput,
        output_schema = schemas.DescribeUserOutput,
        http_method = "POST",
        http_path = "/Users/DescribeUser",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableUser(input, options)
    return self:invokeOperation(input, {
        name = "DisableUser",
        input_schema = schemas.DisableUserInput,
        output_schema = schemas.DisableUserOutput,
        http_method = "POST",
        http_path = "/Users/DisableUser",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGroupMembers(input, options)
    return self:invokeOperation(input, {
        name = "ListGroupMembers",
        input_schema = schemas.ListGroupMembersInput,
        output_schema = schemas.ListGroupMembersOutput,
        http_method = "POST",
        http_path = "/GroupMemberships/ListGroupMembers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListGroups",
        input_schema = schemas.ListGroupsInput,
        output_schema = schemas.ListGroupsOutput,
        http_method = "POST",
        http_path = "/Groups/ListGroups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGroupsForMember(input, options)
    return self:invokeOperation(input, {
        name = "ListGroupsForMember",
        input_schema = schemas.ListGroupsForMemberInput,
        output_schema = schemas.ListGroupsForMemberOutput,
        http_method = "POST",
        http_path = "/GroupMemberships/ListGroupsForMember",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listUsers(input, options)
    return self:invokeOperation(input, {
        name = "ListUsers",
        input_schema = schemas.ListUsersInput,
        output_schema = schemas.ListUsersOutput,
        http_method = "POST",
        http_path = "/Users/ListUsers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeGroupMember(input, options)
    return self:invokeOperation(input, {
        name = "RemoveGroupMember",
        input_schema = schemas.RemoveGroupMemberInput,
        output_schema = schemas.RemoveGroupMemberOutput,
        http_method = "POST",
        http_path = "/GroupMemberships/RemoveGroupMember",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchGroups(input, options)
    return self:invokeOperation(input, {
        name = "SearchGroups",
        input_schema = schemas.SearchGroupsInput,
        output_schema = schemas.SearchGroupsOutput,
        http_method = "POST",
        http_path = "/Groups/SearchGroups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchUsers(input, options)
    return self:invokeOperation(input, {
        name = "SearchUsers",
        input_schema = schemas.SearchUsersInput,
        output_schema = schemas.SearchUsersOutput,
        http_method = "POST",
        http_path = "/Users/SearchUsers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGroup",
        input_schema = schemas.UpdateGroupInput,
        output_schema = schemas.UpdateGroupOutput,
        http_method = "POST",
        http_path = "/Groups/UpdateGroup",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUser(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUser",
        input_schema = schemas.UpdateUserInput,
        output_schema = schemas.UpdateUserOutput,
        http_method = "POST",
        http_path = "/Users/UpdateUser",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
