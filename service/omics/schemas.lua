local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.omics"

local M = {}

M.IdList = schema.new({ type = "list", list_member = prelude.String })

M.AnnotationImportJobItems = schema.new({ type = "list", list_member = M.AnnotationImportJobItem })

M.AnnotationImportItemSources = schema.new({ type = "list", list_member = M.AnnotationImportItemSource })

M.AnnotationFieldMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.AnnotationImportItemDetails = schema.new({ type = "list", list_member = M.AnnotationImportItemDetail })

M.AnnotationStoreItems = schema.new({ type = "list", list_member = M.AnnotationStoreItem })

M.TagMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.AnnotationStoreVersionItems = schema.new({ type = "list", list_member = M.AnnotationStoreVersionItem })

M.VersionList = schema.new({ type = "list", list_member = prelude.String })

M.VersionDeleteErrorList = schema.new({ type = "list", list_member = M.VersionDeleteError })

M.ConfigurationList = schema.new({ type = "list", list_member = M.ConfigurationListItem })

M.ReferenceStoreDetailList = schema.new({ type = "list", list_member = M.ReferenceStoreDetail })

M.ImportReferenceSourceList = schema.new({ type = "list", list_member = M.ImportReferenceSourceItem })

M.ImportReferenceJobList = schema.new({ type = "list", list_member = M.ImportReferenceJobItem })

M.StartReferenceImportJobSourceList = schema.new({ type = "list", list_member = M.StartReferenceImportJobSourceItem })

M.BatchList = schema.new({ type = "list", list_member = M.BatchListItem })

M.RunBatchList = schema.new({ type = "list", list_member = M.RunBatchListItem })

M.RunCacheList = schema.new({ type = "list", list_member = M.RunCacheListItem })

M.RunGroupList = schema.new({ type = "list", list_member = M.RunGroupListItem })

M.RunList = schema.new({ type = "list", list_member = M.RunListItem })

M.RunExportList = schema.new({ type = "list", list_member = prelude.String })

M.RunResourceDigests = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.SequenceStoreDetailList = schema.new({ type = "list", list_member = M.SequenceStoreDetail })

M.PropagatedSetLevelTags = schema.new({ type = "list", list_member = prelude.String })

M.CompleteReadSetUploadPartList = schema.new({ type = "list", list_member = M.CompleteReadSetUploadPartListItem })

M.ActivateReadSetSourceList = schema.new({ type = "list", list_member = M.ActivateReadSetSourceItem })

M.ExportReadSetDetailList = schema.new({ type = "list", list_member = M.ExportReadSetDetail })

M.ImportReadSetSourceList = schema.new({ type = "list", list_member = M.ImportReadSetSourceItem })

M.MultipartReadSetUploadList = schema.new({ type = "list", list_member = M.MultipartReadSetUploadListItem })

M.ActivateReadSetJobList = schema.new({ type = "list", list_member = M.ActivateReadSetJobItem })

M.ExportReadSetJobDetailList = schema.new({ type = "list", list_member = M.ExportReadSetJobDetail })

M.ImportReadSetJobList = schema.new({ type = "list", list_member = M.ImportReadSetJobItem })

M.ReadSetUploadPartList = schema.new({ type = "list", list_member = M.ReadSetUploadPartListItem })

M.StartReadSetActivationJobSourceList = schema.new({ type = "list", list_member = M.StartReadSetActivationJobSourceItem })

M.ExportReadSetList = schema.new({ type = "list", list_member = M.ExportReadSet })

M.StartReadSetImportJobSourceList = schema.new({ type = "list", list_member = M.StartReadSetImportJobSourceItem })

M.ShareDetailsList = schema.new({ type = "list", list_member = M.ShareDetails })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.VariantImportJobItems = schema.new({ type = "list", list_member = M.VariantImportJobItem })

M.VariantImportItemSources = schema.new({ type = "list", list_member = M.VariantImportItemSource })

M.VariantImportItemDetails = schema.new({ type = "list", list_member = M.VariantImportItemDetail })

M.VariantStoreItems = schema.new({ type = "list", list_member = M.VariantStoreItem })

M.WorkflowList = schema.new({ type = "list", list_member = M.WorkflowListItem })

M.WorkflowParameterTemplate = schema.new({ type = "map", map_key = prelude.String, map_value = M.WorkflowParameter })

M.WorkflowExportList = schema.new({ type = "list", list_member = prelude.String })

M.WorkflowMetadata = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ReferenceList = schema.new({ type = "list", list_member = M.ReferenceListItem })

M.TaskList = schema.new({ type = "list", list_member = M.TaskListItem })

M.ReadSetList = schema.new({ type = "list", list_member = M.ReadSetListItem })

M.ReadSetIdList = schema.new({ type = "list", list_member = prelude.String })

M.ReadSetBatchErrorList = schema.new({ type = "list", list_member = M.ReadSetBatchError })

M.WorkflowVersionList = schema.new({ type = "list", list_member = M.WorkflowVersionListItem })

M.InlineSettings = schema.new({ type = "list", list_member = M.InlineSetting })

M.SecurityGroupIds = schema.new({ type = "list", list_member = prelude.String })

M.SubnetIds = schema.new({ type = "list", list_member = prelude.String })

M.ArnList = schema.new({ type = "list", list_member = prelude.String })

M.StatusList = schema.new({ type = "list", list_member = prelude.String })

M.TypeList = schema.new({ type = "list", list_member = prelude.String })

M.RegistryMappingsList = schema.new({ type = "list", list_member = M.RegistryMapping })

M.ImageMappingsList = schema.new({ type = "list", list_member = M.ImageMapping })

M.ExcludeFilePatternList = schema.new({ type = "list", list_member = prelude.String })

M.FormatToHeader = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.Schema = schema.new({ type = "list", list_member = M.SchemaItem })

