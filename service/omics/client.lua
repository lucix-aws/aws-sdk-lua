local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("omics.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("omics.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Omics"
    cfg.signing_name = "omics"
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

function Client:abortMultipartReadSetUpload(input, options)
    return self:invokeOperation(input, {
        name = "AbortMultipartReadSetUpload",
        input_schema = types.AbortMultipartReadSetUploadInput,
        output_schema = types.AbortMultipartReadSetUploadOutput,
        http_method = "DELETE",
        http_path = "/sequencestore/{sequenceStoreId}/upload/{uploadId}/abort",
    }, options)
end

function Client:acceptShare(input, options)
    return self:invokeOperation(input, {
        name = "AcceptShare",
        input_schema = types.AcceptShareInput,
        output_schema = types.AcceptShareOutput,
        http_method = "POST",
        http_path = "/share/{shareId}",
    }, options)
end

function Client:batchDeleteReadSet(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteReadSet",
        input_schema = types.BatchDeleteReadSetInput,
        output_schema = types.BatchDeleteReadSetOutput,
        http_method = "POST",
        http_path = "/sequencestore/{sequenceStoreId}/readset/batch/delete",
    }, options)
end

function Client:cancelAnnotationImportJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelAnnotationImportJob",
        input_schema = types.CancelAnnotationImportJobInput,
        output_schema = types.CancelAnnotationImportJobOutput,
        http_method = "DELETE",
        http_path = "/import/annotation/{jobId}",
    }, options)
end

function Client:cancelRun(input, options)
    return self:invokeOperation(input, {
        name = "CancelRun",
        input_schema = types.CancelRunInput,
        output_schema = types.CancelRunOutput,
        http_method = "POST",
        http_path = "/run/{id}/cancel",
    }, options)
end

function Client:cancelRunBatch(input, options)
    return self:invokeOperation(input, {
        name = "CancelRunBatch",
        input_schema = types.CancelRunBatchInput,
        output_schema = types.CancelRunBatchOutput,
        http_method = "POST",
        http_path = "/runBatch/cancel",
    }, options)
end

function Client:cancelVariantImportJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelVariantImportJob",
        input_schema = types.CancelVariantImportJobInput,
        output_schema = types.CancelVariantImportJobOutput,
        http_method = "DELETE",
        http_path = "/import/variant/{jobId}",
    }, options)
end

function Client:completeMultipartReadSetUpload(input, options)
    return self:invokeOperation(input, {
        name = "CompleteMultipartReadSetUpload",
        input_schema = types.CompleteMultipartReadSetUploadInput,
        output_schema = types.CompleteMultipartReadSetUploadOutput,
        http_method = "POST",
        http_path = "/sequencestore/{sequenceStoreId}/upload/{uploadId}/complete",
    }, options)
end

function Client:createAnnotationStore(input, options)
    return self:invokeOperation(input, {
        name = "CreateAnnotationStore",
        input_schema = types.CreateAnnotationStoreInput,
        output_schema = types.CreateAnnotationStoreOutput,
        http_method = "POST",
        http_path = "/annotationStore",
    }, options)
end

function Client:createAnnotationStoreVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateAnnotationStoreVersion",
        input_schema = types.CreateAnnotationStoreVersionInput,
        output_schema = types.CreateAnnotationStoreVersionOutput,
        http_method = "POST",
        http_path = "/annotationStore/{name}/version",
    }, options)
end

function Client:createConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfiguration",
        input_schema = types.CreateConfigurationInput,
        output_schema = types.CreateConfigurationOutput,
        http_method = "POST",
        http_path = "/configuration",
    }, options)
end

function Client:createMultipartReadSetUpload(input, options)
    return self:invokeOperation(input, {
        name = "CreateMultipartReadSetUpload",
        input_schema = types.CreateMultipartReadSetUploadInput,
        output_schema = types.CreateMultipartReadSetUploadOutput,
        http_method = "POST",
        http_path = "/sequencestore/{sequenceStoreId}/upload",
    }, options)
end

function Client:createReferenceStore(input, options)
    return self:invokeOperation(input, {
        name = "CreateReferenceStore",
        input_schema = types.CreateReferenceStoreInput,
        output_schema = types.CreateReferenceStoreOutput,
        http_method = "POST",
        http_path = "/referencestore",
    }, options)
end

