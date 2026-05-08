



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("omics.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("omics.schemas")
local traits = require("smithy.traits")
local types = require("omics.types")
local sdk_defaults = require("aws.sdk_defaults")

















































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "Omics"
   if not c.protocol then c.protocol = restjson_protocol.new() end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "omics", signing_region = c.region } }
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

function C:abortMultipartReadSetUpload(input, options)
   return self:invokeOperation(schemas.Service, schemas.AbortMultipartReadSetUpload, input, options)
end

function C:acceptShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptShare, input, options)
end

function C:batchDeleteReadSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteReadSet, input, options)
end

function C:cancelAnnotationImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelAnnotationImportJob, input, options)
end

function C:cancelRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelRun, input, options)
end

function C:cancelRunBatch(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelRunBatch, input, options)
end

function C:cancelVariantImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelVariantImportJob, input, options)
end

function C:completeMultipartReadSetUpload(input, options)
   return self:invokeOperation(schemas.Service, schemas.CompleteMultipartReadSetUpload, input, options)
end

function C:createAnnotationStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAnnotationStore, input, options)
end

function C:createAnnotationStoreVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAnnotationStoreVersion, input, options)
end

function C:createConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConfiguration, input, options)
end

function C:createMultipartReadSetUpload(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMultipartReadSetUpload, input, options)
end

function C:createReferenceStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateReferenceStore, input, options)
end

function C:createRunCache(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRunCache, input, options)
end

function C:createRunGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRunGroup, input, options)
end

function C:createSequenceStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSequenceStore, input, options)
end

function C:createShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateShare, input, options)
end

function C:createVariantStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVariantStore, input, options)
end

function C:createWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkflow, input, options)
end

function C:createWorkflowVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkflowVersion, input, options)
end

function C:deleteAnnotationStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAnnotationStore, input, options)
end

function C:deleteAnnotationStoreVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAnnotationStoreVersions, input, options)
end

function C:deleteBatch(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBatch, input, options)
end

function C:deleteConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConfiguration, input, options)
end

function C:deleteReference(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteReference, input, options)
end

function C:deleteReferenceStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteReferenceStore, input, options)
end

function C:deleteRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRun, input, options)
end

function C:deleteRunBatch(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRunBatch, input, options)
end

function C:deleteRunCache(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRunCache, input, options)
end

function C:deleteRunGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRunGroup, input, options)
end

function C:deleteS3AccessPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteS3AccessPolicy, input, options)
end

function C:deleteSequenceStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSequenceStore, input, options)
end

function C:deleteShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteShare, input, options)
end

function C:deleteVariantStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVariantStore, input, options)
end

function C:deleteWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkflow, input, options)
end

function C:deleteWorkflowVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkflowVersion, input, options)
end

function C:getAnnotationImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAnnotationImportJob, input, options)
end

function C:getAnnotationStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAnnotationStore, input, options)
end

function C:getAnnotationStoreVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAnnotationStoreVersion, input, options)
end

function C:getBatch(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBatch, input, options)
end

function C:getConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConfiguration, input, options)
end

function C:getReadSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReadSet, input, options)
end

function C:getReadSetActivationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReadSetActivationJob, input, options)
end

function C:getReadSetExportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReadSetExportJob, input, options)
end

function C:getReadSetImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReadSetImportJob, input, options)
end

function C:getReadSetMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReadSetMetadata, input, options)
end

function C:getReference(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReference, input, options)
end

function C:getReferenceImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReferenceImportJob, input, options)
end

function C:getReferenceMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReferenceMetadata, input, options)
end

function C:getReferenceStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReferenceStore, input, options)
end

function C:getRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRun, input, options)
end

function C:getRunCache(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRunCache, input, options)
end

function C:getRunGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRunGroup, input, options)
end

function C:getRunTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRunTask, input, options)
end

function C:getS3AccessPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetS3AccessPolicy, input, options)
end

function C:getSequenceStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSequenceStore, input, options)
end

function C:getShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetShare, input, options)
end

function C:getVariantImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVariantImportJob, input, options)
end

function C:getVariantStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVariantStore, input, options)
end

function C:getWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkflow, input, options)
end

function C:getWorkflowVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkflowVersion, input, options)
end

function C:listAnnotationImportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAnnotationImportJobs, input, options)
end

function C:listAnnotationStores(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAnnotationStores, input, options)
end

function C:listAnnotationStoreVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAnnotationStoreVersions, input, options)
end

function C:listBatch(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBatch, input, options)
end

function C:listConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConfigurations, input, options)
end

function C:listMultipartReadSetUploads(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMultipartReadSetUploads, input, options)
end

function C:listReadSetActivationJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReadSetActivationJobs, input, options)
end

function C:listReadSetExportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReadSetExportJobs, input, options)
end

function C:listReadSetImportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReadSetImportJobs, input, options)
end

function C:listReadSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReadSets, input, options)
end

function C:listReadSetUploadParts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReadSetUploadParts, input, options)
end

function C:listReferenceImportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReferenceImportJobs, input, options)
end

function C:listReferences(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReferences, input, options)
end

function C:listReferenceStores(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReferenceStores, input, options)
end

function C:listRunCaches(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRunCaches, input, options)
end

function C:listRunGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRunGroups, input, options)
end

function C:listRuns(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRuns, input, options)
end

function C:listRunsInBatch(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRunsInBatch, input, options)
end

function C:listRunTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRunTasks, input, options)
end

function C:listSequenceStores(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSequenceStores, input, options)
end

function C:listShares(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListShares, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listVariantImportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVariantImportJobs, input, options)
end

function C:listVariantStores(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVariantStores, input, options)
end

function C:listWorkflows(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkflows, input, options)
end

function C:listWorkflowVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkflowVersions, input, options)
end

function C:putS3AccessPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutS3AccessPolicy, input, options)
end

function C:startAnnotationImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartAnnotationImportJob, input, options)
end

function C:startReadSetActivationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartReadSetActivationJob, input, options)
end

function C:startReadSetExportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartReadSetExportJob, input, options)
end

function C:startReadSetImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartReadSetImportJob, input, options)
end

function C:startReferenceImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartReferenceImportJob, input, options)
end

function C:startRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartRun, input, options)
end

function C:startRunBatch(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartRunBatch, input, options)
end

function C:startVariantImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartVariantImportJob, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAnnotationStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAnnotationStore, input, options)
end

function C:updateAnnotationStoreVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAnnotationStoreVersion, input, options)
end

function C:updateRunCache(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRunCache, input, options)
end

function C:updateRunGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRunGroup, input, options)
end

function C:updateSequenceStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSequenceStore, input, options)
end

function C:updateVariantStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateVariantStore, input, options)
end

function C:updateWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWorkflow, input, options)
end

function C:updateWorkflowVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWorkflowVersion, input, options)
end

function C:uploadReadSetPart(input, options)
   return self:invokeOperation(schemas.Service, schemas.UploadReadSetPart, input, options)
end

return M
