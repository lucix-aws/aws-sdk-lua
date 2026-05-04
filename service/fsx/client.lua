local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("fsx.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("fsx.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSSimbaAPIService_v20180301"
    cfg.signing_name = "awssimbaapiservice_v20180301"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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

function Client:associateFileSystemAliases(input, options)
    return self:invokeOperation(input, {
        name = "AssociateFileSystemAliases",
        input_schema = types.AssociateFileSystemAliasesInput,
        output_schema = types.AssociateFileSystemAliasesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:cancelDataRepositoryTask(input, options)
    return self:invokeOperation(input, {
        name = "CancelDataRepositoryTask",
        input_schema = types.CancelDataRepositoryTaskInput,
        output_schema = types.CancelDataRepositoryTaskOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:copyBackup(input, options)
    return self:invokeOperation(input, {
        name = "CopyBackup",
        input_schema = types.CopyBackupInput,
        output_schema = types.CopyBackupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:copySnapshotAndUpdateVolume(input, options)
    return self:invokeOperation(input, {
        name = "CopySnapshotAndUpdateVolume",
        input_schema = types.CopySnapshotAndUpdateVolumeInput,
        output_schema = types.CopySnapshotAndUpdateVolumeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createAndAttachS3AccessPoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateAndAttachS3AccessPoint",
        input_schema = types.CreateAndAttachS3AccessPointInput,
        output_schema = types.CreateAndAttachS3AccessPointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createBackup(input, options)
    return self:invokeOperation(input, {
        name = "CreateBackup",
        input_schema = types.CreateBackupInput,
        output_schema = types.CreateBackupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDataRepositoryAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataRepositoryAssociation",
        input_schema = types.CreateDataRepositoryAssociationInput,
        output_schema = types.CreateDataRepositoryAssociationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDataRepositoryTask(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataRepositoryTask",
        input_schema = types.CreateDataRepositoryTaskInput,
        output_schema = types.CreateDataRepositoryTaskOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createFileCache(input, options)
    return self:invokeOperation(input, {
        name = "CreateFileCache",
        input_schema = types.CreateFileCacheInput,
        output_schema = types.CreateFileCacheOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createFileSystem(input, options)
    return self:invokeOperation(input, {
        name = "CreateFileSystem",
        input_schema = types.CreateFileSystemInput,
        output_schema = types.CreateFileSystemOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createFileSystemFromBackup(input, options)
    return self:invokeOperation(input, {
        name = "CreateFileSystemFromBackup",
        input_schema = types.CreateFileSystemFromBackupInput,
        output_schema = types.CreateFileSystemFromBackupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CreateSnapshot",
        input_schema = types.CreateSnapshotInput,
        output_schema = types.CreateSnapshotOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createStorageVirtualMachine(input, options)
    return self:invokeOperation(input, {
        name = "CreateStorageVirtualMachine",
        input_schema = types.CreateStorageVirtualMachineInput,
        output_schema = types.CreateStorageVirtualMachineOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createVolume(input, options)
    return self:invokeOperation(input, {
        name = "CreateVolume",
        input_schema = types.CreateVolumeInput,
        output_schema = types.CreateVolumeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createVolumeFromBackup(input, options)
    return self:invokeOperation(input, {
        name = "CreateVolumeFromBackup",
        input_schema = types.CreateVolumeFromBackupInput,
        output_schema = types.CreateVolumeFromBackupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteBackup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBackup",
        input_schema = types.DeleteBackupInput,
        output_schema = types.DeleteBackupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDataRepositoryAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataRepositoryAssociation",
        input_schema = types.DeleteDataRepositoryAssociationInput,
        output_schema = types.DeleteDataRepositoryAssociationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteFileCache(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFileCache",
        input_schema = types.DeleteFileCacheInput,
        output_schema = types.DeleteFileCacheOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteFileSystem(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFileSystem",
        input_schema = types.DeleteFileSystemInput,
        output_schema = types.DeleteFileSystemOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSnapshot",
        input_schema = types.DeleteSnapshotInput,
        output_schema = types.DeleteSnapshotOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteStorageVirtualMachine(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStorageVirtualMachine",
        input_schema = types.DeleteStorageVirtualMachineInput,
        output_schema = types.DeleteStorageVirtualMachineOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteVolume(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVolume",
        input_schema = types.DeleteVolumeInput,
        output_schema = types.DeleteVolumeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeBackups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBackups",
        input_schema = types.DescribeBackupsInput,
        output_schema = types.DescribeBackupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDataRepositoryAssociations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataRepositoryAssociations",
        input_schema = types.DescribeDataRepositoryAssociationsInput,
        output_schema = types.DescribeDataRepositoryAssociationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDataRepositoryTasks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataRepositoryTasks",
        input_schema = types.DescribeDataRepositoryTasksInput,
        output_schema = types.DescribeDataRepositoryTasksOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeFileCaches(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFileCaches",
        input_schema = types.DescribeFileCachesInput,
        output_schema = types.DescribeFileCachesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeFileSystemAliases(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFileSystemAliases",
        input_schema = types.DescribeFileSystemAliasesInput,
        output_schema = types.DescribeFileSystemAliasesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeFileSystems(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFileSystems",
        input_schema = types.DescribeFileSystemsInput,
        output_schema = types.DescribeFileSystemsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeS3AccessPointAttachments(input, options)
    return self:invokeOperation(input, {
        name = "DescribeS3AccessPointAttachments",
        input_schema = types.DescribeS3AccessPointAttachmentsInput,
        output_schema = types.DescribeS3AccessPointAttachmentsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeSharedVpcConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSharedVpcConfiguration",
        input_schema = types.DescribeSharedVpcConfigurationInput,
        output_schema = types.DescribeSharedVpcConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeSnapshots(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSnapshots",
        input_schema = types.DescribeSnapshotsInput,
        output_schema = types.DescribeSnapshotsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeStorageVirtualMachines(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStorageVirtualMachines",
        input_schema = types.DescribeStorageVirtualMachinesInput,
        output_schema = types.DescribeStorageVirtualMachinesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeVolumes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVolumes",
        input_schema = types.DescribeVolumesInput,
        output_schema = types.DescribeVolumesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:detachAndDeleteS3AccessPoint(input, options)
    return self:invokeOperation(input, {
        name = "DetachAndDeleteS3AccessPoint",
        input_schema = types.DetachAndDeleteS3AccessPointInput,
        output_schema = types.DetachAndDeleteS3AccessPointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateFileSystemAliases(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateFileSystemAliases",
        input_schema = types.DisassociateFileSystemAliasesInput,
        output_schema = types.DisassociateFileSystemAliasesOutput,
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

function Client:releaseFileSystemNfsV3Locks(input, options)
    return self:invokeOperation(input, {
        name = "ReleaseFileSystemNfsV3Locks",
        input_schema = types.ReleaseFileSystemNfsV3LocksInput,
        output_schema = types.ReleaseFileSystemNfsV3LocksOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:restoreVolumeFromSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "RestoreVolumeFromSnapshot",
        input_schema = types.RestoreVolumeFromSnapshotInput,
        output_schema = types.RestoreVolumeFromSnapshotOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startMisconfiguredStateRecovery(input, options)
    return self:invokeOperation(input, {
        name = "StartMisconfiguredStateRecovery",
        input_schema = types.StartMisconfiguredStateRecoveryInput,
        output_schema = types.StartMisconfiguredStateRecoveryOutput,
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

function Client:updateDataRepositoryAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataRepositoryAssociation",
        input_schema = types.UpdateDataRepositoryAssociationInput,
        output_schema = types.UpdateDataRepositoryAssociationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateFileCache(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFileCache",
        input_schema = types.UpdateFileCacheInput,
        output_schema = types.UpdateFileCacheOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateFileSystem(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFileSystem",
        input_schema = types.UpdateFileSystemInput,
        output_schema = types.UpdateFileSystemOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateSharedVpcConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSharedVpcConfiguration",
        input_schema = types.UpdateSharedVpcConfigurationInput,
        output_schema = types.UpdateSharedVpcConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSnapshot",
        input_schema = types.UpdateSnapshotInput,
        output_schema = types.UpdateSnapshotOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateStorageVirtualMachine(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStorageVirtualMachine",
        input_schema = types.UpdateStorageVirtualMachineInput,
        output_schema = types.UpdateStorageVirtualMachineOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateVolume(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVolume",
        input_schema = types.UpdateVolumeInput,
        output_schema = types.UpdateVolumeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