function Client:createRunCache(input, options)
    return self:invokeOperation(input, {
        name = "CreateRunCache",
        input_schema = types.CreateRunCacheInput,
        output_schema = types.CreateRunCacheOutput,
        http_method = "POST",
        http_path = "/runCache",
    }, options)
end

function Client:createRunGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateRunGroup",
        input_schema = types.CreateRunGroupInput,
        output_schema = types.CreateRunGroupOutput,
        http_method = "POST",
        http_path = "/runGroup",
    }, options)
end

function Client:createSequenceStore(input, options)
    return self:invokeOperation(input, {
        name = "CreateSequenceStore",
        input_schema = types.CreateSequenceStoreInput,
        output_schema = types.CreateSequenceStoreOutput,
        http_method = "POST",
        http_path = "/sequencestore",
    }, options)
end

function Client:createShare(input, options)
    return self:invokeOperation(input, {
        name = "CreateShare",
        input_schema = types.CreateShareInput,
        output_schema = types.CreateShareOutput,
        http_method = "POST",
        http_path = "/share",
    }, options)
end

function Client:createVariantStore(input, options)
    return self:invokeOperation(input, {
        name = "CreateVariantStore",
        input_schema = types.CreateVariantStoreInput,
        output_schema = types.CreateVariantStoreOutput,
        http_method = "POST",
        http_path = "/variantStore",
    }, options)
end

function Client:createWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkflow",
        input_schema = types.CreateWorkflowInput,
        output_schema = types.CreateWorkflowOutput,
        http_method = "POST",
        http_path = "/workflow",
    }, options)
end

function Client:createWorkflowVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkflowVersion",
        input_schema = types.CreateWorkflowVersionInput,
        output_schema = types.CreateWorkflowVersionOutput,
        http_method = "POST",
        http_path = "/workflow/{workflowId}/version",
    }, options)
end

function Client:deleteAnnotationStore(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAnnotationStore",
        input_schema = types.DeleteAnnotationStoreInput,
        output_schema = types.DeleteAnnotationStoreOutput,
        http_method = "DELETE",
        http_path = "/annotationStore/{name}",
    }, options)
end

function Client:deleteAnnotationStoreVersions(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAnnotationStoreVersions",
        input_schema = types.DeleteAnnotationStoreVersionsInput,
        output_schema = types.DeleteAnnotationStoreVersionsOutput,
        http_method = "POST",
        http_path = "/annotationStore/{name}/versions/delete",
    }, options)
end

function Client:deleteBatch(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBatch",
        input_schema = types.DeleteBatchInput,
        output_schema = types.DeleteBatchOutput,
        http_method = "DELETE",
        http_path = "/runBatch/{batchId}",
    }, options)
end

function Client:deleteConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfiguration",
        input_schema = types.DeleteConfigurationInput,
        output_schema = types.DeleteConfigurationOutput,
        http_method = "DELETE",
        http_path = "/configuration/{name}",
    }, options)
end

function Client:deleteReference(input, options)
    return self:invokeOperation(input, {
        name = "DeleteReference",
        input_schema = types.DeleteReferenceInput,
        output_schema = types.DeleteReferenceOutput,
        http_method = "DELETE",
        http_path = "/referencestore/{referenceStoreId}/reference/{id}",
    }, options)
end

function Client:deleteReferenceStore(input, options)
    return self:invokeOperation(input, {
        name = "DeleteReferenceStore",
        input_schema = types.DeleteReferenceStoreInput,
        output_schema = types.DeleteReferenceStoreOutput,
        http_method = "DELETE",
        http_path = "/referencestore/{id}",
    }, options)
end

function Client:deleteRun(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRun",
        input_schema = types.DeleteRunInput,
        output_schema = types.DeleteRunOutput,
        http_method = "DELETE",
        http_path = "/run/{id}",
    }, options)
end

function Client:deleteRunBatch(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRunBatch",
        input_schema = types.DeleteRunBatchInput,
        output_schema = types.DeleteRunBatchOutput,
        http_method = "POST",
        http_path = "/runBatch/delete",
    }, options)
end

function Client:deleteRunCache(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRunCache",
        input_schema = types.DeleteRunCacheInput,
        output_schema = types.DeleteRunCacheOutput,
        http_method = "DELETE",
        http_path = "/runCache/{id}",
    }, options)
end

function Client:deleteRunGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRunGroup",
        input_schema = types.DeleteRunGroupInput,
        output_schema = types.DeleteRunGroupOutput,
        http_method = "DELETE",
        http_path = "/runGroup/{id}",
    }, options)
