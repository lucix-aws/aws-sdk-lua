



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("fsx.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("fsx.schemas")
local traits = require("smithy.traits")
local types = require("fsx.types")
local sdk_defaults = require("aws.sdk_defaults")






















































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSSimbaAPIService_v20180301"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.1", service_id = c.service_id }) end
   if not c.endpoint_provider then
      c.endpoint_provider = function(params)
         return endpoint.resolve(endpoint_rules, params)
      end
   end
   if not c.auth_scheme_resolver then
      c.auth_scheme_resolver = function(_service, operation)
         local auth_trait = operation:trait(traits.AUTH) or _service:trait(traits.AUTH)
         local options = {}
         for _, scheme in ipairs(auth_trait or {}) do
            local scheme_id = scheme.scheme_id or scheme
            if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "fsx", signing_region = c.region } }
            else
               options[#options + 1] = { scheme_id = scheme_id }
            end
         end
         return options
      end
   end
   defaults.resolve_auth_schemes(c)
   defaults.resolve_identity_resolvers(c)
   defaults.resolve_http_client(c)
   defaults.resolve_retry_strategy(c)
   sdk_defaults.resolve_identity_resolver(c)
   local self = setmetatable(base_client.new(c), Client_mt)
   return self
end

function C:associateFileSystemAliases(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateFileSystemAliases, input, options)
end

function C:cancelDataRepositoryTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelDataRepositoryTask, input, options)
end

function C:copyBackup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CopyBackup, input, options)
end

function C:copySnapshotAndUpdateVolume(input, options)
   return self:invokeOperation(schemas.Service, schemas.CopySnapshotAndUpdateVolume, input, options)
end

function C:createAndAttachS3AccessPoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAndAttachS3AccessPoint, input, options)
end

function C:createBackup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBackup, input, options)
end

function C:createDataRepositoryAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataRepositoryAssociation, input, options)
end

function C:createDataRepositoryTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataRepositoryTask, input, options)
end

function C:createFileCache(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFileCache, input, options)
end

function C:createFileSystem(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFileSystem, input, options)
end

function C:createFileSystemFromBackup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFileSystemFromBackup, input, options)
end

function C:createSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSnapshot, input, options)
end

function C:createStorageVirtualMachine(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStorageVirtualMachine, input, options)
end

function C:createVolume(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVolume, input, options)
end

function C:createVolumeFromBackup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVolumeFromBackup, input, options)
end

function C:deleteBackup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBackup, input, options)
end

function C:deleteDataRepositoryAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataRepositoryAssociation, input, options)
end

function C:deleteFileCache(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFileCache, input, options)
end

function C:deleteFileSystem(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFileSystem, input, options)
end

function C:deleteSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSnapshot, input, options)
end

function C:deleteStorageVirtualMachine(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteStorageVirtualMachine, input, options)
end

function C:deleteVolume(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVolume, input, options)
end

function C:describeBackups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBackups, input, options)
end

function C:describeDataRepositoryAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDataRepositoryAssociations, input, options)
end

function C:describeDataRepositoryTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDataRepositoryTasks, input, options)
end

function C:describeFileCaches(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFileCaches, input, options)
end

function C:describeFileSystemAliases(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFileSystemAliases, input, options)
end

function C:describeFileSystems(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFileSystems, input, options)
end

function C:describeS3AccessPointAttachments(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeS3AccessPointAttachments, input, options)
end

function C:describeSharedVpcConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSharedVpcConfiguration, input, options)
end

function C:describeSnapshots(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSnapshots, input, options)
end

function C:describeStorageVirtualMachines(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStorageVirtualMachines, input, options)
end

function C:describeVolumes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVolumes, input, options)
end

function C:detachAndDeleteS3AccessPoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachAndDeleteS3AccessPoint, input, options)
end

function C:disassociateFileSystemAliases(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateFileSystemAliases, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:releaseFileSystemNfsV3Locks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReleaseFileSystemNfsV3Locks, input, options)
end

function C:restoreVolumeFromSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreVolumeFromSnapshot, input, options)
end

function C:startMisconfiguredStateRecovery(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMisconfiguredStateRecovery, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateDataRepositoryAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataRepositoryAssociation, input, options)
end

function C:updateFileCache(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFileCache, input, options)
end

function C:updateFileSystem(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFileSystem, input, options)
end

function C:updateSharedVpcConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSharedVpcConfiguration, input, options)
end

function C:updateSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSnapshot, input, options)
end

function C:updateStorageVirtualMachine(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateStorageVirtualMachine, input, options)
end

function C:updateVolume(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateVolume, input, options)
end

return M