M.SchemaItem = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.AbortMultipartReadSetUploadInput = schema.new({
    id = id.from(_N, "AbortMultipartReadSetUploadRequest"),
    type = "structure",
    members = {
        sequenceStoreId = schema.new({
            id = id.from(_N, "AbortMultipartReadSetUploadInput", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        uploadId = schema.new({
            id = id.from(_N, "AbortMultipartReadSetUploadInput", "uploadId"),
            type = "string",
            name = "uploadId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.AbortMultipartReadSetUploadOutput = schema.new({
    id = id.from(_N, "AbortMultipartReadSetUploadResponse"),
    type = "structure",
})

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AccessDeniedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InternalServerException = schema.new({
    id = id.from(_N, "InternalServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InternalServerException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.NotSupportedOperationException = schema.new({
    id = id.from(_N, "NotSupportedOperationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NotSupportedOperationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RequestTimeoutException = schema.new({
    id = id.from(_N, "RequestTimeoutException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "RequestTimeoutException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ServiceQuotaExceededException = schema.new({
    id = id.from(_N, "ServiceQuotaExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ThrottlingException = schema.new({
    id = id.from(_N, "ThrottlingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ThrottlingException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ValidationException = schema.new({
    id = id.from(_N, "ValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ValidationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AcceptShareInput = schema.new({
    id = id.from(_N, "AcceptShareRequest"),
    type = "structure",
    members = {
        shareId = schema.new({
            id = id.from(_N, "AcceptShareInput", "shareId"),
            type = "string",
            name = "shareId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.AcceptShareOutput = schema.new({
    id = id.from(_N, "AcceptShareResponse"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "AcceptShareOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ConflictException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ActivateReadSetFilter = schema.new({
    id = id.from(_N, "ActivateReadSetFilter"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "ActivateReadSetFilter", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        createdAfter = schema.new({
            id = id.from(_N, "ActivateReadSetFilter", "createdAfter"),
            type = "timestamp",
            name = "createdAfter",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        createdBefore = schema.new({
            id = id.from(_N, "ActivateReadSetFilter", "createdBefore"),
            type = "timestamp",
            name = "createdBefore",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ActivateReadSetJobItem = schema.new({
    id = id.from(_N, "ActivateReadSetJobItem"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ActivateReadSetJobItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sequenceStoreId = schema.new({
            id = id.from(_N, "ActivateReadSetJobItem", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "ActivateReadSetJobItem", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTime = schema.new({
            id = id.from(_N, "ActivateReadSetJobItem", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        completionTime = schema.new({
            id = id.from(_N, "ActivateReadSetJobItem", "completionTime"),
            type = "timestamp",
            name = "completionTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ActivateReadSetSourceItem = schema.new({
    id = id.from(_N, "ActivateReadSetSourceItem"),
    type = "structure",
    members = {
        readSetId = schema.new({
            id = id.from(_N, "ActivateReadSetSourceItem", "readSetId"),
            type = "string",
            name = "readSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "ActivateReadSetSourceItem", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusMessage = schema.new({
            id = id.from(_N, "ActivateReadSetSourceItem", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.AnnotationImportItemDetail = schema.new({
    id = id.from(_N, "AnnotationImportItemDetail"),
    type = "structure",
    members = {
        source = schema.new({
            id = id.from(_N, "AnnotationImportItemDetail", "source"),
            type = "string",
            name = "source",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        jobStatus = schema.new({
            id = id.from(_N, "AnnotationImportItemDetail", "jobStatus"),
            type = "string",
            name = "jobStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AnnotationImportItemSource = schema.new({
    id = id.from(_N, "AnnotationImportItemSource"),
    type = "structure",
    members = {
        source = schema.new({
            id = id.from(_N, "AnnotationImportItemSource", "source"),
            type = "string",
            name = "source",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CancelAnnotationImportJobInput = schema.new({
    id = id.from(_N, "CancelAnnotationImportRequest"),
    type = "structure",
    members = {
        jobId = schema.new({
            id = id.from(_N, "CancelAnnotationImportJobInput", "jobId"),
            type = "string",
            name = "jobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.CancelAnnotationImportJobOutput = schema.new({
    id = id.from(_N, "CancelAnnotationImportResponse"),
    type = "structure",
})

M.GetAnnotationImportJobInput = schema.new({
    id = id.from(_N, "GetAnnotationImportRequest"),
    type = "structure",
    members = {
        jobId = schema.new({
            id = id.from(_N, "GetAnnotationImportJobInput", "jobId"),
            type = "string",
            name = "jobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ReadOptions = schema.new({
    id = id.from(_N, "ReadOptions"),
    type = "structure",
    members = {
        sep = schema.new({
            id = id.from(_N, "ReadOptions", "sep"),
            type = "string",
            name = "sep",
            target_id = prelude.String.id,
        }),
        encoding = schema.new({
            id = id.from(_N, "ReadOptions", "encoding"),
            type = "string",
            name = "encoding",
            target_id = prelude.String.id,
        }),
        quote = schema.new({
            id = id.from(_N, "ReadOptions", "quote"),
            type = "string",
            name = "quote",
            target_id = prelude.String.id,
        }),
        quoteAll = schema.new({
            id = id.from(_N, "ReadOptions", "quoteAll"),
            type = "boolean",
            name = "quoteAll",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        escape = schema.new({
            id = id.from(_N, "ReadOptions", "escape"),
            type = "string",
            name = "escape",
            target_id = prelude.String.id,
        }),
        escapeQuotes = schema.new({
            id = id.from(_N, "ReadOptions", "escapeQuotes"),
            type = "boolean",
            name = "escapeQuotes",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        comment = schema.new({
            id = id.from(_N, "ReadOptions", "comment"),
            type = "string",
            name = "comment",
            target_id = prelude.String.id,
        }),
        header = schema.new({
            id = id.from(_N, "ReadOptions", "header"),
            type = "boolean",
            name = "header",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        lineSep = schema.new({
            id = id.from(_N, "ReadOptions", "lineSep"),
            type = "string",
            name = "lineSep",
            target_id = prelude.String.id,
        }),
    },
})

M.TsvOptions = schema.new({
    id = id.from(_N, "TsvOptions"),
    type = "structure",
    members = {
        readOptions = schema.new({
            id = id.from(_N, "TsvOptions", "readOptions"),
            type = "structure",
            name = "readOptions",
            target_id = id.from(_N, "ReadOptions"),
            target = M.ReadOptions,
        }),
    },
})

M.VcfOptions = schema.new({
    id = id.from(_N, "VcfOptions"),
    type = "structure",
    members = {
        ignoreQualField = schema.new({
            id = id.from(_N, "VcfOptions", "ignoreQualField"),
            type = "boolean",
            name = "ignoreQualField",
            target_id = prelude.Boolean.id,
        }),
        ignoreFilterField = schema.new({
            id = id.from(_N, "VcfOptions", "ignoreFilterField"),
            type = "boolean",
            name = "ignoreFilterField",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.FormatOptions = schema.new({
    id = id.from(_N, "FormatOptions"),
    type = "union",
    members = {
        tsvOptions = schema.new({
            id = id.from(_N, "FormatOptions", "tsvOptions"),
            type = "structure",
            name = "tsvOptions",
            target_id = id.from(_N, "TsvOptions"),
            target = M.TsvOptions,
        }),
        vcfOptions = schema.new({
            id = id.from(_N, "FormatOptions", "vcfOptions"),
            type = "structure",
            name = "vcfOptions",
            target_id = id.from(_N, "VcfOptions"),
            target = M.VcfOptions,
        }),
    },
})

M.GetAnnotationImportJobOutput = schema.new({
    id = id.from(_N, "GetAnnotationImportResponse"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetAnnotationImportJobOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destinationName = schema.new({
            id = id.from(_N, "GetAnnotationImportJobOutput", "destinationName"),
            type = "string",
            name = "destinationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        versionName = schema.new({
            id = id.from(_N, "GetAnnotationImportJobOutput", "versionName"),
            type = "string",
            name = "versionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "GetAnnotationImportJobOutput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetAnnotationImportJobOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusMessage = schema.new({
            id = id.from(_N, "GetAnnotationImportJobOutput", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTime = schema.new({
            id = id.from(_N, "GetAnnotationImportJobOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updateTime = schema.new({
            id = id.from(_N, "GetAnnotationImportJobOutput", "updateTime"),
            type = "timestamp",
            name = "updateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        completionTime = schema.new({
            id = id.from(_N, "GetAnnotationImportJobOutput", "completionTime"),
            type = "timestamp",
            name = "completionTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        items = schema.new({
            id = id.from(_N, "GetAnnotationImportJobOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.AnnotationImportItemDetail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        runLeftNormalization = schema.new({
            id = id.from(_N, "GetAnnotationImportJobOutput", "runLeftNormalization"),
            type = "boolean",
            name = "runLeftNormalization",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        formatOptions = schema.new({
            id = id.from(_N, "GetAnnotationImportJobOutput", "formatOptions"),
            type = "union",
            name = "formatOptions",
            target_id = id.from(_N, "FormatOptions"),
            target = M.FormatOptions,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        annotationFields = schema.new({
            id = id.from(_N, "GetAnnotationImportJobOutput", "annotationFields"),
            type = "map",
            name = "annotationFields",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListAnnotationImportJobsFilter = schema.new({
    id = id.from(_N, "ListAnnotationImportJobsFilter"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "ListAnnotationImportJobsFilter", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        storeName = schema.new({
            id = id.from(_N, "ListAnnotationImportJobsFilter", "storeName"),
            type = "string",
            name = "storeName",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAnnotationImportJobsInput = schema.new({
    id = id.from(_N, "ListAnnotationImportJobsRequest"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListAnnotationImportJobsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        ids = schema.new({
            id = id.from(_N, "ListAnnotationImportJobsInput", "ids"),
            type = "list",
            name = "ids",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAnnotationImportJobsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        filter = schema.new({
            id = id.from(_N, "ListAnnotationImportJobsInput", "filter"),
            type = "structure",
            name = "filter",
            target_id = id.from(_N, "ListAnnotationImportJobsFilter"),
            target = M.ListAnnotationImportJobsFilter,
        }),
    },
})

M.AnnotationImportJobItem = schema.new({
    id = id.from(_N, "AnnotationImportJobItem"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AnnotationImportJobItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destinationName = schema.new({
            id = id.from(_N, "AnnotationImportJobItem", "destinationName"),
            type = "string",
            name = "destinationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        versionName = schema.new({
            id = id.from(_N, "AnnotationImportJobItem", "versionName"),
            type = "string",
            name = "versionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "AnnotationImportJobItem", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "AnnotationImportJobItem", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTime = schema.new({
            id = id.from(_N, "AnnotationImportJobItem", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updateTime = schema.new({
            id = id.from(_N, "AnnotationImportJobItem", "updateTime"),
            type = "timestamp",
            name = "updateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        completionTime = schema.new({
            id = id.from(_N, "AnnotationImportJobItem", "completionTime"),
            type = "timestamp",
            name = "completionTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        runLeftNormalization = schema.new({
            id = id.from(_N, "AnnotationImportJobItem", "runLeftNormalization"),
            type = "boolean",
            name = "runLeftNormalization",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        annotationFields = schema.new({
            id = id.from(_N, "AnnotationImportJobItem", "annotationFields"),
            type = "map",
            name = "annotationFields",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListAnnotationImportJobsOutput = schema.new({
    id = id.from(_N, "ListAnnotationImportJobsResponse"),
    type = "structure",
    members = {
        annotationImportJobs = schema.new({
            id = id.from(_N, "ListAnnotationImportJobsOutput", "annotationImportJobs"),
            type = "list",
            name = "annotationImportJobs",
            target_id = prelude.Document.id,
            list_member = M.AnnotationImportJobItem,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAnnotationImportJobsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.StartAnnotationImportJobInput = schema.new({
    id = id.from(_N, "StartAnnotationImportRequest"),
    type = "structure",
    members = {
        destinationName = schema.new({
            id = id.from(_N, "StartAnnotationImportJobInput", "destinationName"),
            type = "string",
            name = "destinationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "StartAnnotationImportJobInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        items = schema.new({
            id = id.from(_N, "StartAnnotationImportJobInput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.AnnotationImportItemSource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        versionName = schema.new({
            id = id.from(_N, "StartAnnotationImportJobInput", "versionName"),
            type = "string",
            name = "versionName",
            target_id = prelude.String.id,
        }),
        formatOptions = schema.new({
            id = id.from(_N, "StartAnnotationImportJobInput", "formatOptions"),
            type = "union",
            name = "formatOptions",
            target_id = id.from(_N, "FormatOptions"),
            target = M.FormatOptions,
        }),
        runLeftNormalization = schema.new({
            id = id.from(_N, "StartAnnotationImportJobInput", "runLeftNormalization"),
            type = "boolean",
            name = "runLeftNormalization",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        annotationFields = schema.new({
            id = id.from(_N, "StartAnnotationImportJobInput", "annotationFields"),
            type = "map",
            name = "annotationFields",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.StartAnnotationImportJobOutput = schema.new({
    id = id.from(_N, "StartAnnotationImportResponse"),
    type = "structure",
    members = {
        jobId = schema.new({
            id = id.from(_N, "StartAnnotationImportJobOutput", "jobId"),
            type = "string",
            name = "jobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ReferenceItem = schema.new({
    id = id.from(_N, "ReferenceItem"),
    type = "union",
    members = {
        referenceArn = schema.new({
            id = id.from(_N, "ReferenceItem", "referenceArn"),
            type = "string",
            name = "referenceArn",
            target_id = prelude.String.id,
        }),
    },
})

M.SseConfig = schema.new({
    id = id.from(_N, "SseConfig"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "SseConfig", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        keyArn = schema.new({
            id = id.from(_N, "SseConfig", "keyArn"),
            type = "string",
            name = "keyArn",
            target_id = prelude.String.id,
        }),
    },
})

M.TsvStoreOptions = schema.new({
    id = id.from(_N, "TsvStoreOptions"),
    type = "structure",
    members = {
        annotationType = schema.new({
            id = id.from(_N, "TsvStoreOptions", "annotationType"),
            type = "string",
            name = "annotationType",
            target_id = prelude.String.id,
        }),
        formatToHeader = schema.new({
            id = id.from(_N, "TsvStoreOptions", "formatToHeader"),
            type = "map",
            name = "formatToHeader",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        schema = schema.new({
            id = id.from(_N, "TsvStoreOptions", "schema"),
            type = "list",
            name = "schema",
            target_id = prelude.Document.id,
            list_member = M.SchemaItem,
        }),
    },
})

M.StoreOptions = schema.new({
    id = id.from(_N, "StoreOptions"),
    type = "union",
    members = {
        tsvStoreOptions = schema.new({
            id = id.from(_N, "StoreOptions", "tsvStoreOptions"),
            type = "structure",
            name = "tsvStoreOptions",
            target_id = id.from(_N, "TsvStoreOptions"),
            target = M.TsvStoreOptions,
        }),
    },
})

M.CreateAnnotationStoreInput = schema.new({
    id = id.from(_N, "CreateAnnotationStoreRequest"),
    type = "structure",
    members = {
        reference = schema.new({
            id = id.from(_N, "CreateAnnotationStoreInput", "reference"),
            type = "union",
            name = "reference",
            target_id = id.from(_N, "ReferenceItem"),
            target = M.ReferenceItem,
        }),
        name = schema.new({
            id = id.from(_N, "CreateAnnotationStoreInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateAnnotationStoreInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateAnnotationStoreInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        versionName = schema.new({
            id = id.from(_N, "CreateAnnotationStoreInput", "versionName"),
            type = "string",
            name = "versionName",
            target_id = prelude.String.id,
        }),
        sseConfig = schema.new({
            id = id.from(_N, "CreateAnnotationStoreInput", "sseConfig"),
            type = "structure",
            name = "sseConfig",
            target_id = id.from(_N, "SseConfig"),
            target = M.SseConfig,
        }),
        storeFormat = schema.new({
            id = id.from(_N, "CreateAnnotationStoreInput", "storeFormat"),
            type = "string",
            name = "storeFormat",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        storeOptions = schema.new({
            id = id.from(_N, "CreateAnnotationStoreInput", "storeOptions"),
            type = "union",
            name = "storeOptions",
            target_id = id.from(_N, "StoreOptions"),
            target = M.StoreOptions,
        }),
    },
})

M.CreateAnnotationStoreOutput = schema.new({
    id = id.from(_N, "CreateAnnotationStoreResponse"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CreateAnnotationStoreOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        reference = schema.new({
            id = id.from(_N, "CreateAnnotationStoreOutput", "reference"),
            type = "union",
            name = "reference",
            target_id = id.from(_N, "ReferenceItem"),
            target = M.ReferenceItem,
        }),
        storeFormat = schema.new({
            id = id.from(_N, "CreateAnnotationStoreOutput", "storeFormat"),
            type = "string",
            name = "storeFormat",
            target_id = prelude.String.id,
        }),
        storeOptions = schema.new({
            id = id.from(_N, "CreateAnnotationStoreOutput", "storeOptions"),
            type = "union",
            name = "storeOptions",
            target_id = id.from(_N, "StoreOptions"),
            target = M.StoreOptions,
        }),
        status = schema.new({
            id = id.from(_N, "CreateAnnotationStoreOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateAnnotationStoreOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        versionName = schema.new({
            id = id.from(_N, "CreateAnnotationStoreOutput", "versionName"),
            type = "string",
            name = "versionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTime = schema.new({
            id = id.from(_N, "CreateAnnotationStoreOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteAnnotationStoreInput = schema.new({
    id = id.from(_N, "DeleteAnnotationStoreRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DeleteAnnotationStoreInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        force = schema.new({
            id = id.from(_N, "DeleteAnnotationStoreInput", "force"),
            type = "boolean",
            name = "force",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
                [traits.HTTP_QUERY] = { name = "force" },
            },
        }),
    },
})

M.DeleteAnnotationStoreOutput = schema.new({
    id = id.from(_N, "DeleteAnnotationStoreResponse"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "DeleteAnnotationStoreOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetAnnotationStoreInput = schema.new({
    id = id.from(_N, "GetAnnotationStoreRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "GetAnnotationStoreInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetAnnotationStoreOutput = schema.new({
    id = id.from(_N, "GetAnnotationStoreResponse"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetAnnotationStoreOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        reference = schema.new({
            id = id.from(_N, "GetAnnotationStoreOutput", "reference"),
            type = "union",
            name = "reference",
            target_id = id.from(_N, "ReferenceItem"),
            target = M.ReferenceItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetAnnotationStoreOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        storeArn = schema.new({
            id = id.from(_N, "GetAnnotationStoreOutput", "storeArn"),
            type = "string",
            name = "storeArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetAnnotationStoreOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetAnnotationStoreOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sseConfig = schema.new({
            id = id.from(_N, "GetAnnotationStoreOutput", "sseConfig"),
            type = "structure",
            name = "sseConfig",
            target_id = id.from(_N, "SseConfig"),
            target = M.SseConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTime = schema.new({
            id = id.from(_N, "GetAnnotationStoreOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updateTime = schema.new({
            id = id.from(_N, "GetAnnotationStoreOutput", "updateTime"),
            type = "timestamp",
            name = "updateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "GetAnnotationStoreOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        storeOptions = schema.new({
            id = id.from(_N, "GetAnnotationStoreOutput", "storeOptions"),
            type = "union",
            name = "storeOptions",
            target_id = id.from(_N, "StoreOptions"),
            target = M.StoreOptions,
        }),
        storeFormat = schema.new({
            id = id.from(_N, "GetAnnotationStoreOutput", "storeFormat"),
            type = "string",
            name = "storeFormat",
            target_id = prelude.String.id,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "GetAnnotationStoreOutput", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        storeSizeBytes = schema.new({
            id = id.from(_N, "GetAnnotationStoreOutput", "storeSizeBytes"),
            type = "long",
            name = "storeSizeBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        numVersions = schema.new({
            id = id.from(_N, "GetAnnotationStoreOutput", "numVersions"),
            type = "integer",
            name = "numVersions",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListAnnotationStoresFilter = schema.new({
    id = id.from(_N, "ListAnnotationStoresFilter"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "ListAnnotationStoresFilter", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAnnotationStoresInput = schema.new({
    id = id.from(_N, "ListAnnotationStoresRequest"),
    type = "structure",
    members = {
        ids = schema.new({
            id = id.from(_N, "ListAnnotationStoresInput", "ids"),
            type = "list",
            name = "ids",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAnnotationStoresInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAnnotationStoresInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        filter = schema.new({
            id = id.from(_N, "ListAnnotationStoresInput", "filter"),
            type = "structure",
            name = "filter",
            target_id = id.from(_N, "ListAnnotationStoresFilter"),
            target = M.ListAnnotationStoresFilter,
        }),
    },
})

M.AnnotationStoreItem = schema.new({
    id = id.from(_N, "AnnotationStoreItem"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AnnotationStoreItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        reference = schema.new({
            id = id.from(_N, "AnnotationStoreItem", "reference"),
            type = "union",
            name = "reference",
            target_id = id.from(_N, "ReferenceItem"),
            target = M.ReferenceItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "AnnotationStoreItem", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        storeArn = schema.new({
            id = id.from(_N, "AnnotationStoreItem", "storeArn"),
            type = "string",
            name = "storeArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "AnnotationStoreItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        storeFormat = schema.new({
            id = id.from(_N, "AnnotationStoreItem", "storeFormat"),
            type = "string",
            name = "storeFormat",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "AnnotationStoreItem", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sseConfig = schema.new({
            id = id.from(_N, "AnnotationStoreItem", "sseConfig"),
            type = "structure",
            name = "sseConfig",
            target_id = id.from(_N, "SseConfig"),
            target = M.SseConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTime = schema.new({
            id = id.from(_N, "AnnotationStoreItem", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updateTime = schema.new({
            id = id.from(_N, "AnnotationStoreItem", "updateTime"),
            type = "timestamp",
            name = "updateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusMessage = schema.new({
            id = id.from(_N, "AnnotationStoreItem", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        storeSizeBytes = schema.new({
            id = id.from(_N, "AnnotationStoreItem", "storeSizeBytes"),
            type = "long",
            name = "storeSizeBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListAnnotationStoresOutput = schema.new({
    id = id.from(_N, "ListAnnotationStoresResponse"),
    type = "structure",
    members = {
        annotationStores = schema.new({
            id = id.from(_N, "ListAnnotationStoresOutput", "annotationStores"),
            type = "list",
            name = "annotationStores",
            target_id = prelude.Document.id,
            list_member = M.AnnotationStoreItem,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAnnotationStoresOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateAnnotationStoreInput = schema.new({
    id = id.from(_N, "UpdateAnnotationStoreRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "UpdateAnnotationStoreInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateAnnotationStoreInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateAnnotationStoreOutput = schema.new({
    id = id.from(_N, "UpdateAnnotationStoreResponse"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateAnnotationStoreOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        reference = schema.new({
            id = id.from(_N, "UpdateAnnotationStoreOutput", "reference"),
            type = "union",
            name = "reference",
            target_id = id.from(_N, "ReferenceItem"),
            target = M.ReferenceItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdateAnnotationStoreOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateAnnotationStoreOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateAnnotationStoreOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTime = schema.new({
            id = id.from(_N, "UpdateAnnotationStoreOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updateTime = schema.new({
            id = id.from(_N, "UpdateAnnotationStoreOutput", "updateTime"),
            type = "timestamp",
            name = "updateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        storeOptions = schema.new({
            id = id.from(_N, "UpdateAnnotationStoreOutput", "storeOptions"),
            type = "union",
            name = "storeOptions",
            target_id = id.from(_N, "StoreOptions"),
            target = M.StoreOptions,
        }),
        storeFormat = schema.new({
            id = id.from(_N, "UpdateAnnotationStoreOutput", "storeFormat"),
            type = "string",
            name = "storeFormat",
            target_id = prelude.String.id,
        }),
    },
})

M.TsvVersionOptions = schema.new({
    id = id.from(_N, "TsvVersionOptions"),
    type = "structure",
    members = {
        annotationType = schema.new({
            id = id.from(_N, "TsvVersionOptions", "annotationType"),
            type = "string",
            name = "annotationType",
            target_id = prelude.String.id,
        }),
        formatToHeader = schema.new({
            id = id.from(_N, "TsvVersionOptions", "formatToHeader"),
            type = "map",
            name = "formatToHeader",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        schema = schema.new({
            id = id.from(_N, "TsvVersionOptions", "schema"),
            type = "list",
            name = "schema",
            target_id = prelude.Document.id,
            list_member = M.SchemaItem,
        }),
    },
})

M.VersionOptions = schema.new({
    id = id.from(_N, "VersionOptions"),
    type = "union",
    members = {
        tsvVersionOptions = schema.new({
            id = id.from(_N, "VersionOptions", "tsvVersionOptions"),
            type = "structure",
            name = "tsvVersionOptions",
            target_id = id.from(_N, "TsvVersionOptions"),
            target = M.TsvVersionOptions,
        }),
    },
})

M.CreateAnnotationStoreVersionInput = schema.new({
    id = id.from(_N, "CreateAnnotationStoreVersionRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateAnnotationStoreVersionInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        versionName = schema.new({
            id = id.from(_N, "CreateAnnotationStoreVersionInput", "versionName"),
            type = "string",
            name = "versionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateAnnotationStoreVersionInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        versionOptions = schema.new({
            id = id.from(_N, "CreateAnnotationStoreVersionInput", "versionOptions"),
            type = "union",
            name = "versionOptions",
            target_id = id.from(_N, "VersionOptions"),
            target = M.VersionOptions,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateAnnotationStoreVersionInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateAnnotationStoreVersionOutput = schema.new({
    id = id.from(_N, "CreateAnnotationStoreVersionResponse"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CreateAnnotationStoreVersionOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        versionName = schema.new({
            id = id.from(_N, "CreateAnnotationStoreVersionOutput", "versionName"),
            type = "string",
            name = "versionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        storeId = schema.new({
            id = id.from(_N, "CreateAnnotationStoreVersionOutput", "storeId"),
            type = "string",
            name = "storeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        versionOptions = schema.new({
            id = id.from(_N, "CreateAnnotationStoreVersionOutput", "versionOptions"),
            type = "union",
            name = "versionOptions",
            target_id = id.from(_N, "VersionOptions"),
            target = M.VersionOptions,
        }),
        name = schema.new({
            id = id.from(_N, "CreateAnnotationStoreVersionOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "CreateAnnotationStoreVersionOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTime = schema.new({
            id = id.from(_N, "CreateAnnotationStoreVersionOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteAnnotationStoreVersionsInput = schema.new({
    id = id.from(_N, "DeleteAnnotationStoreVersionsRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DeleteAnnotationStoreVersionsInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        versions = schema.new({
            id = id.from(_N, "DeleteAnnotationStoreVersionsInput", "versions"),
            type = "list",
            name = "versions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        force = schema.new({
            id = id.from(_N, "DeleteAnnotationStoreVersionsInput", "force"),
            type = "boolean",
            name = "force",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
                [traits.HTTP_QUERY] = { name = "force" },
            },
        }),
    },
})

M.VersionDeleteError = schema.new({
    id = id.from(_N, "VersionDeleteError"),
    type = "structure",
    members = {
        versionName = schema.new({
            id = id.from(_N, "VersionDeleteError", "versionName"),
            type = "string",
            name = "versionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        message = schema.new({
            id = id.from(_N, "VersionDeleteError", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteAnnotationStoreVersionsOutput = schema.new({
    id = id.from(_N, "DeleteAnnotationStoreVersionsResponse"),
    type = "structure",
    members = {
        errors = schema.new({
            id = id.from(_N, "DeleteAnnotationStoreVersionsOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.VersionDeleteError,
        }),
    },
})

M.GetAnnotationStoreVersionInput = schema.new({
    id = id.from(_N, "GetAnnotationStoreVersionRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "GetAnnotationStoreVersionInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        versionName = schema.new({
            id = id.from(_N, "GetAnnotationStoreVersionInput", "versionName"),
            type = "string",
            name = "versionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetAnnotationStoreVersionOutput = schema.new({
    id = id.from(_N, "GetAnnotationStoreVersionResponse"),
    type = "structure",
    members = {
        storeId = schema.new({
            id = id.from(_N, "GetAnnotationStoreVersionOutput", "storeId"),
            type = "string",
            name = "storeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "GetAnnotationStoreVersionOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetAnnotationStoreVersionOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        versionArn = schema.new({
            id = id.from(_N, "GetAnnotationStoreVersionOutput", "versionArn"),
            type = "string",
            name = "versionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetAnnotationStoreVersionOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        versionName = schema.new({
            id = id.from(_N, "GetAnnotationStoreVersionOutput", "versionName"),
            type = "string",
            name = "versionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetAnnotationStoreVersionOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTime = schema.new({
            id = id.from(_N, "GetAnnotationStoreVersionOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updateTime = schema.new({
            id = id.from(_N, "GetAnnotationStoreVersionOutput", "updateTime"),
            type = "timestamp",
            name = "updateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "GetAnnotationStoreVersionOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        versionOptions = schema.new({
            id = id.from(_N, "GetAnnotationStoreVersionOutput", "versionOptions"),
            type = "union",
            name = "versionOptions",
            target_id = id.from(_N, "VersionOptions"),
            target = M.VersionOptions,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "GetAnnotationStoreVersionOutput", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        versionSizeBytes = schema.new({
            id = id.from(_N, "GetAnnotationStoreVersionOutput", "versionSizeBytes"),
            type = "long",
            name = "versionSizeBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListAnnotationStoreVersionsFilter = schema.new({
    id = id.from(_N, "ListAnnotationStoreVersionsFilter"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "ListAnnotationStoreVersionsFilter", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAnnotationStoreVersionsInput = schema.new({
    id = id.from(_N, "ListAnnotationStoreVersionsRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ListAnnotationStoreVersionsInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAnnotationStoreVersionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAnnotationStoreVersionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        filter = schema.new({
            id = id.from(_N, "ListAnnotationStoreVersionsInput", "filter"),
            type = "structure",
            name = "filter",
            target_id = id.from(_N, "ListAnnotationStoreVersionsFilter"),
            target = M.ListAnnotationStoreVersionsFilter,
        }),
    },
})

M.AnnotationStoreVersionItem = schema.new({
    id = id.from(_N, "AnnotationStoreVersionItem"),
    type = "structure",
    members = {
        storeId = schema.new({
            id = id.from(_N, "AnnotationStoreVersionItem", "storeId"),
            type = "string",
            name = "storeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "AnnotationStoreVersionItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "AnnotationStoreVersionItem", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        versionArn = schema.new({
            id = id.from(_N, "AnnotationStoreVersionItem", "versionArn"),
            type = "string",
            name = "versionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "AnnotationStoreVersionItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        versionName = schema.new({
            id = id.from(_N, "AnnotationStoreVersionItem", "versionName"),
            type = "string",
            name = "versionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "AnnotationStoreVersionItem", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTime = schema.new({
            id = id.from(_N, "AnnotationStoreVersionItem", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updateTime = schema.new({
            id = id.from(_N, "AnnotationStoreVersionItem", "updateTime"),
            type = "timestamp",
            name = "updateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusMessage = schema.new({
            id = id.from(_N, "AnnotationStoreVersionItem", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        versionSizeBytes = schema.new({
            id = id.from(_N, "AnnotationStoreVersionItem", "versionSizeBytes"),
            type = "long",
            name = "versionSizeBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListAnnotationStoreVersionsOutput = schema.new({
    id = id.from(_N, "ListAnnotationStoreVersionsResponse"),
    type = "structure",
    members = {
        annotationStoreVersions = schema.new({
            id = id.from(_N, "ListAnnotationStoreVersionsOutput", "annotationStoreVersions"),
            type = "list",
            name = "annotationStoreVersions",
            target_id = prelude.Document.id,
            list_member = M.AnnotationStoreVersionItem,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAnnotationStoreVersionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateAnnotationStoreVersionInput = schema.new({
    id = id.from(_N, "UpdateAnnotationStoreVersionRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "UpdateAnnotationStoreVersionInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        versionName = schema.new({
            id = id.from(_N, "UpdateAnnotationStoreVersionInput", "versionName"),
            type = "string",
            name = "versionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateAnnotationStoreVersionInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateAnnotationStoreVersionOutput = schema.new({
    id = id.from(_N, "UpdateAnnotationStoreVersionResponse"),
    type = "structure",
    members = {
        storeId = schema.new({
            id = id.from(_N, "UpdateAnnotationStoreVersionOutput", "storeId"),
            type = "string",
            name = "storeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "UpdateAnnotationStoreVersionOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdateAnnotationStoreVersionOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateAnnotationStoreVersionOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        versionName = schema.new({
            id = id.from(_N, "UpdateAnnotationStoreVersionOutput", "versionName"),
            type = "string",
            name = "versionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateAnnotationStoreVersionOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTime = schema.new({
            id = id.from(_N, "UpdateAnnotationStoreVersionOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updateTime = schema.new({
            id = id.from(_N, "UpdateAnnotationStoreVersionOutput", "updateTime"),
            type = "timestamp",
            name = "updateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchDeleteReadSetInput = schema.new({
    id = id.from(_N, "BatchDeleteReadSetRequest"),
    type = "structure",
    members = {
        ids = schema.new({
            id = id.from(_N, "BatchDeleteReadSetInput", "ids"),
            type = "list",
            name = "ids",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sequenceStoreId = schema.new({
            id = id.from(_N, "BatchDeleteReadSetInput", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ReadSetBatchError = schema.new({
    id = id.from(_N, "ReadSetBatchError"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ReadSetBatchError", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        code = schema.new({
            id = id.from(_N, "ReadSetBatchError", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        message = schema.new({
            id = id.from(_N, "ReadSetBatchError", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchDeleteReadSetOutput = schema.new({
    id = id.from(_N, "BatchDeleteReadSetResponse"),
    type = "structure",
    members = {
        errors = schema.new({
            id = id.from(_N, "BatchDeleteReadSetOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.ReadSetBatchError,
        }),
    },
})

M.BatchListItem = schema.new({
    id = id.from(_N, "BatchListItem"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "BatchListItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "BatchListItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "BatchListItem", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "BatchListItem", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        totalRuns = schema.new({
            id = id.from(_N, "BatchListItem", "totalRuns"),
            type = "integer",
            name = "totalRuns",
            target_id = prelude.Integer.id,
        }),
        workflowId = schema.new({
            id = id.from(_N, "BatchListItem", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
        }),
    },
})

M.InlineSetting = schema.new({
    id = id.from(_N, "InlineSetting"),
    type = "structure",
    members = {
        runSettingId = schema.new({
            id = id.from(_N, "InlineSetting", "runSettingId"),
            type = "string",
            name = "runSettingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "InlineSetting", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        outputUri = schema.new({
            id = id.from(_N, "InlineSetting", "outputUri"),
            type = "string",
            name = "outputUri",
            target_id = prelude.String.id,
        }),
        priority = schema.new({
            id = id.from(_N, "InlineSetting", "priority"),
            type = "integer",
            name = "priority",
            target_id = prelude.Integer.id,
        }),
        parameters = schema.new({
            id = id.from(_N, "InlineSetting", "parameters"),
            type = "document",
            name = "parameters",
            target_id = prelude.Document.id,
        }),
        outputBucketOwnerId = schema.new({
            id = id.from(_N, "InlineSetting", "outputBucketOwnerId"),
            type = "string",
            name = "outputBucketOwnerId",
            target_id = prelude.String.id,
        }),
        runTags = schema.new({
            id = id.from(_N, "InlineSetting", "runTags"),
            type = "map",
            name = "runTags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.BatchRunSettings = schema.new({
    id = id.from(_N, "BatchRunSettings"),
    type = "union",
    members = {
        inlineSettings = schema.new({
            id = id.from(_N, "BatchRunSettings", "inlineSettings"),
            type = "list",
            name = "inlineSettings",
            target_id = prelude.Document.id,
            list_member = M.InlineSetting,
        }),
        s3UriSettings = schema.new({
            id = id.from(_N, "BatchRunSettings", "s3UriSettings"),
            type = "string",
            name = "s3UriSettings",
            target_id = prelude.String.id,
        }),
    },
})

M.CancelRunInput = schema.new({
    id = id.from(_N, "CancelRunRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CancelRunInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.CancelRunOutput = prelude.Unit

M.CancelRunBatchInput = schema.new({
    id = id.from(_N, "CancelRunBatchRequest"),
    type = "structure",
    members = {
        batchId = schema.new({
            id = id.from(_N, "CancelRunBatchInput", "batchId"),
            type = "string",
            name = "batchId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CancelRunBatchOutput = schema.new({
    id = id.from(_N, "CancelRunBatchResponse"),
    type = "structure",
})

M.CancelVariantImportJobInput = schema.new({
    id = id.from(_N, "CancelVariantImportRequest"),
    type = "structure",
    members = {
        jobId = schema.new({
            id = id.from(_N, "CancelVariantImportJobInput", "jobId"),
            type = "string",
            name = "jobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.CancelVariantImportJobOutput = schema.new({
    id = id.from(_N, "CancelVariantImportResponse"),
    type = "structure",
})

M.CompleteReadSetUploadPartListItem = schema.new({
    id = id.from(_N, "CompleteReadSetUploadPartListItem"),
    type = "structure",
    members = {
        partNumber = schema.new({
            id = id.from(_N, "CompleteReadSetUploadPartListItem", "partNumber"),
            type = "integer",
            name = "partNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        partSource = schema.new({
            id = id.from(_N, "CompleteReadSetUploadPartListItem", "partSource"),
            type = "string",
            name = "partSource",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        checksum = schema.new({
            id = id.from(_N, "CompleteReadSetUploadPartListItem", "checksum"),
            type = "string",
            name = "checksum",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CompleteMultipartReadSetUploadInput = schema.new({
    id = id.from(_N, "CompleteMultipartReadSetUploadRequest"),
    type = "structure",
    members = {
        sequenceStoreId = schema.new({
            id = id.from(_N, "CompleteMultipartReadSetUploadInput", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        uploadId = schema.new({
            id = id.from(_N, "CompleteMultipartReadSetUploadInput", "uploadId"),
            type = "string",
            name = "uploadId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        parts = schema.new({
            id = id.from(_N, "CompleteMultipartReadSetUploadInput", "parts"),
            type = "list",
            name = "parts",
            target_id = prelude.Document.id,
            list_member = M.CompleteReadSetUploadPartListItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CompleteMultipartReadSetUploadOutput = schema.new({
    id = id.from(_N, "CompleteMultipartReadSetUploadResponse"),
    type = "structure",
    members = {
        readSetId = schema.new({
            id = id.from(_N, "CompleteMultipartReadSetUploadOutput", "readSetId"),
            type = "string",
            name = "readSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConfigurationDetails = schema.new({
    id = id.from(_N, "ConfigurationDetails"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ConfigurationDetails", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "ConfigurationDetails", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        uuid = schema.new({
            id = id.from(_N, "ConfigurationDetails", "uuid"),
            type = "string",
            name = "uuid",
            target_id = prelude.String.id,
        }),
    },
})

M.ConfigurationListItem = schema.new({
    id = id.from(_N, "ConfigurationListItem"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "ConfigurationListItem", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "ConfigurationListItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "ConfigurationListItem", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "ConfigurationListItem", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "ConfigurationListItem", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.VpcConfig = schema.new({
    id = id.from(_N, "VpcConfig"),
    type = "structure",
    members = {
        securityGroupIds = schema.new({
            id = id.from(_N, "VpcConfig", "securityGroupIds"),
            type = "list",
            name = "securityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        subnetIds = schema.new({
            id = id.from(_N, "VpcConfig", "subnetIds"),
            type = "list",
            name = "subnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.RunConfigurations = schema.new({
    id = id.from(_N, "RunConfigurations"),
    type = "structure",
    members = {
        vpcConfig = schema.new({
            id = id.from(_N, "RunConfigurations", "vpcConfig"),
            type = "structure",
            name = "vpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
    },
})

M.CreateConfigurationInput = schema.new({
    id = id.from(_N, "CreateConfigurationRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateConfigurationInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateConfigurationInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        runConfigurations = schema.new({
            id = id.from(_N, "CreateConfigurationInput", "runConfigurations"),
            type = "structure",
            name = "runConfigurations",
            target_id = id.from(_N, "RunConfigurations"),
            target = M.RunConfigurations,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateConfigurationInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        requestId = schema.new({
            id = id.from(_N, "CreateConfigurationInput", "requestId"),
            type = "string",
            name = "requestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.VpcConfigResponse = schema.new({
    id = id.from(_N, "VpcConfigResponse"),
    type = "structure",
    members = {
        securityGroupIds = schema.new({
            id = id.from(_N, "VpcConfigResponse", "securityGroupIds"),
            type = "list",
            name = "securityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        subnetIds = schema.new({
            id = id.from(_N, "VpcConfigResponse", "subnetIds"),
            type = "list",
            name = "subnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        vpcId = schema.new({
            id = id.from(_N, "VpcConfigResponse", "vpcId"),
            type = "string",
            name = "vpcId",
            target_id = prelude.String.id,
        }),
    },
})

M.RunConfigurationsResponse = schema.new({
    id = id.from(_N, "RunConfigurationsResponse"),
    type = "structure",
    members = {
        vpcConfig = schema.new({
            id = id.from(_N, "RunConfigurationsResponse", "vpcConfig"),
            type = "structure",
            name = "vpcConfig",
            target_id = id.from(_N, "VpcConfigResponse"),
            target = M.VpcConfigResponse,
        }),
    },
})

M.CreateConfigurationOutput = schema.new({
    id = id.from(_N, "CreateConfigurationResponse"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "CreateConfigurationOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        uuid = schema.new({
            id = id.from(_N, "CreateConfigurationOutput", "uuid"),
            type = "string",
            name = "uuid",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CreateConfigurationOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateConfigurationOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        runConfigurations = schema.new({
            id = id.from(_N, "CreateConfigurationOutput", "runConfigurations"),
            type = "structure",
            name = "runConfigurations",
            target_id = id.from(_N, "RunConfigurationsResponse"),
            target = M.RunConfigurationsResponse,
        }),
        status = schema.new({
            id = id.from(_N, "CreateConfigurationOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "CreateConfigurationOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateConfigurationOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.DeleteConfigurationInput = schema.new({
    id = id.from(_N, "DeleteConfigurationRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DeleteConfigurationInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteConfigurationOutput = prelude.Unit

M.GetConfigurationInput = schema.new({
    id = id.from(_N, "GetConfigurationRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "GetConfigurationInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetConfigurationOutput = schema.new({
    id = id.from(_N, "GetConfigurationResponse"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "GetConfigurationOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        uuid = schema.new({
            id = id.from(_N, "GetConfigurationOutput", "uuid"),
            type = "string",
            name = "uuid",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetConfigurationOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetConfigurationOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        runConfigurations = schema.new({
            id = id.from(_N, "GetConfigurationOutput", "runConfigurations"),
            type = "structure",
            name = "runConfigurations",
            target_id = id.from(_N, "RunConfigurationsResponse"),
            target = M.RunConfigurationsResponse,
        }),
        status = schema.new({
            id = id.from(_N, "GetConfigurationOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "GetConfigurationOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        tags = schema.new({
            id = id.from(_N, "GetConfigurationOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListConfigurationsInput = schema.new({
    id = id.from(_N, "ListConfigurationsRequest"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListConfigurationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        startingToken = schema.new({
            id = id.from(_N, "ListConfigurationsInput", "startingToken"),
            type = "string",
            name = "startingToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "startingToken" },
            },
        }),
    },
})

M.ListConfigurationsOutput = schema.new({
    id = id.from(_N, "ListConfigurationsResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListConfigurationsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.ConfigurationListItem,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListConfigurationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ImageMapping = schema.new({
    id = id.from(_N, "ImageMapping"),
    type = "structure",
    members = {
        sourceImage = schema.new({
            id = id.from(_N, "ImageMapping", "sourceImage"),
            type = "string",
            name = "sourceImage",
            target_id = prelude.String.id,
        }),
        destinationImage = schema.new({
            id = id.from(_N, "ImageMapping", "destinationImage"),
            type = "string",
            name = "destinationImage",
            target_id = prelude.String.id,
        }),
    },
})

M.RegistryMapping = schema.new({
    id = id.from(_N, "RegistryMapping"),
    type = "structure",
    members = {
        upstreamRegistryUrl = schema.new({
            id = id.from(_N, "RegistryMapping", "upstreamRegistryUrl"),
            type = "string",
            name = "upstreamRegistryUrl",
            target_id = prelude.String.id,
        }),
        ecrRepositoryPrefix = schema.new({
            id = id.from(_N, "RegistryMapping", "ecrRepositoryPrefix"),
            type = "string",
            name = "ecrRepositoryPrefix",
            target_id = prelude.String.id,
        }),
        upstreamRepositoryPrefix = schema.new({
            id = id.from(_N, "RegistryMapping", "upstreamRepositoryPrefix"),
            type = "string",
            name = "upstreamRepositoryPrefix",
            target_id = prelude.String.id,
        }),
        ecrAccountId = schema.new({
            id = id.from(_N, "RegistryMapping", "ecrAccountId"),
            type = "string",
            name = "ecrAccountId",
            target_id = prelude.String.id,
        }),
    },
})

M.ContainerRegistryMap = schema.new({
    id = id.from(_N, "ContainerRegistryMap"),
    type = "structure",
    members = {
        registryMappings = schema.new({
            id = id.from(_N, "ContainerRegistryMap", "registryMappings"),
            type = "list",
            name = "registryMappings",
            target_id = prelude.Document.id,
            list_member = M.RegistryMapping,
        }),
        imageMappings = schema.new({
            id = id.from(_N, "ContainerRegistryMap", "imageMappings"),
            type = "list",
            name = "imageMappings",
            target_id = prelude.Document.id,
            list_member = M.ImageMapping,
        }),
    },
})

M.CreateMultipartReadSetUploadInput = schema.new({
    id = id.from(_N, "CreateMultipartReadSetUploadRequest"),
    type = "structure",
    members = {
        sequenceStoreId = schema.new({
            id = id.from(_N, "CreateMultipartReadSetUploadInput", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateMultipartReadSetUploadInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
        }),
        sourceFileType = schema.new({
            id = id.from(_N, "CreateMultipartReadSetUploadInput", "sourceFileType"),
            type = "string",
            name = "sourceFileType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        subjectId = schema.new({
            id = id.from(_N, "CreateMultipartReadSetUploadInput", "subjectId"),
            type = "string",
            name = "subjectId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sampleId = schema.new({
            id = id.from(_N, "CreateMultipartReadSetUploadInput", "sampleId"),
            type = "string",
            name = "sampleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        generatedFrom = schema.new({
            id = id.from(_N, "CreateMultipartReadSetUploadInput", "generatedFrom"),
            type = "string",
            name = "generatedFrom",
            target_id = prelude.String.id,
        }),
        referenceArn = schema.new({
            id = id.from(_N, "CreateMultipartReadSetUploadInput", "referenceArn"),
            type = "string",
            name = "referenceArn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CreateMultipartReadSetUploadInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateMultipartReadSetUploadInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateMultipartReadSetUploadInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateMultipartReadSetUploadOutput = schema.new({
    id = id.from(_N, "CreateMultipartReadSetUploadResponse"),
    type = "structure",
    members = {
        sequenceStoreId = schema.new({
            id = id.from(_N, "CreateMultipartReadSetUploadOutput", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        uploadId = schema.new({
            id = id.from(_N, "CreateMultipartReadSetUploadOutput", "uploadId"),
            type = "string",
            name = "uploadId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceFileType = schema.new({
            id = id.from(_N, "CreateMultipartReadSetUploadOutput", "sourceFileType"),
            type = "string",
            name = "sourceFileType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        subjectId = schema.new({
            id = id.from(_N, "CreateMultipartReadSetUploadOutput", "subjectId"),
            type = "string",
            name = "subjectId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sampleId = schema.new({
            id = id.from(_N, "CreateMultipartReadSetUploadOutput", "sampleId"),
            type = "string",
            name = "sampleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        generatedFrom = schema.new({
            id = id.from(_N, "CreateMultipartReadSetUploadOutput", "generatedFrom"),
            type = "string",
            name = "generatedFrom",
            target_id = prelude.String.id,
        }),
        referenceArn = schema.new({
            id = id.from(_N, "CreateMultipartReadSetUploadOutput", "referenceArn"),
            type = "string",
            name = "referenceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateMultipartReadSetUploadOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateMultipartReadSetUploadOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateMultipartReadSetUploadOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        creationTime = schema.new({
            id = id.from(_N, "CreateMultipartReadSetUploadOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.CreateReferenceStoreInput = schema.new({
    id = id.from(_N, "CreateReferenceStoreRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateReferenceStoreInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateReferenceStoreInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        sseConfig = schema.new({
            id = id.from(_N, "CreateReferenceStoreInput", "sseConfig"),
            type = "structure",
            name = "sseConfig",
            target_id = id.from(_N, "SseConfig"),
            target = M.SseConfig,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateReferenceStoreInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateReferenceStoreInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateReferenceStoreOutput = schema.new({
    id = id.from(_N, "CreateReferenceStoreResponse"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CreateReferenceStoreOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "CreateReferenceStoreOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateReferenceStoreOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateReferenceStoreOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        sseConfig = schema.new({
            id = id.from(_N, "CreateReferenceStoreOutput", "sseConfig"),
            type = "structure",
            name = "sseConfig",
            target_id = id.from(_N, "SseConfig"),
            target = M.SseConfig,
        }),
        creationTime = schema.new({
            id = id.from(_N, "CreateReferenceStoreOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.CreateRunCacheInput = schema.new({
    id = id.from(_N, "CreateRunCacheRequest"),
    type = "structure",
    members = {
        cacheBehavior = schema.new({
            id = id.from(_N, "CreateRunCacheInput", "cacheBehavior"),
            type = "string",
            name = "cacheBehavior",
            target_id = prelude.String.id,
        }),
        cacheS3Location = schema.new({
            id = id.from(_N, "CreateRunCacheInput", "cacheS3Location"),
            type = "string",
            name = "cacheS3Location",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateRunCacheInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CreateRunCacheInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        requestId = schema.new({
            id = id.from(_N, "CreateRunCacheInput", "requestId"),
            type = "string",
            name = "requestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateRunCacheInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        cacheBucketOwnerId = schema.new({
            id = id.from(_N, "CreateRunCacheInput", "cacheBucketOwnerId"),
            type = "string",
            name = "cacheBucketOwnerId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateRunCacheOutput = schema.new({
    id = id.from(_N, "CreateRunCacheResponse"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "CreateRunCacheOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "CreateRunCacheOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "CreateRunCacheOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateRunCacheOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateRunGroupInput = schema.new({
    id = id.from(_N, "CreateRunGroupRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateRunGroupInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        maxCpus = schema.new({
            id = id.from(_N, "CreateRunGroupInput", "maxCpus"),
            type = "integer",
            name = "maxCpus",
            target_id = prelude.Integer.id,
        }),
        maxRuns = schema.new({
            id = id.from(_N, "CreateRunGroupInput", "maxRuns"),
            type = "integer",
            name = "maxRuns",
            target_id = prelude.Integer.id,
        }),
        maxDuration = schema.new({
            id = id.from(_N, "CreateRunGroupInput", "maxDuration"),
            type = "integer",
            name = "maxDuration",
            target_id = prelude.Integer.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateRunGroupInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        requestId = schema.new({
            id = id.from(_N, "CreateRunGroupInput", "requestId"),
            type = "string",
            name = "requestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        maxGpus = schema.new({
            id = id.from(_N, "CreateRunGroupInput", "maxGpus"),
            type = "integer",
            name = "maxGpus",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CreateRunGroupOutput = schema.new({
    id = id.from(_N, "CreateRunGroupResponse"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "CreateRunGroupOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "CreateRunGroupOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateRunGroupOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.S3AccessConfig = schema.new({
    id = id.from(_N, "S3AccessConfig"),
    type = "structure",
    members = {
        accessLogLocation = schema.new({
            id = id.from(_N, "S3AccessConfig", "accessLogLocation"),
            type = "string",
            name = "accessLogLocation",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateSequenceStoreInput = schema.new({
    id = id.from(_N, "CreateSequenceStoreRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateSequenceStoreInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateSequenceStoreInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        sseConfig = schema.new({
            id = id.from(_N, "CreateSequenceStoreInput", "sseConfig"),
            type = "structure",
            name = "sseConfig",
            target_id = id.from(_N, "SseConfig"),
            target = M.SseConfig,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateSequenceStoreInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateSequenceStoreInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        fallbackLocation = schema.new({
            id = id.from(_N, "CreateSequenceStoreInput", "fallbackLocation"),
            type = "string",
            name = "fallbackLocation",
            target_id = prelude.String.id,
        }),
        eTagAlgorithmFamily = schema.new({
            id = id.from(_N, "CreateSequenceStoreInput", "eTagAlgorithmFamily"),
            type = "string",
            name = "eTagAlgorithmFamily",
            target_id = prelude.String.id,
        }),
        propagatedSetLevelTags = schema.new({
            id = id.from(_N, "CreateSequenceStoreInput", "propagatedSetLevelTags"),
            type = "list",
            name = "propagatedSetLevelTags",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        s3AccessConfig = schema.new({
            id = id.from(_N, "CreateSequenceStoreInput", "s3AccessConfig"),
            type = "structure",
            name = "s3AccessConfig",
            target_id = id.from(_N, "S3AccessConfig"),
            target = M.S3AccessConfig,
        }),
    },
})

M.SequenceStoreS3Access = schema.new({
    id = id.from(_N, "SequenceStoreS3Access"),
    type = "structure",
    members = {
        s3Uri = schema.new({
            id = id.from(_N, "SequenceStoreS3Access", "s3Uri"),
            type = "string",
            name = "s3Uri",
            target_id = prelude.String.id,
        }),
        s3AccessPointArn = schema.new({
            id = id.from(_N, "SequenceStoreS3Access", "s3AccessPointArn"),
            type = "string",
            name = "s3AccessPointArn",
            target_id = prelude.String.id,
        }),
        accessLogLocation = schema.new({
            id = id.from(_N, "SequenceStoreS3Access", "accessLogLocation"),
            type = "string",
            name = "accessLogLocation",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateSequenceStoreOutput = schema.new({
    id = id.from(_N, "CreateSequenceStoreResponse"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CreateSequenceStoreOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "CreateSequenceStoreOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateSequenceStoreOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateSequenceStoreOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        sseConfig = schema.new({
            id = id.from(_N, "CreateSequenceStoreOutput", "sseConfig"),
            type = "structure",
            name = "sseConfig",
            target_id = id.from(_N, "SseConfig"),
            target = M.SseConfig,
        }),
        creationTime = schema.new({
            id = id.from(_N, "CreateSequenceStoreOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        fallbackLocation = schema.new({
            id = id.from(_N, "CreateSequenceStoreOutput", "fallbackLocation"),
            type = "string",
            name = "fallbackLocation",
            target_id = prelude.String.id,
        }),
        eTagAlgorithmFamily = schema.new({
            id = id.from(_N, "CreateSequenceStoreOutput", "eTagAlgorithmFamily"),
            type = "string",
            name = "eTagAlgorithmFamily",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "CreateSequenceStoreOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "CreateSequenceStoreOutput", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        propagatedSetLevelTags = schema.new({
            id = id.from(_N, "CreateSequenceStoreOutput", "propagatedSetLevelTags"),
            type = "list",
            name = "propagatedSetLevelTags",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        s3Access = schema.new({
            id = id.from(_N, "CreateSequenceStoreOutput", "s3Access"),
            type = "structure",
            name = "s3Access",
            target_id = id.from(_N, "SequenceStoreS3Access"),
            target = M.SequenceStoreS3Access,
        }),
    },
})

M.CreateShareInput = schema.new({
    id = id.from(_N, "CreateShareRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "CreateShareInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        principalSubscriber = schema.new({
            id = id.from(_N, "CreateShareInput", "principalSubscriber"),
            type = "string",
            name = "principalSubscriber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        shareName = schema.new({
            id = id.from(_N, "CreateShareInput", "shareName"),
            type = "string",
            name = "shareName",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateShareOutput = schema.new({
    id = id.from(_N, "CreateShareResponse"),
    type = "structure",
    members = {
        shareId = schema.new({
            id = id.from(_N, "CreateShareOutput", "shareId"),
            type = "string",
            name = "shareId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "CreateShareOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        shareName = schema.new({
            id = id.from(_N, "CreateShareOutput", "shareName"),
            type = "string",
            name = "shareName",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateVariantStoreInput = schema.new({
    id = id.from(_N, "CreateVariantStoreRequest"),
    type = "structure",
    members = {
        reference = schema.new({
            id = id.from(_N, "CreateVariantStoreInput", "reference"),
            type = "union",
            name = "reference",
            target_id = id.from(_N, "ReferenceItem"),
            target = M.ReferenceItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateVariantStoreInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateVariantStoreInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateVariantStoreInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        sseConfig = schema.new({
            id = id.from(_N, "CreateVariantStoreInput", "sseConfig"),
            type = "structure",
            name = "sseConfig",
            target_id = id.from(_N, "SseConfig"),
            target = M.SseConfig,
        }),
    },
})

M.CreateVariantStoreOutput = schema.new({
    id = id.from(_N, "CreateVariantStoreResponse"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CreateVariantStoreOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        reference = schema.new({
            id = id.from(_N, "CreateVariantStoreOutput", "reference"),
            type = "union",
            name = "reference",
            target_id = id.from(_N, "ReferenceItem"),
            target = M.ReferenceItem,
        }),
        status = schema.new({
            id = id.from(_N, "CreateVariantStoreOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateVariantStoreOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTime = schema.new({
            id = id.from(_N, "CreateVariantStoreOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SourceReference = schema.new({
    id = id.from(_N, "SourceReference"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "SourceReference", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "SourceReference", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DefinitionRepository = schema.new({
    id = id.from(_N, "DefinitionRepository"),
    type = "structure",
    members = {
        connectionArn = schema.new({
            id = id.from(_N, "DefinitionRepository", "connectionArn"),
            type = "string",
            name = "connectionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fullRepositoryId = schema.new({
            id = id.from(_N, "DefinitionRepository", "fullRepositoryId"),
            type = "string",
            name = "fullRepositoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceReference = schema.new({
            id = id.from(_N, "DefinitionRepository", "sourceReference"),
            type = "structure",
            name = "sourceReference",
            target_id = id.from(_N, "SourceReference"),
            target = M.SourceReference,
        }),
        excludeFilePatterns = schema.new({
            id = id.from(_N, "DefinitionRepository", "excludeFilePatterns"),
            type = "list",
            name = "excludeFilePatterns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.WorkflowParameter = schema.new({
    id = id.from(_N, "WorkflowParameter"),
    type = "structure",
    members = {
        description = schema.new({
            id = id.from(_N, "WorkflowParameter", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        optional = schema.new({
            id = id.from(_N, "WorkflowParameter", "optional"),
            type = "boolean",
            name = "optional",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreateWorkflowInput = schema.new({
    id = id.from(_N, "CreateWorkflowRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        engine = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "engine"),
            type = "string",
            name = "engine",
            target_id = prelude.String.id,
        }),
        definitionZip = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "definitionZip"),
            type = "blob",
            name = "definitionZip",
            target_id = prelude.Blob.id,
        }),
        definitionUri = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "definitionUri"),
            type = "string",
            name = "definitionUri",
            target_id = prelude.String.id,
        }),
        main = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "main"),
            type = "string",
            name = "main",
            target_id = prelude.String.id,
        }),
        parameterTemplate = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "parameterTemplate"),
            type = "map",
            name = "parameterTemplate",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.WorkflowParameter,
        }),
        storageCapacity = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "storageCapacity"),
            type = "integer",
            name = "storageCapacity",
            target_id = prelude.Integer.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        requestId = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "requestId"),
            type = "string",
            name = "requestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        accelerators = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "accelerators"),
            type = "string",
            name = "accelerators",
            target_id = prelude.String.id,
        }),
        storageType = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "storageType"),
            type = "string",
            name = "storageType",
            target_id = prelude.String.id,
        }),
        containerRegistryMap = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "containerRegistryMap"),
            type = "structure",
            name = "containerRegistryMap",
            target_id = id.from(_N, "ContainerRegistryMap"),
            target = M.ContainerRegistryMap,
        }),
        containerRegistryMapUri = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "containerRegistryMapUri"),
            type = "string",
            name = "containerRegistryMapUri",
            target_id = prelude.String.id,
        }),
        readmeMarkdown = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "readmeMarkdown"),
            type = "string",
            name = "readmeMarkdown",
            target_id = prelude.String.id,
            traits = {
                [traits.MEDIA_TYPE] = { value = "text/markdown" },
            },
        }),
        parameterTemplatePath = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "parameterTemplatePath"),
            type = "string",
            name = "parameterTemplatePath",
            target_id = prelude.String.id,
        }),
        readmePath = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "readmePath"),
            type = "string",
            name = "readmePath",
            target_id = prelude.String.id,
        }),
        definitionRepository = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "definitionRepository"),
            type = "structure",
            name = "definitionRepository",
            target_id = id.from(_N, "DefinitionRepository"),
            target = M.DefinitionRepository,
        }),
        workflowBucketOwnerId = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "workflowBucketOwnerId"),
            type = "string",
            name = "workflowBucketOwnerId",
            target_id = prelude.String.id,
        }),
        readmeUri = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "readmeUri"),
            type = "string",
            name = "readmeUri",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateWorkflowOutput = schema.new({
    id = id.from(_N, "CreateWorkflowResponse"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "CreateWorkflowOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "CreateWorkflowOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "CreateWorkflowOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateWorkflowOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        uuid = schema.new({
            id = id.from(_N, "CreateWorkflowOutput", "uuid"),
            type = "string",
            name = "uuid",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateWorkflowVersionInput = schema.new({
    id = id.from(_N, "CreateWorkflowVersionRequest"),
    type = "structure",
    members = {
        workflowId = schema.new({
            id = id.from(_N, "CreateWorkflowVersionInput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        versionName = schema.new({
            id = id.from(_N, "CreateWorkflowVersionInput", "versionName"),
            type = "string",
            name = "versionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        definitionZip = schema.new({
            id = id.from(_N, "CreateWorkflowVersionInput", "definitionZip"),
            type = "blob",
            name = "definitionZip",
            target_id = prelude.Blob.id,
        }),
        definitionUri = schema.new({
            id = id.from(_N, "CreateWorkflowVersionInput", "definitionUri"),
            type = "string",
            name = "definitionUri",
            target_id = prelude.String.id,
        }),
        accelerators = schema.new({
            id = id.from(_N, "CreateWorkflowVersionInput", "accelerators"),
            type = "string",
            name = "accelerators",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateWorkflowVersionInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        engine = schema.new({
            id = id.from(_N, "CreateWorkflowVersionInput", "engine"),
            type = "string",
            name = "engine",
            target_id = prelude.String.id,
        }),
        main = schema.new({
            id = id.from(_N, "CreateWorkflowVersionInput", "main"),
            type = "string",
            name = "main",
            target_id = prelude.String.id,
        }),
        parameterTemplate = schema.new({
            id = id.from(_N, "CreateWorkflowVersionInput", "parameterTemplate"),
            type = "map",
            name = "parameterTemplate",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.WorkflowParameter,
        }),
        requestId = schema.new({
            id = id.from(_N, "CreateWorkflowVersionInput", "requestId"),
            type = "string",
            name = "requestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        storageType = schema.new({
            id = id.from(_N, "CreateWorkflowVersionInput", "storageType"),
            type = "string",
            name = "storageType",
            target_id = prelude.String.id,
        }),
        storageCapacity = schema.new({
            id = id.from(_N, "CreateWorkflowVersionInput", "storageCapacity"),
            type = "integer",
            name = "storageCapacity",
            target_id = prelude.Integer.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateWorkflowVersionInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        workflowBucketOwnerId = schema.new({
            id = id.from(_N, "CreateWorkflowVersionInput", "workflowBucketOwnerId"),
            type = "string",
            name = "workflowBucketOwnerId",
            target_id = prelude.String.id,
        }),
        containerRegistryMap = schema.new({
            id = id.from(_N, "CreateWorkflowVersionInput", "containerRegistryMap"),
            type = "structure",
            name = "containerRegistryMap",
            target_id = id.from(_N, "ContainerRegistryMap"),
            target = M.ContainerRegistryMap,
        }),
        containerRegistryMapUri = schema.new({
            id = id.from(_N, "CreateWorkflowVersionInput", "containerRegistryMapUri"),
            type = "string",
            name = "containerRegistryMapUri",
            target_id = prelude.String.id,
        }),
        readmeMarkdown = schema.new({
            id = id.from(_N, "CreateWorkflowVersionInput", "readmeMarkdown"),
            type = "string",
            name = "readmeMarkdown",
            target_id = prelude.String.id,
            traits = {
                [traits.MEDIA_TYPE] = { value = "text/markdown" },
            },
        }),
        parameterTemplatePath = schema.new({
            id = id.from(_N, "CreateWorkflowVersionInput", "parameterTemplatePath"),
            type = "string",
            name = "parameterTemplatePath",
            target_id = prelude.String.id,
        }),
        readmePath = schema.new({
            id = id.from(_N, "CreateWorkflowVersionInput", "readmePath"),
            type = "string",
            name = "readmePath",
            target_id = prelude.String.id,
        }),
        definitionRepository = schema.new({
            id = id.from(_N, "CreateWorkflowVersionInput", "definitionRepository"),
            type = "structure",
            name = "definitionRepository",
            target_id = id.from(_N, "DefinitionRepository"),
            target = M.DefinitionRepository,
        }),
        readmeUri = schema.new({
            id = id.from(_N, "CreateWorkflowVersionInput", "readmeUri"),
            type = "string",
            name = "readmeUri",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateWorkflowVersionOutput = schema.new({
    id = id.from(_N, "CreateWorkflowVersionResponse"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "CreateWorkflowVersionOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        workflowId = schema.new({
            id = id.from(_N, "CreateWorkflowVersionOutput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
        }),
        versionName = schema.new({
            id = id.from(_N, "CreateWorkflowVersionOutput", "versionName"),
            type = "string",
            name = "versionName",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "CreateWorkflowVersionOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateWorkflowVersionOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        uuid = schema.new({
            id = id.from(_N, "CreateWorkflowVersionOutput", "uuid"),
            type = "string",
            name = "uuid",
            target_id = prelude.String.id,
        }),
    },
})

M.DefaultRunSetting = schema.new({
    id = id.from(_N, "DefaultRunSetting"),
    type = "structure",
    members = {
        workflowId = schema.new({
            id = id.from(_N, "DefaultRunSetting", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        workflowType = schema.new({
            id = id.from(_N, "DefaultRunSetting", "workflowType"),
            type = "string",
            name = "workflowType",
            target_id = prelude.String.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "DefaultRunSetting", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "DefaultRunSetting", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        cacheId = schema.new({
            id = id.from(_N, "DefaultRunSetting", "cacheId"),
            type = "string",
            name = "cacheId",
            target_id = prelude.String.id,
        }),
        cacheBehavior = schema.new({
            id = id.from(_N, "DefaultRunSetting", "cacheBehavior"),
            type = "string",
            name = "cacheBehavior",
            target_id = prelude.String.id,
        }),
        runGroupId = schema.new({
            id = id.from(_N, "DefaultRunSetting", "runGroupId"),
            type = "string",
            name = "runGroupId",
            target_id = prelude.String.id,
        }),
        priority = schema.new({
            id = id.from(_N, "DefaultRunSetting", "priority"),
            type = "integer",
            name = "priority",
            target_id = prelude.Integer.id,
        }),
        parameters = schema.new({
            id = id.from(_N, "DefaultRunSetting", "parameters"),
            type = "document",
            name = "parameters",
            target_id = prelude.Document.id,
        }),
        storageCapacity = schema.new({
            id = id.from(_N, "DefaultRunSetting", "storageCapacity"),
            type = "integer",
            name = "storageCapacity",
            target_id = prelude.Integer.id,
        }),
        outputUri = schema.new({
            id = id.from(_N, "DefaultRunSetting", "outputUri"),
            type = "string",
            name = "outputUri",
            target_id = prelude.String.id,
        }),
        logLevel = schema.new({
            id = id.from(_N, "DefaultRunSetting", "logLevel"),
            type = "string",
            name = "logLevel",
            target_id = prelude.String.id,
        }),
        runTags = schema.new({
            id = id.from(_N, "DefaultRunSetting", "runTags"),
            type = "map",
            name = "runTags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        retentionMode = schema.new({
            id = id.from(_N, "DefaultRunSetting", "retentionMode"),
            type = "string",
            name = "retentionMode",
            target_id = prelude.String.id,
        }),
        storageType = schema.new({
            id = id.from(_N, "DefaultRunSetting", "storageType"),
            type = "string",
            name = "storageType",
            target_id = prelude.String.id,
        }),
        workflowOwnerId = schema.new({
            id = id.from(_N, "DefaultRunSetting", "workflowOwnerId"),
            type = "string",
            name = "workflowOwnerId",
            target_id = prelude.String.id,
        }),
        outputBucketOwnerId = schema.new({
            id = id.from(_N, "DefaultRunSetting", "outputBucketOwnerId"),
            type = "string",
            name = "outputBucketOwnerId",
            target_id = prelude.String.id,
        }),
        workflowVersionName = schema.new({
            id = id.from(_N, "DefaultRunSetting", "workflowVersionName"),
            type = "string",
            name = "workflowVersionName",
            target_id = prelude.String.id,
        }),
        networkingMode = schema.new({
            id = id.from(_N, "DefaultRunSetting", "networkingMode"),
            type = "string",
            name = "networkingMode",
            target_id = prelude.String.id,
        }),
        configurationName = schema.new({
            id = id.from(_N, "DefaultRunSetting", "configurationName"),
            type = "string",
            name = "configurationName",
            target_id = prelude.String.id,
        }),
    },
})

M.DefinitionRepositoryDetails = schema.new({
    id = id.from(_N, "DefinitionRepositoryDetails"),
    type = "structure",
    members = {
        connectionArn = schema.new({
            id = id.from(_N, "DefinitionRepositoryDetails", "connectionArn"),
            type = "string",
            name = "connectionArn",
            target_id = prelude.String.id,
        }),
        fullRepositoryId = schema.new({
            id = id.from(_N, "DefinitionRepositoryDetails", "fullRepositoryId"),
            type = "string",
            name = "fullRepositoryId",
            target_id = prelude.String.id,
        }),
        sourceReference = schema.new({
            id = id.from(_N, "DefinitionRepositoryDetails", "sourceReference"),
            type = "structure",
            name = "sourceReference",
            target_id = id.from(_N, "SourceReference"),
            target = M.SourceReference,
        }),
        providerType = schema.new({
            id = id.from(_N, "DefinitionRepositoryDetails", "providerType"),
            type = "string",
            name = "providerType",
            target_id = prelude.String.id,
        }),
        providerEndpoint = schema.new({
            id = id.from(_N, "DefinitionRepositoryDetails", "providerEndpoint"),
            type = "string",
            name = "providerEndpoint",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteBatchInput = schema.new({
    id = id.from(_N, "DeleteBatchRequest"),
    type = "structure",
    members = {
        batchId = schema.new({
            id = id.from(_N, "DeleteBatchInput", "batchId"),
            type = "string",
            name = "batchId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteBatchOutput = prelude.Unit

M.DeleteReferenceInput = schema.new({
    id = id.from(_N, "DeleteReferenceRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeleteReferenceInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        referenceStoreId = schema.new({
            id = id.from(_N, "DeleteReferenceInput", "referenceStoreId"),
            type = "string",
            name = "referenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteReferenceOutput = schema.new({
    id = id.from(_N, "DeleteReferenceResponse"),
    type = "structure",
})

M.DeleteReferenceStoreInput = schema.new({
    id = id.from(_N, "DeleteReferenceStoreRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeleteReferenceStoreInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteReferenceStoreOutput = schema.new({
    id = id.from(_N, "DeleteReferenceStoreResponse"),
    type = "structure",
})

M.DeleteRunInput = schema.new({
    id = id.from(_N, "DeleteRunRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeleteRunInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteRunOutput = prelude.Unit

M.DeleteRunBatchInput = schema.new({
    id = id.from(_N, "DeleteRunBatchRequest"),
    type = "structure",
    members = {
        batchId = schema.new({
            id = id.from(_N, "DeleteRunBatchInput", "batchId"),
            type = "string",
            name = "batchId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRunBatchOutput = schema.new({
    id = id.from(_N, "DeleteRunBatchResponse"),
    type = "structure",
})

M.DeleteRunCacheInput = schema.new({
    id = id.from(_N, "DeleteRunCacheRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeleteRunCacheInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteRunCacheOutput = prelude.Unit

M.DeleteRunGroupInput = schema.new({
    id = id.from(_N, "DeleteRunGroupRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeleteRunGroupInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteRunGroupOutput = prelude.Unit

M.DeleteS3AccessPolicyInput = schema.new({
    id = id.from(_N, "DeleteS3AccessPolicyRequest"),
    type = "structure",
    members = {
        s3AccessPointArn = schema.new({
            id = id.from(_N, "DeleteS3AccessPolicyInput", "s3AccessPointArn"),
            type = "string",
            name = "s3AccessPointArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteS3AccessPolicyOutput = schema.new({
    id = id.from(_N, "DeleteS3AccessPolicyResponse"),
    type = "structure",
})

M.DeleteSequenceStoreInput = schema.new({
    id = id.from(_N, "DeleteSequenceStoreRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeleteSequenceStoreInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteSequenceStoreOutput = schema.new({
    id = id.from(_N, "DeleteSequenceStoreResponse"),
    type = "structure",
})

M.DeleteShareInput = schema.new({
    id = id.from(_N, "DeleteShareRequest"),
    type = "structure",
    members = {
        shareId = schema.new({
            id = id.from(_N, "DeleteShareInput", "shareId"),
            type = "string",
            name = "shareId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteShareOutput = schema.new({
    id = id.from(_N, "DeleteShareResponse"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "DeleteShareOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteVariantStoreInput = schema.new({
    id = id.from(_N, "DeleteVariantStoreRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DeleteVariantStoreInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        force = schema.new({
            id = id.from(_N, "DeleteVariantStoreInput", "force"),
            type = "boolean",
            name = "force",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
                [traits.HTTP_QUERY] = { name = "force" },
            },
        }),
    },
})

M.DeleteVariantStoreOutput = schema.new({
    id = id.from(_N, "DeleteVariantStoreResponse"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "DeleteVariantStoreOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteWorkflowInput = schema.new({
    id = id.from(_N, "DeleteWorkflowRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeleteWorkflowInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteWorkflowOutput = prelude.Unit

M.DeleteWorkflowVersionInput = schema.new({
    id = id.from(_N, "DeleteWorkflowVersionRequest"),
    type = "structure",
    members = {
        workflowId = schema.new({
            id = id.from(_N, "DeleteWorkflowVersionInput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        versionName = schema.new({
            id = id.from(_N, "DeleteWorkflowVersionInput", "versionName"),
            type = "string",
            name = "versionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteWorkflowVersionOutput = prelude.Unit

M.ETag = schema.new({
    id = id.from(_N, "ETag"),
    type = "structure",
    members = {
        algorithm = schema.new({
            id = id.from(_N, "ETag", "algorithm"),
            type = "string",
            name = "algorithm",
            target_id = prelude.String.id,
        }),
        source1 = schema.new({
            id = id.from(_N, "ETag", "source1"),
            type = "string",
            name = "source1",
            target_id = prelude.String.id,
        }),
        source2 = schema.new({
            id = id.from(_N, "ETag", "source2"),
            type = "string",
            name = "source2",
            target_id = prelude.String.id,
        }),
    },
})

M.ExportReadSet = schema.new({
    id = id.from(_N, "ExportReadSet"),
    type = "structure",
    members = {
        readSetId = schema.new({
            id = id.from(_N, "ExportReadSet", "readSetId"),
            type = "string",
            name = "readSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ExportReadSetDetail = schema.new({
    id = id.from(_N, "ExportReadSetDetail"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ExportReadSetDetail", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "ExportReadSetDetail", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusMessage = schema.new({
            id = id.from(_N, "ExportReadSetDetail", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.ExportReadSetFilter = schema.new({
    id = id.from(_N, "ExportReadSetFilter"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "ExportReadSetFilter", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        createdAfter = schema.new({
            id = id.from(_N, "ExportReadSetFilter", "createdAfter"),
            type = "timestamp",
            name = "createdAfter",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        createdBefore = schema.new({
            id = id.from(_N, "ExportReadSetFilter", "createdBefore"),
            type = "timestamp",
            name = "createdBefore",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ExportReadSetJobDetail = schema.new({
    id = id.from(_N, "ExportReadSetJobDetail"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ExportReadSetJobDetail", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sequenceStoreId = schema.new({
            id = id.from(_N, "ExportReadSetJobDetail", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destination = schema.new({
            id = id.from(_N, "ExportReadSetJobDetail", "destination"),
            type = "string",
            name = "destination",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "ExportReadSetJobDetail", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTime = schema.new({
            id = id.from(_N, "ExportReadSetJobDetail", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        completionTime = schema.new({
            id = id.from(_N, "ExportReadSetJobDetail", "completionTime"),
            type = "timestamp",
            name = "completionTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ReadSetS3Access = schema.new({
    id = id.from(_N, "ReadSetS3Access"),
    type = "structure",
    members = {
        s3Uri = schema.new({
            id = id.from(_N, "ReadSetS3Access", "s3Uri"),
            type = "string",
            name = "s3Uri",
            target_id = prelude.String.id,
        }),
    },
})

M.FileInformation = schema.new({
    id = id.from(_N, "FileInformation"),
    type = "structure",
    members = {
        totalParts = schema.new({
            id = id.from(_N, "FileInformation", "totalParts"),
            type = "integer",
            name = "totalParts",
            target_id = prelude.Integer.id,
        }),
        partSize = schema.new({
            id = id.from(_N, "FileInformation", "partSize"),
            type = "long",
            name = "partSize",
            target_id = prelude.Long.id,
        }),
        contentLength = schema.new({
            id = id.from(_N, "FileInformation", "contentLength"),
            type = "long",
            name = "contentLength",
            target_id = prelude.Long.id,
        }),
        s3Access = schema.new({
            id = id.from(_N, "FileInformation", "s3Access"),
            type = "structure",
            name = "s3Access",
            target_id = id.from(_N, "ReadSetS3Access"),
            target = M.ReadSetS3Access,
        }),
    },
})

M.Filter = schema.new({
    id = id.from(_N, "Filter"),
    type = "structure",
    members = {
        resourceArns = schema.new({
            id = id.from(_N, "Filter", "resourceArns"),
            type = "list",
            name = "resourceArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        status = schema.new({
            id = id.from(_N, "Filter", "status"),
            type = "list",
            name = "status",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        type = schema.new({
            id = id.from(_N, "Filter", "type"),
            type = "list",
            name = "type",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.GetBatchInput = schema.new({
    id = id.from(_N, "GetBatchRequest"),
    type = "structure",
    members = {
        batchId = schema.new({
            id = id.from(_N, "GetBatchInput", "batchId"),
            type = "string",
            name = "batchId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.RunSummary = schema.new({
    id = id.from(_N, "RunSummary"),
    type = "structure",
    members = {
        pendingRunCount = schema.new({
            id = id.from(_N, "RunSummary", "pendingRunCount"),
            type = "integer",
            name = "pendingRunCount",
            target_id = prelude.Integer.id,
        }),
        startingRunCount = schema.new({
            id = id.from(_N, "RunSummary", "startingRunCount"),
            type = "integer",
            name = "startingRunCount",
            target_id = prelude.Integer.id,
        }),
        runningRunCount = schema.new({
            id = id.from(_N, "RunSummary", "runningRunCount"),
            type = "integer",
            name = "runningRunCount",
            target_id = prelude.Integer.id,
        }),
        stoppingRunCount = schema.new({
            id = id.from(_N, "RunSummary", "stoppingRunCount"),
            type = "integer",
            name = "stoppingRunCount",
            target_id = prelude.Integer.id,
        }),
        completedRunCount = schema.new({
            id = id.from(_N, "RunSummary", "completedRunCount"),
            type = "integer",
            name = "completedRunCount",
            target_id = prelude.Integer.id,
        }),
        deletedRunCount = schema.new({
            id = id.from(_N, "RunSummary", "deletedRunCount"),
            type = "integer",
            name = "deletedRunCount",
            target_id = prelude.Integer.id,
        }),
        failedRunCount = schema.new({
            id = id.from(_N, "RunSummary", "failedRunCount"),
            type = "integer",
            name = "failedRunCount",
            target_id = prelude.Integer.id,
        }),
        cancelledRunCount = schema.new({
            id = id.from(_N, "RunSummary", "cancelledRunCount"),
            type = "integer",
            name = "cancelledRunCount",
            target_id = prelude.Integer.id,
        }),
    },
})

M.SubmissionSummary = schema.new({
    id = id.from(_N, "SubmissionSummary"),
    type = "structure",
    members = {
        successfulStartSubmissionCount = schema.new({
            id = id.from(_N, "SubmissionSummary", "successfulStartSubmissionCount"),
            type = "integer",
            name = "successfulStartSubmissionCount",
            target_id = prelude.Integer.id,
        }),
        failedStartSubmissionCount = schema.new({
            id = id.from(_N, "SubmissionSummary", "failedStartSubmissionCount"),
            type = "integer",
            name = "failedStartSubmissionCount",
            target_id = prelude.Integer.id,
        }),
        pendingStartSubmissionCount = schema.new({
            id = id.from(_N, "SubmissionSummary", "pendingStartSubmissionCount"),
            type = "integer",
            name = "pendingStartSubmissionCount",
            target_id = prelude.Integer.id,
        }),
        successfulCancelSubmissionCount = schema.new({
            id = id.from(_N, "SubmissionSummary", "successfulCancelSubmissionCount"),
            type = "integer",
            name = "successfulCancelSubmissionCount",
            target_id = prelude.Integer.id,
        }),
        failedCancelSubmissionCount = schema.new({
            id = id.from(_N, "SubmissionSummary", "failedCancelSubmissionCount"),
            type = "integer",
            name = "failedCancelSubmissionCount",
            target_id = prelude.Integer.id,
        }),
        successfulDeleteSubmissionCount = schema.new({
            id = id.from(_N, "SubmissionSummary", "successfulDeleteSubmissionCount"),
            type = "integer",
            name = "successfulDeleteSubmissionCount",
            target_id = prelude.Integer.id,
        }),
        failedDeleteSubmissionCount = schema.new({
            id = id.from(_N, "SubmissionSummary", "failedDeleteSubmissionCount"),
            type = "integer",
            name = "failedDeleteSubmissionCount",
            target_id = prelude.Integer.id,
        }),
    },
})

M.GetBatchOutput = schema.new({
    id = id.from(_N, "GetBatchResponse"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetBatchOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "GetBatchOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        uuid = schema.new({
            id = id.from(_N, "GetBatchOutput", "uuid"),
            type = "string",
            name = "uuid",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetBatchOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetBatchOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "GetBatchOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        totalRuns = schema.new({
            id = id.from(_N, "GetBatchOutput", "totalRuns"),
            type = "integer",
            name = "totalRuns",
            target_id = prelude.Integer.id,
        }),
        defaultRunSetting = schema.new({
            id = id.from(_N, "GetBatchOutput", "defaultRunSetting"),
            type = "structure",
            name = "defaultRunSetting",
            target_id = id.from(_N, "DefaultRunSetting"),
            target = M.DefaultRunSetting,
        }),
        submissionSummary = schema.new({
            id = id.from(_N, "GetBatchOutput", "submissionSummary"),
            type = "structure",
            name = "submissionSummary",
            target_id = id.from(_N, "SubmissionSummary"),
            target = M.SubmissionSummary,
        }),
        runSummary = schema.new({
            id = id.from(_N, "GetBatchOutput", "runSummary"),
            type = "structure",
            name = "runSummary",
            target_id = id.from(_N, "RunSummary"),
            target = M.RunSummary,
        }),
        creationTime = schema.new({
            id = id.from(_N, "GetBatchOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        submittedTime = schema.new({
            id = id.from(_N, "GetBatchOutput", "submittedTime"),
            type = "timestamp",
            name = "submittedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        processedTime = schema.new({
            id = id.from(_N, "GetBatchOutput", "processedTime"),
            type = "timestamp",
            name = "processedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        failedTime = schema.new({
            id = id.from(_N, "GetBatchOutput", "failedTime"),
            type = "timestamp",
            name = "failedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        failureReason = schema.new({
            id = id.from(_N, "GetBatchOutput", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
    },
})

M.GetReadSetInput = schema.new({
    id = id.from(_N, "GetReadSetRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetReadSetInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        sequenceStoreId = schema.new({
            id = id.from(_N, "GetReadSetInput", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        file = schema.new({
            id = id.from(_N, "GetReadSetInput", "file"),
            type = "string",
            name = "file",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "file" },
            },
        }),
        partNumber = schema.new({
            id = id.from(_N, "GetReadSetInput", "partNumber"),
            type = "integer",
            name = "partNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "partNumber" },
            },
        }),
    },
})

M.GetReadSetOutput = schema.new({
    id = id.from(_N, "GetReadSetResponse"),
    type = "structure",
    members = {
        payload = schema.new({
            id = id.from(_N, "GetReadSetOutput", "payload"),
            type = "blob",
            name = "payload",
            target_id = prelude.Blob.id,
            traits = {
                [traits.DEFAULT] = { value = "" },
                [traits.HTTP_PAYLOAD] = {},
                [traits.STREAMING] = {},
            },
            direct_traits = {
                [traits.DEFAULT] = { value = "" },
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.RangeNotSatisfiableException = schema.new({
    id = id.from(_N, "RangeNotSatisfiableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "RangeNotSatisfiableException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetReadSetActivationJobInput = schema.new({
    id = id.from(_N, "GetReadSetActivationJobRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetReadSetActivationJobInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        sequenceStoreId = schema.new({
            id = id.from(_N, "GetReadSetActivationJobInput", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetReadSetActivationJobOutput = schema.new({
    id = id.from(_N, "GetReadSetActivationJobResponse"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetReadSetActivationJobOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sequenceStoreId = schema.new({
            id = id.from(_N, "GetReadSetActivationJobOutput", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetReadSetActivationJobOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusMessage = schema.new({
            id = id.from(_N, "GetReadSetActivationJobOutput", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "GetReadSetActivationJobOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        completionTime = schema.new({
            id = id.from(_N, "GetReadSetActivationJobOutput", "completionTime"),
            type = "timestamp",
            name = "completionTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        sources = schema.new({
            id = id.from(_N, "GetReadSetActivationJobOutput", "sources"),
            type = "list",
            name = "sources",
            target_id = prelude.Document.id,
            list_member = M.ActivateReadSetSourceItem,
        }),
    },
})

M.GetReadSetExportJobInput = schema.new({
    id = id.from(_N, "GetReadSetExportJobRequest"),
    type = "structure",
    members = {
        sequenceStoreId = schema.new({
            id = id.from(_N, "GetReadSetExportJobInput", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "GetReadSetExportJobInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetReadSetExportJobOutput = schema.new({
    id = id.from(_N, "GetReadSetExportJobResponse"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetReadSetExportJobOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sequenceStoreId = schema.new({
            id = id.from(_N, "GetReadSetExportJobOutput", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destination = schema.new({
            id = id.from(_N, "GetReadSetExportJobOutput", "destination"),
            type = "string",
            name = "destination",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetReadSetExportJobOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusMessage = schema.new({
            id = id.from(_N, "GetReadSetExportJobOutput", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "GetReadSetExportJobOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        completionTime = schema.new({
            id = id.from(_N, "GetReadSetExportJobOutput", "completionTime"),
            type = "timestamp",
            name = "completionTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        readSets = schema.new({
            id = id.from(_N, "GetReadSetExportJobOutput", "readSets"),
            type = "list",
            name = "readSets",
            target_id = prelude.Document.id,
            list_member = M.ExportReadSetDetail,
        }),
    },
})

M.GetReadSetImportJobInput = schema.new({
    id = id.from(_N, "GetReadSetImportJobRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetReadSetImportJobInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        sequenceStoreId = schema.new({
            id = id.from(_N, "GetReadSetImportJobInput", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.SourceFiles = schema.new({
    id = id.from(_N, "SourceFiles"),
    type = "structure",
    members = {
        source1 = schema.new({
            id = id.from(_N, "SourceFiles", "source1"),
            type = "string",
            name = "source1",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        source2 = schema.new({
            id = id.from(_N, "SourceFiles", "source2"),
            type = "string",
            name = "source2",
            target_id = prelude.String.id,
        }),
    },
})

M.ImportReadSetSourceItem = schema.new({
    id = id.from(_N, "ImportReadSetSourceItem"),
    type = "structure",
    members = {
        sourceFiles = schema.new({
            id = id.from(_N, "ImportReadSetSourceItem", "sourceFiles"),
            type = "structure",
            name = "sourceFiles",
            target_id = id.from(_N, "SourceFiles"),
            target = M.SourceFiles,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceFileType = schema.new({
            id = id.from(_N, "ImportReadSetSourceItem", "sourceFileType"),
            type = "string",
            name = "sourceFileType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "ImportReadSetSourceItem", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusMessage = schema.new({
            id = id.from(_N, "ImportReadSetSourceItem", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        subjectId = schema.new({
            id = id.from(_N, "ImportReadSetSourceItem", "subjectId"),
            type = "string",
            name = "subjectId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sampleId = schema.new({
            id = id.from(_N, "ImportReadSetSourceItem", "sampleId"),
            type = "string",
            name = "sampleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        generatedFrom = schema.new({
            id = id.from(_N, "ImportReadSetSourceItem", "generatedFrom"),
            type = "string",
            name = "generatedFrom",
            target_id = prelude.String.id,
        }),
        referenceArn = schema.new({
            id = id.from(_N, "ImportReadSetSourceItem", "referenceArn"),
            type = "string",
            name = "referenceArn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "ImportReadSetSourceItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "ImportReadSetSourceItem", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "ImportReadSetSourceItem", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        readSetId = schema.new({
            id = id.from(_N, "ImportReadSetSourceItem", "readSetId"),
            type = "string",
            name = "readSetId",
            target_id = prelude.String.id,
        }),
    },
})

M.GetReadSetImportJobOutput = schema.new({
    id = id.from(_N, "GetReadSetImportJobResponse"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetReadSetImportJobOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sequenceStoreId = schema.new({
            id = id.from(_N, "GetReadSetImportJobOutput", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "GetReadSetImportJobOutput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetReadSetImportJobOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusMessage = schema.new({
            id = id.from(_N, "GetReadSetImportJobOutput", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "GetReadSetImportJobOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        completionTime = schema.new({
            id = id.from(_N, "GetReadSetImportJobOutput", "completionTime"),
            type = "timestamp",
            name = "completionTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        sources = schema.new({
            id = id.from(_N, "GetReadSetImportJobOutput", "sources"),
            type = "list",
            name = "sources",
            target_id = prelude.Document.id,
            list_member = M.ImportReadSetSourceItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetReadSetMetadataInput = schema.new({
    id = id.from(_N, "GetReadSetMetadataRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetReadSetMetadataInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        sequenceStoreId = schema.new({
            id = id.from(_N, "GetReadSetMetadataInput", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ReadSetFiles = schema.new({
    id = id.from(_N, "ReadSetFiles"),
    type = "structure",
    members = {
        source1 = schema.new({
            id = id.from(_N, "ReadSetFiles", "source1"),
            type = "structure",
            name = "source1",
            target_id = id.from(_N, "FileInformation"),
            target = M.FileInformation,
        }),
        source2 = schema.new({
            id = id.from(_N, "ReadSetFiles", "source2"),
            type = "structure",
            name = "source2",
            target_id = id.from(_N, "FileInformation"),
            target = M.FileInformation,
        }),
        index = schema.new({
            id = id.from(_N, "ReadSetFiles", "index"),
            type = "structure",
            name = "index",
            target_id = id.from(_N, "FileInformation"),
            target = M.FileInformation,
        }),
    },
})

M.SequenceInformation = schema.new({
    id = id.from(_N, "SequenceInformation"),
    type = "structure",
    members = {
        totalReadCount = schema.new({
            id = id.from(_N, "SequenceInformation", "totalReadCount"),
            type = "long",
            name = "totalReadCount",
            target_id = prelude.Long.id,
        }),
        totalBaseCount = schema.new({
            id = id.from(_N, "SequenceInformation", "totalBaseCount"),
            type = "long",
            name = "totalBaseCount",
            target_id = prelude.Long.id,
        }),
        generatedFrom = schema.new({
            id = id.from(_N, "SequenceInformation", "generatedFrom"),
            type = "string",
            name = "generatedFrom",
            target_id = prelude.String.id,
        }),
        alignment = schema.new({
            id = id.from(_N, "SequenceInformation", "alignment"),
            type = "string",
            name = "alignment",
            target_id = prelude.String.id,
        }),
    },
})

M.GetReadSetMetadataOutput = schema.new({
    id = id.from(_N, "GetReadSetMetadataResponse"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetReadSetMetadataOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "GetReadSetMetadataOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sequenceStoreId = schema.new({
            id = id.from(_N, "GetReadSetMetadataOutput", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        subjectId = schema.new({
            id = id.from(_N, "GetReadSetMetadataOutput", "subjectId"),
            type = "string",
            name = "subjectId",
            target_id = prelude.String.id,
        }),
        sampleId = schema.new({
            id = id.from(_N, "GetReadSetMetadataOutput", "sampleId"),
            type = "string",
            name = "sampleId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetReadSetMetadataOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetReadSetMetadataOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetReadSetMetadataOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        fileType = schema.new({
            id = id.from(_N, "GetReadSetMetadataOutput", "fileType"),
            type = "string",
            name = "fileType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTime = schema.new({
            id = id.from(_N, "GetReadSetMetadataOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        sequenceInformation = schema.new({
            id = id.from(_N, "GetReadSetMetadataOutput", "sequenceInformation"),
            type = "structure",
            name = "sequenceInformation",
            target_id = id.from(_N, "SequenceInformation"),
            target = M.SequenceInformation,
        }),
        referenceArn = schema.new({
            id = id.from(_N, "GetReadSetMetadataOutput", "referenceArn"),
            type = "string",
            name = "referenceArn",
            target_id = prelude.String.id,
        }),
        files = schema.new({
            id = id.from(_N, "GetReadSetMetadataOutput", "files"),
            type = "structure",
            name = "files",
            target_id = id.from(_N, "ReadSetFiles"),
            target = M.ReadSetFiles,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "GetReadSetMetadataOutput", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        creationType = schema.new({
            id = id.from(_N, "GetReadSetMetadataOutput", "creationType"),
            type = "string",
            name = "creationType",
            target_id = prelude.String.id,
        }),
        etag = schema.new({
            id = id.from(_N, "GetReadSetMetadataOutput", "etag"),
            type = "structure",
            name = "etag",
            target_id = id.from(_N, "ETag"),
            target = M.ETag,
        }),
        creationJobId = schema.new({
            id = id.from(_N, "GetReadSetMetadataOutput", "creationJobId"),
            type = "string",
            name = "creationJobId",
            target_id = prelude.String.id,
        }),
    },
})

M.GetReferenceInput = schema.new({
    id = id.from(_N, "GetReferenceRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetReferenceInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        referenceStoreId = schema.new({
            id = id.from(_N, "GetReferenceInput", "referenceStoreId"),
            type = "string",
            name = "referenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        range = schema.new({
            id = id.from(_N, "GetReferenceInput", "range"),
            type = "string",
            name = "range",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Range" },
            },
        }),
        partNumber = schema.new({
            id = id.from(_N, "GetReferenceInput", "partNumber"),
            type = "integer",
            name = "partNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "partNumber" },
            },
        }),
        file = schema.new({
            id = id.from(_N, "GetReferenceInput", "file"),
            type = "string",
            name = "file",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "file" },
            },
        }),
    },
})

M.GetReferenceOutput = schema.new({
    id = id.from(_N, "GetReferenceResponse"),
    type = "structure",
    members = {
        payload = schema.new({
            id = id.from(_N, "GetReferenceOutput", "payload"),
            type = "blob",
            name = "payload",
            target_id = prelude.Blob.id,
            traits = {
                [traits.DEFAULT] = { value = "" },
                [traits.HTTP_PAYLOAD] = {},
                [traits.STREAMING] = {},
            },
            direct_traits = {
                [traits.DEFAULT] = { value = "" },
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.GetReferenceImportJobInput = schema.new({
    id = id.from(_N, "GetReferenceImportJobRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetReferenceImportJobInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        referenceStoreId = schema.new({
            id = id.from(_N, "GetReferenceImportJobInput", "referenceStoreId"),
            type = "string",
            name = "referenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ImportReferenceSourceItem = schema.new({
    id = id.from(_N, "ImportReferenceSourceItem"),
    type = "structure",
    members = {
        sourceFile = schema.new({
            id = id.from(_N, "ImportReferenceSourceItem", "sourceFile"),
            type = "string",
            name = "sourceFile",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "ImportReferenceSourceItem", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusMessage = schema.new({
            id = id.from(_N, "ImportReferenceSourceItem", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "ImportReferenceSourceItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "ImportReferenceSourceItem", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "ImportReferenceSourceItem", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        referenceId = schema.new({
            id = id.from(_N, "ImportReferenceSourceItem", "referenceId"),
            type = "string",
            name = "referenceId",
            target_id = prelude.String.id,
        }),
    },
})

M.GetReferenceImportJobOutput = schema.new({
    id = id.from(_N, "GetReferenceImportJobResponse"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetReferenceImportJobOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        referenceStoreId = schema.new({
            id = id.from(_N, "GetReferenceImportJobOutput", "referenceStoreId"),
            type = "string",
            name = "referenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "GetReferenceImportJobOutput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetReferenceImportJobOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusMessage = schema.new({
            id = id.from(_N, "GetReferenceImportJobOutput", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "GetReferenceImportJobOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        completionTime = schema.new({
            id = id.from(_N, "GetReferenceImportJobOutput", "completionTime"),
            type = "timestamp",
            name = "completionTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        sources = schema.new({
            id = id.from(_N, "GetReferenceImportJobOutput", "sources"),
            type = "list",
            name = "sources",
            target_id = prelude.Document.id,
            list_member = M.ImportReferenceSourceItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetReferenceMetadataInput = schema.new({
    id = id.from(_N, "GetReferenceMetadataRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetReferenceMetadataInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        referenceStoreId = schema.new({
            id = id.from(_N, "GetReferenceMetadataInput", "referenceStoreId"),
            type = "string",
            name = "referenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ReferenceFiles = schema.new({
    id = id.from(_N, "ReferenceFiles"),
    type = "structure",
    members = {
        source = schema.new({
            id = id.from(_N, "ReferenceFiles", "source"),
            type = "structure",
            name = "source",
            target_id = id.from(_N, "FileInformation"),
            target = M.FileInformation,
        }),
        index = schema.new({
            id = id.from(_N, "ReferenceFiles", "index"),
            type = "structure",
            name = "index",
            target_id = id.from(_N, "FileInformation"),
            target = M.FileInformation,
        }),
    },
})

M.GetReferenceMetadataOutput = schema.new({
    id = id.from(_N, "GetReferenceMetadataResponse"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetReferenceMetadataOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "GetReferenceMetadataOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        referenceStoreId = schema.new({
            id = id.from(_N, "GetReferenceMetadataOutput", "referenceStoreId"),
            type = "string",
            name = "referenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        md5 = schema.new({
            id = id.from(_N, "GetReferenceMetadataOutput", "md5"),
            type = "string",
            name = "md5",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetReferenceMetadataOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetReferenceMetadataOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetReferenceMetadataOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "GetReferenceMetadataOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updateTime = schema.new({
            id = id.from(_N, "GetReferenceMetadataOutput", "updateTime"),
            type = "timestamp",
            name = "updateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        files = schema.new({
            id = id.from(_N, "GetReferenceMetadataOutput", "files"),
            type = "structure",
            name = "files",
            target_id = id.from(_N, "ReferenceFiles"),
            target = M.ReferenceFiles,
        }),
        creationType = schema.new({
            id = id.from(_N, "GetReferenceMetadataOutput", "creationType"),
            type = "string",
            name = "creationType",
            target_id = prelude.String.id,
        }),
        creationJobId = schema.new({
            id = id.from(_N, "GetReferenceMetadataOutput", "creationJobId"),
            type = "string",
            name = "creationJobId",
            target_id = prelude.String.id,
        }),
    },
})

M.GetReferenceStoreInput = schema.new({
    id = id.from(_N, "GetReferenceStoreRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetReferenceStoreInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetReferenceStoreOutput = schema.new({
    id = id.from(_N, "GetReferenceStoreResponse"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetReferenceStoreOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "GetReferenceStoreOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetReferenceStoreOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetReferenceStoreOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        sseConfig = schema.new({
            id = id.from(_N, "GetReferenceStoreOutput", "sseConfig"),
            type = "structure",
            name = "sseConfig",
            target_id = id.from(_N, "SseConfig"),
            target = M.SseConfig,
        }),
        creationTime = schema.new({
            id = id.from(_N, "GetReferenceStoreOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.GetRunInput = schema.new({
    id = id.from(_N, "GetRunRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetRunInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        export = schema.new({
            id = id.from(_N, "GetRunInput", "export"),
            type = "list",
            name = "export",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "export" },
            },
        }),
    },
})

M.RunLogLocation = schema.new({
    id = id.from(_N, "RunLogLocation"),
    type = "structure",
    members = {
        engineLogStream = schema.new({
            id = id.from(_N, "RunLogLocation", "engineLogStream"),
            type = "string",
            name = "engineLogStream",
            target_id = prelude.String.id,
        }),
        runLogStream = schema.new({
            id = id.from(_N, "RunLogLocation", "runLogStream"),
            type = "string",
            name = "runLogStream",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRunOutput = schema.new({
    id = id.from(_N, "GetRunResponse"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "GetRunOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "GetRunOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        cacheId = schema.new({
            id = id.from(_N, "GetRunOutput", "cacheId"),
            type = "string",
            name = "cacheId",
            target_id = prelude.String.id,
        }),
        cacheBehavior = schema.new({
            id = id.from(_N, "GetRunOutput", "cacheBehavior"),
            type = "string",
            name = "cacheBehavior",
            target_id = prelude.String.id,
        }),
        engineVersion = schema.new({
            id = id.from(_N, "GetRunOutput", "engineVersion"),
            type = "string",
            name = "engineVersion",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetRunOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        workflowId = schema.new({
            id = id.from(_N, "GetRunOutput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
        }),
        workflowType = schema.new({
            id = id.from(_N, "GetRunOutput", "workflowType"),
            type = "string",
            name = "workflowType",
            target_id = prelude.String.id,
        }),
        runId = schema.new({
            id = id.from(_N, "GetRunOutput", "runId"),
            type = "string",
            name = "runId",
            target_id = prelude.String.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "GetRunOutput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetRunOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        runGroupId = schema.new({
            id = id.from(_N, "GetRunOutput", "runGroupId"),
            type = "string",
            name = "runGroupId",
            target_id = prelude.String.id,
        }),
        batchId = schema.new({
            id = id.from(_N, "GetRunOutput", "batchId"),
            type = "string",
            name = "batchId",
            target_id = prelude.String.id,
        }),
        priority = schema.new({
            id = id.from(_N, "GetRunOutput", "priority"),
            type = "integer",
            name = "priority",
            target_id = prelude.Integer.id,
        }),
        definition = schema.new({
            id = id.from(_N, "GetRunOutput", "definition"),
            type = "string",
            name = "definition",
            target_id = prelude.String.id,
        }),
        digest = schema.new({
            id = id.from(_N, "GetRunOutput", "digest"),
            type = "string",
            name = "digest",
            target_id = prelude.String.id,
        }),
        parameters = schema.new({
            id = id.from(_N, "GetRunOutput", "parameters"),
            type = "document",
            name = "parameters",
            target_id = prelude.Document.id,
        }),
        storageCapacity = schema.new({
            id = id.from(_N, "GetRunOutput", "storageCapacity"),
            type = "integer",
            name = "storageCapacity",
            target_id = prelude.Integer.id,
        }),
        outputUri = schema.new({
            id = id.from(_N, "GetRunOutput", "outputUri"),
            type = "string",
            name = "outputUri",
            target_id = prelude.String.id,
        }),
        logLevel = schema.new({
            id = id.from(_N, "GetRunOutput", "logLevel"),
            type = "string",
            name = "logLevel",
            target_id = prelude.String.id,
        }),
        resourceDigests = schema.new({
            id = id.from(_N, "GetRunOutput", "resourceDigests"),
            type = "map",
            name = "resourceDigests",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        startedBy = schema.new({
            id = id.from(_N, "GetRunOutput", "startedBy"),
            type = "string",
            name = "startedBy",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "GetRunOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        startTime = schema.new({
            id = id.from(_N, "GetRunOutput", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        stopTime = schema.new({
            id = id.from(_N, "GetRunOutput", "stopTime"),
            type = "timestamp",
            name = "stopTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        statusMessage = schema.new({
            id = id.from(_N, "GetRunOutput", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "GetRunOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        accelerators = schema.new({
            id = id.from(_N, "GetRunOutput", "accelerators"),
            type = "string",
            name = "accelerators",
            target_id = prelude.String.id,
        }),
        retentionMode = schema.new({
            id = id.from(_N, "GetRunOutput", "retentionMode"),
            type = "string",
            name = "retentionMode",
            target_id = prelude.String.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "GetRunOutput", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
        logLocation = schema.new({
            id = id.from(_N, "GetRunOutput", "logLocation"),
            type = "structure",
            name = "logLocation",
            target_id = id.from(_N, "RunLogLocation"),
            target = M.RunLogLocation,
        }),
        uuid = schema.new({
            id = id.from(_N, "GetRunOutput", "uuid"),
            type = "string",
            name = "uuid",
            target_id = prelude.String.id,
        }),
        runOutputUri = schema.new({
            id = id.from(_N, "GetRunOutput", "runOutputUri"),
            type = "string",
            name = "runOutputUri",
            target_id = prelude.String.id,
        }),
        storageType = schema.new({
            id = id.from(_N, "GetRunOutput", "storageType"),
            type = "string",
            name = "storageType",
            target_id = prelude.String.id,
        }),
        workflowOwnerId = schema.new({
            id = id.from(_N, "GetRunOutput", "workflowOwnerId"),
            type = "string",
            name = "workflowOwnerId",
            target_id = prelude.String.id,
        }),
        workflowVersionName = schema.new({
            id = id.from(_N, "GetRunOutput", "workflowVersionName"),
            type = "string",
            name = "workflowVersionName",
            target_id = prelude.String.id,
        }),
        workflowUuid = schema.new({
            id = id.from(_N, "GetRunOutput", "workflowUuid"),
            type = "string",
            name = "workflowUuid",
            target_id = prelude.String.id,
        }),
        networkingMode = schema.new({
            id = id.from(_N, "GetRunOutput", "networkingMode"),
            type = "string",
            name = "networkingMode",
            target_id = prelude.String.id,
        }),
        configuration = schema.new({
            id = id.from(_N, "GetRunOutput", "configuration"),
            type = "structure",
            name = "configuration",
            target_id = id.from(_N, "ConfigurationDetails"),
            target = M.ConfigurationDetails,
        }),
        vpcConfig = schema.new({
            id = id.from(_N, "GetRunOutput", "vpcConfig"),
            type = "structure",
            name = "vpcConfig",
            target_id = id.from(_N, "VpcConfigResponse"),
            target = M.VpcConfigResponse,
        }),
    },
})

M.GetRunCacheInput = schema.new({
    id = id.from(_N, "GetRunCacheRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetRunCacheInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetRunCacheOutput = schema.new({
    id = id.from(_N, "GetRunCacheResponse"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "GetRunCacheOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        cacheBehavior = schema.new({
            id = id.from(_N, "GetRunCacheOutput", "cacheBehavior"),
            type = "string",
            name = "cacheBehavior",
            target_id = prelude.String.id,
        }),
        cacheBucketOwnerId = schema.new({
            id = id.from(_N, "GetRunCacheOutput", "cacheBucketOwnerId"),
            type = "string",
            name = "cacheBucketOwnerId",
            target_id = prelude.String.id,
        }),
        cacheS3Uri = schema.new({
            id = id.from(_N, "GetRunCacheOutput", "cacheS3Uri"),
            type = "string",
            name = "cacheS3Uri",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "GetRunCacheOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetRunCacheOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "GetRunCacheOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetRunCacheOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetRunCacheOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "GetRunCacheOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetRunGroupInput = schema.new({
    id = id.from(_N, "GetRunGroupRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetRunGroupInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetRunGroupOutput = schema.new({
    id = id.from(_N, "GetRunGroupResponse"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "GetRunGroupOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "GetRunGroupOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetRunGroupOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        maxCpus = schema.new({
            id = id.from(_N, "GetRunGroupOutput", "maxCpus"),
            type = "integer",
            name = "maxCpus",
            target_id = prelude.Integer.id,
        }),
        maxRuns = schema.new({
            id = id.from(_N, "GetRunGroupOutput", "maxRuns"),
            type = "integer",
            name = "maxRuns",
            target_id = prelude.Integer.id,
        }),
        maxDuration = schema.new({
            id = id.from(_N, "GetRunGroupOutput", "maxDuration"),
            type = "integer",
            name = "maxDuration",
            target_id = prelude.Integer.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "GetRunGroupOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        tags = schema.new({
            id = id.from(_N, "GetRunGroupOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        maxGpus = schema.new({
            id = id.from(_N, "GetRunGroupOutput", "maxGpus"),
            type = "integer",
            name = "maxGpus",
            target_id = prelude.Integer.id,
        }),
    },
})

M.GetRunTaskInput = schema.new({
    id = id.from(_N, "GetRunTaskRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetRunTaskInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        taskId = schema.new({
            id = id.from(_N, "GetRunTaskInput", "taskId"),
            type = "string",
            name = "taskId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ImageDetails = schema.new({
    id = id.from(_N, "ImageDetails"),
    type = "structure",
    members = {
        image = schema.new({
            id = id.from(_N, "ImageDetails", "image"),
            type = "string",
            name = "image",
            target_id = prelude.String.id,
        }),
        imageDigest = schema.new({
            id = id.from(_N, "ImageDetails", "imageDigest"),
            type = "string",
            name = "imageDigest",
            target_id = prelude.String.id,
        }),
        sourceImage = schema.new({
            id = id.from(_N, "ImageDetails", "sourceImage"),
            type = "string",
            name = "sourceImage",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRunTaskOutput = schema.new({
    id = id.from(_N, "GetRunTaskResponse"),
    type = "structure",
    members = {
        taskId = schema.new({
            id = id.from(_N, "GetRunTaskOutput", "taskId"),
            type = "string",
            name = "taskId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetRunTaskOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetRunTaskOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        cpus = schema.new({
            id = id.from(_N, "GetRunTaskOutput", "cpus"),
            type = "integer",
            name = "cpus",
            target_id = prelude.Integer.id,
        }),
        cacheHit = schema.new({
            id = id.from(_N, "GetRunTaskOutput", "cacheHit"),
            type = "boolean",
            name = "cacheHit",
            target_id = prelude.Boolean.id,
        }),
        cacheS3Uri = schema.new({
            id = id.from(_N, "GetRunTaskOutput", "cacheS3Uri"),
            type = "string",
            name = "cacheS3Uri",
            target_id = prelude.String.id,
        }),
        memory = schema.new({
            id = id.from(_N, "GetRunTaskOutput", "memory"),
            type = "integer",
            name = "memory",
            target_id = prelude.Integer.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "GetRunTaskOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        startTime = schema.new({
            id = id.from(_N, "GetRunTaskOutput", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        stopTime = schema.new({
            id = id.from(_N, "GetRunTaskOutput", "stopTime"),
            type = "timestamp",
            name = "stopTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        statusMessage = schema.new({
            id = id.from(_N, "GetRunTaskOutput", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        logStream = schema.new({
            id = id.from(_N, "GetRunTaskOutput", "logStream"),
            type = "string",
            name = "logStream",
            target_id = prelude.String.id,
        }),
        gpus = schema.new({
            id = id.from(_N, "GetRunTaskOutput", "gpus"),
            type = "integer",
            name = "gpus",
            target_id = prelude.Integer.id,
        }),
        instanceType = schema.new({
            id = id.from(_N, "GetRunTaskOutput", "instanceType"),
            type = "string",
            name = "instanceType",
            target_id = prelude.String.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "GetRunTaskOutput", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
        imageDetails = schema.new({
            id = id.from(_N, "GetRunTaskOutput", "imageDetails"),
            type = "structure",
            name = "imageDetails",
            target_id = id.from(_N, "ImageDetails"),
            target = M.ImageDetails,
        }),
    },
})

M.GetS3AccessPolicyInput = schema.new({
    id = id.from(_N, "GetS3AccessPolicyRequest"),
    type = "structure",
    members = {
        s3AccessPointArn = schema.new({
            id = id.from(_N, "GetS3AccessPolicyInput", "s3AccessPointArn"),
            type = "string",
            name = "s3AccessPointArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetS3AccessPolicyOutput = schema.new({
    id = id.from(_N, "GetS3AccessPolicyResponse"),
    type = "structure",
    members = {
        s3AccessPointArn = schema.new({
            id = id.from(_N, "GetS3AccessPolicyOutput", "s3AccessPointArn"),
            type = "string",
            name = "s3AccessPointArn",
            target_id = prelude.String.id,
        }),
        storeId = schema.new({
            id = id.from(_N, "GetS3AccessPolicyOutput", "storeId"),
            type = "string",
            name = "storeId",
            target_id = prelude.String.id,
        }),
        storeType = schema.new({
            id = id.from(_N, "GetS3AccessPolicyOutput", "storeType"),
            type = "string",
            name = "storeType",
            target_id = prelude.String.id,
        }),
        updateTime = schema.new({
            id = id.from(_N, "GetS3AccessPolicyOutput", "updateTime"),
            type = "timestamp",
            name = "updateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        s3AccessPolicy = schema.new({
            id = id.from(_N, "GetS3AccessPolicyOutput", "s3AccessPolicy"),
            type = "string",
            name = "s3AccessPolicy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.MEDIA_TYPE] = { value = "application/json" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetSequenceStoreInput = schema.new({
    id = id.from(_N, "GetSequenceStoreRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetSequenceStoreInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetSequenceStoreOutput = schema.new({
    id = id.from(_N, "GetSequenceStoreResponse"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetSequenceStoreOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "GetSequenceStoreOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetSequenceStoreOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetSequenceStoreOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        sseConfig = schema.new({
            id = id.from(_N, "GetSequenceStoreOutput", "sseConfig"),
            type = "structure",
            name = "sseConfig",
            target_id = id.from(_N, "SseConfig"),
            target = M.SseConfig,
        }),
        creationTime = schema.new({
            id = id.from(_N, "GetSequenceStoreOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        fallbackLocation = schema.new({
            id = id.from(_N, "GetSequenceStoreOutput", "fallbackLocation"),
            type = "string",
            name = "fallbackLocation",
            target_id = prelude.String.id,
        }),
        s3Access = schema.new({
            id = id.from(_N, "GetSequenceStoreOutput", "s3Access"),
            type = "structure",
            name = "s3Access",
            target_id = id.from(_N, "SequenceStoreS3Access"),
            target = M.SequenceStoreS3Access,
        }),
        eTagAlgorithmFamily = schema.new({
            id = id.from(_N, "GetSequenceStoreOutput", "eTagAlgorithmFamily"),
            type = "string",
            name = "eTagAlgorithmFamily",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetSequenceStoreOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "GetSequenceStoreOutput", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        propagatedSetLevelTags = schema.new({
            id = id.from(_N, "GetSequenceStoreOutput", "propagatedSetLevelTags"),
            type = "list",
            name = "propagatedSetLevelTags",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        updateTime = schema.new({
            id = id.from(_N, "GetSequenceStoreOutput", "updateTime"),
            type = "timestamp",
            name = "updateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.GetShareInput = schema.new({
    id = id.from(_N, "GetShareRequest"),
    type = "structure",
    members = {
        shareId = schema.new({
            id = id.from(_N, "GetShareInput", "shareId"),
            type = "string",
            name = "shareId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ShareDetails = schema.new({
    id = id.from(_N, "ShareDetails"),
    type = "structure",
    members = {
        shareId = schema.new({
            id = id.from(_N, "ShareDetails", "shareId"),
            type = "string",
            name = "shareId",
            target_id = prelude.String.id,
        }),
        resourceArn = schema.new({
            id = id.from(_N, "ShareDetails", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
        }),
        resourceId = schema.new({
            id = id.from(_N, "ShareDetails", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
        }),
        principalSubscriber = schema.new({
            id = id.from(_N, "ShareDetails", "principalSubscriber"),
            type = "string",
            name = "principalSubscriber",
            target_id = prelude.String.id,
        }),
        ownerId = schema.new({
            id = id.from(_N, "ShareDetails", "ownerId"),
            type = "string",
            name = "ownerId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "ShareDetails", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "ShareDetails", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        shareName = schema.new({
            id = id.from(_N, "ShareDetails", "shareName"),
            type = "string",
            name = "shareName",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "ShareDetails", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updateTime = schema.new({
            id = id.from(_N, "ShareDetails", "updateTime"),
            type = "timestamp",
            name = "updateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.GetShareOutput = schema.new({
    id = id.from(_N, "GetShareResponse"),
    type = "structure",
    members = {
        share = schema.new({
            id = id.from(_N, "GetShareOutput", "share"),
            type = "structure",
            name = "share",
            target_id = id.from(_N, "ShareDetails"),
            target = M.ShareDetails,
        }),
    },
})

M.GetVariantImportJobInput = schema.new({
    id = id.from(_N, "GetVariantImportRequest"),
    type = "structure",
    members = {
        jobId = schema.new({
            id = id.from(_N, "GetVariantImportJobInput", "jobId"),
            type = "string",
            name = "jobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.VariantImportItemDetail = schema.new({
    id = id.from(_N, "VariantImportItemDetail"),
    type = "structure",
    members = {
        source = schema.new({
            id = id.from(_N, "VariantImportItemDetail", "source"),
            type = "string",
            name = "source",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        jobStatus = schema.new({
            id = id.from(_N, "VariantImportItemDetail", "jobStatus"),
            type = "string",
            name = "jobStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusMessage = schema.new({
            id = id.from(_N, "VariantImportItemDetail", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.GetVariantImportJobOutput = schema.new({
    id = id.from(_N, "GetVariantImportResponse"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetVariantImportJobOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destinationName = schema.new({
            id = id.from(_N, "GetVariantImportJobOutput", "destinationName"),
            type = "string",
            name = "destinationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "GetVariantImportJobOutput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetVariantImportJobOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusMessage = schema.new({
            id = id.from(_N, "GetVariantImportJobOutput", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTime = schema.new({
            id = id.from(_N, "GetVariantImportJobOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updateTime = schema.new({
            id = id.from(_N, "GetVariantImportJobOutput", "updateTime"),
            type = "timestamp",
            name = "updateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        completionTime = schema.new({
            id = id.from(_N, "GetVariantImportJobOutput", "completionTime"),
            type = "timestamp",
            name = "completionTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        items = schema.new({
            id = id.from(_N, "GetVariantImportJobOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.VariantImportItemDetail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        runLeftNormalization = schema.new({
            id = id.from(_N, "GetVariantImportJobOutput", "runLeftNormalization"),
            type = "boolean",
            name = "runLeftNormalization",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        annotationFields = schema.new({
            id = id.from(_N, "GetVariantImportJobOutput", "annotationFields"),
            type = "map",
            name = "annotationFields",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetVariantStoreInput = schema.new({
    id = id.from(_N, "GetVariantStoreRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "GetVariantStoreInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetVariantStoreOutput = schema.new({
    id = id.from(_N, "GetVariantStoreResponse"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetVariantStoreOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        reference = schema.new({
            id = id.from(_N, "GetVariantStoreOutput", "reference"),
            type = "union",
            name = "reference",
            target_id = id.from(_N, "ReferenceItem"),
            target = M.ReferenceItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetVariantStoreOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        storeArn = schema.new({
            id = id.from(_N, "GetVariantStoreOutput", "storeArn"),
            type = "string",
            name = "storeArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetVariantStoreOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetVariantStoreOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sseConfig = schema.new({
            id = id.from(_N, "GetVariantStoreOutput", "sseConfig"),
            type = "structure",
            name = "sseConfig",
            target_id = id.from(_N, "SseConfig"),
            target = M.SseConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTime = schema.new({
            id = id.from(_N, "GetVariantStoreOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updateTime = schema.new({
            id = id.from(_N, "GetVariantStoreOutput", "updateTime"),
            type = "timestamp",
            name = "updateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "GetVariantStoreOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusMessage = schema.new({
            id = id.from(_N, "GetVariantStoreOutput", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        storeSizeBytes = schema.new({
            id = id.from(_N, "GetVariantStoreOutput", "storeSizeBytes"),
            type = "long",
            name = "storeSizeBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetWorkflowInput = schema.new({
    id = id.from(_N, "GetWorkflowRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetWorkflowInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "GetWorkflowInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "type" },
            },
        }),
        export = schema.new({
            id = id.from(_N, "GetWorkflowInput", "export"),
            type = "list",
            name = "export",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "export" },
            },
        }),
        workflowOwnerId = schema.new({
            id = id.from(_N, "GetWorkflowInput", "workflowOwnerId"),
            type = "string",
            name = "workflowOwnerId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "workflowOwnerId" },
            },
        }),
    },
})

M.GetWorkflowOutput = schema.new({
    id = id.from(_N, "GetWorkflowResponse"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        engine = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "engine"),
            type = "string",
            name = "engine",
            target_id = prelude.String.id,
        }),
        definition = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "definition"),
            type = "string",
            name = "definition",
            target_id = prelude.String.id,
        }),
        main = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "main"),
            type = "string",
            name = "main",
            target_id = prelude.String.id,
        }),
        digest = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "digest"),
            type = "string",
            name = "digest",
            target_id = prelude.String.id,
        }),
        parameterTemplate = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "parameterTemplate"),
            type = "map",
            name = "parameterTemplate",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.WorkflowParameter,
        }),
        storageCapacity = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "storageCapacity"),
            type = "integer",
            name = "storageCapacity",
            target_id = prelude.Integer.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        statusMessage = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        metadata = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "metadata"),
            type = "map",
            name = "metadata",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        accelerators = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "accelerators"),
            type = "string",
            name = "accelerators",
            target_id = prelude.String.id,
        }),
        storageType = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "storageType"),
            type = "string",
            name = "storageType",
            target_id = prelude.String.id,
        }),
        uuid = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "uuid"),
            type = "string",
            name = "uuid",
            target_id = prelude.String.id,
        }),
        containerRegistryMap = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "containerRegistryMap"),
            type = "structure",
            name = "containerRegistryMap",
            target_id = id.from(_N, "ContainerRegistryMap"),
            target = M.ContainerRegistryMap,
        }),
        readme = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "readme"),
            type = "string",
            name = "readme",
            target_id = prelude.String.id,
        }),
        definitionRepositoryDetails = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "definitionRepositoryDetails"),
            type = "structure",
            name = "definitionRepositoryDetails",
            target_id = id.from(_N, "DefinitionRepositoryDetails"),
            target = M.DefinitionRepositoryDetails,
        }),
        readmePath = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "readmePath"),
            type = "string",
            name = "readmePath",
            target_id = prelude.String.id,
        }),
    },
})

M.GetWorkflowVersionInput = schema.new({
    id = id.from(_N, "GetWorkflowVersionRequest"),
    type = "structure",
    members = {
        workflowId = schema.new({
            id = id.from(_N, "GetWorkflowVersionInput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        versionName = schema.new({
            id = id.from(_N, "GetWorkflowVersionInput", "versionName"),
            type = "string",
            name = "versionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "GetWorkflowVersionInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "type" },
            },
        }),
        export = schema.new({
            id = id.from(_N, "GetWorkflowVersionInput", "export"),
            type = "list",
            name = "export",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "export" },
            },
        }),
        workflowOwnerId = schema.new({
            id = id.from(_N, "GetWorkflowVersionInput", "workflowOwnerId"),
            type = "string",
            name = "workflowOwnerId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "workflowOwnerId" },
            },
        }),
    },
})

M.GetWorkflowVersionOutput = schema.new({
    id = id.from(_N, "GetWorkflowVersionResponse"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "GetWorkflowVersionOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        workflowId = schema.new({
            id = id.from(_N, "GetWorkflowVersionOutput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
        }),
        versionName = schema.new({
            id = id.from(_N, "GetWorkflowVersionOutput", "versionName"),
            type = "string",
            name = "versionName",
            target_id = prelude.String.id,
        }),
        accelerators = schema.new({
            id = id.from(_N, "GetWorkflowVersionOutput", "accelerators"),
            type = "string",
            name = "accelerators",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "GetWorkflowVersionOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetWorkflowVersionOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        definition = schema.new({
            id = id.from(_N, "GetWorkflowVersionOutput", "definition"),
            type = "string",
            name = "definition",
            target_id = prelude.String.id,
        }),
        digest = schema.new({
            id = id.from(_N, "GetWorkflowVersionOutput", "digest"),
            type = "string",
            name = "digest",
            target_id = prelude.String.id,
        }),
        engine = schema.new({
            id = id.from(_N, "GetWorkflowVersionOutput", "engine"),
            type = "string",
            name = "engine",
            target_id = prelude.String.id,
        }),
        main = schema.new({
            id = id.from(_N, "GetWorkflowVersionOutput", "main"),
            type = "string",
            name = "main",
            target_id = prelude.String.id,
        }),
        metadata = schema.new({
            id = id.from(_N, "GetWorkflowVersionOutput", "metadata"),
            type = "map",
            name = "metadata",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        parameterTemplate = schema.new({
            id = id.from(_N, "GetWorkflowVersionOutput", "parameterTemplate"),
            type = "map",
            name = "parameterTemplate",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.WorkflowParameter,
        }),
        status = schema.new({
            id = id.from(_N, "GetWorkflowVersionOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "GetWorkflowVersionOutput", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        storageType = schema.new({
            id = id.from(_N, "GetWorkflowVersionOutput", "storageType"),
            type = "string",
            name = "storageType",
            target_id = prelude.String.id,
        }),
        storageCapacity = schema.new({
            id = id.from(_N, "GetWorkflowVersionOutput", "storageCapacity"),
            type = "integer",
            name = "storageCapacity",
            target_id = prelude.Integer.id,
        }),
        type = schema.new({
            id = id.from(_N, "GetWorkflowVersionOutput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "GetWorkflowVersionOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        uuid = schema.new({
            id = id.from(_N, "GetWorkflowVersionOutput", "uuid"),
            type = "string",
            name = "uuid",
            target_id = prelude.String.id,
        }),
        workflowBucketOwnerId = schema.new({
            id = id.from(_N, "GetWorkflowVersionOutput", "workflowBucketOwnerId"),
            type = "string",
            name = "workflowBucketOwnerId",
            target_id = prelude.String.id,
        }),
        containerRegistryMap = schema.new({
            id = id.from(_N, "GetWorkflowVersionOutput", "containerRegistryMap"),
            type = "structure",
            name = "containerRegistryMap",
            target_id = id.from(_N, "ContainerRegistryMap"),
            target = M.ContainerRegistryMap,
        }),
        readme = schema.new({
            id = id.from(_N, "GetWorkflowVersionOutput", "readme"),
            type = "string",
            name = "readme",
            target_id = prelude.String.id,
        }),
        definitionRepositoryDetails = schema.new({
            id = id.from(_N, "GetWorkflowVersionOutput", "definitionRepositoryDetails"),
            type = "structure",
            name = "definitionRepositoryDetails",
            target_id = id.from(_N, "DefinitionRepositoryDetails"),
            target = M.DefinitionRepositoryDetails,
        }),
        readmePath = schema.new({
            id = id.from(_N, "GetWorkflowVersionOutput", "readmePath"),
            type = "string",
            name = "readmePath",
            target_id = prelude.String.id,
        }),
    },
})

M.ImportReadSetFilter = schema.new({
    id = id.from(_N, "ImportReadSetFilter"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "ImportReadSetFilter", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        createdAfter = schema.new({
            id = id.from(_N, "ImportReadSetFilter", "createdAfter"),
            type = "timestamp",
            name = "createdAfter",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        createdBefore = schema.new({
            id = id.from(_N, "ImportReadSetFilter", "createdBefore"),
            type = "timestamp",
            name = "createdBefore",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ImportReadSetJobItem = schema.new({
    id = id.from(_N, "ImportReadSetJobItem"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ImportReadSetJobItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sequenceStoreId = schema.new({
            id = id.from(_N, "ImportReadSetJobItem", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "ImportReadSetJobItem", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "ImportReadSetJobItem", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTime = schema.new({
            id = id.from(_N, "ImportReadSetJobItem", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        completionTime = schema.new({
            id = id.from(_N, "ImportReadSetJobItem", "completionTime"),
            type = "timestamp",
            name = "completionTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ImportReferenceFilter = schema.new({
    id = id.from(_N, "ImportReferenceFilter"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "ImportReferenceFilter", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        createdAfter = schema.new({
            id = id.from(_N, "ImportReferenceFilter", "createdAfter"),
            type = "timestamp",
            name = "createdAfter",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        createdBefore = schema.new({
            id = id.from(_N, "ImportReferenceFilter", "createdBefore"),
            type = "timestamp",
            name = "createdBefore",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ImportReferenceJobItem = schema.new({
    id = id.from(_N, "ImportReferenceJobItem"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ImportReferenceJobItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        referenceStoreId = schema.new({
            id = id.from(_N, "ImportReferenceJobItem", "referenceStoreId"),
            type = "string",
            name = "referenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "ImportReferenceJobItem", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "ImportReferenceJobItem", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTime = schema.new({
            id = id.from(_N, "ImportReferenceJobItem", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        completionTime = schema.new({
            id = id.from(_N, "ImportReferenceJobItem", "completionTime"),
            type = "timestamp",
            name = "completionTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListBatchInput = schema.new({
    id = id.from(_N, "ListBatchRequest"),
    type = "structure",
    members = {
        maxItems = schema.new({
            id = id.from(_N, "ListBatchInput", "maxItems"),
            type = "integer",
            name = "maxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxItems" },
            },
        }),
        startingToken = schema.new({
            id = id.from(_N, "ListBatchInput", "startingToken"),
            type = "string",
            name = "startingToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "startingToken" },
            },
        }),
        status = schema.new({
            id = id.from(_N, "ListBatchInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "status" },
            },
        }),
        name = schema.new({
            id = id.from(_N, "ListBatchInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "name" },
            },
        }),
        runGroupId = schema.new({
            id = id.from(_N, "ListBatchInput", "runGroupId"),
            type = "string",
            name = "runGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "runGroupId" },
            },
        }),
    },
})

M.ListBatchOutput = schema.new({
    id = id.from(_N, "ListBatchResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListBatchOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.BatchListItem,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBatchOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMultipartReadSetUploadsInput = schema.new({
    id = id.from(_N, "ListMultipartReadSetUploadsRequest"),
    type = "structure",
    members = {
        sequenceStoreId = schema.new({
            id = id.from(_N, "ListMultipartReadSetUploadsInput", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListMultipartReadSetUploadsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListMultipartReadSetUploadsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.MultipartReadSetUploadListItem = schema.new({
    id = id.from(_N, "MultipartReadSetUploadListItem"),
    type = "structure",
    members = {
        sequenceStoreId = schema.new({
            id = id.from(_N, "MultipartReadSetUploadListItem", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        uploadId = schema.new({
            id = id.from(_N, "MultipartReadSetUploadListItem", "uploadId"),
            type = "string",
            name = "uploadId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceFileType = schema.new({
            id = id.from(_N, "MultipartReadSetUploadListItem", "sourceFileType"),
            type = "string",
            name = "sourceFileType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        subjectId = schema.new({
            id = id.from(_N, "MultipartReadSetUploadListItem", "subjectId"),
            type = "string",
            name = "subjectId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sampleId = schema.new({
            id = id.from(_N, "MultipartReadSetUploadListItem", "sampleId"),
            type = "string",
            name = "sampleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        generatedFrom = schema.new({
            id = id.from(_N, "MultipartReadSetUploadListItem", "generatedFrom"),
            type = "string",
            name = "generatedFrom",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        referenceArn = schema.new({
            id = id.from(_N, "MultipartReadSetUploadListItem", "referenceArn"),
            type = "string",
            name = "referenceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "MultipartReadSetUploadListItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "MultipartReadSetUploadListItem", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "MultipartReadSetUploadListItem", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        creationTime = schema.new({
            id = id.from(_N, "MultipartReadSetUploadListItem", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListMultipartReadSetUploadsOutput = schema.new({
    id = id.from(_N, "ListMultipartReadSetUploadsResponse"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListMultipartReadSetUploadsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        uploads = schema.new({
            id = id.from(_N, "ListMultipartReadSetUploadsOutput", "uploads"),
            type = "list",
            name = "uploads",
            target_id = prelude.Document.id,
            list_member = M.MultipartReadSetUploadListItem,
        }),
    },
})

M.ListReadSetActivationJobsInput = schema.new({
    id = id.from(_N, "ListReadSetActivationJobsRequest"),
    type = "structure",
    members = {
        sequenceStoreId = schema.new({
            id = id.from(_N, "ListReadSetActivationJobsInput", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListReadSetActivationJobsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListReadSetActivationJobsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        filter = schema.new({
            id = id.from(_N, "ListReadSetActivationJobsInput", "filter"),
            type = "structure",
            name = "filter",
            target_id = id.from(_N, "ActivateReadSetFilter"),
            target = M.ActivateReadSetFilter,
        }),
    },
})

M.ListReadSetActivationJobsOutput = schema.new({
    id = id.from(_N, "ListReadSetActivationJobsResponse"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListReadSetActivationJobsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        activationJobs = schema.new({
            id = id.from(_N, "ListReadSetActivationJobsOutput", "activationJobs"),
            type = "list",
            name = "activationJobs",
            target_id = prelude.Document.id,
            list_member = M.ActivateReadSetJobItem,
        }),
    },
})

M.ListReadSetExportJobsInput = schema.new({
    id = id.from(_N, "ListReadSetExportJobsRequest"),
    type = "structure",
    members = {
        sequenceStoreId = schema.new({
            id = id.from(_N, "ListReadSetExportJobsInput", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListReadSetExportJobsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListReadSetExportJobsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        filter = schema.new({
            id = id.from(_N, "ListReadSetExportJobsInput", "filter"),
            type = "structure",
            name = "filter",
            target_id = id.from(_N, "ExportReadSetFilter"),
            target = M.ExportReadSetFilter,
        }),
    },
})

M.ListReadSetExportJobsOutput = schema.new({
    id = id.from(_N, "ListReadSetExportJobsResponse"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListReadSetExportJobsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        exportJobs = schema.new({
            id = id.from(_N, "ListReadSetExportJobsOutput", "exportJobs"),
            type = "list",
            name = "exportJobs",
            target_id = prelude.Document.id,
            list_member = M.ExportReadSetJobDetail,
        }),
    },
})

M.ListReadSetImportJobsInput = schema.new({
    id = id.from(_N, "ListReadSetImportJobsRequest"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListReadSetImportJobsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListReadSetImportJobsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        sequenceStoreId = schema.new({
            id = id.from(_N, "ListReadSetImportJobsInput", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        filter = schema.new({
            id = id.from(_N, "ListReadSetImportJobsInput", "filter"),
            type = "structure",
            name = "filter",
            target_id = id.from(_N, "ImportReadSetFilter"),
            target = M.ImportReadSetFilter,
        }),
    },
})

M.ListReadSetImportJobsOutput = schema.new({
    id = id.from(_N, "ListReadSetImportJobsResponse"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListReadSetImportJobsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        importJobs = schema.new({
            id = id.from(_N, "ListReadSetImportJobsOutput", "importJobs"),
            type = "list",
            name = "importJobs",
            target_id = prelude.Document.id,
            list_member = M.ImportReadSetJobItem,
        }),
    },
})

M.ReadSetFilter = schema.new({
    id = id.from(_N, "ReadSetFilter"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ReadSetFilter", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "ReadSetFilter", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        referenceArn = schema.new({
            id = id.from(_N, "ReadSetFilter", "referenceArn"),
            type = "string",
            name = "referenceArn",
            target_id = prelude.String.id,
        }),
        createdAfter = schema.new({
            id = id.from(_N, "ReadSetFilter", "createdAfter"),
            type = "timestamp",
            name = "createdAfter",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        createdBefore = schema.new({
            id = id.from(_N, "ReadSetFilter", "createdBefore"),
            type = "timestamp",
            name = "createdBefore",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        sampleId = schema.new({
            id = id.from(_N, "ReadSetFilter", "sampleId"),
            type = "string",
            name = "sampleId",
            target_id = prelude.String.id,
        }),
        subjectId = schema.new({
            id = id.from(_N, "ReadSetFilter", "subjectId"),
            type = "string",
            name = "subjectId",
            target_id = prelude.String.id,
        }),
        generatedFrom = schema.new({
            id = id.from(_N, "ReadSetFilter", "generatedFrom"),
            type = "string",
            name = "generatedFrom",
            target_id = prelude.String.id,
        }),
        creationType = schema.new({
            id = id.from(_N, "ReadSetFilter", "creationType"),
            type = "string",
            name = "creationType",
            target_id = prelude.String.id,
        }),
    },
})

M.ListReadSetsInput = schema.new({
    id = id.from(_N, "ListReadSetsRequest"),
    type = "structure",
    members = {
        sequenceStoreId = schema.new({
            id = id.from(_N, "ListReadSetsInput", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListReadSetsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListReadSetsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        filter = schema.new({
            id = id.from(_N, "ListReadSetsInput", "filter"),
            type = "structure",
            name = "filter",
            target_id = id.from(_N, "ReadSetFilter"),
            target = M.ReadSetFilter,
        }),
    },
})

M.ReadSetListItem = schema.new({
    id = id.from(_N, "ReadSetListItem"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ReadSetListItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "ReadSetListItem", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sequenceStoreId = schema.new({
            id = id.from(_N, "ReadSetListItem", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        subjectId = schema.new({
            id = id.from(_N, "ReadSetListItem", "subjectId"),
            type = "string",
            name = "subjectId",
            target_id = prelude.String.id,
        }),
        sampleId = schema.new({
            id = id.from(_N, "ReadSetListItem", "sampleId"),
            type = "string",
            name = "sampleId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "ReadSetListItem", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "ReadSetListItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "ReadSetListItem", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        referenceArn = schema.new({
            id = id.from(_N, "ReadSetListItem", "referenceArn"),
            type = "string",
            name = "referenceArn",
            target_id = prelude.String.id,
        }),
        fileType = schema.new({
            id = id.from(_N, "ReadSetListItem", "fileType"),
            type = "string",
            name = "fileType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sequenceInformation = schema.new({
            id = id.from(_N, "ReadSetListItem", "sequenceInformation"),
            type = "structure",
            name = "sequenceInformation",
            target_id = id.from(_N, "SequenceInformation"),
            target = M.SequenceInformation,
        }),
        creationTime = schema.new({
            id = id.from(_N, "ReadSetListItem", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        statusMessage = schema.new({
            id = id.from(_N, "ReadSetListItem", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        creationType = schema.new({
            id = id.from(_N, "ReadSetListItem", "creationType"),
            type = "string",
            name = "creationType",
            target_id = prelude.String.id,
        }),
        etag = schema.new({
            id = id.from(_N, "ReadSetListItem", "etag"),
            type = "structure",
            name = "etag",
            target_id = id.from(_N, "ETag"),
            target = M.ETag,
        }),
    },
})

M.ListReadSetsOutput = schema.new({
    id = id.from(_N, "ListReadSetsResponse"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListReadSetsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        readSets = schema.new({
            id = id.from(_N, "ListReadSetsOutput", "readSets"),
            type = "list",
            name = "readSets",
            target_id = prelude.Document.id,
            list_member = M.ReadSetListItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ReadSetUploadPartListFilter = schema.new({
    id = id.from(_N, "ReadSetUploadPartListFilter"),
    type = "structure",
    members = {
        createdAfter = schema.new({
            id = id.from(_N, "ReadSetUploadPartListFilter", "createdAfter"),
            type = "timestamp",
            name = "createdAfter",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        createdBefore = schema.new({
            id = id.from(_N, "ReadSetUploadPartListFilter", "createdBefore"),
            type = "timestamp",
            name = "createdBefore",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListReadSetUploadPartsInput = schema.new({
    id = id.from(_N, "ListReadSetUploadPartsRequest"),
    type = "structure",
    members = {
        sequenceStoreId = schema.new({
            id = id.from(_N, "ListReadSetUploadPartsInput", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        uploadId = schema.new({
            id = id.from(_N, "ListReadSetUploadPartsInput", "uploadId"),
            type = "string",
            name = "uploadId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        partSource = schema.new({
            id = id.from(_N, "ListReadSetUploadPartsInput", "partSource"),
            type = "string",
            name = "partSource",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListReadSetUploadPartsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListReadSetUploadPartsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        filter = schema.new({
            id = id.from(_N, "ListReadSetUploadPartsInput", "filter"),
            type = "structure",
            name = "filter",
            target_id = id.from(_N, "ReadSetUploadPartListFilter"),
            target = M.ReadSetUploadPartListFilter,
        }),
    },
})

M.ReadSetUploadPartListItem = schema.new({
    id = id.from(_N, "ReadSetUploadPartListItem"),
    type = "structure",
    members = {
        partNumber = schema.new({
            id = id.from(_N, "ReadSetUploadPartListItem", "partNumber"),
            type = "integer",
            name = "partNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        partSize = schema.new({
            id = id.from(_N, "ReadSetUploadPartListItem", "partSize"),
            type = "long",
            name = "partSize",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        partSource = schema.new({
            id = id.from(_N, "ReadSetUploadPartListItem", "partSource"),
            type = "string",
            name = "partSource",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        checksum = schema.new({
            id = id.from(_N, "ReadSetUploadPartListItem", "checksum"),
            type = "string",
            name = "checksum",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTime = schema.new({
            id = id.from(_N, "ReadSetUploadPartListItem", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        lastUpdatedTime = schema.new({
            id = id.from(_N, "ReadSetUploadPartListItem", "lastUpdatedTime"),
            type = "timestamp",
            name = "lastUpdatedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListReadSetUploadPartsOutput = schema.new({
    id = id.from(_N, "ListReadSetUploadPartsResponse"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListReadSetUploadPartsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        parts = schema.new({
            id = id.from(_N, "ListReadSetUploadPartsOutput", "parts"),
            type = "list",
            name = "parts",
            target_id = prelude.Document.id,
            list_member = M.ReadSetUploadPartListItem,
        }),
    },
})

M.ListReferenceImportJobsInput = schema.new({
    id = id.from(_N, "ListReferenceImportJobsRequest"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListReferenceImportJobsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListReferenceImportJobsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        referenceStoreId = schema.new({
            id = id.from(_N, "ListReferenceImportJobsInput", "referenceStoreId"),
            type = "string",
            name = "referenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        filter = schema.new({
            id = id.from(_N, "ListReferenceImportJobsInput", "filter"),
            type = "structure",
            name = "filter",
            target_id = id.from(_N, "ImportReferenceFilter"),
            target = M.ImportReferenceFilter,
        }),
    },
})

M.ListReferenceImportJobsOutput = schema.new({
    id = id.from(_N, "ListReferenceImportJobsResponse"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListReferenceImportJobsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        importJobs = schema.new({
            id = id.from(_N, "ListReferenceImportJobsOutput", "importJobs"),
            type = "list",
            name = "importJobs",
            target_id = prelude.Document.id,
            list_member = M.ImportReferenceJobItem,
        }),
    },
})

M.ReferenceFilter = schema.new({
    id = id.from(_N, "ReferenceFilter"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ReferenceFilter", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        md5 = schema.new({
            id = id.from(_N, "ReferenceFilter", "md5"),
            type = "string",
            name = "md5",
            target_id = prelude.String.id,
        }),
        createdAfter = schema.new({
            id = id.from(_N, "ReferenceFilter", "createdAfter"),
            type = "timestamp",
            name = "createdAfter",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        createdBefore = schema.new({
            id = id.from(_N, "ReferenceFilter", "createdBefore"),
            type = "timestamp",
            name = "createdBefore",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListReferencesInput = schema.new({
    id = id.from(_N, "ListReferencesRequest"),
    type = "structure",
    members = {
        referenceStoreId = schema.new({
            id = id.from(_N, "ListReferencesInput", "referenceStoreId"),
            type = "string",
            name = "referenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListReferencesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListReferencesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        filter = schema.new({
            id = id.from(_N, "ListReferencesInput", "filter"),
            type = "structure",
            name = "filter",
            target_id = id.from(_N, "ReferenceFilter"),
            target = M.ReferenceFilter,
        }),
    },
})

M.ReferenceListItem = schema.new({
    id = id.from(_N, "ReferenceListItem"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ReferenceListItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "ReferenceListItem", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        referenceStoreId = schema.new({
            id = id.from(_N, "ReferenceListItem", "referenceStoreId"),
            type = "string",
            name = "referenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        md5 = schema.new({
            id = id.from(_N, "ReferenceListItem", "md5"),
            type = "string",
            name = "md5",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "ReferenceListItem", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "ReferenceListItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "ReferenceListItem", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "ReferenceListItem", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updateTime = schema.new({
            id = id.from(_N, "ReferenceListItem", "updateTime"),
            type = "timestamp",
            name = "updateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListReferencesOutput = schema.new({
    id = id.from(_N, "ListReferencesResponse"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListReferencesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        references = schema.new({
            id = id.from(_N, "ListReferencesOutput", "references"),
            type = "list",
            name = "references",
            target_id = prelude.Document.id,
            list_member = M.ReferenceListItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ReferenceStoreFilter = schema.new({
    id = id.from(_N, "ReferenceStoreFilter"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ReferenceStoreFilter", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        createdAfter = schema.new({
            id = id.from(_N, "ReferenceStoreFilter", "createdAfter"),
            type = "timestamp",
            name = "createdAfter",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        createdBefore = schema.new({
            id = id.from(_N, "ReferenceStoreFilter", "createdBefore"),
            type = "timestamp",
            name = "createdBefore",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListReferenceStoresInput = schema.new({
    id = id.from(_N, "ListReferenceStoresRequest"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListReferenceStoresInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListReferenceStoresInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        filter = schema.new({
            id = id.from(_N, "ListReferenceStoresInput", "filter"),
            type = "structure",
            name = "filter",
            target_id = id.from(_N, "ReferenceStoreFilter"),
            target = M.ReferenceStoreFilter,
        }),
    },
})

M.ReferenceStoreDetail = schema.new({
    id = id.from(_N, "ReferenceStoreDetail"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "ReferenceStoreDetail", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "ReferenceStoreDetail", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "ReferenceStoreDetail", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "ReferenceStoreDetail", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        sseConfig = schema.new({
            id = id.from(_N, "ReferenceStoreDetail", "sseConfig"),
            type = "structure",
            name = "sseConfig",
            target_id = id.from(_N, "SseConfig"),
            target = M.SseConfig,
        }),
        creationTime = schema.new({
            id = id.from(_N, "ReferenceStoreDetail", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListReferenceStoresOutput = schema.new({
    id = id.from(_N, "ListReferenceStoresResponse"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListReferenceStoresOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        referenceStores = schema.new({
            id = id.from(_N, "ListReferenceStoresOutput", "referenceStores"),
            type = "list",
            name = "referenceStores",
            target_id = prelude.Document.id,
            list_member = M.ReferenceStoreDetail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListRunCachesInput = schema.new({
    id = id.from(_N, "ListRunCachesRequest"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListRunCachesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        startingToken = schema.new({
            id = id.from(_N, "ListRunCachesInput", "startingToken"),
            type = "string",
            name = "startingToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "startingToken" },
            },
        }),
    },
})

M.RunCacheListItem = schema.new({
    id = id.from(_N, "RunCacheListItem"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "RunCacheListItem", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        cacheBehavior = schema.new({
            id = id.from(_N, "RunCacheListItem", "cacheBehavior"),
            type = "string",
            name = "cacheBehavior",
            target_id = prelude.String.id,
        }),
        cacheS3Uri = schema.new({
            id = id.from(_N, "RunCacheListItem", "cacheS3Uri"),
            type = "string",
            name = "cacheS3Uri",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "RunCacheListItem", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        id = schema.new({
            id = id.from(_N, "RunCacheListItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "RunCacheListItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "RunCacheListItem", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRunCachesOutput = schema.new({
    id = id.from(_N, "ListRunCachesResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListRunCachesOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.RunCacheListItem,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListRunCachesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRunGroupsInput = schema.new({
    id = id.from(_N, "ListRunGroupsRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ListRunGroupsInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "name" },
            },
        }),
        startingToken = schema.new({
            id = id.from(_N, "ListRunGroupsInput", "startingToken"),
            type = "string",
            name = "startingToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "startingToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListRunGroupsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.RunGroupListItem = schema.new({
    id = id.from(_N, "RunGroupListItem"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "RunGroupListItem", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "RunGroupListItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "RunGroupListItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        maxCpus = schema.new({
            id = id.from(_N, "RunGroupListItem", "maxCpus"),
            type = "integer",
            name = "maxCpus",
            target_id = prelude.Integer.id,
        }),
        maxRuns = schema.new({
            id = id.from(_N, "RunGroupListItem", "maxRuns"),
            type = "integer",
            name = "maxRuns",
            target_id = prelude.Integer.id,
        }),
        maxDuration = schema.new({
            id = id.from(_N, "RunGroupListItem", "maxDuration"),
            type = "integer",
            name = "maxDuration",
            target_id = prelude.Integer.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "RunGroupListItem", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        maxGpus = schema.new({
            id = id.from(_N, "RunGroupListItem", "maxGpus"),
            type = "integer",
            name = "maxGpus",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListRunGroupsOutput = schema.new({
    id = id.from(_N, "ListRunGroupsResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListRunGroupsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.RunGroupListItem,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListRunGroupsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRunsInput = schema.new({
    id = id.from(_N, "ListRunsRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ListRunsInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "name" },
            },
        }),
        runGroupId = schema.new({
            id = id.from(_N, "ListRunsInput", "runGroupId"),
            type = "string",
            name = "runGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "runGroupId" },
            },
        }),
        batchId = schema.new({
            id = id.from(_N, "ListRunsInput", "batchId"),
            type = "string",
            name = "batchId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "batchId" },
            },
        }),
        startingToken = schema.new({
            id = id.from(_N, "ListRunsInput", "startingToken"),
            type = "string",
            name = "startingToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "startingToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListRunsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        status = schema.new({
            id = id.from(_N, "ListRunsInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "status" },
            },
        }),
    },
})

M.RunListItem = schema.new({
    id = id.from(_N, "RunListItem"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "RunListItem", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "RunListItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "RunListItem", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        workflowId = schema.new({
            id = id.from(_N, "RunListItem", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
        }),
        batchId = schema.new({
            id = id.from(_N, "RunListItem", "batchId"),
            type = "string",
            name = "batchId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "RunListItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        priority = schema.new({
            id = id.from(_N, "RunListItem", "priority"),
            type = "integer",
            name = "priority",
            target_id = prelude.Integer.id,
        }),
        storageCapacity = schema.new({
            id = id.from(_N, "RunListItem", "storageCapacity"),
            type = "integer",
            name = "storageCapacity",
            target_id = prelude.Integer.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "RunListItem", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        startTime = schema.new({
            id = id.from(_N, "RunListItem", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        stopTime = schema.new({
            id = id.from(_N, "RunListItem", "stopTime"),
            type = "timestamp",
            name = "stopTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        storageType = schema.new({
            id = id.from(_N, "RunListItem", "storageType"),
            type = "string",
            name = "storageType",
            target_id = prelude.String.id,
        }),
        workflowVersionName = schema.new({
            id = id.from(_N, "RunListItem", "workflowVersionName"),
            type = "string",
            name = "workflowVersionName",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRunsOutput = schema.new({
    id = id.from(_N, "ListRunsResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListRunsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.RunListItem,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListRunsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRunsInBatchInput = schema.new({
    id = id.from(_N, "ListRunsInBatchRequest"),
    type = "structure",
    members = {
        batchId = schema.new({
            id = id.from(_N, "ListRunsInBatchInput", "batchId"),
            type = "string",
            name = "batchId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxItems = schema.new({
            id = id.from(_N, "ListRunsInBatchInput", "maxItems"),
            type = "integer",
            name = "maxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxItems" },
            },
        }),
        startingToken = schema.new({
            id = id.from(_N, "ListRunsInBatchInput", "startingToken"),
            type = "string",
            name = "startingToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "startingToken" },
            },
        }),
        submissionStatus = schema.new({
            id = id.from(_N, "ListRunsInBatchInput", "submissionStatus"),
            type = "string",
            name = "submissionStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "submissionStatus" },
            },
        }),
        runSettingId = schema.new({
            id = id.from(_N, "ListRunsInBatchInput", "runSettingId"),
            type = "string",
            name = "runSettingId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "runSettingId" },
            },
        }),
        runId = schema.new({
            id = id.from(_N, "ListRunsInBatchInput", "runId"),
            type = "string",
            name = "runId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "runId" },
            },
        }),
    },
})

M.RunBatchListItem = schema.new({
    id = id.from(_N, "RunBatchListItem"),
    type = "structure",
    members = {
        runSettingId = schema.new({
            id = id.from(_N, "RunBatchListItem", "runSettingId"),
            type = "string",
            name = "runSettingId",
            target_id = prelude.String.id,
        }),
        runId = schema.new({
            id = id.from(_N, "RunBatchListItem", "runId"),
            type = "string",
            name = "runId",
            target_id = prelude.String.id,
        }),
        runInternalUuid = schema.new({
            id = id.from(_N, "RunBatchListItem", "runInternalUuid"),
            type = "string",
            name = "runInternalUuid",
            target_id = prelude.String.id,
        }),
        runArn = schema.new({
            id = id.from(_N, "RunBatchListItem", "runArn"),
            type = "string",
            name = "runArn",
            target_id = prelude.String.id,
        }),
        submissionStatus = schema.new({
            id = id.from(_N, "RunBatchListItem", "submissionStatus"),
            type = "string",
            name = "submissionStatus",
            target_id = prelude.String.id,
        }),
        submissionFailureReason = schema.new({
            id = id.from(_N, "RunBatchListItem", "submissionFailureReason"),
            type = "string",
            name = "submissionFailureReason",
            target_id = prelude.String.id,
        }),
        submissionFailureMessage = schema.new({
            id = id.from(_N, "RunBatchListItem", "submissionFailureMessage"),
            type = "string",
            name = "submissionFailureMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRunsInBatchOutput = schema.new({
    id = id.from(_N, "ListRunsInBatchResponse"),
    type = "structure",
    members = {
        runs = schema.new({
            id = id.from(_N, "ListRunsInBatchOutput", "runs"),
            type = "list",
            name = "runs",
            target_id = prelude.Document.id,
            list_member = M.RunBatchListItem,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListRunsInBatchOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRunTasksInput = schema.new({
    id = id.from(_N, "ListRunTasksRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ListRunTasksInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "ListRunTasksInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "status" },
            },
        }),
        startingToken = schema.new({
            id = id.from(_N, "ListRunTasksInput", "startingToken"),
            type = "string",
            name = "startingToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "startingToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListRunTasksInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.TaskListItem = schema.new({
    id = id.from(_N, "TaskListItem"),
    type = "structure",
    members = {
        taskId = schema.new({
            id = id.from(_N, "TaskListItem", "taskId"),
            type = "string",
            name = "taskId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "TaskListItem", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "TaskListItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        cpus = schema.new({
            id = id.from(_N, "TaskListItem", "cpus"),
            type = "integer",
            name = "cpus",
            target_id = prelude.Integer.id,
        }),
        cacheHit = schema.new({
            id = id.from(_N, "TaskListItem", "cacheHit"),
            type = "boolean",
            name = "cacheHit",
            target_id = prelude.Boolean.id,
        }),
        cacheS3Uri = schema.new({
            id = id.from(_N, "TaskListItem", "cacheS3Uri"),
            type = "string",
            name = "cacheS3Uri",
            target_id = prelude.String.id,
        }),
        memory = schema.new({
            id = id.from(_N, "TaskListItem", "memory"),
            type = "integer",
            name = "memory",
            target_id = prelude.Integer.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "TaskListItem", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        startTime = schema.new({
            id = id.from(_N, "TaskListItem", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        stopTime = schema.new({
            id = id.from(_N, "TaskListItem", "stopTime"),
            type = "timestamp",
            name = "stopTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        gpus = schema.new({
            id = id.from(_N, "TaskListItem", "gpus"),
            type = "integer",
            name = "gpus",
            target_id = prelude.Integer.id,
        }),
        instanceType = schema.new({
            id = id.from(_N, "TaskListItem", "instanceType"),
            type = "string",
            name = "instanceType",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRunTasksOutput = schema.new({
    id = id.from(_N, "ListRunTasksResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListRunTasksOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.TaskListItem,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListRunTasksOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SequenceStoreFilter = schema.new({
    id = id.from(_N, "SequenceStoreFilter"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "SequenceStoreFilter", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        createdAfter = schema.new({
            id = id.from(_N, "SequenceStoreFilter", "createdAfter"),
            type = "timestamp",
            name = "createdAfter",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        createdBefore = schema.new({
            id = id.from(_N, "SequenceStoreFilter", "createdBefore"),
            type = "timestamp",
            name = "createdBefore",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        status = schema.new({
            id = id.from(_N, "SequenceStoreFilter", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        updatedAfter = schema.new({
            id = id.from(_N, "SequenceStoreFilter", "updatedAfter"),
            type = "timestamp",
            name = "updatedAfter",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedBefore = schema.new({
            id = id.from(_N, "SequenceStoreFilter", "updatedBefore"),
            type = "timestamp",
            name = "updatedBefore",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListSequenceStoresInput = schema.new({
    id = id.from(_N, "ListSequenceStoresRequest"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListSequenceStoresInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSequenceStoresInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        filter = schema.new({
            id = id.from(_N, "ListSequenceStoresInput", "filter"),
            type = "structure",
            name = "filter",
            target_id = id.from(_N, "SequenceStoreFilter"),
            target = M.SequenceStoreFilter,
        }),
    },
})

M.SequenceStoreDetail = schema.new({
    id = id.from(_N, "SequenceStoreDetail"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "SequenceStoreDetail", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "SequenceStoreDetail", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "SequenceStoreDetail", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "SequenceStoreDetail", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        sseConfig = schema.new({
            id = id.from(_N, "SequenceStoreDetail", "sseConfig"),
            type = "structure",
            name = "sseConfig",
            target_id = id.from(_N, "SseConfig"),
            target = M.SseConfig,
        }),
        creationTime = schema.new({
            id = id.from(_N, "SequenceStoreDetail", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        fallbackLocation = schema.new({
            id = id.from(_N, "SequenceStoreDetail", "fallbackLocation"),
            type = "string",
            name = "fallbackLocation",
            target_id = prelude.String.id,
        }),
        eTagAlgorithmFamily = schema.new({
            id = id.from(_N, "SequenceStoreDetail", "eTagAlgorithmFamily"),
            type = "string",
            name = "eTagAlgorithmFamily",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "SequenceStoreDetail", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "SequenceStoreDetail", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        updateTime = schema.new({
            id = id.from(_N, "SequenceStoreDetail", "updateTime"),
            type = "timestamp",
            name = "updateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListSequenceStoresOutput = schema.new({
    id = id.from(_N, "ListSequenceStoresResponse"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListSequenceStoresOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        sequenceStores = schema.new({
            id = id.from(_N, "ListSequenceStoresOutput", "sequenceStores"),
            type = "list",
            name = "sequenceStores",
            target_id = prelude.Document.id,
            list_member = M.SequenceStoreDetail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListSharesInput = schema.new({
    id = id.from(_N, "ListSharesRequest"),
    type = "structure",
    members = {
        resourceOwner = schema.new({
            id = id.from(_N, "ListSharesInput", "resourceOwner"),
            type = "string",
            name = "resourceOwner",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filter = schema.new({
            id = id.from(_N, "ListSharesInput", "filter"),
            type = "structure",
            name = "filter",
            target_id = id.from(_N, "Filter"),
            target = M.Filter,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSharesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListSharesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListSharesOutput = schema.new({
    id = id.from(_N, "ListSharesResponse"),
    type = "structure",
    members = {
        shares = schema.new({
            id = id.from(_N, "ListSharesOutput", "shares"),
            type = "list",
            name = "shares",
            target_id = prelude.Document.id,
            list_member = M.ShareDetails,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSharesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceResponse"),
    type = "structure",
    members = {
        tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListVariantImportJobsFilter = schema.new({
    id = id.from(_N, "ListVariantImportJobsFilter"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "ListVariantImportJobsFilter", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        storeName = schema.new({
            id = id.from(_N, "ListVariantImportJobsFilter", "storeName"),
            type = "string",
            name = "storeName",
            target_id = prelude.String.id,
        }),
    },
})

M.ListVariantImportJobsInput = schema.new({
    id = id.from(_N, "ListVariantImportJobsRequest"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListVariantImportJobsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        ids = schema.new({
            id = id.from(_N, "ListVariantImportJobsInput", "ids"),
            type = "list",
            name = "ids",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListVariantImportJobsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        filter = schema.new({
            id = id.from(_N, "ListVariantImportJobsInput", "filter"),
            type = "structure",
            name = "filter",
            target_id = id.from(_N, "ListVariantImportJobsFilter"),
            target = M.ListVariantImportJobsFilter,
        }),
    },
})

M.VariantImportJobItem = schema.new({
    id = id.from(_N, "VariantImportJobItem"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "VariantImportJobItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destinationName = schema.new({
            id = id.from(_N, "VariantImportJobItem", "destinationName"),
            type = "string",
            name = "destinationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "VariantImportJobItem", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "VariantImportJobItem", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTime = schema.new({
            id = id.from(_N, "VariantImportJobItem", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updateTime = schema.new({
            id = id.from(_N, "VariantImportJobItem", "updateTime"),
            type = "timestamp",
            name = "updateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        completionTime = schema.new({
            id = id.from(_N, "VariantImportJobItem", "completionTime"),
            type = "timestamp",
            name = "completionTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        runLeftNormalization = schema.new({
            id = id.from(_N, "VariantImportJobItem", "runLeftNormalization"),
            type = "boolean",
            name = "runLeftNormalization",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        annotationFields = schema.new({
            id = id.from(_N, "VariantImportJobItem", "annotationFields"),
            type = "map",
            name = "annotationFields",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListVariantImportJobsOutput = schema.new({
    id = id.from(_N, "ListVariantImportJobsResponse"),
    type = "structure",
    members = {
        variantImportJobs = schema.new({
            id = id.from(_N, "ListVariantImportJobsOutput", "variantImportJobs"),
            type = "list",
            name = "variantImportJobs",
            target_id = prelude.Document.id,
            list_member = M.VariantImportJobItem,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListVariantImportJobsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListVariantStoresFilter = schema.new({
    id = id.from(_N, "ListVariantStoresFilter"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "ListVariantStoresFilter", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.ListVariantStoresInput = schema.new({
    id = id.from(_N, "ListVariantStoresRequest"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListVariantStoresInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        ids = schema.new({
            id = id.from(_N, "ListVariantStoresInput", "ids"),
            type = "list",
            name = "ids",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListVariantStoresInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        filter = schema.new({
            id = id.from(_N, "ListVariantStoresInput", "filter"),
            type = "structure",
            name = "filter",
            target_id = id.from(_N, "ListVariantStoresFilter"),
            target = M.ListVariantStoresFilter,
        }),
    },
})

M.VariantStoreItem = schema.new({
    id = id.from(_N, "VariantStoreItem"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "VariantStoreItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        reference = schema.new({
            id = id.from(_N, "VariantStoreItem", "reference"),
            type = "union",
            name = "reference",
            target_id = id.from(_N, "ReferenceItem"),
            target = M.ReferenceItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "VariantStoreItem", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        storeArn = schema.new({
            id = id.from(_N, "VariantStoreItem", "storeArn"),
            type = "string",
            name = "storeArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "VariantStoreItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "VariantStoreItem", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sseConfig = schema.new({
            id = id.from(_N, "VariantStoreItem", "sseConfig"),
            type = "structure",
            name = "sseConfig",
            target_id = id.from(_N, "SseConfig"),
            target = M.SseConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTime = schema.new({
            id = id.from(_N, "VariantStoreItem", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updateTime = schema.new({
            id = id.from(_N, "VariantStoreItem", "updateTime"),
            type = "timestamp",
            name = "updateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusMessage = schema.new({
            id = id.from(_N, "VariantStoreItem", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        storeSizeBytes = schema.new({
            id = id.from(_N, "VariantStoreItem", "storeSizeBytes"),
            type = "long",
            name = "storeSizeBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListVariantStoresOutput = schema.new({
    id = id.from(_N, "ListVariantStoresResponse"),
    type = "structure",
    members = {
        variantStores = schema.new({
            id = id.from(_N, "ListVariantStoresOutput", "variantStores"),
            type = "list",
            name = "variantStores",
            target_id = prelude.Document.id,
            list_member = M.VariantStoreItem,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListVariantStoresOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListWorkflowsInput = schema.new({
    id = id.from(_N, "ListWorkflowsRequest"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "ListWorkflowsInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "type" },
            },
        }),
        name = schema.new({
            id = id.from(_N, "ListWorkflowsInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "name" },
            },
        }),
        startingToken = schema.new({
            id = id.from(_N, "ListWorkflowsInput", "startingToken"),
            type = "string",
            name = "startingToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "startingToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListWorkflowsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.WorkflowListItem = schema.new({
    id = id.from(_N, "WorkflowListItem"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "WorkflowListItem", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "WorkflowListItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "WorkflowListItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "WorkflowListItem", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "WorkflowListItem", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        digest = schema.new({
            id = id.from(_N, "WorkflowListItem", "digest"),
            type = "string",
            name = "digest",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "WorkflowListItem", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        metadata = schema.new({
            id = id.from(_N, "WorkflowListItem", "metadata"),
            type = "map",
            name = "metadata",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListWorkflowsOutput = schema.new({
    id = id.from(_N, "ListWorkflowsResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListWorkflowsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.WorkflowListItem,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListWorkflowsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListWorkflowVersionsInput = schema.new({
    id = id.from(_N, "ListWorkflowVersionsRequest"),
    type = "structure",
    members = {
        workflowId = schema.new({
            id = id.from(_N, "ListWorkflowVersionsInput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "ListWorkflowVersionsInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "type" },
            },
        }),
        workflowOwnerId = schema.new({
            id = id.from(_N, "ListWorkflowVersionsInput", "workflowOwnerId"),
            type = "string",
            name = "workflowOwnerId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "workflowOwnerId" },
            },
        }),
        startingToken = schema.new({
            id = id.from(_N, "ListWorkflowVersionsInput", "startingToken"),
            type = "string",
            name = "startingToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "startingToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListWorkflowVersionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.WorkflowVersionListItem = schema.new({
    id = id.from(_N, "WorkflowVersionListItem"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "WorkflowVersionListItem", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        workflowId = schema.new({
            id = id.from(_N, "WorkflowVersionListItem", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
        }),
        versionName = schema.new({
            id = id.from(_N, "WorkflowVersionListItem", "versionName"),
            type = "string",
            name = "versionName",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "WorkflowVersionListItem", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "WorkflowVersionListItem", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "WorkflowVersionListItem", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        digest = schema.new({
            id = id.from(_N, "WorkflowVersionListItem", "digest"),
            type = "string",
            name = "digest",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "WorkflowVersionListItem", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        metadata = schema.new({
            id = id.from(_N, "WorkflowVersionListItem", "metadata"),
            type = "map",
            name = "metadata",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListWorkflowVersionsOutput = schema.new({
    id = id.from(_N, "ListWorkflowVersionsResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListWorkflowVersionsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.WorkflowVersionListItem,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListWorkflowVersionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PutS3AccessPolicyInput = schema.new({
    id = id.from(_N, "PutS3AccessPolicyRequest"),
    type = "structure",
    members = {
        s3AccessPointArn = schema.new({
            id = id.from(_N, "PutS3AccessPolicyInput", "s3AccessPointArn"),
            type = "string",
            name = "s3AccessPointArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        s3AccessPolicy = schema.new({
            id = id.from(_N, "PutS3AccessPolicyInput", "s3AccessPolicy"),
            type = "string",
            name = "s3AccessPolicy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.MEDIA_TYPE] = { value = "application/json" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutS3AccessPolicyOutput = schema.new({
    id = id.from(_N, "PutS3AccessPolicyResponse"),
    type = "structure",
    members = {
        s3AccessPointArn = schema.new({
            id = id.from(_N, "PutS3AccessPolicyOutput", "s3AccessPointArn"),
            type = "string",
            name = "s3AccessPointArn",
            target_id = prelude.String.id,
        }),
        storeId = schema.new({
            id = id.from(_N, "PutS3AccessPolicyOutput", "storeId"),
            type = "string",
            name = "storeId",
            target_id = prelude.String.id,
        }),
        storeType = schema.new({
            id = id.from(_N, "PutS3AccessPolicyOutput", "storeType"),
            type = "string",
            name = "storeType",
            target_id = prelude.String.id,
        }),
    },
})

M.StartReferenceImportJobSourceItem = schema.new({
    id = id.from(_N, "StartReferenceImportJobSourceItem"),
    type = "structure",
    members = {
        sourceFile = schema.new({
            id = id.from(_N, "StartReferenceImportJobSourceItem", "sourceFile"),
            type = "string",
            name = "sourceFile",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "StartReferenceImportJobSourceItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "StartReferenceImportJobSourceItem", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "StartReferenceImportJobSourceItem", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.StartReferenceImportJobInput = schema.new({
    id = id.from(_N, "StartReferenceImportJobRequest"),
    type = "structure",
    members = {
        referenceStoreId = schema.new({
            id = id.from(_N, "StartReferenceImportJobInput", "referenceStoreId"),
            type = "string",
            name = "referenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "StartReferenceImportJobInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "StartReferenceImportJobInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
        }),
        sources = schema.new({
            id = id.from(_N, "StartReferenceImportJobInput", "sources"),
            type = "list",
            name = "sources",
            target_id = prelude.Document.id,
            list_member = M.StartReferenceImportJobSourceItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartReferenceImportJobOutput = schema.new({
    id = id.from(_N, "StartReferenceImportJobResponse"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "StartReferenceImportJobOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        referenceStoreId = schema.new({
            id = id.from(_N, "StartReferenceImportJobOutput", "referenceStoreId"),
            type = "string",
            name = "referenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "StartReferenceImportJobOutput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "StartReferenceImportJobOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTime = schema.new({
            id = id.from(_N, "StartReferenceImportJobOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.StartRunBatchInput = schema.new({
    id = id.from(_N, "StartRunBatchRequest"),
    type = "structure",
    members = {
        batchName = schema.new({
            id = id.from(_N, "StartRunBatchInput", "batchName"),
            type = "string",
            name = "batchName",
            target_id = prelude.String.id,
        }),
        requestId = schema.new({
            id = id.from(_N, "StartRunBatchInput", "requestId"),
            type = "string",
            name = "requestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "StartRunBatchInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        defaultRunSetting = schema.new({
            id = id.from(_N, "StartRunBatchInput", "defaultRunSetting"),
            type = "structure",
            name = "defaultRunSetting",
            target_id = id.from(_N, "DefaultRunSetting"),
            target = M.DefaultRunSetting,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        batchRunSettings = schema.new({
            id = id.from(_N, "StartRunBatchInput", "batchRunSettings"),
            type = "union",
            name = "batchRunSettings",
            target_id = id.from(_N, "BatchRunSettings"),
            target = M.BatchRunSettings,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartRunBatchOutput = schema.new({
    id = id.from(_N, "StartRunBatchResponse"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "StartRunBatchOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "StartRunBatchOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "StartRunBatchOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        uuid = schema.new({
            id = id.from(_N, "StartRunBatchOutput", "uuid"),
            type = "string",
            name = "uuid",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "StartRunBatchOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.UpdateRunCacheInput = schema.new({
    id = id.from(_N, "UpdateRunCacheRequest"),
    type = "structure",
    members = {
        cacheBehavior = schema.new({
            id = id.from(_N, "UpdateRunCacheInput", "cacheBehavior"),
            type = "string",
            name = "cacheBehavior",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateRunCacheInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "UpdateRunCacheInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateRunCacheInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateRunCacheOutput = prelude.Unit

M.UpdateRunGroupInput = schema.new({
    id = id.from(_N, "UpdateRunGroupRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateRunGroupInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateRunGroupInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        maxCpus = schema.new({
            id = id.from(_N, "UpdateRunGroupInput", "maxCpus"),
            type = "integer",
            name = "maxCpus",
            target_id = prelude.Integer.id,
        }),
        maxRuns = schema.new({
            id = id.from(_N, "UpdateRunGroupInput", "maxRuns"),
            type = "integer",
            name = "maxRuns",
            target_id = prelude.Integer.id,
        }),
        maxDuration = schema.new({
            id = id.from(_N, "UpdateRunGroupInput", "maxDuration"),
            type = "integer",
            name = "maxDuration",
            target_id = prelude.Integer.id,
        }),
        maxGpus = schema.new({
            id = id.from(_N, "UpdateRunGroupInput", "maxGpus"),
            type = "integer",
            name = "maxGpus",
            target_id = prelude.Integer.id,
        }),
    },
})

M.UpdateRunGroupOutput = prelude.Unit

M.StartRunInput = schema.new({
    id = id.from(_N, "StartRunRequest"),
    type = "structure",
    members = {
        workflowId = schema.new({
            id = id.from(_N, "StartRunInput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
        }),
        workflowType = schema.new({
            id = id.from(_N, "StartRunInput", "workflowType"),
            type = "string",
            name = "workflowType",
            target_id = prelude.String.id,
        }),
        runId = schema.new({
            id = id.from(_N, "StartRunInput", "runId"),
            type = "string",
            name = "runId",
            target_id = prelude.String.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "StartRunInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "StartRunInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        cacheId = schema.new({
            id = id.from(_N, "StartRunInput", "cacheId"),
            type = "string",
            name = "cacheId",
            target_id = prelude.String.id,
        }),
        cacheBehavior = schema.new({
            id = id.from(_N, "StartRunInput", "cacheBehavior"),
            type = "string",
            name = "cacheBehavior",
            target_id = prelude.String.id,
        }),
        runGroupId = schema.new({
            id = id.from(_N, "StartRunInput", "runGroupId"),
            type = "string",
            name = "runGroupId",
            target_id = prelude.String.id,
        }),
        priority = schema.new({
            id = id.from(_N, "StartRunInput", "priority"),
            type = "integer",
            name = "priority",
            target_id = prelude.Integer.id,
        }),
        parameters = schema.new({
            id = id.from(_N, "StartRunInput", "parameters"),
            type = "document",
            name = "parameters",
            target_id = prelude.Document.id,
        }),
        storageCapacity = schema.new({
            id = id.from(_N, "StartRunInput", "storageCapacity"),
            type = "integer",
            name = "storageCapacity",
            target_id = prelude.Integer.id,
        }),
        outputUri = schema.new({
            id = id.from(_N, "StartRunInput", "outputUri"),
            type = "string",
            name = "outputUri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        logLevel = schema.new({
            id = id.from(_N, "StartRunInput", "logLevel"),
            type = "string",
            name = "logLevel",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "StartRunInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        requestId = schema.new({
            id = id.from(_N, "StartRunInput", "requestId"),
            type = "string",
            name = "requestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        retentionMode = schema.new({
            id = id.from(_N, "StartRunInput", "retentionMode"),
            type = "string",
            name = "retentionMode",
            target_id = prelude.String.id,
        }),
        storageType = schema.new({
            id = id.from(_N, "StartRunInput", "storageType"),
            type = "string",
            name = "storageType",
            target_id = prelude.String.id,
        }),
        workflowOwnerId = schema.new({
            id = id.from(_N, "StartRunInput", "workflowOwnerId"),
            type = "string",
            name = "workflowOwnerId",
            target_id = prelude.String.id,
        }),
        workflowVersionName = schema.new({
            id = id.from(_N, "StartRunInput", "workflowVersionName"),
            type = "string",
            name = "workflowVersionName",
            target_id = prelude.String.id,
        }),
        networkingMode = schema.new({
            id = id.from(_N, "StartRunInput", "networkingMode"),
            type = "string",
            name = "networkingMode",
            target_id = prelude.String.id,
        }),
        configurationName = schema.new({
            id = id.from(_N, "StartRunInput", "configurationName"),
            type = "string",
            name = "configurationName",
            target_id = prelude.String.id,
        }),
    },
})

M.StartRunOutput = schema.new({
    id = id.from(_N, "StartRunResponse"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "StartRunOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "StartRunOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "StartRunOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "StartRunOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        uuid = schema.new({
            id = id.from(_N, "StartRunOutput", "uuid"),
            type = "string",
            name = "uuid",
            target_id = prelude.String.id,
        }),
        runOutputUri = schema.new({
            id = id.from(_N, "StartRunOutput", "runOutputUri"),
            type = "string",
            name = "runOutputUri",
            target_id = prelude.String.id,
        }),
        configuration = schema.new({
            id = id.from(_N, "StartRunOutput", "configuration"),
            type = "structure",
            name = "configuration",
            target_id = id.from(_N, "ConfigurationDetails"),
            target = M.ConfigurationDetails,
        }),
        networkingMode = schema.new({
            id = id.from(_N, "StartRunOutput", "networkingMode"),
            type = "string",
            name = "networkingMode",
            target_id = prelude.String.id,
        }),
    },
})

M.StartReadSetActivationJobSourceItem = schema.new({
    id = id.from(_N, "StartReadSetActivationJobSourceItem"),
    type = "structure",
    members = {
        readSetId = schema.new({
            id = id.from(_N, "StartReadSetActivationJobSourceItem", "readSetId"),
            type = "string",
            name = "readSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartReadSetActivationJobInput = schema.new({
    id = id.from(_N, "StartReadSetActivationJobRequest"),
    type = "structure",
    members = {
        sequenceStoreId = schema.new({
            id = id.from(_N, "StartReadSetActivationJobInput", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "StartReadSetActivationJobInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
        }),
        sources = schema.new({
            id = id.from(_N, "StartReadSetActivationJobInput", "sources"),
            type = "list",
            name = "sources",
            target_id = prelude.Document.id,
            list_member = M.StartReadSetActivationJobSourceItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartReadSetActivationJobOutput = schema.new({
    id = id.from(_N, "StartReadSetActivationJobResponse"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "StartReadSetActivationJobOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sequenceStoreId = schema.new({
            id = id.from(_N, "StartReadSetActivationJobOutput", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "StartReadSetActivationJobOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTime = schema.new({
            id = id.from(_N, "StartReadSetActivationJobOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.StartReadSetExportJobInput = schema.new({
    id = id.from(_N, "StartReadSetExportJobRequest"),
    type = "structure",
    members = {
        sequenceStoreId = schema.new({
            id = id.from(_N, "StartReadSetExportJobInput", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        destination = schema.new({
            id = id.from(_N, "StartReadSetExportJobInput", "destination"),
            type = "string",
            name = "destination",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "StartReadSetExportJobInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "StartReadSetExportJobInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
        }),
        sources = schema.new({
            id = id.from(_N, "StartReadSetExportJobInput", "sources"),
            type = "list",
            name = "sources",
            target_id = prelude.Document.id,
            list_member = M.ExportReadSet,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartReadSetExportJobOutput = schema.new({
    id = id.from(_N, "StartReadSetExportJobResponse"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "StartReadSetExportJobOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sequenceStoreId = schema.new({
            id = id.from(_N, "StartReadSetExportJobOutput", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destination = schema.new({
            id = id.from(_N, "StartReadSetExportJobOutput", "destination"),
            type = "string",
            name = "destination",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "StartReadSetExportJobOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTime = schema.new({
            id = id.from(_N, "StartReadSetExportJobOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.StartReadSetImportJobSourceItem = schema.new({
    id = id.from(_N, "StartReadSetImportJobSourceItem"),
    type = "structure",
    members = {
        sourceFiles = schema.new({
            id = id.from(_N, "StartReadSetImportJobSourceItem", "sourceFiles"),
            type = "structure",
            name = "sourceFiles",
            target_id = id.from(_N, "SourceFiles"),
            target = M.SourceFiles,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceFileType = schema.new({
            id = id.from(_N, "StartReadSetImportJobSourceItem", "sourceFileType"),
            type = "string",
            name = "sourceFileType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        subjectId = schema.new({
            id = id.from(_N, "StartReadSetImportJobSourceItem", "subjectId"),
            type = "string",
            name = "subjectId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sampleId = schema.new({
            id = id.from(_N, "StartReadSetImportJobSourceItem", "sampleId"),
            type = "string",
            name = "sampleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        generatedFrom = schema.new({
            id = id.from(_N, "StartReadSetImportJobSourceItem", "generatedFrom"),
            type = "string",
            name = "generatedFrom",
            target_id = prelude.String.id,
        }),
        referenceArn = schema.new({
            id = id.from(_N, "StartReadSetImportJobSourceItem", "referenceArn"),
            type = "string",
            name = "referenceArn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "StartReadSetImportJobSourceItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "StartReadSetImportJobSourceItem", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "StartReadSetImportJobSourceItem", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.StartReadSetImportJobInput = schema.new({
    id = id.from(_N, "StartReadSetImportJobRequest"),
    type = "structure",
    members = {
        sequenceStoreId = schema.new({
            id = id.from(_N, "StartReadSetImportJobInput", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "StartReadSetImportJobInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "StartReadSetImportJobInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
        }),
        sources = schema.new({
            id = id.from(_N, "StartReadSetImportJobInput", "sources"),
            type = "list",
            name = "sources",
            target_id = prelude.Document.id,
            list_member = M.StartReadSetImportJobSourceItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartReadSetImportJobOutput = schema.new({
    id = id.from(_N, "StartReadSetImportJobResponse"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "StartReadSetImportJobOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sequenceStoreId = schema.new({
            id = id.from(_N, "StartReadSetImportJobOutput", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "StartReadSetImportJobOutput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "StartReadSetImportJobOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTime = schema.new({
            id = id.from(_N, "StartReadSetImportJobOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.UpdateSequenceStoreInput = schema.new({
    id = id.from(_N, "UpdateSequenceStoreRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateSequenceStoreInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateSequenceStoreInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateSequenceStoreInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateSequenceStoreInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        fallbackLocation = schema.new({
            id = id.from(_N, "UpdateSequenceStoreInput", "fallbackLocation"),
            type = "string",
            name = "fallbackLocation",
            target_id = prelude.String.id,
        }),
        propagatedSetLevelTags = schema.new({
            id = id.from(_N, "UpdateSequenceStoreInput", "propagatedSetLevelTags"),
            type = "list",
            name = "propagatedSetLevelTags",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        s3AccessConfig = schema.new({
            id = id.from(_N, "UpdateSequenceStoreInput", "s3AccessConfig"),
            type = "structure",
            name = "s3AccessConfig",
            target_id = id.from(_N, "S3AccessConfig"),
            target = M.S3AccessConfig,
        }),
    },
})

M.UpdateSequenceStoreOutput = schema.new({
    id = id.from(_N, "UpdateSequenceStoreResponse"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateSequenceStoreOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "UpdateSequenceStoreOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateSequenceStoreOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateSequenceStoreOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        sseConfig = schema.new({
            id = id.from(_N, "UpdateSequenceStoreOutput", "sseConfig"),
            type = "structure",
            name = "sseConfig",
            target_id = id.from(_N, "SseConfig"),
            target = M.SseConfig,
        }),
        creationTime = schema.new({
            id = id.from(_N, "UpdateSequenceStoreOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updateTime = schema.new({
            id = id.from(_N, "UpdateSequenceStoreOutput", "updateTime"),
            type = "timestamp",
            name = "updateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        propagatedSetLevelTags = schema.new({
            id = id.from(_N, "UpdateSequenceStoreOutput", "propagatedSetLevelTags"),
            type = "list",
            name = "propagatedSetLevelTags",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        status = schema.new({
            id = id.from(_N, "UpdateSequenceStoreOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "UpdateSequenceStoreOutput", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        fallbackLocation = schema.new({
            id = id.from(_N, "UpdateSequenceStoreOutput", "fallbackLocation"),
            type = "string",
            name = "fallbackLocation",
            target_id = prelude.String.id,
        }),
        s3Access = schema.new({
            id = id.from(_N, "UpdateSequenceStoreOutput", "s3Access"),
            type = "structure",
            name = "s3Access",
            target_id = id.from(_N, "SequenceStoreS3Access"),
            target = M.SequenceStoreS3Access,
        }),
        eTagAlgorithmFamily = schema.new({
            id = id.from(_N, "UpdateSequenceStoreOutput", "eTagAlgorithmFamily"),
            type = "string",
            name = "eTagAlgorithmFamily",
            target_id = prelude.String.id,
        }),
    },
})

M.UploadReadSetPartInput = schema.new({
    id = id.from(_N, "UploadReadSetPartRequest"),
    type = "structure",
    members = {
        sequenceStoreId = schema.new({
            id = id.from(_N, "UploadReadSetPartInput", "sequenceStoreId"),
            type = "string",
            name = "sequenceStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        uploadId = schema.new({
            id = id.from(_N, "UploadReadSetPartInput", "uploadId"),
            type = "string",
            name = "uploadId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        partSource = schema.new({
            id = id.from(_N, "UploadReadSetPartInput", "partSource"),
            type = "string",
            name = "partSource",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "partSource" },
            },
        }),
        partNumber = schema.new({
            id = id.from(_N, "UploadReadSetPartInput", "partNumber"),
            type = "integer",
            name = "partNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "partNumber" },
            },
        }),
        payload = schema.new({
            id = id.from(_N, "UploadReadSetPartInput", "payload"),
            type = "blob",
            name = "payload",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.STREAMING] = {},
            },
            direct_traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.UploadReadSetPartOutput = schema.new({
    id = id.from(_N, "UploadReadSetPartResponse"),
    type = "structure",
    members = {
        checksum = schema.new({
            id = id.from(_N, "UploadReadSetPartOutput", "checksum"),
            type = "string",
            name = "checksum",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "TagResourceInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceResponse"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        tagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "tagKeys"),
            type = "list",
            name = "tagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "tagKeys" },
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceResponse"),
    type = "structure",
})

M.VariantImportItemSource = schema.new({
    id = id.from(_N, "VariantImportItemSource"),
    type = "structure",
    members = {
        source = schema.new({
            id = id.from(_N, "VariantImportItemSource", "source"),
            type = "string",
            name = "source",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartVariantImportJobInput = schema.new({
    id = id.from(_N, "StartVariantImportRequest"),
    type = "structure",
    members = {
        destinationName = schema.new({
            id = id.from(_N, "StartVariantImportJobInput", "destinationName"),
            type = "string",
            name = "destinationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "StartVariantImportJobInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        items = schema.new({
            id = id.from(_N, "StartVariantImportJobInput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.VariantImportItemSource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        runLeftNormalization = schema.new({
            id = id.from(_N, "StartVariantImportJobInput", "runLeftNormalization"),
            type = "boolean",
            name = "runLeftNormalization",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        annotationFields = schema.new({
            id = id.from(_N, "StartVariantImportJobInput", "annotationFields"),
            type = "map",
            name = "annotationFields",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.StartVariantImportJobOutput = schema.new({
    id = id.from(_N, "StartVariantImportResponse"),
    type = "structure",
    members = {
        jobId = schema.new({
            id = id.from(_N, "StartVariantImportJobOutput", "jobId"),
            type = "string",
            name = "jobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateVariantStoreInput = schema.new({
    id = id.from(_N, "UpdateVariantStoreRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "UpdateVariantStoreInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateVariantStoreInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateVariantStoreOutput = schema.new({
    id = id.from(_N, "UpdateVariantStoreResponse"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateVariantStoreOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        reference = schema.new({
            id = id.from(_N, "UpdateVariantStoreOutput", "reference"),
            type = "union",
            name = "reference",
            target_id = id.from(_N, "ReferenceItem"),
            target = M.ReferenceItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdateVariantStoreOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateVariantStoreOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateVariantStoreOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTime = schema.new({
            id = id.from(_N, "UpdateVariantStoreOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updateTime = schema.new({
            id = id.from(_N, "UpdateVariantStoreOutput", "updateTime"),
            type = "timestamp",
            name = "updateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateWorkflowInput = schema.new({
    id = id.from(_N, "UpdateWorkflowRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateWorkflowInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateWorkflowInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateWorkflowInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        storageType = schema.new({
            id = id.from(_N, "UpdateWorkflowInput", "storageType"),
            type = "string",
            name = "storageType",
            target_id = prelude.String.id,
        }),
        storageCapacity = schema.new({
            id = id.from(_N, "UpdateWorkflowInput", "storageCapacity"),
            type = "integer",
            name = "storageCapacity",
            target_id = prelude.Integer.id,
        }),
        readmeMarkdown = schema.new({
            id = id.from(_N, "UpdateWorkflowInput", "readmeMarkdown"),
            type = "string",
            name = "readmeMarkdown",
            target_id = prelude.String.id,
            traits = {
                [traits.MEDIA_TYPE] = { value = "text/markdown" },
            },
        }),
    },
})

M.UpdateWorkflowOutput = prelude.Unit

M.UpdateWorkflowVersionInput = schema.new({
    id = id.from(_N, "UpdateWorkflowVersionRequest"),
    type = "structure",
    members = {
        workflowId = schema.new({
            id = id.from(_N, "UpdateWorkflowVersionInput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        versionName = schema.new({
            id = id.from(_N, "UpdateWorkflowVersionInput", "versionName"),
            type = "string",
            name = "versionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateWorkflowVersionInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        storageType = schema.new({
            id = id.from(_N, "UpdateWorkflowVersionInput", "storageType"),
            type = "string",
            name = "storageType",
            target_id = prelude.String.id,
        }),
        storageCapacity = schema.new({
            id = id.from(_N, "UpdateWorkflowVersionInput", "storageCapacity"),
            type = "integer",
            name = "storageCapacity",
            target_id = prelude.Integer.id,
        }),
        readmeMarkdown = schema.new({
            id = id.from(_N, "UpdateWorkflowVersionInput", "readmeMarkdown"),
            type = "string",
            name = "readmeMarkdown",
            target_id = prelude.String.id,
            traits = {
                [traits.MEDIA_TYPE] = { value = "text/markdown" },
            },
        }),
    },
})

M.UpdateWorkflowVersionOutput = prelude.Unit

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