end

function Client:deleteS3AccessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteS3AccessPolicy",
        input_schema = types.DeleteS3AccessPolicyInput,
        output_schema = types.DeleteS3AccessPolicyOutput,
        http_method = "DELETE",
        http_path = "/s3accesspolicy/{s3AccessPointArn}",
    }, options)
end

function Client:deleteSequenceStore(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSequenceStore",
        input_schema = types.DeleteSequenceStoreInput,
        output_schema = types.DeleteSequenceStoreOutput,
        http_method = "DELETE",
        http_path = "/sequencestore/{id}",
    }, options)
end

function Client:deleteShare(input, options)
    return self:invokeOperation(input, {
        name = "DeleteShare",
        input_schema = types.DeleteShareInput,
        output_schema = types.DeleteShareOutput,
        http_method = "DELETE",
        http_path = "/share/{shareId}",
    }, options)
end

function Client:deleteVariantStore(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVariantStore",
        input_schema = types.DeleteVariantStoreInput,
        output_schema = types.DeleteVariantStoreOutput,
        http_method = "DELETE",
        http_path = "/variantStore/{name}",
    }, options)
end

function Client:deleteWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkflow",
        input_schema = types.DeleteWorkflowInput,
        output_schema = types.DeleteWorkflowOutput,
        http_method = "DELETE",
        http_path = "/workflow/{id}",
    }, options)
end

function Client:deleteWorkflowVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkflowVersion",
        input_schema = types.DeleteWorkflowVersionInput,
        output_schema = types.DeleteWorkflowVersionOutput,
        http_method = "DELETE",
        http_path = "/workflow/{workflowId}/version/{versionName}",
    }, options)
end

function Client:getAnnotationImportJob(input, options)
    return self:invokeOperation(input, {
        name = "GetAnnotationImportJob",
        input_schema = types.GetAnnotationImportJobInput,
        output_schema = types.GetAnnotationImportJobOutput,
        http_method = "GET",
        http_path = "/import/annotation/{jobId}",
    }, options)
end

function Client:getAnnotationStore(input, options)
    return self:invokeOperation(input, {
        name = "GetAnnotationStore",
        input_schema = types.GetAnnotationStoreInput,
        output_schema = types.GetAnnotationStoreOutput,
        http_method = "GET",
        http_path = "/annotationStore/{name}",
    }, options)
end

function Client:getAnnotationStoreVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetAnnotationStoreVersion",
        input_schema = types.GetAnnotationStoreVersionInput,
        output_schema = types.GetAnnotationStoreVersionOutput,
        http_method = "GET",
        http_path = "/annotationStore/{name}/version/{versionName}",
    }, options)
end

function Client:getBatch(input, options)
    return self:invokeOperation(input, {
        name = "GetBatch",
        input_schema = types.GetBatchInput,
        output_schema = types.GetBatchOutput,
        http_method = "GET",
        http_path = "/runBatch/{batchId}",
    }, options)
end

function Client:getConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetConfiguration",
        input_schema = types.GetConfigurationInput,
        output_schema = types.GetConfigurationOutput,
        http_method = "GET",
        http_path = "/configuration/{name}",
    }, options)
end

function Client:getReadSet(input, options)
    return self:invokeOperation(input, {
        name = "GetReadSet",
        input_schema = types.GetReadSetInput,
        output_schema = types.GetReadSetOutput,
        http_method = "GET",
        http_path = "/sequencestore/{sequenceStoreId}/readset/{id}",
    }, options)
end

function Client:getReadSetActivationJob(input, options)
    return self:invokeOperation(input, {
        name = "GetReadSetActivationJob",
        input_schema = types.GetReadSetActivationJobInput,
        output_schema = types.GetReadSetActivationJobOutput,
        http_method = "GET",
        http_path = "/sequencestore/{sequenceStoreId}/activationjob/{id}",
    }, options)
end

function Client:getReadSetExportJob(input, options)
    return self:invokeOperation(input, {
        name = "GetReadSetExportJob",
        input_schema = types.GetReadSetExportJobInput,
        output_schema = types.GetReadSetExportJobOutput,
        http_method = "GET",
        http_path = "/sequencestore/{sequenceStoreId}/exportjob/{id}",
    }, options)
end

