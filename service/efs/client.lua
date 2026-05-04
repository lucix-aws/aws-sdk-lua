local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("efs.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("efs.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "MagnolioAPIService_v20150201"
    cfg.signing_name = "magnolioapiservice_v20150201"
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
        http_method = "POST",
        http_path = "/2015-02-01/access-points",
    }, options)
end

function Client:createFileSystem(input, options)
    return self:invokeOperation(input, {
        name = "CreateFileSystem",
        input_schema = types.CreateFileSystemInput,
        output_schema = types.CreateFileSystemOutput,
        http_method = "POST",
        http_path = "/2015-02-01/file-systems",
    }, options)
end

function Client:createMountTarget(input, options)
    return self:invokeOperation(input, {
        name = "CreateMountTarget",
        input_schema = types.CreateMountTargetInput,
        output_schema = types.CreateMountTargetOutput,
        http_method = "POST",
        http_path = "/2015-02-01/mount-targets",
    }, options)
end

function Client:createReplicationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateReplicationConfiguration",
        input_schema = types.CreateReplicationConfigurationInput,
        output_schema = types.CreateReplicationConfigurationOutput,
        http_method = "POST",
        http_path = "/2015-02-01/file-systems/{SourceFileSystemId}/replication-configuration",
    }, options)
end

function Client:createTags(input, options)
    return self:invokeOperation(input, {
        name = "CreateTags",
        input_schema = types.CreateTagsInput,
        output_schema = types.CreateTagsOutput,
        http_method = "POST",
        http_path = "/2015-02-01/create-tags/{FileSystemId}",
    }, options)
end

function Client:deleteAccessPoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessPoint",
        input_schema = types.DeleteAccessPointInput,
        output_schema = types.DeleteAccessPointOutput,
        http_method = "DELETE",
        http_path = "/2015-02-01/access-points/{AccessPointId}",
    }, options)
end

function Client:deleteFileSystem(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFileSystem",
        input_schema = types.DeleteFileSystemInput,
        output_schema = types.DeleteFileSystemOutput,
        http_method = "DELETE",
        http_path = "/2015-02-01/file-systems/{FileSystemId}",
    }, options)
end

function Client:deleteFileSystemPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFileSystemPolicy",
        input_schema = types.DeleteFileSystemPolicyInput,
        output_schema = types.DeleteFileSystemPolicyOutput,
        http_method = "DELETE",
        http_path = "/2015-02-01/file-systems/{FileSystemId}/policy",
    }, options)
end

function Client:deleteMountTarget(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMountTarget",
        input_schema = types.DeleteMountTargetInput,
        output_schema = types.DeleteMountTargetOutput,
        http_method = "DELETE",
        http_path = "/2015-02-01/mount-targets/{MountTargetId}",
    }, options)
end

function Client:deleteReplicationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteReplicationConfiguration",
        input_schema = types.DeleteReplicationConfigurationInput,
        output_schema = types.DeleteReplicationConfigurationOutput,
        http_method = "DELETE",
        http_path = "/2015-02-01/file-systems/{SourceFileSystemId}/replication-configuration",
    }, options)
end

function Client:deleteTags(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTags",
        input_schema = types.DeleteTagsInput,
        output_schema = types.DeleteTagsOutput,
        http_method = "POST",
        http_path = "/2015-02-01/delete-tags/{FileSystemId}",
    }, options)
end

function Client:describeAccessPoints(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccessPoints",
        input_schema = types.DescribeAccessPointsInput,
        output_schema = types.DescribeAccessPointsOutput,
        http_method = "GET",
        http_path = "/2015-02-01/access-points",
    }, options)
end

function Client:describeAccountPreferences(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountPreferences",
        input_schema = types.DescribeAccountPreferencesInput,
        output_schema = types.DescribeAccountPreferencesOutput,
        http_method = "GET",
        http_path = "/2015-02-01/account-preferences",
    }, options)
end

function Client:describeBackupPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBackupPolicy",
        input_schema = types.DescribeBackupPolicyInput,
        output_schema = types.DescribeBackupPolicyOutput,
        http_method = "GET",
        http_path = "/2015-02-01/file-systems/{FileSystemId}/backup-policy",
    }, options)
end

function Client:describeFileSystemPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFileSystemPolicy",
        input_schema = types.DescribeFileSystemPolicyInput,
        output_schema = types.DescribeFileSystemPolicyOutput,
        http_method = "GET",
        http_path = "/2015-02-01/file-systems/{FileSystemId}/policy",
    }, options)
