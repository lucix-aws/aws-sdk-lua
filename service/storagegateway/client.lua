



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("storagegateway.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("storagegateway.schemas")
local traits = require("smithy.traits")
local types = require("storagegateway.types")
local sdk_defaults = require("aws.sdk_defaults")






































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "StorageGateway_20130630"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "storagegateway", signing_region = c.region } }
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

function C:activateGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.ActivateGateway, input, options)
end

function C:addCache(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddCache, input, options)
end

function C:addTagsToResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddTagsToResource, input, options)
end

function C:addUploadBuffer(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddUploadBuffer, input, options)
end

function C:addWorkingStorage(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddWorkingStorage, input, options)
end

function C:assignTapePool(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssignTapePool, input, options)
end

function C:associateFileSystem(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateFileSystem, input, options)
end

function C:attachVolume(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachVolume, input, options)
end

function C:cancelArchival(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelArchival, input, options)
end

function C:cancelCacheReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelCacheReport, input, options)
end

function C:cancelRetrieval(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelRetrieval, input, options)
end

function C:createCachediSCSIVolume(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCachediSCSIVolume, input, options)
end

function C:createNFSFileShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNFSFileShare, input, options)
end

function C:createSMBFileShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSMBFileShare, input, options)
end

function C:createSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSnapshot, input, options)
end

function C:createSnapshotFromVolumeRecoveryPoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSnapshotFromVolumeRecoveryPoint, input, options)
end

function C:createStorediSCSIVolume(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStorediSCSIVolume, input, options)
end

function C:createTapePool(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTapePool, input, options)
end

function C:createTapes(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTapes, input, options)
end

function C:createTapeWithBarcode(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTapeWithBarcode, input, options)
end

function C:deleteAutomaticTapeCreationPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAutomaticTapeCreationPolicy, input, options)
end

function C:deleteBandwidthRateLimit(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBandwidthRateLimit, input, options)
end

function C:deleteCacheReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCacheReport, input, options)
end

function C:deleteChapCredentials(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteChapCredentials, input, options)
end

function C:deleteFileShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFileShare, input, options)
end

function C:deleteGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGateway, input, options)
end

function C:deleteSnapshotSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSnapshotSchedule, input, options)
end

function C:deleteTape(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTape, input, options)
end

function C:deleteTapeArchive(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTapeArchive, input, options)
end

function C:deleteTapePool(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTapePool, input, options)
end

function C:deleteVolume(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVolume, input, options)
end

function C:describeAvailabilityMonitorTest(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAvailabilityMonitorTest, input, options)
end

function C:describeBandwidthRateLimit(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBandwidthRateLimit, input, options)
end

function C:describeBandwidthRateLimitSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBandwidthRateLimitSchedule, input, options)
end

function C:describeCache(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCache, input, options)
end

function C:describeCachediSCSIVolumes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCachediSCSIVolumes, input, options)
end

function C:describeCacheReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCacheReport, input, options)
end

function C:describeChapCredentials(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeChapCredentials, input, options)
end

function C:describeFileSystemAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFileSystemAssociations, input, options)
end

function C:describeGatewayInformation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeGatewayInformation, input, options)
end

function C:describeMaintenanceStartTime(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMaintenanceStartTime, input, options)
end

function C:describeNFSFileShares(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeNFSFileShares, input, options)
end

function C:describeSMBFileShares(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSMBFileShares, input, options)
end

function C:describeSMBSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSMBSettings, input, options)
end

function C:describeSnapshotSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSnapshotSchedule, input, options)
end

function C:describeStorediSCSIVolumes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStorediSCSIVolumes, input, options)
end

function C:describeTapeArchives(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTapeArchives, input, options)
end

function C:describeTapeRecoveryPoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTapeRecoveryPoints, input, options)
end

function C:describeTapes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTapes, input, options)
end

function C:describeUploadBuffer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeUploadBuffer, input, options)
end

function C:describeVTLDevices(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVTLDevices, input, options)
end

function C:describeWorkingStorage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWorkingStorage, input, options)
end

function C:detachVolume(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachVolume, input, options)
end

function C:disableGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableGateway, input, options)
end

function C:disassociateFileSystem(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateFileSystem, input, options)
end

function C:evictFilesFailingUpload(input, options)
   return self:invokeOperation(schemas.Service, schemas.EvictFilesFailingUpload, input, options)
end

function C:joinDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.JoinDomain, input, options)
end

function C:listAutomaticTapeCreationPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAutomaticTapeCreationPolicies, input, options)
end

function C:listCacheReports(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCacheReports, input, options)
end

function C:listFileShares(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFileShares, input, options)
end

function C:listFileSystemAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFileSystemAssociations, input, options)
end

function C:listGateways(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGateways, input, options)
end

function C:listLocalDisks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLocalDisks, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTapePools(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTapePools, input, options)
end

function C:listTapes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTapes, input, options)
end

function C:listVolumeInitiators(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVolumeInitiators, input, options)
end

function C:listVolumeRecoveryPoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVolumeRecoveryPoints, input, options)
end

function C:listVolumes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVolumes, input, options)
end

function C:notifyWhenUploaded(input, options)
   return self:invokeOperation(schemas.Service, schemas.NotifyWhenUploaded, input, options)
end

function C:refreshCache(input, options)
   return self:invokeOperation(schemas.Service, schemas.RefreshCache, input, options)
end

function C:removeTagsFromResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveTagsFromResource, input, options)
end

function C:resetCache(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetCache, input, options)
end

function C:retrieveTapeArchive(input, options)
   return self:invokeOperation(schemas.Service, schemas.RetrieveTapeArchive, input, options)
end

function C:retrieveTapeRecoveryPoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.RetrieveTapeRecoveryPoint, input, options)
end

function C:setLocalConsolePassword(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetLocalConsolePassword, input, options)
end

function C:setSMBGuestPassword(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetSMBGuestPassword, input, options)
end

function C:shutdownGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.ShutdownGateway, input, options)
end

function C:startAvailabilityMonitorTest(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartAvailabilityMonitorTest, input, options)
end

function C:startCacheReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartCacheReport, input, options)
end

function C:startGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartGateway, input, options)
end

function C:updateAutomaticTapeCreationPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAutomaticTapeCreationPolicy, input, options)
end

function C:updateBandwidthRateLimit(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBandwidthRateLimit, input, options)
end

function C:updateBandwidthRateLimitSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBandwidthRateLimitSchedule, input, options)
end

function C:updateChapCredentials(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateChapCredentials, input, options)
end

function C:updateFileSystemAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFileSystemAssociation, input, options)
end

function C:updateGatewayInformation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGatewayInformation, input, options)
end

function C:updateGatewaySoftwareNow(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGatewaySoftwareNow, input, options)
end

function C:updateMaintenanceStartTime(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMaintenanceStartTime, input, options)
end

function C:updateNFSFileShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateNFSFileShare, input, options)
end

function C:updateSMBFileShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSMBFileShare, input, options)
end

function C:updateSMBFileShareVisibility(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSMBFileShareVisibility, input, options)
end

function C:updateSMBLocalGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSMBLocalGroups, input, options)
end

function C:updateSMBSecurityStrategy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSMBSecurityStrategy, input, options)
end

function C:updateSnapshotSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSnapshotSchedule, input, options)
end

function C:updateVTLDeviceType(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateVTLDeviceType, input, options)
end

return M
