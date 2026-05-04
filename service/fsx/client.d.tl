local types = require("fsx.types")

local record Client
    associateFileSystemAliases: function(Client, types.AssociateFileSystemAliasesInput): types.AssociateFileSystemAliasesOutput, table
    cancelDataRepositoryTask: function(Client, types.CancelDataRepositoryTaskInput): types.CancelDataRepositoryTaskOutput, table
    copyBackup: function(Client, types.CopyBackupInput): types.CopyBackupOutput, table
    copySnapshotAndUpdateVolume: function(Client, types.CopySnapshotAndUpdateVolumeInput): types.CopySnapshotAndUpdateVolumeOutput, table
    createAndAttachS3AccessPoint: function(Client, types.CreateAndAttachS3AccessPointInput): types.CreateAndAttachS3AccessPointOutput, table
    createBackup: function(Client, types.CreateBackupInput): types.CreateBackupOutput, table
    createDataRepositoryAssociation: function(Client, types.CreateDataRepositoryAssociationInput): types.CreateDataRepositoryAssociationOutput, table
    createDataRepositoryTask: function(Client, types.CreateDataRepositoryTaskInput): types.CreateDataRepositoryTaskOutput, table
    createFileCache: function(Client, types.CreateFileCacheInput): types.CreateFileCacheOutput, table
    createFileSystem: function(Client, types.CreateFileSystemInput): types.CreateFileSystemOutput, table
    createFileSystemFromBackup: function(Client, types.CreateFileSystemFromBackupInput): types.CreateFileSystemFromBackupOutput, table
    createSnapshot: function(Client, types.CreateSnapshotInput): types.CreateSnapshotOutput, table
    createStorageVirtualMachine: function(Client, types.CreateStorageVirtualMachineInput): types.CreateStorageVirtualMachineOutput, table
    createVolume: function(Client, types.CreateVolumeInput): types.CreateVolumeOutput, table
    createVolumeFromBackup: function(Client, types.CreateVolumeFromBackupInput): types.CreateVolumeFromBackupOutput, table
    deleteBackup: function(Client, types.DeleteBackupInput): types.DeleteBackupOutput, table
    deleteDataRepositoryAssociation: function(Client, types.DeleteDataRepositoryAssociationInput): types.DeleteDataRepositoryAssociationOutput, table
    deleteFileCache: function(Client, types.DeleteFileCacheInput): types.DeleteFileCacheOutput, table
    deleteFileSystem: function(Client, types.DeleteFileSystemInput): types.DeleteFileSystemOutput, table
    deleteSnapshot: function(Client, types.DeleteSnapshotInput): types.DeleteSnapshotOutput, table
    deleteStorageVirtualMachine: function(Client, types.DeleteStorageVirtualMachineInput): types.DeleteStorageVirtualMachineOutput, table
    deleteVolume: function(Client, types.DeleteVolumeInput): types.DeleteVolumeOutput, table
    describeBackups: function(Client, types.DescribeBackupsInput): types.DescribeBackupsOutput, table
    describeDataRepositoryAssociations: function(Client, types.DescribeDataRepositoryAssociationsInput): types.DescribeDataRepositoryAssociationsOutput, table
    describeDataRepositoryTasks: function(Client, types.DescribeDataRepositoryTasksInput): types.DescribeDataRepositoryTasksOutput, table
    describeFileCaches: function(Client, types.DescribeFileCachesInput): types.DescribeFileCachesOutput, table
    describeFileSystemAliases: function(Client, types.DescribeFileSystemAliasesInput): types.DescribeFileSystemAliasesOutput, table
    describeFileSystems: function(Client, types.DescribeFileSystemsInput): types.DescribeFileSystemsOutput, table
    describeS3AccessPointAttachments: function(Client, types.DescribeS3AccessPointAttachmentsInput): types.DescribeS3AccessPointAttachmentsOutput, table
    describeSharedVpcConfiguration: function(Client, types.DescribeSharedVpcConfigurationInput): types.DescribeSharedVpcConfigurationOutput, table
    describeSnapshots: function(Client, types.DescribeSnapshotsInput): types.DescribeSnapshotsOutput, table
    describeStorageVirtualMachines: function(Client, types.DescribeStorageVirtualMachinesInput): types.DescribeStorageVirtualMachinesOutput, table
    describeVolumes: function(Client, types.DescribeVolumesInput): types.DescribeVolumesOutput, table
    detachAndDeleteS3AccessPoint: function(Client, types.DetachAndDeleteS3AccessPointInput): types.DetachAndDeleteS3AccessPointOutput, table
    disassociateFileSystemAliases: function(Client, types.DisassociateFileSystemAliasesInput): types.DisassociateFileSystemAliasesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    releaseFileSystemNfsV3Locks: function(Client, types.ReleaseFileSystemNfsV3LocksInput): types.ReleaseFileSystemNfsV3LocksOutput, table
    restoreVolumeFromSnapshot: function(Client, types.RestoreVolumeFromSnapshotInput): types.RestoreVolumeFromSnapshotOutput, table
    startMisconfiguredStateRecovery: function(Client, types.StartMisconfiguredStateRecoveryInput): types.StartMisconfiguredStateRecoveryOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateDataRepositoryAssociation: function(Client, types.UpdateDataRepositoryAssociationInput): types.UpdateDataRepositoryAssociationOutput, table
    updateFileCache: function(Client, types.UpdateFileCacheInput): types.UpdateFileCacheOutput, table
    updateFileSystem: function(Client, types.UpdateFileSystemInput): types.UpdateFileSystemOutput, table
    updateSharedVpcConfiguration: function(Client, types.UpdateSharedVpcConfigurationInput): types.UpdateSharedVpcConfigurationOutput, table
    updateSnapshot: function(Client, types.UpdateSnapshotInput): types.UpdateSnapshotOutput, table
    updateStorageVirtualMachine: function(Client, types.UpdateStorageVirtualMachineInput): types.UpdateStorageVirtualMachineOutput, table
    updateVolume: function(Client, types.UpdateVolumeInput): types.UpdateVolumeOutput, table
end

local record M
    new: function(table): Client
end

return M
