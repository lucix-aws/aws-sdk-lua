local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CopyDestinationImageSet = {
    type = "structure",
    members = {
        imageSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        latestVersionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MetadataCopies = {
    type = "structure",
    members = {
        copiableAttributes = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CopySourceImageSetInformation = {
    type = "structure",
    members = {
        latestVersionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DICOMCopies = M.MetadataCopies,
    },
}

M.CopyImageSetInformation = {
    type = "structure",
    members = {
        sourceImageSet = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CopySourceImageSetInformation }),
        destinationImageSet = M.CopyDestinationImageSet,
    },
}

M.CopyImageSetInput = {
    type = "structure",
    members = {
        datastoreId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sourceImageSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        copyImageSetInformation = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.CopyImageSetInformation }),
        force = {
            type = "boolean",
            traits = {
                http_query = "force",
            },
        },
        promoteToPrimary = {
            type = "boolean",
            traits = {
                http_query = "promoteToPrimary",
            },
        },
    },
}

M.ImageSetState = {
    ACTIVE = "ACTIVE",
    LOCKED = "LOCKED",
    DELETED = "DELETED",
}

M.ImageSetWorkflowStatus = {
    CREATED = "CREATED",
    COPIED = "COPIED",
    COPYING = "COPYING",
    COPYING_WITH_READ_ONLY_ACCESS = "COPYING_WITH_READ_ONLY_ACCESS",
    COPY_FAILED = "COPY_FAILED",
    UPDATING = "UPDATING",
    UPDATING_FOR_STUDY_CONSISTENCY = "UPDATING_FOR_STUDY_CONSISTENCY",
    UPDATED = "UPDATED",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETING = "DELETING",
    DELETED = "DELETED",
    IMPORTING = "IMPORTING",
    IMPORTED = "IMPORTED",
    IMPORT_FAILED = "IMPORT_FAILED",
}

M.CopyDestinationImageSetProperties = {
    type = "structure",
    members = {
        imageSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        latestVersionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageSetState = {
            type = "string",
        },
        imageSetWorkflowStatus = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        imageSetArn = {
            type = "string",
        },
    },
}

M.CopySourceImageSetProperties = {
    type = "structure",
    members = {
        imageSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        latestVersionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageSetState = {
            type = "string",
        },
        imageSetWorkflowStatus = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        imageSetArn = {
            type = "string",
        },
    },
}

M.CopyImageSetOutput = {
    type = "structure",
    members = {
        datastoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceImageSetProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CopySourceImageSetProperties }),
        destinationImageSetProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CopyDestinationImageSetProperties }),
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LosslessStorageFormat = {
    HTJ2K = "HTJ2K",
    JPEG_2000_LOSSLESS = "JPEG_2000_LOSSLESS",
}

M.CreateDatastoreInput = {
    type = "structure",
    members = {
        datastoreName = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        kmsKeyArn = {
            type = "string",
        },
        lambdaAuthorizerArn = {
            type = "string",
        },
        losslessStorageFormat = {
            type = "string",
        },
    },
}

M.DatastoreStatus = {
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    DELETED = "DELETED",
}

