local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("s3files.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("s3files.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "S3Files"
    cfg.signing_name = "s3files"
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

function Client:createAccessPoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccessPoint",
        input_schema = types.CreateAccessPointInput,
        output_schema = types.CreateAccessPointOutput,
        http_method = "PUT",
        http_path = "/access-points",
    }, options)
end

function Client:createFileSystem(input, options)
    return self:invokeOperation(input, {
        name = "CreateFileSystem",
        input_schema = types.CreateFileSystemInput,
        output_schema = types.CreateFileSystemOutput,
        http_method = "PUT",
        http_path = "/file-systems",
    }, options)
end

function Client:createMountTarget(input, options)
    return self:invokeOperation(input, {
        name = "CreateMountTarget",
        input_schema = types.CreateMountTargetInput,
        output_schema = types.CreateMountTargetOutput,
        http_method = "PUT",
        http_path = "/mount-targets",
    }, options)
end

function Client:deleteAccessPoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessPoint",
        input_schema = types.DeleteAccessPointInput,
        output_schema = types.DeleteAccessPointOutput,
        http_method = "DELETE",
        http_path = "/access-points/{accessPointId}",
    }, options)
end

function Client:deleteFileSystem(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFileSystem",
        input_schema = types.DeleteFileSystemInput,
        output_schema = types.DeleteFileSystemOutput,
        http_method = "DELETE",
        http_path = "/file-systems/{fileSystemId}",
    }, options)
end

function Client:deleteFileSystemPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFileSystemPolicy",
        input_schema = types.DeleteFileSystemPolicyInput,
        output_schema = types.DeleteFileSystemPolicyOutput,
        http_method = "DELETE",
        http_path = "/file-systems/{fileSystemId}/policy",
    }, options)
end

function Client:deleteMountTarget(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMountTarget",
        input_schema = types.DeleteMountTargetInput,
        output_schema = types.DeleteMountTargetOutput,
        http_method = "DELETE",
        http_path = "/mount-targets/{mountTargetId}",
    }, options)
end

function Client:getAccessPoint(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessPoint",
        input_schema = types.GetAccessPointInput,
        output_schema = types.GetAccessPointOutput,
        http_method = "GET",
        http_path = "/access-points/{accessPointId}",
    }, options)
end

function Client:getFileSystem(input, options)
    return self:invokeOperation(input, {
        name = "GetFileSystem",
        input_schema = types.GetFileSystemInput,
        output_schema = types.GetFileSystemOutput,
        http_method = "GET",
        http_path = "/file-systems/{fileSystemId}",
    }, options)
end

function Client:getFileSystemPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetFileSystemPolicy",
        input_schema = types.GetFileSystemPolicyInput,
        output_schema = types.GetFileSystemPolicyOutput,
        http_method = "GET",
        http_path = "/file-systems/{fileSystemId}/policy",
    }, options)
end

function Client:getMountTarget(input, options)
    return self:invokeOperation(input, {
        name = "GetMountTarget",
        input_schema = types.GetMountTargetInput,
        output_schema = types.GetMountTargetOutput,
        http_method = "GET",
        http_path = "/mount-targets/{mountTargetId}",
    }, options)
end

function Client:getSynchronizationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetSynchronizationConfiguration",
        input_schema = types.GetSynchronizationConfigurationInput,
        output_schema = types.GetSynchronizationConfigurationOutput,
        http_method = "GET",
        http_path = "/file-systems/{fileSystemId}/synchronization-configuration",
    }, options)
end

function Client:listAccessPoints(input, options)
    return self:invokeOperation(input, {
        name = "ListAccessPoints",
        input_schema = types.ListAccessPointsInput,
        output_schema = types.ListAccessPointsOutput,
        http_method = "GET",
        http_path = "/access-points",
    }, options)
end

function Client:listFileSystems(input, options)
    return self:invokeOperation(input, {
        name = "ListFileSystems",
        input_schema = types.ListFileSystemsInput,
        output_schema = types.ListFileSystemsOutput,
        http_method = "GET",
        http_path = "/file-systems",
    }, options)
end

function Client:listMountTargets(input, options)
    return self:invokeOperation(input, {
        name = "ListMountTargets",
        input_schema = types.ListMountTargetsInput,
        output_schema = types.ListMountTargetsOutput,
        http_method = "GET",
        http_path = "/mount-targets",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/resource-tags/{resourceId}",
    }, options)
end

function Client:putFileSystemPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutFileSystemPolicy",
        input_schema = types.PutFileSystemPolicyInput,
        output_schema = types.PutFileSystemPolicyOutput,
        http_method = "PUT",
        http_path = "/file-systems/{fileSystemId}/policy",
    }, options)
end

function Client:putSynchronizationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutSynchronizationConfiguration",
        input_schema = types.PutSynchronizationConfigurationInput,
        output_schema = types.PutSynchronizationConfigurationOutput,
        http_method = "PUT",
        http_path = "/file-systems/{fileSystemId}/synchronization-configuration",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/resource-tags/{resourceId}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/resource-tags/{resourceId}",
    }, options)
end

function Client:updateMountTarget(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMountTarget",
        input_schema = types.UpdateMountTargetInput,
        output_schema = types.UpdateMountTargetOutput,
        http_method = "PUT",
        http_path = "/mount-targets/{mountTargetId}",
    }, options)
end

return M