function Client:getReadSetImportJob(input, options)
    return self:invokeOperation(input, {
        name = "GetReadSetImportJob",
        input_schema = types.GetReadSetImportJobInput,
        output_schema = types.GetReadSetImportJobOutput,
        http_method = "GET",
        http_path = "/sequencestore/{sequenceStoreId}/importjob/{id}",
    }, options)
end

function Client:getReadSetMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetReadSetMetadata",
        input_schema = types.GetReadSetMetadataInput,
        output_schema = types.GetReadSetMetadataOutput,
        http_method = "GET",
        http_path = "/sequencestore/{sequenceStoreId}/readset/{id}/metadata",
    }, options)
end

function Client:getReference(input, options)
    return self:invokeOperation(input, {
        name = "GetReference",
        input_schema = types.GetReferenceInput,
        output_schema = types.GetReferenceOutput,
        http_method = "GET",
        http_path = "/referencestore/{referenceStoreId}/reference/{id}",
    }, options)
end

function Client:getReferenceImportJob(input, options)
    return self:invokeOperation(input, {
        name = "GetReferenceImportJob",
        input_schema = types.GetReferenceImportJobInput,
        output_schema = types.GetReferenceImportJobOutput,
        http_method = "GET",
        http_path = "/referencestore/{referenceStoreId}/importjob/{id}",
    }, options)
end

function Client:getReferenceMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetReferenceMetadata",
        input_schema = types.GetReferenceMetadataInput,
        output_schema = types.GetReferenceMetadataOutput,
        http_method = "GET",
        http_path = "/referencestore/{referenceStoreId}/reference/{id}/metadata",
    }, options)
end

function Client:getReferenceStore(input, options)
    return self:invokeOperation(input, {
        name = "GetReferenceStore",
        input_schema = types.GetReferenceStoreInput,
        output_schema = types.GetReferenceStoreOutput,
        http_method = "GET",
        http_path = "/referencestore/{id}",
    }, options)
end

function Client:getRun(input, options)
    return self:invokeOperation(input, {
        name = "GetRun",
        input_schema = types.GetRunInput,
        output_schema = types.GetRunOutput,
        http_method = "GET",
        http_path = "/run/{id}",
    }, options)
end

function Client:getRunCache(input, options)
    return self:invokeOperation(input, {
        name = "GetRunCache",
        input_schema = types.GetRunCacheInput,
        output_schema = types.GetRunCacheOutput,
        http_method = "GET",
        http_path = "/runCache/{id}",
    }, options)
end

function Client:getRunGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetRunGroup",
        input_schema = types.GetRunGroupInput,
        output_schema = types.GetRunGroupOutput,
        http_method = "GET",
        http_path = "/runGroup/{id}",
    }, options)
end

function Client:getRunTask(input, options)
    return self:invokeOperation(input, {
        name = "GetRunTask",
        input_schema = types.GetRunTaskInput,
        output_schema = types.GetRunTaskOutput,
        http_method = "GET",
        http_path = "/run/{id}/task/{taskId}",
    }, options)
end

function Client:getS3AccessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetS3AccessPolicy",
        input_schema = types.GetS3AccessPolicyInput,
        output_schema = types.GetS3AccessPolicyOutput,
        http_method = "GET",
        http_path = "/s3accesspolicy/{s3AccessPointArn}",
    }, options)
end

function Client:getSequenceStore(input, options)
    return self:invokeOperation(input, {
        name = "GetSequenceStore",
        input_schema = types.GetSequenceStoreInput,
        output_schema = types.GetSequenceStoreOutput,
        http_method = "GET",
        http_path = "/sequencestore/{id}",
    }, options)
end

function Client:getShare(input, options)
    return self:invokeOperation(input, {
        name = "GetShare",
        input_schema = types.GetShareInput,
        output_schema = types.GetShareOutput,
        http_method = "GET",
        http_path = "/share/{shareId}",
    }, options)
end

function Client:getVariantImportJob(input, options)
    return self:invokeOperation(input, {
        name = "GetVariantImportJob",
        input_schema = types.GetVariantImportJobInput,
        output_schema = types.GetVariantImportJobOutput,
        http_method = "GET",
        http_path = "/import/variant/{jobId}",
    }, options)
end

function Client:getVariantStore(input, options)
    return self:invokeOperation(input, {
        name = "GetVariantStore",
        input_schema = types.GetVariantStoreInput,
        output_schema = types.GetVariantStoreOutput,
        http_method = "GET",
        http_path = "/variantStore/{name}",
    }, options)