M.CreateDatastoreOutput = {
    type = "structure",
    members = {
        datastoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datastoreStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDatastoreInput = {
    type = "structure",
    members = {
        datastoreId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDatastoreOutput = {
    type = "structure",
    members = {
        datastoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datastoreStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDatastoreInput = {
    type = "structure",
    members = {
        datastoreId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DatastoreProperties = {
    type = "structure",
    members = {
        datastoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datastoreName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datastoreStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyArn = {
            type = "string",
        },
        lambdaAuthorizerArn = {
            type = "string",
        },
        losslessStorageFormat = {
            type = "string",
        },
        datastoreArn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.GetDatastoreOutput = {
    type = "structure",
    members = {
        datastoreProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DatastoreProperties }),
    },
}

M.ListDatastoresInput = {
    type = "structure",
    members = {
        datastoreStatus = {
            type = "string",
            traits = {
                http_query = "datastoreStatus",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.DatastoreSummary = {
    type = "structure",
    members = {
        datastoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datastoreName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datastoreStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datastoreArn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.ListDatastoresOutput = {
    type = "structure",
    members = {
        datastoreSummaries = {
            type = "list",
            member = M.DatastoreSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DeleteImageSetInput = {
    type = "structure",
    members = {
        datastoreId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        imageSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteImageSetOutput = {
    type = "structure",
    members = {
        datastoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageSetState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageSetWorkflowStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDICOMImportJobInput = {
    type = "structure",
    members = {
        datastoreId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.JobStatus = {
    SUBMITTED = "SUBMITTED",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.DICOMImportJobProperties = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datastoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        endedAt = {
            type = "timestamp",
        },
        submittedAt = {
            type = "timestamp",
        },
        inputS3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputS3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
        },
    },
}

M.GetDICOMImportJobOutput = {
    type = "structure",
    members = {
        jobProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DICOMImportJobProperties }),
    },
}

M.BadRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImageFrameInformation = {
    type = "structure",
    members = {
        imageFrameId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetImageFrameInput = {
    type = "structure",
    members = {
        datastoreId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        imageSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        imageFrameInformation = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ImageFrameInformation }),
    },
}

M.GetImageFrameOutput = {
    type = "structure",
    members = {
        imageFrameBlob = {
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
        contentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
    },
}

M.NotAcceptableException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetImageSetInput = {
    type = "structure",
    members = {
        datastoreId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        imageSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionId = {
            type = "string",
            traits = {
                http_query = "version",
            },
        },
    },
}

M.Overrides = {
    type = "structure",
    members = {
        forced = {
            type = "boolean",
        },
    },
}

M.StorageTier = {
    FREQUENT_ACCESS = "FREQUENT_ACCESS",
    ARCHIVE_INSTANT_ACCESS = "ARCHIVE_INSTANT_ACCESS",
}

M.GetImageSetOutput = {
    type = "structure",
    members = {
        datastoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageSetState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageSetWorkflowStatus = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        deletedAt = {
            type = "timestamp",
        },
        message = {
            type = "string",
        },
        imageSetArn = {
            type = "string",
        },
        overrides = M.Overrides,
        isPrimary = {
            type = "boolean",
        },
        lastAccessedAt = {
            type = "timestamp",
        },
        storageTier = {
            type = "string",
        },
    },
}

M.GetImageSetMetadataInput = {
    type = "structure",
    members = {
        datastoreId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        imageSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionId = {
            type = "string",
            traits = {
                http_query = "version",
            },
        },
    },
}

M.GetImageSetMetadataOutput = {
    type = "structure",
    members = {
        imageSetMetadataBlob = {
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
        contentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        contentEncoding = {
            type = "string",
            traits = {
                http_header = "Content-Encoding",
            },
        },
    },
}

M.ListDICOMImportJobsInput = {
    type = "structure",
    members = {
        datastoreId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobStatus = {
            type = "string",
            traits = {
                http_query = "jobStatus",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.DICOMImportJobSummary = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datastoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataAccessRoleArn = {
            type = "string",
        },
        endedAt = {
            type = "timestamp",
        },
        submittedAt = {
            type = "timestamp",
        },
        message = {
            type = "string",
        },
    },
}

M.ListDICOMImportJobsOutput = {
    type = "structure",
    members = {
        jobSummaries = {
            type = "list",
            member = M.DICOMImportJobSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListImageSetVersionsInput = {
    type = "structure",
    members = {
        datastoreId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        imageSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ImageSetProperties = {
    type = "structure",
    members = {
        imageSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageSetState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImageSetWorkflowStatus = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        deletedAt = {
            type = "timestamp",
        },
        message = {
            type = "string",
        },
        overrides = M.Overrides,
        isPrimary = {
            type = "boolean",
        },
    },
}

M.ListImageSetVersionsOutput = {
    type = "structure",
    members = {
        imageSetPropertiesList = {
            type = "list",
            member = M.ImageSetProperties,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.Operator = {
    EQUAL = "EQUAL",
    BETWEEN = "BETWEEN",
}

M.DICOMStudyDateAndTime = {
    type = "structure",
    members = {
        DICOMStudyDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DICOMStudyTime = {
            type = "string",
        },
    },
}

M.SearchByAttributeValue = {
    type = "union",
    members = {
        DICOMPatientId = {
            type = "string",
        },
        DICOMAccessionNumber = {
            type = "string",
        },
        DICOMStudyId = {
            type = "string",
        },
        DICOMStudyInstanceUID = {
            type = "string",
        },
        DICOMSeriesInstanceUID = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        DICOMStudyDateAndTime = M.DICOMStudyDateAndTime,
        isPrimary = {
            type = "boolean",
        },
    },
}

M.SearchFilter = {
    type = "structure",
    members = {
        values = {
            type = "list",
            member = M.SearchByAttributeValue,
            traits = {
                required = true,
            },
        },
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SortField = {
    updatedAt = "updatedAt",
    createdAt = "createdAt",
    DICOMStudyDateAndTime = "DICOMStudyDateAndTime",
}

M.SortOrder = {
    ASC = "ASC",
    DESC = "DESC",
}

M.Sort = {
    type = "structure",
    members = {
        sortOrder = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sortField = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchCriteria = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member = M.SearchFilter,
        },
        sort = M.Sort,
    },
}

M.SearchImageSetsInput = {
    type = "structure",
    members = {
        datastoreId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        searchCriteria = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.SearchCriteria }),
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.DICOMTags = {
    type = "structure",
    members = {
        DICOMPatientId = {
            type = "string",
        },
        DICOMPatientName = {
            type = "string",
        },
        DICOMPatientBirthDate = {
            type = "string",
        },
        DICOMPatientSex = {
            type = "string",
        },
        DICOMStudyInstanceUID = {
            type = "string",
        },
        DICOMStudyId = {
            type = "string",
        },
        DICOMStudyDescription = {
            type = "string",
        },
        DICOMNumberOfStudyRelatedSeries = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        DICOMNumberOfStudyRelatedInstances = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        DICOMAccessionNumber = {
            type = "string",
        },
        DICOMSeriesInstanceUID = {
            type = "string",
        },
        DICOMSeriesModality = {
            type = "string",
        },
        DICOMSeriesBodyPart = {
            type = "string",
        },
        DICOMSeriesNumber = {
            type = "integer",
        },
        DICOMStudyDate = {
            type = "string",
        },
        DICOMStudyTime = {
            type = "string",
        },
    },
}

M.ImageSetsMetadataSummary = {
    type = "structure",
    members = {
        imageSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "integer",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        lastAccessedAt = {
            type = "timestamp",
        },
        storageTier = {
            type = "string",
        },
        DICOMTags = M.DICOMTags,
        isPrimary = {
            type = "boolean",
        },
    },
}

M.SearchImageSetsOutput = {
    type = "structure",
    members = {
        imageSetsMetadataSummaries = {
            type = "list",
            member = M.ImageSetsMetadataSummary,
            traits = {
                required = true,
            },
        },
        sort = M.Sort,
        nextToken = {
            type = "string",
        },
    },
}

M.StartDICOMImportJobInput = {
    type = "structure",
    members = {
        jobName = {
            type = "string",
        },
        dataAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datastoreId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        inputS3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputS3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inputOwnerAccountId = {
            type = "string",
        },
    },
}

M.StartDICOMImportJobOutput = {
    type = "structure",
    members = {
        datastoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        submittedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.DICOMUpdates = {
    type = "structure",
    members = {
        removableAttributes = {
            type = "blob",
        },
        updatableAttributes = {
            type = "blob",
        },
    },
}

M.MetadataUpdates = {
    type = "union",
    members = {
        DICOMUpdates = M.DICOMUpdates,
        revertToVersionId = {
            type = "string",
        },
    },
}

M.UpdateImageSetMetadataInput = {
    type = "structure",
    members = {
        datastoreId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        imageSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        latestVersionId = {
            type = "string",
            traits = {
                http_query = "latestVersion",
                required = true,
            },
        },
        force = {
            type = "boolean",
            traits = {
                http_query = "force",
            },
        },
        includeStudyImageSets = {
            type = "boolean",
            traits = {
                http_query = "includeStudyImageSets",
            },
        },
        updateImageSetMetadataUpdates = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.MetadataUpdates }),
    },
}

M.UpdateImageSetMetadataOutput = {
    type = "structure",
    members = {
        datastoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        latestVersionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageSetState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageSetWorkflowStatus = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        message = {
            type = "string",
        },
    },
}

return M
