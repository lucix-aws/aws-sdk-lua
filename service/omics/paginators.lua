local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listAnnotationImportJobs.
function M.pages_list_annotation_import_jobs(client, input)
    return paginator.pages(client, "listAnnotationImportJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "annotationImportJobs",
    })
end

--- Returns an item iterator for listAnnotationImportJobs.
function M.items_list_annotation_import_jobs(client, input)
    return paginator.items(client, "listAnnotationImportJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "annotationImportJobs",
    })
end

--- Returns a page iterator for listAnnotationStoreVersions.
function M.pages_list_annotation_store_versions(client, input)
    return paginator.pages(client, "listAnnotationStoreVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "annotationStoreVersions",
    })
end

--- Returns an item iterator for listAnnotationStoreVersions.
function M.items_list_annotation_store_versions(client, input)
    return paginator.items(client, "listAnnotationStoreVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "annotationStoreVersions",
    })
end

--- Returns a page iterator for listAnnotationStores.
function M.pages_list_annotation_stores(client, input)
    return paginator.pages(client, "listAnnotationStores", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "annotationStores",
    })
end

--- Returns an item iterator for listAnnotationStores.
function M.items_list_annotation_stores(client, input)
    return paginator.items(client, "listAnnotationStores", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "annotationStores",
    })
end

--- Returns a page iterator for listBatch.
function M.pages_list_batch(client, input)
    return paginator.pages(client, "listBatch", input, {
        input_token = "startingToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listBatch.
function M.items_list_batch(client, input)
    return paginator.items(client, "listBatch", input, {
        input_token = "startingToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listConfigurations.
function M.pages_list_configurations(client, input)
    return paginator.pages(client, "listConfigurations", input, {
        input_token = "startingToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listConfigurations.
function M.items_list_configurations(client, input)
    return paginator.items(client, "listConfigurations", input, {
        input_token = "startingToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listMultipartReadSetUploads.
function M.pages_list_multipart_read_set_uploads(client, input)
    return paginator.pages(client, "listMultipartReadSetUploads", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "uploads",
    })
end

--- Returns an item iterator for listMultipartReadSetUploads.
function M.items_list_multipart_read_set_uploads(client, input)
    return paginator.items(client, "listMultipartReadSetUploads", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "uploads",
    })
end

--- Returns a page iterator for listReadSetActivationJobs.
function M.pages_list_read_set_activation_jobs(client, input)
    return paginator.pages(client, "listReadSetActivationJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "activationJobs",
    })
end

--- Returns an item iterator for listReadSetActivationJobs.
function M.items_list_read_set_activation_jobs(client, input)
    return paginator.items(client, "listReadSetActivationJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "activationJobs",
    })
end

--- Returns a page iterator for listReadSetExportJobs.
function M.pages_list_read_set_export_jobs(client, input)
    return paginator.pages(client, "listReadSetExportJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "exportJobs",
    })
end

--- Returns an item iterator for listReadSetExportJobs.
function M.items_list_read_set_export_jobs(client, input)
    return paginator.items(client, "listReadSetExportJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "exportJobs",
    })
end

--- Returns a page iterator for listReadSetImportJobs.
function M.pages_list_read_set_import_jobs(client, input)
    return paginator.pages(client, "listReadSetImportJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "importJobs",
    })
end

--- Returns an item iterator for listReadSetImportJobs.
function M.items_list_read_set_import_jobs(client, input)
    return paginator.items(client, "listReadSetImportJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "importJobs",
    })
end

--- Returns a page iterator for listReadSetUploadParts.
function M.pages_list_read_set_upload_parts(client, input)
    return paginator.pages(client, "listReadSetUploadParts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "parts",
    })
end

--- Returns an item iterator for listReadSetUploadParts.
function M.items_list_read_set_upload_parts(client, input)
    return paginator.items(client, "listReadSetUploadParts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "parts",
    })
end

--- Returns a page iterator for listReadSets.
function M.pages_list_read_sets(client, input)
    return paginator.pages(client, "listReadSets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "readSets",
    })
end

--- Returns an item iterator for listReadSets.
function M.items_list_read_sets(client, input)
    return paginator.items(client, "listReadSets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "readSets",
    })
end

--- Returns a page iterator for listReferenceImportJobs.
function M.pages_list_reference_import_jobs(client, input)
    return paginator.pages(client, "listReferenceImportJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "importJobs",
    })
end

--- Returns an item iterator for listReferenceImportJobs.
function M.items_list_reference_import_jobs(client, input)
    return paginator.items(client, "listReferenceImportJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "importJobs",
    })