end

function Client:getWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkflow",
        input_schema = types.GetWorkflowInput,
        output_schema = types.GetWorkflowOutput,
        http_method = "GET",
        http_path = "/workflow/{id}",
    }, options)
end

function Client:getWorkflowVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkflowVersion",
        input_schema = types.GetWorkflowVersionInput,
        output_schema = types.GetWorkflowVersionOutput,
        http_method = "GET",
        http_path = "/workflow/{workflowId}/version/{versionName}",
    }, options)
end

function Client:listAnnotationImportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListAnnotationImportJobs",
        input_schema = types.ListAnnotationImportJobsInput,
        output_schema = types.ListAnnotationImportJobsOutput,
        http_method = "POST",
        http_path = "/import/annotations",
    }, options)
end

function Client:listAnnotationStores(input, options)
    return self:invokeOperation(input, {
        name = "ListAnnotationStores",
        input_schema = types.ListAnnotationStoresInput,
        output_schema = types.ListAnnotationStoresOutput,
        http_method = "POST",
        http_path = "/annotationStores",
    }, options)
end

function Client:listAnnotationStoreVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListAnnotationStoreVersions",
        input_schema = types.ListAnnotationStoreVersionsInput,
        output_schema = types.ListAnnotationStoreVersionsOutput,
        http_method = "POST",
        http_path = "/annotationStore/{name}/versions",
    }, options)
end

function Client:listBatch(input, options)
    return self:invokeOperation(input, {
        name = "ListBatch",
        input_schema = types.ListBatchInput,
        output_schema = types.ListBatchOutput,
        http_method = "GET",
        http_path = "/runBatch",
    }, options)
end

function Client:listConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListConfigurations",
        input_schema = types.ListConfigurationsInput,
        output_schema = types.ListConfigurationsOutput,
        http_method = "GET",
        http_path = "/configuration",
    }, options)
end

function Client:listMultipartReadSetUploads(input, options)
    return self:invokeOperation(input, {
        name = "ListMultipartReadSetUploads",
        input_schema = types.ListMultipartReadSetUploadsInput,
        output_schema = types.ListMultipartReadSetUploadsOutput,
        http_method = "POST",
        http_path = "/sequencestore/{sequenceStoreId}/uploads",
    }, options)
end

function Client:listReadSetActivationJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListReadSetActivationJobs",
        input_schema = types.ListReadSetActivationJobsInput,
        output_schema = types.ListReadSetActivationJobsOutput,
        http_method = "POST",
        http_path = "/sequencestore/{sequenceStoreId}/activationjobs",
    }, options)
end

function Client:listReadSetExportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListReadSetExportJobs",
        input_schema = types.ListReadSetExportJobsInput,
        output_schema = types.ListReadSetExportJobsOutput,
        http_method = "POST",
        http_path = "/sequencestore/{sequenceStoreId}/exportjobs",
    }, options)
end

function Client:listReadSetImportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListReadSetImportJobs",
        input_schema = types.ListReadSetImportJobsInput,
        output_schema = types.ListReadSetImportJobsOutput,
        http_method = "POST",
        http_path = "/sequencestore/{sequenceStoreId}/importjobs",
    }, options)
end

function Client:listReadSets(input, options)
    return self:invokeOperation(input, {
        name = "ListReadSets",
        input_schema = types.ListReadSetsInput,
        output_schema = types.ListReadSetsOutput,
        http_method = "POST",
        http_path = "/sequencestore/{sequenceStoreId}/readsets",
    }, options)
end

function Client:listReadSetUploadParts(input, options)
    return self:invokeOperation(input, {
        name = "ListReadSetUploadParts",
        input_schema = types.ListReadSetUploadPartsInput,
        output_schema = types.ListReadSetUploadPartsOutput,
        http_method = "POST",
        http_path = "/sequencestore/{sequenceStoreId}/upload/{uploadId}/parts",
    }, options)
end

function Client:listReferenceImportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListReferenceImportJobs",
        input_schema = types.ListReferenceImportJobsInput,
        output_schema = types.ListReferenceImportJobsOutput,
        http_method = "POST",
        http_path = "/referencestore/{referenceStoreId}/importjobs",
    }, options)
end