end

function Client:describeFileSystems(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFileSystems",
        input_schema = types.DescribeFileSystemsInput,
        output_schema = types.DescribeFileSystemsOutput,
        http_method = "GET",
        http_path = "/2015-02-01/file-systems",
    }, options)
end

function Client:describeLifecycleConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLifecycleConfiguration",
        input_schema = types.DescribeLifecycleConfigurationInput,
        output_schema = types.DescribeLifecycleConfigurationOutput,
        http_method = "GET",
        http_path = "/2015-02-01/file-systems/{FileSystemId}/lifecycle-configuration",
    }, options)
end

function Client:describeMountTargets(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMountTargets",
        input_schema = types.DescribeMountTargetsInput,
        output_schema = types.DescribeMountTargetsOutput,
        http_method = "GET",
        http_path = "/2015-02-01/mount-targets",
    }, options)
end

function Client:describeMountTargetSecurityGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMountTargetSecurityGroups",
        input_schema = types.DescribeMountTargetSecurityGroupsInput,
        output_schema = types.DescribeMountTargetSecurityGroupsOutput,
        http_method = "GET",
        http_path = "/2015-02-01/mount-targets/{MountTargetId}/security-groups",
    }, options)
end

function Client:describeReplicationConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReplicationConfigurations",
        input_schema = types.DescribeReplicationConfigurationsInput,
        output_schema = types.DescribeReplicationConfigurationsOutput,
        http_method = "GET",
        http_path = "/2015-02-01/file-systems/replication-configurations",
    }, options)
end

function Client:describeTags(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTags",
        input_schema = types.DescribeTagsInput,
        output_schema = types.DescribeTagsOutput,
        http_method = "GET",
        http_path = "/2015-02-01/tags/{FileSystemId}",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/2015-02-01/resource-tags/{ResourceId}",
    }, options)
end

function Client:modifyMountTargetSecurityGroups(input, options)
    return self:invokeOperation(input, {
        name = "ModifyMountTargetSecurityGroups",
        input_schema = types.ModifyMountTargetSecurityGroupsInput,
        output_schema = types.ModifyMountTargetSecurityGroupsOutput,
        http_method = "PUT",
        http_path = "/2015-02-01/mount-targets/{MountTargetId}/security-groups",
    }, options)
end

function Client:putAccountPreferences(input, options)
    return self:invokeOperation(input, {
        name = "PutAccountPreferences",
        input_schema = types.PutAccountPreferencesInput,
        output_schema = types.PutAccountPreferencesOutput,
        http_method = "PUT",
        http_path = "/2015-02-01/account-preferences",
    }, options)
end

function Client:putBackupPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutBackupPolicy",
        input_schema = types.PutBackupPolicyInput,
        output_schema = types.PutBackupPolicyOutput,
        http_method = "PUT",
        http_path = "/2015-02-01/file-systems/{FileSystemId}/backup-policy",
    }, options)
end

function Client:putFileSystemPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutFileSystemPolicy",
        input_schema = types.PutFileSystemPolicyInput,
        output_schema = types.PutFileSystemPolicyOutput,
        http_method = "PUT",
        http_path = "/2015-02-01/file-systems/{FileSystemId}/policy",
    }, options)
end

function Client:putLifecycleConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutLifecycleConfiguration",
        input_schema = types.PutLifecycleConfigurationInput,
        output_schema = types.PutLifecycleConfigurationOutput,
        http_method = "PUT",
        http_path = "/2015-02-01/file-systems/{FileSystemId}/lifecycle-configuration",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/2015-02-01/resource-tags/{ResourceId}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/2015-02-01/resource-tags/{ResourceId}",
    }, options)
end

function Client:updateFileSystem(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFileSystem",
        input_schema = types.UpdateFileSystemInput,
        output_schema = types.UpdateFileSystemOutput,
        http_method = "PUT",
        http_path = "/2015-02-01/file-systems/{FileSystemId}",
    }, options)
end

function Client:updateFileSystemProtection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFileSystemProtection",
        input_schema = types.UpdateFileSystemProtectionInput,
        output_schema = types.UpdateFileSystemProtectionOutput,
        http_method = "PUT",
        http_path = "/2015-02-01/file-systems/{FileSystemId}/protection",
    }, options)
end

return M