end

--- Returns a page iterator for listReferenceStores.
function M.pages_list_reference_stores(client, input)
    return paginator.pages(client, "listReferenceStores", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "referenceStores",
    })
end

--- Returns an item iterator for listReferenceStores.
function M.items_list_reference_stores(client, input)
    return paginator.items(client, "listReferenceStores", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "referenceStores",
    })
end

--- Returns a page iterator for listReferences.
function M.pages_list_references(client, input)
    return paginator.pages(client, "listReferences", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "references",
    })
end

--- Returns an item iterator for listReferences.
function M.items_list_references(client, input)
    return paginator.items(client, "listReferences", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "references",
    })
end

--- Returns a page iterator for listRunCaches.
function M.pages_list_run_caches(client, input)
    return paginator.pages(client, "listRunCaches", input, {
        input_token = "startingToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listRunCaches.
function M.items_list_run_caches(client, input)
    return paginator.items(client, "listRunCaches", input, {
        input_token = "startingToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listRunGroups.
function M.pages_list_run_groups(client, input)
    return paginator.pages(client, "listRunGroups", input, {
        input_token = "startingToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listRunGroups.
function M.items_list_run_groups(client, input)
    return paginator.items(client, "listRunGroups", input, {
        input_token = "startingToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listRunTasks.
function M.pages_list_run_tasks(client, input)
    return paginator.pages(client, "listRunTasks", input, {
        input_token = "startingToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listRunTasks.
function M.items_list_run_tasks(client, input)
    return paginator.items(client, "listRunTasks", input, {
        input_token = "startingToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listRuns.
function M.pages_list_runs(client, input)
    return paginator.pages(client, "listRuns", input, {
        input_token = "startingToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listRuns.
function M.items_list_runs(client, input)
    return paginator.items(client, "listRuns", input, {
        input_token = "startingToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listRunsInBatch.
function M.pages_list_runs_in_batch(client, input)
    return paginator.pages(client, "listRunsInBatch", input, {
        input_token = "startingToken",
        output_token = "nextToken",
        items = "runs",
    })
end

--- Returns an item iterator for listRunsInBatch.
function M.items_list_runs_in_batch(client, input)
    return paginator.items(client, "listRunsInBatch", input, {
        input_token = "startingToken",
        output_token = "nextToken",
        items = "runs",
    })
end

--- Returns a page iterator for listSequenceStores.
function M.pages_list_sequence_stores(client, input)
    return paginator.pages(client, "listSequenceStores", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "sequenceStores",
    })
end

--- Returns an item iterator for listSequenceStores.
function M.items_list_sequence_stores(client, input)
    return paginator.items(client, "listSequenceStores", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "sequenceStores",
    })
end

--- Returns a page iterator for listShares.
function M.pages_list_shares(client, input)
    return paginator.pages(client, "listShares", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "shares",
    })
end

--- Returns an item iterator for listShares.
function M.items_list_shares(client, input)
    return paginator.items(client, "listShares", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "shares",
    })
end

--- Returns a page iterator for listVariantImportJobs.
function M.pages_list_variant_import_jobs(client, input)
    return paginator.pages(client, "listVariantImportJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "variantImportJobs",
    })
end

--- Returns an item iterator for listVariantImportJobs.
function M.items_list_variant_import_jobs(client, input)
    return paginator.items(client, "listVariantImportJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "variantImportJobs",
    })
end

--- Returns a page iterator for listVariantStores.
function M.pages_list_variant_stores(client, input)
    return paginator.pages(client, "listVariantStores", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "variantStores",
    })
end

--- Returns an item iterator for listVariantStores.
function M.items_list_variant_stores(client, input)
    return paginator.items(client, "listVariantStores", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "variantStores",
    })
end

--- Returns a page iterator for listWorkflowVersions.
function M.pages_list_workflow_versions(client, input)
    return paginator.pages(client, "listWorkflowVersions", input, {
        input_token = "startingToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listWorkflowVersions.
function M.items_list_workflow_versions(client, input)
    return paginator.items(client, "listWorkflowVersions", input, {
        input_token = "startingToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listWorkflows.
function M.pages_list_workflows(client, input)
    return paginator.pages(client, "listWorkflows", input, {
        input_token = "startingToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listWorkflows.
function M.items_list_workflows(client, input)
    return paginator.items(client, "listWorkflows", input, {
        input_token = "startingToken",
        output_token = "nextToken",
        items = "items",
    })
end

return M