function Client:listReferences(input, options)
    return self:invokeOperation(input, {
        name = "ListReferences",
        input_schema = types.ListReferencesInput,
        output_schema = types.ListReferencesOutput,
        http_method = "POST",
        http_path = "/referencestore/{referenceStoreId}/references",
    }, options)
end

function Client:listReferenceStores(input, options)
    return self:invokeOperation(input, {
        name = "ListReferenceStores",
        input_schema = types.ListReferenceStoresInput,
        output_schema = types.ListReferenceStoresOutput,
        http_method = "POST",
        http_path = "/referencestores",
    }, options)
end

function Client:listRunCaches(input, options)
    return self:invokeOperation(input, {
        name = "ListRunCaches",
        input_schema = types.ListRunCachesInput,
        output_schema = types.ListRunCachesOutput,
        http_method = "GET",
        http_path = "/runCache",
    }, options)
end

function Client:listRunGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListRunGroups",
        input_schema = types.ListRunGroupsInput,
        output_schema = types.ListRunGroupsOutput,
        http_method = "GET",
        http_path = "/runGroup",
    }, options)
end

function Client:listRuns(input, options)
    return self:invokeOperation(input, {
        name = "ListRuns",
        input_schema = types.ListRunsInput,
        output_schema = types.ListRunsOutput,
        http_method = "GET",
        http_path = "/run",
    }, options)
end

function Client:listRunsInBatch(input, options)
    return self:invokeOperation(input, {
        name = "ListRunsInBatch",
        input_schema = types.ListRunsInBatchInput,
        output_schema = types.ListRunsInBatchOutput,
        http_method = "GET",
        http_path = "/runBatch/{batchId}/run",
    }, options)
end

function Client:listRunTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListRunTasks",
        input_schema = types.ListRunTasksInput,
        output_schema = types.ListRunTasksOutput,
        http_method = "GET",
        http_path = "/run/{id}/task",
    }, options)
end

function Client:listSequenceStores(input, options)
    return self:invokeOperation(input, {
        name = "ListSequenceStores",
        input_schema = types.ListSequenceStoresInput,
        output_schema = types.ListSequenceStoresOutput,
        http_method = "POST",
        http_path = "/sequencestores",
    }, options)
end

function Client:listShares(input, options)
    return self:invokeOperation(input, {
        name = "ListShares",
        input_schema = types.ListSharesInput,
        output_schema = types.ListSharesOutput,
        http_method = "POST",
        http_path = "/shares",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:listVariantImportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListVariantImportJobs",
        input_schema = types.ListVariantImportJobsInput,
        output_schema = types.ListVariantImportJobsOutput,
        http_method = "POST",
        http_path = "/import/variants",
    }, options)
end

function Client:listVariantStores(input, options)
    return self:invokeOperation(input, {
        name = "ListVariantStores",
        input_schema = types.ListVariantStoresInput,
        output_schema = types.ListVariantStoresOutput,
        http_method = "POST",
        http_path = "/variantStores",
    }, options)
end

function Client:listWorkflows(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkflows",
        input_schema = types.ListWorkflowsInput,
        output_schema = types.ListWorkflowsOutput,
        http_method = "GET",
        http_path = "/workflow",
    }, options)
end

function Client:listWorkflowVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkflowVersions",
        input_schema = types.ListWorkflowVersionsInput,
        output_schema = types.ListWorkflowVersionsOutput,
        http_method = "GET",
        http_path = "/workflow/{workflowId}/version",
    }, options)
end

function Client:putS3AccessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutS3AccessPolicy",
        input_schema = types.PutS3AccessPolicyInput,
        output_schema = types.PutS3AccessPolicyOutput,
        http_method = "PUT",
        http_path = "/s3accesspolicy/{s3AccessPointArn}",
    }, options)
end

function Client:startAnnotationImportJob(input, options)
    return self:invokeOperation(input, {
        name = "StartAnnotationImportJob",
        input_schema = types.StartAnnotationImportJobInput,
        output_schema = types.StartAnnotationImportJobOutput,
        http_method = "POST",
        http_path = "/import/annotation",
    }, options)
end

function Client:startReadSetActivationJob(input, options)
    return self:invokeOperation(input, {
        name = "StartReadSetActivationJob",
        input_schema = types.StartReadSetActivationJobInput,
        output_schema = types.StartReadSetActivationJobOutput,
        http_method = "POST",
        http_path = "/sequencestore/{sequenceStoreId}/activationjob",
    }, options)
