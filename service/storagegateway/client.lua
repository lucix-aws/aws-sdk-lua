local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("storagegateway.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("storagegateway.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "StorageGateway_20130630"
    cfg.signing_name = "storagegateway"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
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

function Client:activateGateway(input, options)
    return self:invokeOperation(input, {
        name = "ActivateGateway",
        input_schema = types.ActivateGatewayInput,
        output_schema = types.ActivateGatewayOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:addCache(input, options)
    return self:invokeOperation(input, {
        name = "AddCache",
        input_schema = types.AddCacheInput,
        output_schema = types.AddCacheOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:addTagsToResource(input, options)
    return self:invokeOperation(input, {
        name = "AddTagsToResource",
        input_schema = types.AddTagsToResourceInput,
        output_schema = types.AddTagsToResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:addUploadBuffer(input, options)
    return self:invokeOperation(input, {
        name = "AddUploadBuffer",
        input_schema = types.AddUploadBufferInput,
        output_schema = types.AddUploadBufferOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:addWorkingStorage(input, options)
    return self:invokeOperation(input, {
        name = "AddWorkingStorage",
        input_schema = types.AddWorkingStorageInput,
        output_schema = types.AddWorkingStorageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:assignTapePool(input, options)
    return self:invokeOperation(input, {
        name = "AssignTapePool",
        input_schema = types.AssignTapePoolInput,
        output_schema = types.AssignTapePoolOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:associateFileSystem(input, options)
    return self:invokeOperation(input, {
        name = "AssociateFileSystem",
        input_schema = types.AssociateFileSystemInput,
        output_schema = types.AssociateFileSystemOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:attachVolume(input, options)
    return self:invokeOperation(input, {
        name = "AttachVolume",
        input_schema = types.AttachVolumeInput,
        output_schema = types.AttachVolumeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:cancelArchival(input, options)
    return self:invokeOperation(input, {
        name = "CancelArchival",
        input_schema = types.CancelArchivalInput,
        output_schema = types.CancelArchivalOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:cancelCacheReport(input, options)
    return self:invokeOperation(input, {
        name = "CancelCacheReport",
        input_schema = types.CancelCacheReportInput,
        output_schema = types.CancelCacheReportOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:cancelRetrieval(input, options)
    return self:invokeOperation(input, {
        name = "CancelRetrieval",
        input_schema = types.CancelRetrievalInput,
        output_schema = types.CancelRetrievalOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createCachediSCSIVolume(input, options)
    return self:invokeOperation(input, {
        name = "CreateCachediSCSIVolume",
        input_schema = types.CreateCachediSCSIVolumeInput,
        output_schema = types.CreateCachediSCSIVolumeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createNFSFileShare(input, options)
    return self:invokeOperation(input, {
        name = "CreateNFSFileShare",
        input_schema = types.CreateNFSFileShareInput,
        output_schema = types.CreateNFSFileShareOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createSMBFileShare(input, options)
    return self:invokeOperation(input, {
        name = "CreateSMBFileShare",
        input_schema = types.CreateSMBFileShareInput,
        output_schema = types.CreateSMBFileShareOutput,
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

function Client:createSnapshotFromVolumeRecoveryPoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateSnapshotFromVolumeRecoveryPoint",
        input_schema = types.CreateSnapshotFromVolumeRecoveryPointInput,
        output_schema = types.CreateSnapshotFromVolumeRecoveryPointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createStorediSCSIVolume(input, options)
    return self:invokeOperation(input, {
        name = "CreateStorediSCSIVolume",
        input_schema = types.CreateStorediSCSIVolumeInput,
        output_schema = types.CreateStorediSCSIVolumeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createTapePool(input, options)
    return self:invokeOperation(input, {
        name = "CreateTapePool",
        input_schema = types.CreateTapePoolInput,
        output_schema = types.CreateTapePoolOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createTapes(input, options)
    return self:invokeOperation(input, {
        name = "CreateTapes",
        input_schema = types.CreateTapesInput,
        output_schema = types.CreateTapesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createTapeWithBarcode(input, options)
    return self:invokeOperation(input, {
        name = "CreateTapeWithBarcode",
        input_schema = types.CreateTapeWithBarcodeInput,
        output_schema = types.CreateTapeWithBarcodeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteAutomaticTapeCreationPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAutomaticTapeCreationPolicy",
        input_schema = types.DeleteAutomaticTapeCreationPolicyInput,
        output_schema = types.DeleteAutomaticTapeCreationPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteBandwidthRateLimit(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBandwidthRateLimit",
        input_schema = types.DeleteBandwidthRateLimitInput,
        output_schema = types.DeleteBandwidthRateLimitOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteCacheReport(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCacheReport",
        input_schema = types.DeleteCacheReportInput,
        output_schema = types.DeleteCacheReportOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteChapCredentials(input, options)
    return self:invokeOperation(input, {
        name = "DeleteChapCredentials",
        input_schema = types.DeleteChapCredentialsInput,
        output_schema = types.DeleteChapCredentialsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteFileShare(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFileShare",
        input_schema = types.DeleteFileShareInput,
        output_schema = types.DeleteFileShareOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteGateway(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGateway",
        input_schema = types.DeleteGatewayInput,
        output_schema = types.DeleteGatewayOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteSnapshotSchedule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSnapshotSchedule",
        input_schema = types.DeleteSnapshotScheduleInput,
        output_schema = types.DeleteSnapshotScheduleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteTape(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTape",
        input_schema = types.DeleteTapeInput,
        output_schema = types.DeleteTapeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteTapeArchive(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTapeArchive",
        input_schema = types.DeleteTapeArchiveInput,
        output_schema = types.DeleteTapeArchiveOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteTapePool(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTapePool",
        input_schema = types.DeleteTapePoolInput,
        output_schema = types.DeleteTapePoolOutput,
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

function Client:describeAvailabilityMonitorTest(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAvailabilityMonitorTest",
        input_schema = types.DescribeAvailabilityMonitorTestInput,
        output_schema = types.DescribeAvailabilityMonitorTestOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeBandwidthRateLimit(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBandwidthRateLimit",
        input_schema = types.DescribeBandwidthRateLimitInput,
        output_schema = types.DescribeBandwidthRateLimitOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeBandwidthRateLimitSchedule(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBandwidthRateLimitSchedule",
        input_schema = types.DescribeBandwidthRateLimitScheduleInput,
        output_schema = types.DescribeBandwidthRateLimitScheduleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeCache(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCache",
        input_schema = types.DescribeCacheInput,
        output_schema = types.DescribeCacheOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeCachediSCSIVolumes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCachediSCSIVolumes",
        input_schema = types.DescribeCachediSCSIVolumesInput,
        output_schema = types.DescribeCachediSCSIVolumesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeCacheReport(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCacheReport",
        input_schema = types.DescribeCacheReportInput,
        output_schema = types.DescribeCacheReportOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeChapCredentials(input, options)
    return self:invokeOperation(input, {
        name = "DescribeChapCredentials",
        input_schema = types.DescribeChapCredentialsInput,
        output_schema = types.DescribeChapCredentialsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeFileSystemAssociations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFileSystemAssociations",
        input_schema = types.DescribeFileSystemAssociationsInput,
        output_schema = types.DescribeFileSystemAssociationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeGatewayInformation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGatewayInformation",
        input_schema = types.DescribeGatewayInformationInput,
        output_schema = types.DescribeGatewayInformationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeMaintenanceStartTime(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMaintenanceStartTime",
        input_schema = types.DescribeMaintenanceStartTimeInput,
        output_schema = types.DescribeMaintenanceStartTimeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeNFSFileShares(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNFSFileShares",
        input_schema = types.DescribeNFSFileSharesInput,
        output_schema = types.DescribeNFSFileSharesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeSMBFileShares(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSMBFileShares",
        input_schema = types.DescribeSMBFileSharesInput,
        output_schema = types.DescribeSMBFileSharesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeSMBSettings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSMBSettings",
        input_schema = types.DescribeSMBSettingsInput,
        output_schema = types.DescribeSMBSettingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeSnapshotSchedule(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSnapshotSchedule",
        input_schema = types.DescribeSnapshotScheduleInput,
        output_schema = types.DescribeSnapshotScheduleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeStorediSCSIVolumes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStorediSCSIVolumes",
        input_schema = types.DescribeStorediSCSIVolumesInput,
        output_schema = types.DescribeStorediSCSIVolumesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTapeArchives(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTapeArchives",
        input_schema = types.DescribeTapeArchivesInput,
        output_schema = types.DescribeTapeArchivesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTapeRecoveryPoints(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTapeRecoveryPoints",
        input_schema = types.DescribeTapeRecoveryPointsInput,
        output_schema = types.DescribeTapeRecoveryPointsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTapes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTapes",
        input_schema = types.DescribeTapesInput,
        output_schema = types.DescribeTapesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeUploadBuffer(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUploadBuffer",
        input_schema = types.DescribeUploadBufferInput,
        output_schema = types.DescribeUploadBufferOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeVTLDevices(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVTLDevices",
        input_schema = types.DescribeVTLDevicesInput,
        output_schema = types.DescribeVTLDevicesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeWorkingStorage(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWorkingStorage",
        input_schema = types.DescribeWorkingStorageInput,
        output_schema = types.DescribeWorkingStorageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:detachVolume(input, options)
    return self:invokeOperation(input, {
        name = "DetachVolume",
        input_schema = types.DetachVolumeInput,
        output_schema = types.DetachVolumeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disableGateway(input, options)
    return self:invokeOperation(input, {
        name = "DisableGateway",
        input_schema = types.DisableGatewayInput,
        output_schema = types.DisableGatewayOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateFileSystem(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateFileSystem",
        input_schema = types.DisassociateFileSystemInput,
        output_schema = types.DisassociateFileSystemOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:evictFilesFailingUpload(input, options)
    return self:invokeOperation(input, {
        name = "EvictFilesFailingUpload",
        input_schema = types.EvictFilesFailingUploadInput,
        output_schema = types.EvictFilesFailingUploadOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:joinDomain(input, options)
    return self:invokeOperation(input, {
        name = "JoinDomain",
        input_schema = types.JoinDomainInput,
        output_schema = types.JoinDomainOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAutomaticTapeCreationPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListAutomaticTapeCreationPolicies",
        input_schema = types.ListAutomaticTapeCreationPoliciesInput,
        output_schema = types.ListAutomaticTapeCreationPoliciesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listCacheReports(input, options)
    return self:invokeOperation(input, {
        name = "ListCacheReports",
        input_schema = types.ListCacheReportsInput,
        output_schema = types.ListCacheReportsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listFileShares(input, options)
    return self:invokeOperation(input, {
        name = "ListFileShares",
        input_schema = types.ListFileSharesInput,
        output_schema = types.ListFileSharesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listFileSystemAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListFileSystemAssociations",
        input_schema = types.ListFileSystemAssociationsInput,
        output_schema = types.ListFileSystemAssociationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listGateways(input, options)
    return self:invokeOperation(input, {
        name = "ListGateways",
        input_schema = types.ListGatewaysInput,
        output_schema = types.ListGatewaysOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listLocalDisks(input, options)
    return self:invokeOperation(input, {
        name = "ListLocalDisks",
        input_schema = types.ListLocalDisksInput,
        output_schema = types.ListLocalDisksOutput,
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

function Client:listTapePools(input, options)
    return self:invokeOperation(input, {
        name = "ListTapePools",
        input_schema = types.ListTapePoolsInput,
        output_schema = types.ListTapePoolsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTapes(input, options)
    return self:invokeOperation(input, {
        name = "ListTapes",
        input_schema = types.ListTapesInput,
        output_schema = types.ListTapesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listVolumeInitiators(input, options)
    return self:invokeOperation(input, {
        name = "ListVolumeInitiators",
        input_schema = types.ListVolumeInitiatorsInput,
        output_schema = types.ListVolumeInitiatorsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listVolumeRecoveryPoints(input, options)
    return self:invokeOperation(input, {
        name = "ListVolumeRecoveryPoints",
        input_schema = types.ListVolumeRecoveryPointsInput,
        output_schema = types.ListVolumeRecoveryPointsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listVolumes(input, options)
    return self:invokeOperation(input, {
        name = "ListVolumes",
        input_schema = types.ListVolumesInput,
        output_schema = types.ListVolumesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:notifyWhenUploaded(input, options)
    return self:invokeOperation(input, {
        name = "NotifyWhenUploaded",
        input_schema = types.NotifyWhenUploadedInput,
        output_schema = types.NotifyWhenUploadedOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:refreshCache(input, options)
    return self:invokeOperation(input, {
        name = "RefreshCache",
        input_schema = types.RefreshCacheInput,
        output_schema = types.RefreshCacheOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:removeTagsFromResource(input, options)
    return self:invokeOperation(input, {
        name = "RemoveTagsFromResource",
        input_schema = types.RemoveTagsFromResourceInput,
        output_schema = types.RemoveTagsFromResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:resetCache(input, options)
    return self:invokeOperation(input, {
        name = "ResetCache",
        input_schema = types.ResetCacheInput,
        output_schema = types.ResetCacheOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:retrieveTapeArchive(input, options)
    return self:invokeOperation(input, {
        name = "RetrieveTapeArchive",
        input_schema = types.RetrieveTapeArchiveInput,
        output_schema = types.RetrieveTapeArchiveOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:retrieveTapeRecoveryPoint(input, options)
    return self:invokeOperation(input, {
        name = "RetrieveTapeRecoveryPoint",
        input_schema = types.RetrieveTapeRecoveryPointInput,
        output_schema = types.RetrieveTapeRecoveryPointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setLocalConsolePassword(input, options)
    return self:invokeOperation(input, {
        name = "SetLocalConsolePassword",
        input_schema = types.SetLocalConsolePasswordInput,
        output_schema = types.SetLocalConsolePasswordOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setSMBGuestPassword(input, options)
    return self:invokeOperation(input, {
        name = "SetSMBGuestPassword",
        input_schema = types.SetSMBGuestPasswordInput,
        output_schema = types.SetSMBGuestPasswordOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:shutdownGateway(input, options)
    return self:invokeOperation(input, {
        name = "ShutdownGateway",
        input_schema = types.ShutdownGatewayInput,
        output_schema = types.ShutdownGatewayOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startAvailabilityMonitorTest(input, options)
    return self:invokeOperation(input, {
        name = "StartAvailabilityMonitorTest",
        input_schema = types.StartAvailabilityMonitorTestInput,
        output_schema = types.StartAvailabilityMonitorTestOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startCacheReport(input, options)
    return self:invokeOperation(input, {
        name = "StartCacheReport",
        input_schema = types.StartCacheReportInput,
        output_schema = types.StartCacheReportOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startGateway(input, options)
    return self:invokeOperation(input, {
        name = "StartGateway",
        input_schema = types.StartGatewayInput,
        output_schema = types.StartGatewayOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateAutomaticTapeCreationPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAutomaticTapeCreationPolicy",
        input_schema = types.UpdateAutomaticTapeCreationPolicyInput,
        output_schema = types.UpdateAutomaticTapeCreationPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateBandwidthRateLimit(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBandwidthRateLimit",
        input_schema = types.UpdateBandwidthRateLimitInput,
        output_schema = types.UpdateBandwidthRateLimitOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateBandwidthRateLimitSchedule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBandwidthRateLimitSchedule",
        input_schema = types.UpdateBandwidthRateLimitScheduleInput,
        output_schema = types.UpdateBandwidthRateLimitScheduleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateChapCredentials(input, options)
    return self:invokeOperation(input, {
        name = "UpdateChapCredentials",
        input_schema = types.UpdateChapCredentialsInput,
        output_schema = types.UpdateChapCredentialsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateFileSystemAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFileSystemAssociation",
        input_schema = types.UpdateFileSystemAssociationInput,
        output_schema = types.UpdateFileSystemAssociationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateGatewayInformation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGatewayInformation",
        input_schema = types.UpdateGatewayInformationInput,
        output_schema = types.UpdateGatewayInformationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateGatewaySoftwareNow(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGatewaySoftwareNow",
        input_schema = types.UpdateGatewaySoftwareNowInput,
        output_schema = types.UpdateGatewaySoftwareNowOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateMaintenanceStartTime(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMaintenanceStartTime",
        input_schema = types.UpdateMaintenanceStartTimeInput,
        output_schema = types.UpdateMaintenanceStartTimeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateNFSFileShare(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNFSFileShare",
        input_schema = types.UpdateNFSFileShareInput,
        output_schema = types.UpdateNFSFileShareOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateSMBFileShare(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSMBFileShare",
        input_schema = types.UpdateSMBFileShareInput,
        output_schema = types.UpdateSMBFileShareOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateSMBFileShareVisibility(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSMBFileShareVisibility",
        input_schema = types.UpdateSMBFileShareVisibilityInput,
        output_schema = types.UpdateSMBFileShareVisibilityOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateSMBLocalGroups(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSMBLocalGroups",
        input_schema = types.UpdateSMBLocalGroupsInput,
        output_schema = types.UpdateSMBLocalGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateSMBSecurityStrategy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSMBSecurityStrategy",
        input_schema = types.UpdateSMBSecurityStrategyInput,
        output_schema = types.UpdateSMBSecurityStrategyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateSnapshotSchedule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSnapshotSchedule",
        input_schema = types.UpdateSnapshotScheduleInput,
        output_schema = types.UpdateSnapshotScheduleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateVTLDeviceType(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVTLDeviceType",
        input_schema = types.UpdateVTLDeviceTypeInput,
        output_schema = types.UpdateVTLDeviceTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
