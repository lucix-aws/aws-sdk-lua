local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("efs.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("efs.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "MagnolioAPIService_v20150201"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "elasticfilesystem", signing_region = cfg.region } }
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

function Client:createAccessPoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccessPoint",
        input_schema = schemas.CreateAccessPointInput,
        output_schema = schemas.CreateAccessPointOutput,
        http_method = "POST",
        http_path = "/2015-02-01/access-points",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFileSystem(input, options)
    return self:invokeOperation(input, {
        name = "CreateFileSystem",
        input_schema = schemas.CreateFileSystemInput,
        output_schema = schemas.CreateFileSystemOutput,
        http_method = "POST",
        http_path = "/2015-02-01/file-systems",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMountTarget(input, options)
    return self:invokeOperation(input, {
        name = "CreateMountTarget",
        input_schema = schemas.CreateMountTargetInput,
        output_schema = schemas.CreateMountTargetOutput,
        http_method = "POST",
        http_path = "/2015-02-01/mount-targets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createReplicationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateReplicationConfiguration",
        input_schema = schemas.CreateReplicationConfigurationInput,
        output_schema = schemas.CreateReplicationConfigurationOutput,
        http_method = "POST",
        http_path = "/2015-02-01/file-systems/{SourceFileSystemId}/replication-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTags(input, options)
    return self:invokeOperation(input, {
        name = "CreateTags",
        input_schema = schemas.CreateTagsInput,
        output_schema = schemas.CreateTagsOutput,
        http_method = "POST",
        http_path = "/2015-02-01/create-tags/{FileSystemId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAccessPoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessPoint",
        input_schema = schemas.DeleteAccessPointInput,
        output_schema = schemas.DeleteAccessPointOutput,
        http_method = "DELETE",
        http_path = "/2015-02-01/access-points/{AccessPointId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFileSystem(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFileSystem",
        input_schema = schemas.DeleteFileSystemInput,
        output_schema = schemas.DeleteFileSystemOutput,
        http_method = "DELETE",
        http_path = "/2015-02-01/file-systems/{FileSystemId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFileSystemPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFileSystemPolicy",
        input_schema = schemas.DeleteFileSystemPolicyInput,
        output_schema = schemas.DeleteFileSystemPolicyOutput,
        http_method = "DELETE",
        http_path = "/2015-02-01/file-systems/{FileSystemId}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMountTarget(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMountTarget",
        input_schema = schemas.DeleteMountTargetInput,
        output_schema = schemas.DeleteMountTargetOutput,
        http_method = "DELETE",
        http_path = "/2015-02-01/mount-targets/{MountTargetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteReplicationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteReplicationConfiguration",
        input_schema = schemas.DeleteReplicationConfigurationInput,
        output_schema = schemas.DeleteReplicationConfigurationOutput,
        http_method = "DELETE",
        http_path = "/2015-02-01/file-systems/{SourceFileSystemId}/replication-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTags(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTags",
        input_schema = schemas.DeleteTagsInput,
        output_schema = schemas.DeleteTagsOutput,
        http_method = "POST",
        http_path = "/2015-02-01/delete-tags/{FileSystemId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAccessPoints(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccessPoints",
        input_schema = schemas.DescribeAccessPointsInput,
        output_schema = schemas.DescribeAccessPointsOutput,
        http_method = "GET",
        http_path = "/2015-02-01/access-points",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAccountPreferences(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountPreferences",
        input_schema = schemas.DescribeAccountPreferencesInput,
        output_schema = schemas.DescribeAccountPreferencesOutput,
        http_method = "GET",
        http_path = "/2015-02-01/account-preferences",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBackupPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBackupPolicy",
        input_schema = schemas.DescribeBackupPolicyInput,
        output_schema = schemas.DescribeBackupPolicyOutput,
        http_method = "GET",
        http_path = "/2015-02-01/file-systems/{FileSystemId}/backup-policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFileSystemPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFileSystemPolicy",
        input_schema = schemas.DescribeFileSystemPolicyInput,
        output_schema = schemas.DescribeFileSystemPolicyOutput,
        http_method = "GET",
        http_path = "/2015-02-01/file-systems/{FileSystemId}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFileSystems(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFileSystems",
        input_schema = schemas.DescribeFileSystemsInput,
        output_schema = schemas.DescribeFileSystemsOutput,
        http_method = "GET",
        http_path = "/2015-02-01/file-systems",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLifecycleConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLifecycleConfiguration",
        input_schema = schemas.DescribeLifecycleConfigurationInput,
        output_schema = schemas.DescribeLifecycleConfigurationOutput,
        http_method = "GET",
        http_path = "/2015-02-01/file-systems/{FileSystemId}/lifecycle-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMountTargets(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMountTargets",
        input_schema = schemas.DescribeMountTargetsInput,
        output_schema = schemas.DescribeMountTargetsOutput,
        http_method = "GET",
        http_path = "/2015-02-01/mount-targets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMountTargetSecurityGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMountTargetSecurityGroups",
        input_schema = schemas.DescribeMountTargetSecurityGroupsInput,
        output_schema = schemas.DescribeMountTargetSecurityGroupsOutput,
        http_method = "GET",
        http_path = "/2015-02-01/mount-targets/{MountTargetId}/security-groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReplicationConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReplicationConfigurations",
        input_schema = schemas.DescribeReplicationConfigurationsInput,
        output_schema = schemas.DescribeReplicationConfigurationsOutput,
        http_method = "GET",
        http_path = "/2015-02-01/file-systems/replication-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTags(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTags",
        input_schema = schemas.DescribeTagsInput,
        output_schema = schemas.DescribeTagsOutput,
        http_method = "GET",
        http_path = "/2015-02-01/tags/{FileSystemId}",
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
        http_method = "GET",
        http_path = "/2015-02-01/resource-tags/{ResourceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyMountTargetSecurityGroups(input, options)
    return self:invokeOperation(input, {
        name = "ModifyMountTargetSecurityGroups",
        input_schema = schemas.ModifyMountTargetSecurityGroupsInput,
        output_schema = schemas.ModifyMountTargetSecurityGroupsOutput,
        http_method = "PUT",
        http_path = "/2015-02-01/mount-targets/{MountTargetId}/security-groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putAccountPreferences(input, options)
    return self:invokeOperation(input, {
        name = "PutAccountPreferences",
        input_schema = schemas.PutAccountPreferencesInput,
        output_schema = schemas.PutAccountPreferencesOutput,
        http_method = "PUT",
        http_path = "/2015-02-01/account-preferences",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putBackupPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutBackupPolicy",
        input_schema = schemas.PutBackupPolicyInput,
        output_schema = schemas.PutBackupPolicyOutput,
        http_method = "PUT",
        http_path = "/2015-02-01/file-systems/{FileSystemId}/backup-policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putFileSystemPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutFileSystemPolicy",
        input_schema = schemas.PutFileSystemPolicyInput,
        output_schema = schemas.PutFileSystemPolicyOutput,
        http_method = "PUT",
        http_path = "/2015-02-01/file-systems/{FileSystemId}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putLifecycleConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutLifecycleConfiguration",
        input_schema = schemas.PutLifecycleConfigurationInput,
        output_schema = schemas.PutLifecycleConfigurationOutput,
        http_method = "PUT",
        http_path = "/2015-02-01/file-systems/{FileSystemId}/lifecycle-configuration",
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
        http_path = "/2015-02-01/resource-tags/{ResourceId}",
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
        http_method = "DELETE",
        http_path = "/2015-02-01/resource-tags/{ResourceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFileSystem(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFileSystem",
        input_schema = schemas.UpdateFileSystemInput,
        output_schema = schemas.UpdateFileSystemOutput,
        http_method = "PUT",
        http_path = "/2015-02-01/file-systems/{FileSystemId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFileSystemProtection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFileSystemProtection",
        input_schema = schemas.UpdateFileSystemProtectionInput,
        output_schema = schemas.UpdateFileSystemProtectionOutput,
        http_method = "PUT",
        http_path = "/2015-02-01/file-systems/{FileSystemId}/protection",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
