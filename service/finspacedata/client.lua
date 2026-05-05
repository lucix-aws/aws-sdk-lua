local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("finspacedata.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("finspacedata.schemas")
local sdk_defaults = require("aws.sdk_defaults")

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
        input_schema = schemas.AssociateUserToPermissionGroupInput,
        output_schema = schemas.AssociateUserToPermissionGroupOutput,
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
        input_schema = schemas.CreateChangesetInput,
        output_schema = schemas.CreateChangesetOutput,
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
        input_schema = schemas.CreateDatasetInput,
        output_schema = schemas.CreateDatasetOutput,
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
        input_schema = schemas.CreateDataViewInput,
        output_schema = schemas.CreateDataViewOutput,
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
        input_schema = schemas.CreatePermissionGroupInput,
        output_schema = schemas.CreatePermissionGroupOutput,
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
        input_schema = schemas.CreateUserInput,
        output_schema = schemas.CreateUserOutput,
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
        input_schema = schemas.DeleteDatasetInput,
        output_schema = schemas.DeleteDatasetOutput,
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
        input_schema = schemas.DeletePermissionGroupInput,
        output_schema = schemas.DeletePermissionGroupOutput,
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
        input_schema = schemas.DisableUserInput,
        output_schema = schemas.DisableUserOutput,
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
        input_schema = schemas.DisassociateUserFromPermissionGroupInput,
        output_schema = schemas.DisassociateUserFromPermissionGroupOutput,
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
        input_schema = schemas.EnableUserInput,
        output_schema = schemas.EnableUserOutput,
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
        input_schema = schemas.GetChangesetInput,
        output_schema = schemas.GetChangesetOutput,
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
        input_schema = schemas.GetDatasetInput,
        output_schema = schemas.GetDatasetOutput,
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
        input_schema = schemas.GetDataViewInput,
        output_schema = schemas.GetDataViewOutput,
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
        input_schema = schemas.GetExternalDataViewAccessDetailsInput,
        output_schema = schemas.GetExternalDataViewAccessDetailsOutput,
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
        input_schema = schemas.GetPermissionGroupInput,
        output_schema = schemas.GetPermissionGroupOutput,
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
        input_schema = schemas.GetProgrammaticAccessCredentialsInput,
        output_schema = schemas.GetProgrammaticAccessCredentialsOutput,
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
        input_schema = schemas.GetUserInput,
        output_schema = schemas.GetUserOutput,
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
        input_schema = schemas.GetWorkingLocationInput,
        output_schema = schemas.GetWorkingLocationOutput,
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
        input_schema = schemas.ListChangesetsInput,
        output_schema = schemas.ListChangesetsOutput,
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
        input_schema = schemas.ListDatasetsInput,
        output_schema = schemas.ListDatasetsOutput,
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
        input_schema = schemas.ListDataViewsInput,
        output_schema = schemas.ListDataViewsOutput,
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
        input_schema = schemas.ListPermissionGroupsInput,
        output_schema = schemas.ListPermissionGroupsOutput,
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
        input_schema = schemas.ListPermissionGroupsByUserInput,
        output_schema = schemas.ListPermissionGroupsByUserOutput,
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
        input_schema = schemas.ListUsersInput,
        output_schema = schemas.ListUsersOutput,
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
        input_schema = schemas.ListUsersByPermissionGroupInput,
        output_schema = schemas.ListUsersByPermissionGroupOutput,
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
        input_schema = schemas.ResetUserPasswordInput,
        output_schema = schemas.ResetUserPasswordOutput,
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
        input_schema = schemas.UpdateChangesetInput,
        output_schema = schemas.UpdateChangesetOutput,
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
        input_schema = schemas.UpdateDatasetInput,
        output_schema = schemas.UpdateDatasetOutput,
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
        input_schema = schemas.UpdatePermissionGroupInput,
        output_schema = schemas.UpdatePermissionGroupOutput,
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
        input_schema = schemas.UpdateUserInput,
        output_schema = schemas.UpdateUserOutput,
        http_method = "PUT",
        http_path = "/user/{userId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
