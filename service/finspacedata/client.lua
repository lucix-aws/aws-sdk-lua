local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("finspacedata.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("finspacedata.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSHabaneroPublicAPI"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "finspace-api", signing_region = cfg.region } }
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

function Client:associateUserToPermissionGroup(input, options)
    return self:invokeOperation(input, {
        name = "AssociateUserToPermissionGroup",
        input_schema = types.AssociateUserToPermissionGroupInput,
        output_schema = types.AssociateUserToPermissionGroupOutput,
        http_method = "POST",
        http_path = "/permission-group/{permissionGroupId}/users/{userId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createChangeset(input, options)
    return self:invokeOperation(input, {
        name = "CreateChangeset",
        input_schema = types.CreateChangesetInput,
        output_schema = types.CreateChangesetOutput,
        http_method = "POST",
        http_path = "/datasets/{datasetId}/changesetsv2",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataset(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataset",
        input_schema = types.CreateDatasetInput,
        output_schema = types.CreateDatasetOutput,
        http_method = "POST",
        http_path = "/datasetsv2",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataView(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataView",
        input_schema = types.CreateDataViewInput,
        output_schema = types.CreateDataViewOutput,
        http_method = "POST",
        http_path = "/datasets/{datasetId}/dataviewsv2",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPermissionGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreatePermissionGroup",
        input_schema = types.CreatePermissionGroupInput,
        output_schema = types.CreatePermissionGroupOutput,
        http_method = "POST",
        http_path = "/permission-group",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createUser(input, options)
    return self:invokeOperation(input, {
        name = "CreateUser",
        input_schema = types.CreateUserInput,
        output_schema = types.CreateUserOutput,
        http_method = "POST",
        http_path = "/user",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataset(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataset",
        input_schema = types.DeleteDatasetInput,
        output_schema = types.DeleteDatasetOutput,
        http_method = "DELETE",
        http_path = "/datasetsv2/{datasetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePermissionGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeletePermissionGroup",
        input_schema = types.DeletePermissionGroupInput,
        output_schema = types.DeletePermissionGroupOutput,
        http_method = "DELETE",
        http_path = "/permission-group/{permissionGroupId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableUser(input, options)
    return self:invokeOperation(input, {
        name = "DisableUser",
        input_schema = types.DisableUserInput,
        output_schema = types.DisableUserOutput,
        http_method = "POST",
        http_path = "/user/{userId}/disable",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateUserFromPermissionGroup(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateUserFromPermissionGroup",
        input_schema = types.DisassociateUserFromPermissionGroupInput,
        output_schema = types.DisassociateUserFromPermissionGroupOutput,
        http_method = "DELETE",
        http_path = "/permission-group/{permissionGroupId}/users/{userId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableUser(input, options)
    return self:invokeOperation(input, {
        name = "EnableUser",
        input_schema = types.EnableUserInput,
        output_schema = types.EnableUserOutput,
        http_method = "POST",
        http_path = "/user/{userId}/enable",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getChangeset(input, options)
    return self:invokeOperation(input, {
        name = "GetChangeset",
        input_schema = types.GetChangesetInput,
        output_schema = types.GetChangesetOutput,
        http_method = "GET",
        http_path = "/datasets/{datasetId}/changesetsv2/{changesetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataset(input, options)
    return self:invokeOperation(input, {
        name = "GetDataset",
        input_schema = types.GetDatasetInput,
        output_schema = types.GetDatasetOutput,
        http_method = "GET",
        http_path = "/datasetsv2/{datasetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataView(input, options)
    return self:invokeOperation(input, {
        name = "GetDataView",
        input_schema = types.GetDataViewInput,
        output_schema = types.GetDataViewOutput,
        http_method = "GET",
        http_path = "/datasets/{datasetId}/dataviewsv2/{dataViewId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getExternalDataViewAccessDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetExternalDataViewAccessDetails",
        input_schema = types.GetExternalDataViewAccessDetailsInput,
        output_schema = types.GetExternalDataViewAccessDetailsOutput,
        http_method = "POST",
        http_path = "/datasets/{datasetId}/dataviewsv2/{dataViewId}/external-access-details",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPermissionGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetPermissionGroup",
        input_schema = types.GetPermissionGroupInput,
        output_schema = types.GetPermissionGroupOutput,
        http_method = "GET",
        http_path = "/permission-group/{permissionGroupId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getProgrammaticAccessCredentials(input, options)
    return self:invokeOperation(input, {
        name = "GetProgrammaticAccessCredentials",
        input_schema = types.GetProgrammaticAccessCredentialsInput,
        output_schema = types.GetProgrammaticAccessCredentialsOutput,
        http_method = "GET",
        http_path = "/credentials/programmatic",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getUser(input, options)
    return self:invokeOperation(input, {
        name = "GetUser",
        input_schema = types.GetUserInput,
        output_schema = types.GetUserOutput,
        http_method = "GET",
        http_path = "/user/{userId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWorkingLocation(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkingLocation",
        input_schema = types.GetWorkingLocationInput,
        output_schema = types.GetWorkingLocationOutput,
        http_method = "POST",
        http_path = "/workingLocationV1",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listChangesets(input, options)
    return self:invokeOperation(input, {
        name = "ListChangesets",
        input_schema = types.ListChangesetsInput,
        output_schema = types.ListChangesetsOutput,
        http_method = "GET",
        http_path = "/datasets/{datasetId}/changesetsv2",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDatasets(input, options)
    return self:invokeOperation(input, {
        name = "ListDatasets",
        input_schema = types.ListDatasetsInput,
        output_schema = types.ListDatasetsOutput,
        http_method = "GET",
        http_path = "/datasetsv2",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataViews(input, options)
    return self:invokeOperation(input, {
        name = "ListDataViews",
        input_schema = types.ListDataViewsInput,
        output_schema = types.ListDataViewsOutput,
        http_method = "GET",
        http_path = "/datasets/{datasetId}/dataviewsv2",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPermissionGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListPermissionGroups",
        input_schema = types.ListPermissionGroupsInput,
        output_schema = types.ListPermissionGroupsOutput,
        http_method = "GET",
        http_path = "/permission-group",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPermissionGroupsByUser(input, options)
    return self:invokeOperation(input, {
        name = "ListPermissionGroupsByUser",
        input_schema = types.ListPermissionGroupsByUserInput,
        output_schema = types.ListPermissionGroupsByUserOutput,
        http_method = "GET",
        http_path = "/user/{userId}/permission-groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listUsers(input, options)
    return self:invokeOperation(input, {
        name = "ListUsers",
        input_schema = types.ListUsersInput,
        output_schema = types.ListUsersOutput,
        http_method = "GET",
        http_path = "/user",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listUsersByPermissionGroup(input, options)
    return self:invokeOperation(input, {
        name = "ListUsersByPermissionGroup",
        input_schema = types.ListUsersByPermissionGroupInput,
        output_schema = types.ListUsersByPermissionGroupOutput,
        http_method = "GET",
        http_path = "/permission-group/{permissionGroupId}/users",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resetUserPassword(input, options)
    return self:invokeOperation(input, {
        name = "ResetUserPassword",
        input_schema = types.ResetUserPasswordInput,
        output_schema = types.ResetUserPasswordOutput,
        http_method = "POST",
        http_path = "/user/{userId}/password",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateChangeset(input, options)
    return self:invokeOperation(input, {
        name = "UpdateChangeset",
        input_schema = types.UpdateChangesetInput,
        output_schema = types.UpdateChangesetOutput,
        http_method = "PUT",
        http_path = "/datasets/{datasetId}/changesetsv2/{changesetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDataset(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataset",
        input_schema = types.UpdateDatasetInput,
        output_schema = types.UpdateDatasetOutput,
        http_method = "PUT",
        http_path = "/datasetsv2/{datasetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePermissionGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePermissionGroup",
        input_schema = types.UpdatePermissionGroupInput,
        output_schema = types.UpdatePermissionGroupOutput,
        http_method = "PUT",
        http_path = "/permission-group/{permissionGroupId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUser(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUser",
        input_schema = types.UpdateUserInput,
        output_schema = types.UpdateUserOutput,
        http_method = "PUT",
        http_path = "/user/{userId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