end

function Client:startReadSetExportJob(input, options)
    return self:invokeOperation(input, {
        name = "StartReadSetExportJob",
        input_schema = types.StartReadSetExportJobInput,
        output_schema = types.StartReadSetExportJobOutput,
        http_method = "POST",
        http_path = "/sequencestore/{sequenceStoreId}/exportjob",
    }, options)
end

function Client:startReadSetImportJob(input, options)
    return self:invokeOperation(input, {
        name = "StartReadSetImportJob",
        input_schema = types.StartReadSetImportJobInput,
        output_schema = types.StartReadSetImportJobOutput,
        http_method = "POST",
        http_path = "/sequencestore/{sequenceStoreId}/importjob",
    }, options)
end

function Client:startReferenceImportJob(input, options)
    return self:invokeOperation(input, {
        name = "StartReferenceImportJob",
        input_schema = types.StartReferenceImportJobInput,
        output_schema = types.StartReferenceImportJobOutput,
        http_method = "POST",
        http_path = "/referencestore/{referenceStoreId}/importjob",
    }, options)
end

function Client:startRun(input, options)
    return self:invokeOperation(input, {
        name = "StartRun",
        input_schema = types.StartRunInput,
        output_schema = types.StartRunOutput,
        http_method = "POST",
        http_path = "/run",
    }, options)
end

function Client:startRunBatch(input, options)
    return self:invokeOperation(input, {
        name = "StartRunBatch",
        input_schema = types.StartRunBatchInput,
        output_schema = types.StartRunBatchOutput,
        http_method = "POST",
        http_path = "/runBatch",
    }, options)
end

function Client:startVariantImportJob(input, options)
    return self:invokeOperation(input, {
        name = "StartVariantImportJob",
        input_schema = types.StartVariantImportJobInput,
        output_schema = types.StartVariantImportJobOutput,
        http_method = "POST",
        http_path = "/import/variant",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:updateAnnotationStore(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAnnotationStore",
        input_schema = types.UpdateAnnotationStoreInput,
        output_schema = types.UpdateAnnotationStoreOutput,
        http_method = "POST",
        http_path = "/annotationStore/{name}",
    }, options)
end

function Client:updateAnnotationStoreVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAnnotationStoreVersion",
        input_schema = types.UpdateAnnotationStoreVersionInput,
        output_schema = types.UpdateAnnotationStoreVersionOutput,
        http_method = "POST",
        http_path = "/annotationStore/{name}/version/{versionName}",
    }, options)
end

function Client:updateRunCache(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRunCache",
        input_schema = types.UpdateRunCacheInput,
        output_schema = types.UpdateRunCacheOutput,
        http_method = "POST",
        http_path = "/runCache/{id}",
    }, options)
end

function Client:updateRunGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRunGroup",
        input_schema = types.UpdateRunGroupInput,
        output_schema = types.UpdateRunGroupOutput,
        http_method = "POST",
        http_path = "/runGroup/{id}",
    }, options)
end

function Client:updateSequenceStore(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSequenceStore",
        input_schema = types.UpdateSequenceStoreInput,
        output_schema = types.UpdateSequenceStoreOutput,
        http_method = "PATCH",
        http_path = "/sequencestore/{id}",
    }, options)
end

function Client:updateVariantStore(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVariantStore",
        input_schema = types.UpdateVariantStoreInput,
        output_schema = types.UpdateVariantStoreOutput,
        http_method = "POST",
        http_path = "/variantStore/{name}",
    }, options)
end

function Client:updateWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkflow",
        input_schema = types.UpdateWorkflowInput,
        output_schema = types.UpdateWorkflowOutput,
        http_method = "POST",
        http_path = "/workflow/{id}",
    }, options)
end

function Client:updateWorkflowVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkflowVersion",
        input_schema = types.UpdateWorkflowVersionInput,
        output_schema = types.UpdateWorkflowVersionOutput,
        http_method = "POST",
        http_path = "/workflow/{workflowId}/version/{versionName}",
    }, options)
end

function Client:uploadReadSetPart(input, options)
    return self:invokeOperation(input, {
        name = "UploadReadSetPart",
        input_schema = types.UploadReadSetPartInput,
        output_schema = types.UploadReadSetPartOutput,
        http_method = "PUT",
        http_path = "/sequencestore/{sequenceStoreId}/upload/{uploadId}/part",
    }, options)
end

return M
