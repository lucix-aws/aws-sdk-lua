

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.medicalimaging"

local M = {}

M.DICOMImportJobSummaries = schema.new({ type = "list", list_member = M.DICOMImportJobSummary })

M.ImageSetPropertiesList = schema.new({ type = "list", list_member = M.ImageSetProperties })

M.TagMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ImageSetsMetadataSummaries = schema.new({ type = "list", list_member = M.ImageSetsMetadataSummary })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.DatastoreSummaries = schema.new({ type = "list", list_member = M.DatastoreSummary })

M.SearchFilters = schema.new({ type = "list", list_member = M.SearchFilter })

M.DicomMetadataMappings = schema.new({ type = "list", list_member = M.DicomMetadataMapping })

M.SearchByAttributeValues = schema.new({ type = "list", list_member = M.SearchByAttributeValue })

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

M.CopyDestinationImageSet = schema.new({
   id = id.from(_N, "CopyDestinationImageSet"),
   type = "structure",
   members = {
      imageSetId = schema.new({
         id = id.from(_N, "CopyDestinationImageSet", "imageSetId"),
         type = "string",
         name = "imageSetId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      latestVersionId = schema.new({
         id = id.from(_N, "CopyDestinationImageSet", "latestVersionId"),
         type = "string",
         name = "latestVersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.MetadataCopies = schema.new({
   id = id.from(_N, "MetadataCopies"),
   type = "structure",
   members = {
      copiableAttributes = schema.new({
         id = id.from(_N, "MetadataCopies", "copiableAttributes"),
         type = "string",
         name = "copiableAttributes",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CopySourceImageSetInformation = schema.new({
   id = id.from(_N, "CopySourceImageSetInformation"),
   type = "structure",
   members = {
      latestVersionId = schema.new({
         id = id.from(_N, "CopySourceImageSetInformation", "latestVersionId"),
         type = "string",
         name = "latestVersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DICOMCopies = schema.new({
         id = id.from(_N, "CopySourceImageSetInformation", "DICOMCopies"),
         type = "structure",
         name = "DICOMCopies",
         target_id = id.from(_N, "MetadataCopies"),
         target = M.MetadataCopies,
      }),
   },
})

M.CopyImageSetInformation = schema.new({
   id = id.from(_N, "CopyImageSetInformation"),
   type = "structure",
   members = {
      sourceImageSet = schema.new({
         id = id.from(_N, "CopyImageSetInformation", "sourceImageSet"),
         type = "structure",
         name = "sourceImageSet",
         target_id = id.from(_N, "CopySourceImageSetInformation"),
         target = M.CopySourceImageSetInformation,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      destinationImageSet = schema.new({
         id = id.from(_N, "CopyImageSetInformation", "destinationImageSet"),
         type = "structure",
         name = "destinationImageSet",
         target_id = id.from(_N, "CopyDestinationImageSet"),
         target = M.CopyDestinationImageSet,
      }),
   },
})

M.CopyImageSetInput = schema.new({
   id = id.from(_N, "CopyImageSetRequest"),
   type = "structure",
   members = {
      datastoreId = schema.new({
         id = id.from(_N, "CopyImageSetInput", "datastoreId"),
         type = "string",
         name = "datastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      sourceImageSetId = schema.new({
         id = id.from(_N, "CopyImageSetInput", "sourceImageSetId"),
         type = "string",
         name = "sourceImageSetId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      copyImageSetInformation = schema.new({
         id = id.from(_N, "CopyImageSetInput", "copyImageSetInformation"),
         type = "structure",
         name = "copyImageSetInformation",
         target_id = id.from(_N, "CopyImageSetInformation"),
         target = M.CopyImageSetInformation,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      force = schema.new({
         id = id.from(_N, "CopyImageSetInput", "force"),
         type = "boolean",
         name = "force",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "force" },
         },
      }),
      promoteToPrimary = schema.new({
         id = id.from(_N, "CopyImageSetInput", "promoteToPrimary"),
         type = "boolean",
         name = "promoteToPrimary",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "promoteToPrimary" },
         },
      }),
   },
})

M.CopyDestinationImageSetProperties = schema.new({
   id = id.from(_N, "CopyDestinationImageSetProperties"),
   type = "structure",
   members = {
      imageSetId = schema.new({
         id = id.from(_N, "CopyDestinationImageSetProperties", "imageSetId"),
         type = "string",
         name = "imageSetId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      latestVersionId = schema.new({
         id = id.from(_N, "CopyDestinationImageSetProperties", "latestVersionId"),
         type = "string",
         name = "latestVersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      imageSetState = schema.new({
         id = id.from(_N, "CopyDestinationImageSetProperties", "imageSetState"),
         type = "string",
         name = "imageSetState",
         target_id = prelude.String.id,
      }),
      imageSetWorkflowStatus = schema.new({
         id = id.from(_N, "CopyDestinationImageSetProperties", "imageSetWorkflowStatus"),
         type = "string",
         name = "imageSetWorkflowStatus",
         target_id = prelude.String.id,
      }),
      createdAt = schema.new({
         id = id.from(_N, "CopyDestinationImageSetProperties", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
      }),
      updatedAt = schema.new({
         id = id.from(_N, "CopyDestinationImageSetProperties", "updatedAt"),
         type = "timestamp",
         name = "updatedAt",
         target_id = prelude.Timestamp.id,
      }),
      imageSetArn = schema.new({
         id = id.from(_N, "CopyDestinationImageSetProperties", "imageSetArn"),
         type = "string",
         name = "imageSetArn",
         target_id = prelude.String.id,
      }),
   },
})

M.CopySourceImageSetProperties = schema.new({
   id = id.from(_N, "CopySourceImageSetProperties"),
   type = "structure",
   members = {
      imageSetId = schema.new({
         id = id.from(_N, "CopySourceImageSetProperties", "imageSetId"),
         type = "string",
         name = "imageSetId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      latestVersionId = schema.new({
         id = id.from(_N, "CopySourceImageSetProperties", "latestVersionId"),
         type = "string",
         name = "latestVersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      imageSetState = schema.new({
         id = id.from(_N, "CopySourceImageSetProperties", "imageSetState"),
         type = "string",
         name = "imageSetState",
         target_id = prelude.String.id,
      }),
      imageSetWorkflowStatus = schema.new({
         id = id.from(_N, "CopySourceImageSetProperties", "imageSetWorkflowStatus"),
         type = "string",
         name = "imageSetWorkflowStatus",
         target_id = prelude.String.id,
      }),
      createdAt = schema.new({
         id = id.from(_N, "CopySourceImageSetProperties", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
      }),
      updatedAt = schema.new({
         id = id.from(_N, "CopySourceImageSetProperties", "updatedAt"),
         type = "timestamp",
         name = "updatedAt",
         target_id = prelude.Timestamp.id,
      }),
      imageSetArn = schema.new({
         id = id.from(_N, "CopySourceImageSetProperties", "imageSetArn"),
         type = "string",
         name = "imageSetArn",
         target_id = prelude.String.id,
      }),
   },
})

M.CopyImageSetOutput = schema.new({
   id = id.from(_N, "CopyImageSetResponse"),
   type = "structure",
   members = {
      datastoreId = schema.new({
         id = id.from(_N, "CopyImageSetOutput", "datastoreId"),
         type = "string",
         name = "datastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sourceImageSetProperties = schema.new({
         id = id.from(_N, "CopyImageSetOutput", "sourceImageSetProperties"),
         type = "structure",
         name = "sourceImageSetProperties",
         target_id = id.from(_N, "CopySourceImageSetProperties"),
         target = M.CopySourceImageSetProperties,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      destinationImageSetProperties = schema.new({
         id = id.from(_N, "CopyImageSetOutput", "destinationImageSetProperties"),
         type = "structure",
         name = "destinationImageSetProperties",
         target_id = id.from(_N, "CopyDestinationImageSetProperties"),
         target = M.CopyDestinationImageSetProperties,
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

M.CreateDatastoreInput = schema.new({
   id = id.from(_N, "CreateDatastoreRequest"),
   type = "structure",
   members = {
      datastoreName = schema.new({
         id = id.from(_N, "CreateDatastoreInput", "datastoreName"),
         type = "string",
         name = "datastoreName",
         target_id = prelude.String.id,
      }),
      clientToken = schema.new({
         id = id.from(_N, "CreateDatastoreInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "CreateDatastoreInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      kmsKeyArn = schema.new({
         id = id.from(_N, "CreateDatastoreInput", "kmsKeyArn"),
         type = "string",
         name = "kmsKeyArn",
         target_id = prelude.String.id,
      }),
      lambdaAuthorizerArn = schema.new({
         id = id.from(_N, "CreateDatastoreInput", "lambdaAuthorizerArn"),
         type = "string",
         name = "lambdaAuthorizerArn",
         target_id = prelude.String.id,
      }),
      losslessStorageFormat = schema.new({
         id = id.from(_N, "CreateDatastoreInput", "losslessStorageFormat"),
         type = "string",
         name = "losslessStorageFormat",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateDatastoreOutput = schema.new({
   id = id.from(_N, "CreateDatastoreResponse"),
   type = "structure",
   members = {
      datastoreId = schema.new({
         id = id.from(_N, "CreateDatastoreOutput", "datastoreId"),
         type = "string",
         name = "datastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      datastoreStatus = schema.new({
         id = id.from(_N, "CreateDatastoreOutput", "datastoreStatus"),
         type = "string",
         name = "datastoreStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteDatastoreInput = schema.new({
   id = id.from(_N, "DeleteDatastoreRequest"),
   type = "structure",
   members = {
      datastoreId = schema.new({
         id = id.from(_N, "DeleteDatastoreInput", "datastoreId"),
         type = "string",
         name = "datastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteDatastoreOutput = schema.new({
   id = id.from(_N, "DeleteDatastoreResponse"),
   type = "structure",
   members = {
      datastoreId = schema.new({
         id = id.from(_N, "DeleteDatastoreOutput", "datastoreId"),
         type = "string",
         name = "datastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      datastoreStatus = schema.new({
         id = id.from(_N, "DeleteDatastoreOutput", "datastoreStatus"),
         type = "string",
         name = "datastoreStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetDatastoreInput = schema.new({
   id = id.from(_N, "GetDatastoreRequest"),
   type = "structure",
   members = {
      datastoreId = schema.new({
         id = id.from(_N, "GetDatastoreInput", "datastoreId"),
         type = "string",
         name = "datastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DatastoreProperties = schema.new({
   id = id.from(_N, "DatastoreProperties"),
   type = "structure",
   members = {
      datastoreId = schema.new({
         id = id.from(_N, "DatastoreProperties", "datastoreId"),
         type = "string",
         name = "datastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      datastoreName = schema.new({
         id = id.from(_N, "DatastoreProperties", "datastoreName"),
         type = "string",
         name = "datastoreName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      datastoreStatus = schema.new({
         id = id.from(_N, "DatastoreProperties", "datastoreStatus"),
         type = "string",
         name = "datastoreStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      kmsKeyArn = schema.new({
         id = id.from(_N, "DatastoreProperties", "kmsKeyArn"),
         type = "string",
         name = "kmsKeyArn",
         target_id = prelude.String.id,
      }),
      lambdaAuthorizerArn = schema.new({
         id = id.from(_N, "DatastoreProperties", "lambdaAuthorizerArn"),
         type = "string",
         name = "lambdaAuthorizerArn",
         target_id = prelude.String.id,
      }),
      losslessStorageFormat = schema.new({
         id = id.from(_N, "DatastoreProperties", "losslessStorageFormat"),
         type = "string",
         name = "losslessStorageFormat",
         target_id = prelude.String.id,
      }),
      datastoreArn = schema.new({
         id = id.from(_N, "DatastoreProperties", "datastoreArn"),
         type = "string",
         name = "datastoreArn",
         target_id = prelude.String.id,
      }),
      createdAt = schema.new({
         id = id.from(_N, "DatastoreProperties", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
      }),
      updatedAt = schema.new({
         id = id.from(_N, "DatastoreProperties", "updatedAt"),
         type = "timestamp",
         name = "updatedAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.GetDatastoreOutput = schema.new({
   id = id.from(_N, "GetDatastoreResponse"),
   type = "structure",
   members = {
      datastoreProperties = schema.new({
         id = id.from(_N, "GetDatastoreOutput", "datastoreProperties"),
         type = "structure",
         name = "datastoreProperties",
         target_id = id.from(_N, "DatastoreProperties"),
         target = M.DatastoreProperties,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListDatastoresInput = schema.new({
   id = id.from(_N, "ListDatastoresRequest"),
   type = "structure",
   members = {
      datastoreStatus = schema.new({
         id = id.from(_N, "ListDatastoresInput", "datastoreStatus"),
         type = "string",
         name = "datastoreStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "datastoreStatus" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListDatastoresInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListDatastoresInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.DatastoreSummary = schema.new({
   id = id.from(_N, "DatastoreSummary"),
   type = "structure",
   members = {
      datastoreId = schema.new({
         id = id.from(_N, "DatastoreSummary", "datastoreId"),
         type = "string",
         name = "datastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      datastoreName = schema.new({
         id = id.from(_N, "DatastoreSummary", "datastoreName"),
         type = "string",
         name = "datastoreName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      datastoreStatus = schema.new({
         id = id.from(_N, "DatastoreSummary", "datastoreStatus"),
         type = "string",
         name = "datastoreStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      datastoreArn = schema.new({
         id = id.from(_N, "DatastoreSummary", "datastoreArn"),
         type = "string",
         name = "datastoreArn",
         target_id = prelude.String.id,
      }),
      createdAt = schema.new({
         id = id.from(_N, "DatastoreSummary", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
      }),
      updatedAt = schema.new({
         id = id.from(_N, "DatastoreSummary", "updatedAt"),
         type = "timestamp",
         name = "updatedAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListDatastoresOutput = schema.new({
   id = id.from(_N, "ListDatastoresResponse"),
   type = "structure",
   members = {
      datastoreSummaries = schema.new({
         id = id.from(_N, "ListDatastoresOutput", "datastoreSummaries"),
         type = "list",
         name = "datastoreSummaries",
         target_id = prelude.Document.id,
         list_member = M.DatastoreSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListDatastoresOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteImageSetInput = schema.new({
   id = id.from(_N, "DeleteImageSetRequest"),
   type = "structure",
   members = {
      datastoreId = schema.new({
         id = id.from(_N, "DeleteImageSetInput", "datastoreId"),
         type = "string",
         name = "datastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      imageSetId = schema.new({
         id = id.from(_N, "DeleteImageSetInput", "imageSetId"),
         type = "string",
         name = "imageSetId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteImageSetOutput = schema.new({
   id = id.from(_N, "DeleteImageSetResponse"),
   type = "structure",
   members = {
      datastoreId = schema.new({
         id = id.from(_N, "DeleteImageSetOutput", "datastoreId"),
         type = "string",
         name = "datastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      imageSetId = schema.new({
         id = id.from(_N, "DeleteImageSetOutput", "imageSetId"),
         type = "string",
         name = "imageSetId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      imageSetState = schema.new({
         id = id.from(_N, "DeleteImageSetOutput", "imageSetState"),
         type = "string",
         name = "imageSetState",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      imageSetWorkflowStatus = schema.new({
         id = id.from(_N, "DeleteImageSetOutput", "imageSetWorkflowStatus"),
         type = "string",
         name = "imageSetWorkflowStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetDICOMImportJobInput = schema.new({
   id = id.from(_N, "GetDICOMImportJobRequest"),
   type = "structure",
   members = {
      datastoreId = schema.new({
         id = id.from(_N, "GetDICOMImportJobInput", "datastoreId"),
         type = "string",
         name = "datastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      jobId = schema.new({
         id = id.from(_N, "GetDICOMImportJobInput", "jobId"),
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

M.DicomMetadataMapping = schema.new({
   id = id.from(_N, "DicomMetadataMapping"),
   type = "structure",
   members = {
      studyInstanceUID = schema.new({
         id = id.from(_N, "DicomMetadataMapping", "studyInstanceUID"),
         type = "string",
         name = "studyInstanceUID",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      seriesInstanceUID = schema.new({
         id = id.from(_N, "DicomMetadataMapping", "seriesInstanceUID"),
         type = "string",
         name = "seriesInstanceUID",
         target_id = prelude.String.id,
      }),
      metadataFilePath = schema.new({
         id = id.from(_N, "DicomMetadataMapping", "metadataFilePath"),
         type = "string",
         name = "metadataFilePath",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DicomJsonMetadataImportConfiguration = schema.new({
   id = id.from(_N, "DicomJsonMetadataImportConfiguration"),
   type = "structure",
   members = {
      dicomMetadataMappings = schema.new({
         id = id.from(_N, "DicomJsonMetadataImportConfiguration", "dicomMetadataMappings"),
         type = "list",
         name = "dicomMetadataMappings",
         target_id = prelude.Document.id,
         list_member = M.DicomMetadataMapping,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ImportConfiguration = schema.new({
   id = id.from(_N, "ImportConfiguration"),
   type = "union",
   members = {
      dicomJsonMetadataImportConfiguration = schema.new({
         id = id.from(_N, "ImportConfiguration", "dicomJsonMetadataImportConfiguration"),
         type = "structure",
         name = "dicomJsonMetadataImportConfiguration",
         target_id = id.from(_N, "DicomJsonMetadataImportConfiguration"),
         target = M.DicomJsonMetadataImportConfiguration,
      }),
   },
})

M.DICOMImportJobProperties = schema.new({
   id = id.from(_N, "DICOMImportJobProperties"),
   type = "structure",
   members = {
      jobId = schema.new({
         id = id.from(_N, "DICOMImportJobProperties", "jobId"),
         type = "string",
         name = "jobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      jobName = schema.new({
         id = id.from(_N, "DICOMImportJobProperties", "jobName"),
         type = "string",
         name = "jobName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      jobStatus = schema.new({
         id = id.from(_N, "DICOMImportJobProperties", "jobStatus"),
         type = "string",
         name = "jobStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      datastoreId = schema.new({
         id = id.from(_N, "DICOMImportJobProperties", "datastoreId"),
         type = "string",
         name = "datastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      dataAccessRoleArn = schema.new({
         id = id.from(_N, "DICOMImportJobProperties", "dataAccessRoleArn"),
         type = "string",
         name = "dataAccessRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      endedAt = schema.new({
         id = id.from(_N, "DICOMImportJobProperties", "endedAt"),
         type = "timestamp",
         name = "endedAt",
         target_id = prelude.Timestamp.id,
      }),
      submittedAt = schema.new({
         id = id.from(_N, "DICOMImportJobProperties", "submittedAt"),
         type = "timestamp",
         name = "submittedAt",
         target_id = prelude.Timestamp.id,
      }),
      inputS3Uri = schema.new({
         id = id.from(_N, "DICOMImportJobProperties", "inputS3Uri"),
         type = "string",
         name = "inputS3Uri",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      outputS3Uri = schema.new({
         id = id.from(_N, "DICOMImportJobProperties", "outputS3Uri"),
         type = "string",
         name = "outputS3Uri",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      message = schema.new({
         id = id.from(_N, "DICOMImportJobProperties", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
      importConfiguration = schema.new({
         id = id.from(_N, "DICOMImportJobProperties", "importConfiguration"),
         type = "union",
         name = "importConfiguration",
         target_id = id.from(_N, "ImportConfiguration"),
         target = M.ImportConfiguration,
      }),
   },
})

M.GetDICOMImportJobOutput = schema.new({
   id = id.from(_N, "GetDICOMImportJobResponse"),
   type = "structure",
   members = {
      jobProperties = schema.new({
         id = id.from(_N, "GetDICOMImportJobOutput", "jobProperties"),
         type = "structure",
         name = "jobProperties",
         target_id = id.from(_N, "DICOMImportJobProperties"),
         target = M.DICOMImportJobProperties,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BadRequestException = schema.new({
   id = id.from(_N, "BadRequestException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "BadRequestException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ImageFrameInformation = schema.new({
   id = id.from(_N, "ImageFrameInformation"),
   type = "structure",
   members = {
      imageFrameId = schema.new({
         id = id.from(_N, "ImageFrameInformation", "imageFrameId"),
         type = "string",
         name = "imageFrameId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetImageFrameInput = schema.new({
   id = id.from(_N, "GetImageFrameRequest"),
   type = "structure",
   members = {
      datastoreId = schema.new({
         id = id.from(_N, "GetImageFrameInput", "datastoreId"),
         type = "string",
         name = "datastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      imageSetId = schema.new({
         id = id.from(_N, "GetImageFrameInput", "imageSetId"),
         type = "string",
         name = "imageSetId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      imageFrameInformation = schema.new({
         id = id.from(_N, "GetImageFrameInput", "imageFrameInformation"),
         type = "structure",
         name = "imageFrameInformation",
         target_id = id.from(_N, "ImageFrameInformation"),
         target = M.ImageFrameInformation,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetImageFrameOutput = schema.new({
   id = id.from(_N, "GetImageFrameResponse"),
   type = "structure",
   members = {
      imageFrameBlob = schema.new({
         id = id.from(_N, "GetImageFrameOutput", "imageFrameBlob"),
         type = "blob",
         name = "imageFrameBlob",
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
      contentType = schema.new({
         id = id.from(_N, "GetImageFrameOutput", "contentType"),
         type = "string",
         name = "contentType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Type" },
         },
      }),
   },
})

M.NotAcceptableException = schema.new({
   id = id.from(_N, "NotAcceptableException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "NotAcceptableException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetImageSetInput = schema.new({
   id = id.from(_N, "GetImageSetRequest"),
   type = "structure",
   members = {
      datastoreId = schema.new({
         id = id.from(_N, "GetImageSetInput", "datastoreId"),
         type = "string",
         name = "datastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      imageSetId = schema.new({
         id = id.from(_N, "GetImageSetInput", "imageSetId"),
         type = "string",
         name = "imageSetId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      versionId = schema.new({
         id = id.from(_N, "GetImageSetInput", "versionId"),
         type = "string",
         name = "versionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "version" },
         },
      }),
   },
})

M.Overrides = schema.new({
   id = id.from(_N, "Overrides"),
   type = "structure",
   members = {
      forced = schema.new({
         id = id.from(_N, "Overrides", "forced"),
         type = "boolean",
         name = "forced",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.GetImageSetOutput = schema.new({
   id = id.from(_N, "GetImageSetResponse"),
   type = "structure",
   members = {
      datastoreId = schema.new({
         id = id.from(_N, "GetImageSetOutput", "datastoreId"),
         type = "string",
         name = "datastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      imageSetId = schema.new({
         id = id.from(_N, "GetImageSetOutput", "imageSetId"),
         type = "string",
         name = "imageSetId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      versionId = schema.new({
         id = id.from(_N, "GetImageSetOutput", "versionId"),
         type = "string",
         name = "versionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      imageSetState = schema.new({
         id = id.from(_N, "GetImageSetOutput", "imageSetState"),
         type = "string",
         name = "imageSetState",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      imageSetWorkflowStatus = schema.new({
         id = id.from(_N, "GetImageSetOutput", "imageSetWorkflowStatus"),
         type = "string",
         name = "imageSetWorkflowStatus",
         target_id = prelude.String.id,
      }),
      createdAt = schema.new({
         id = id.from(_N, "GetImageSetOutput", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
      }),
      updatedAt = schema.new({
         id = id.from(_N, "GetImageSetOutput", "updatedAt"),
         type = "timestamp",
         name = "updatedAt",
         target_id = prelude.Timestamp.id,
      }),
      deletedAt = schema.new({
         id = id.from(_N, "GetImageSetOutput", "deletedAt"),
         type = "timestamp",
         name = "deletedAt",
         target_id = prelude.Timestamp.id,
      }),
      message = schema.new({
         id = id.from(_N, "GetImageSetOutput", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
      imageSetArn = schema.new({
         id = id.from(_N, "GetImageSetOutput", "imageSetArn"),
         type = "string",
         name = "imageSetArn",
         target_id = prelude.String.id,
      }),
      overrides = schema.new({
         id = id.from(_N, "GetImageSetOutput", "overrides"),
         type = "structure",
         name = "overrides",
         target_id = id.from(_N, "Overrides"),
         target = M.Overrides,
      }),
      isPrimary = schema.new({
         id = id.from(_N, "GetImageSetOutput", "isPrimary"),
         type = "boolean",
         name = "isPrimary",
         target_id = prelude.Boolean.id,
      }),
      lastAccessedAt = schema.new({
         id = id.from(_N, "GetImageSetOutput", "lastAccessedAt"),
         type = "timestamp",
         name = "lastAccessedAt",
         target_id = prelude.Timestamp.id,
      }),
      storageTier = schema.new({
         id = id.from(_N, "GetImageSetOutput", "storageTier"),
         type = "string",
         name = "storageTier",
         target_id = prelude.String.id,
      }),
   },
})

M.GetImageSetMetadataInput = schema.new({
   id = id.from(_N, "GetImageSetMetadataRequest"),
   type = "structure",
   members = {
      datastoreId = schema.new({
         id = id.from(_N, "GetImageSetMetadataInput", "datastoreId"),
         type = "string",
         name = "datastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      imageSetId = schema.new({
         id = id.from(_N, "GetImageSetMetadataInput", "imageSetId"),
         type = "string",
         name = "imageSetId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      versionId = schema.new({
         id = id.from(_N, "GetImageSetMetadataInput", "versionId"),
         type = "string",
         name = "versionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "version" },
         },
      }),
   },
})

M.GetImageSetMetadataOutput = schema.new({
   id = id.from(_N, "GetImageSetMetadataResponse"),
   type = "structure",
   members = {
      imageSetMetadataBlob = schema.new({
         id = id.from(_N, "GetImageSetMetadataOutput", "imageSetMetadataBlob"),
         type = "blob",
         name = "imageSetMetadataBlob",
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
      contentType = schema.new({
         id = id.from(_N, "GetImageSetMetadataOutput", "contentType"),
         type = "string",
         name = "contentType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Type" },
         },
      }),
      contentEncoding = schema.new({
         id = id.from(_N, "GetImageSetMetadataOutput", "contentEncoding"),
         type = "string",
         name = "contentEncoding",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Encoding" },
         },
      }),
   },
})

M.ListDICOMImportJobsInput = schema.new({
   id = id.from(_N, "ListDICOMImportJobsRequest"),
   type = "structure",
   members = {
      datastoreId = schema.new({
         id = id.from(_N, "ListDICOMImportJobsInput", "datastoreId"),
         type = "string",
         name = "datastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      jobStatus = schema.new({
         id = id.from(_N, "ListDICOMImportJobsInput", "jobStatus"),
         type = "string",
         name = "jobStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "jobStatus" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListDICOMImportJobsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListDICOMImportJobsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.DICOMImportJobSummary = schema.new({
   id = id.from(_N, "DICOMImportJobSummary"),
   type = "structure",
   members = {
      jobId = schema.new({
         id = id.from(_N, "DICOMImportJobSummary", "jobId"),
         type = "string",
         name = "jobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      jobName = schema.new({
         id = id.from(_N, "DICOMImportJobSummary", "jobName"),
         type = "string",
         name = "jobName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      jobStatus = schema.new({
         id = id.from(_N, "DICOMImportJobSummary", "jobStatus"),
         type = "string",
         name = "jobStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      datastoreId = schema.new({
         id = id.from(_N, "DICOMImportJobSummary", "datastoreId"),
         type = "string",
         name = "datastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      dataAccessRoleArn = schema.new({
         id = id.from(_N, "DICOMImportJobSummary", "dataAccessRoleArn"),
         type = "string",
         name = "dataAccessRoleArn",
         target_id = prelude.String.id,
      }),
      endedAt = schema.new({
         id = id.from(_N, "DICOMImportJobSummary", "endedAt"),
         type = "timestamp",
         name = "endedAt",
         target_id = prelude.Timestamp.id,
      }),
      submittedAt = schema.new({
         id = id.from(_N, "DICOMImportJobSummary", "submittedAt"),
         type = "timestamp",
         name = "submittedAt",
         target_id = prelude.Timestamp.id,
      }),
      message = schema.new({
         id = id.from(_N, "DICOMImportJobSummary", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDICOMImportJobsOutput = schema.new({
   id = id.from(_N, "ListDICOMImportJobsResponse"),
   type = "structure",
   members = {
      jobSummaries = schema.new({
         id = id.from(_N, "ListDICOMImportJobsOutput", "jobSummaries"),
         type = "list",
         name = "jobSummaries",
         target_id = prelude.Document.id,
         list_member = M.DICOMImportJobSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListDICOMImportJobsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListImageSetVersionsInput = schema.new({
   id = id.from(_N, "ListImageSetVersionsRequest"),
   type = "structure",
   members = {
      datastoreId = schema.new({
         id = id.from(_N, "ListImageSetVersionsInput", "datastoreId"),
         type = "string",
         name = "datastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      imageSetId = schema.new({
         id = id.from(_N, "ListImageSetVersionsInput", "imageSetId"),
         type = "string",
         name = "imageSetId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListImageSetVersionsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListImageSetVersionsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ImageSetProperties = schema.new({
   id = id.from(_N, "ImageSetProperties"),
   type = "structure",
   members = {
      imageSetId = schema.new({
         id = id.from(_N, "ImageSetProperties", "imageSetId"),
         type = "string",
         name = "imageSetId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      versionId = schema.new({
         id = id.from(_N, "ImageSetProperties", "versionId"),
         type = "string",
         name = "versionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      imageSetState = schema.new({
         id = id.from(_N, "ImageSetProperties", "imageSetState"),
         type = "string",
         name = "imageSetState",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ImageSetWorkflowStatus = schema.new({
         id = id.from(_N, "ImageSetProperties", "ImageSetWorkflowStatus"),
         type = "string",
         name = "ImageSetWorkflowStatus",
         target_id = prelude.String.id,
      }),
      createdAt = schema.new({
         id = id.from(_N, "ImageSetProperties", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
      }),
      updatedAt = schema.new({
         id = id.from(_N, "ImageSetProperties", "updatedAt"),
         type = "timestamp",
         name = "updatedAt",
         target_id = prelude.Timestamp.id,
      }),
      deletedAt = schema.new({
         id = id.from(_N, "ImageSetProperties", "deletedAt"),
         type = "timestamp",
         name = "deletedAt",
         target_id = prelude.Timestamp.id,
      }),
      message = schema.new({
         id = id.from(_N, "ImageSetProperties", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
      overrides = schema.new({
         id = id.from(_N, "ImageSetProperties", "overrides"),
         type = "structure",
         name = "overrides",
         target_id = id.from(_N, "Overrides"),
         target = M.Overrides,
      }),
      isPrimary = schema.new({
         id = id.from(_N, "ImageSetProperties", "isPrimary"),
         type = "boolean",
         name = "isPrimary",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.ListImageSetVersionsOutput = schema.new({
   id = id.from(_N, "ListImageSetVersionsResponse"),
   type = "structure",
   members = {
      imageSetPropertiesList = schema.new({
         id = id.from(_N, "ListImageSetVersionsOutput", "imageSetPropertiesList"),
         type = "list",
         name = "imageSetPropertiesList",
         target_id = prelude.Document.id,
         list_member = M.ImageSetProperties,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListImageSetVersionsOutput", "nextToken"),
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

M.DICOMStudyDateAndTime = schema.new({
   id = id.from(_N, "DICOMStudyDateAndTime"),
   type = "structure",
   members = {
      DICOMStudyDate = schema.new({
         id = id.from(_N, "DICOMStudyDateAndTime", "DICOMStudyDate"),
         type = "string",
         name = "DICOMStudyDate",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DICOMStudyTime = schema.new({
         id = id.from(_N, "DICOMStudyDateAndTime", "DICOMStudyTime"),
         type = "string",
         name = "DICOMStudyTime",
         target_id = prelude.String.id,
      }),
   },
})

M.SearchByAttributeValue = schema.new({
   id = id.from(_N, "SearchByAttributeValue"),
   type = "union",
   members = {
      DICOMPatientId = schema.new({
         id = id.from(_N, "SearchByAttributeValue", "DICOMPatientId"),
         type = "string",
         name = "DICOMPatientId",
         target_id = prelude.String.id,
      }),
      DICOMAccessionNumber = schema.new({
         id = id.from(_N, "SearchByAttributeValue", "DICOMAccessionNumber"),
         type = "string",
         name = "DICOMAccessionNumber",
         target_id = prelude.String.id,
      }),
      DICOMStudyId = schema.new({
         id = id.from(_N, "SearchByAttributeValue", "DICOMStudyId"),
         type = "string",
         name = "DICOMStudyId",
         target_id = prelude.String.id,
      }),
      DICOMStudyInstanceUID = schema.new({
         id = id.from(_N, "SearchByAttributeValue", "DICOMStudyInstanceUID"),
         type = "string",
         name = "DICOMStudyInstanceUID",
         target_id = prelude.String.id,
      }),
      DICOMSeriesInstanceUID = schema.new({
         id = id.from(_N, "SearchByAttributeValue", "DICOMSeriesInstanceUID"),
         type = "string",
         name = "DICOMSeriesInstanceUID",
         target_id = prelude.String.id,
      }),
      createdAt = schema.new({
         id = id.from(_N, "SearchByAttributeValue", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
      }),
      updatedAt = schema.new({
         id = id.from(_N, "SearchByAttributeValue", "updatedAt"),
         type = "timestamp",
         name = "updatedAt",
         target_id = prelude.Timestamp.id,
      }),
      DICOMStudyDateAndTime = schema.new({
         id = id.from(_N, "SearchByAttributeValue", "DICOMStudyDateAndTime"),
         type = "structure",
         name = "DICOMStudyDateAndTime",
         target_id = id.from(_N, "DICOMStudyDateAndTime"),
         target = M.DICOMStudyDateAndTime,
      }),
      isPrimary = schema.new({
         id = id.from(_N, "SearchByAttributeValue", "isPrimary"),
         type = "boolean",
         name = "isPrimary",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.SearchFilter = schema.new({
   id = id.from(_N, "SearchFilter"),
   type = "structure",
   members = {
      values = schema.new({
         id = id.from(_N, "SearchFilter", "values"),
         type = "list",
         name = "values",
         target_id = prelude.Document.id,
         list_member = M.SearchByAttributeValue,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      operator = schema.new({
         id = id.from(_N, "SearchFilter", "operator"),
         type = "string",
         name = "operator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Sort = schema.new({
   id = id.from(_N, "Sort"),
   type = "structure",
   members = {
      sortOrder = schema.new({
         id = id.from(_N, "Sort", "sortOrder"),
         type = "string",
         name = "sortOrder",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sortField = schema.new({
         id = id.from(_N, "Sort", "sortField"),
         type = "string",
         name = "sortField",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SearchCriteria = schema.new({
   id = id.from(_N, "SearchCriteria"),
   type = "structure",
   members = {
      filters = schema.new({
         id = id.from(_N, "SearchCriteria", "filters"),
         type = "list",
         name = "filters",
         target_id = prelude.Document.id,
         list_member = M.SearchFilter,
      }),
      sort = schema.new({
         id = id.from(_N, "SearchCriteria", "sort"),
         type = "structure",
         name = "sort",
         target_id = id.from(_N, "Sort"),
         target = M.Sort,
      }),
   },
})

M.SearchImageSetsInput = schema.new({
   id = id.from(_N, "SearchImageSetsRequest"),
   type = "structure",
   members = {
      datastoreId = schema.new({
         id = id.from(_N, "SearchImageSetsInput", "datastoreId"),
         type = "string",
         name = "datastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      searchCriteria = schema.new({
         id = id.from(_N, "SearchImageSetsInput", "searchCriteria"),
         type = "structure",
         name = "searchCriteria",
         target_id = id.from(_N, "SearchCriteria"),
         target = M.SearchCriteria,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "SearchImageSetsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "SearchImageSetsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.DICOMTags = schema.new({
   id = id.from(_N, "DICOMTags"),
   type = "structure",
   members = {
      DICOMPatientId = schema.new({
         id = id.from(_N, "DICOMTags", "DICOMPatientId"),
         type = "string",
         name = "DICOMPatientId",
         target_id = prelude.String.id,
      }),
      DICOMPatientName = schema.new({
         id = id.from(_N, "DICOMTags", "DICOMPatientName"),
         type = "string",
         name = "DICOMPatientName",
         target_id = prelude.String.id,
      }),
      DICOMPatientBirthDate = schema.new({
         id = id.from(_N, "DICOMTags", "DICOMPatientBirthDate"),
         type = "string",
         name = "DICOMPatientBirthDate",
         target_id = prelude.String.id,
      }),
      DICOMPatientSex = schema.new({
         id = id.from(_N, "DICOMTags", "DICOMPatientSex"),
         type = "string",
         name = "DICOMPatientSex",
         target_id = prelude.String.id,
      }),
      DICOMStudyInstanceUID = schema.new({
         id = id.from(_N, "DICOMTags", "DICOMStudyInstanceUID"),
         type = "string",
         name = "DICOMStudyInstanceUID",
         target_id = prelude.String.id,
      }),
      DICOMStudyId = schema.new({
         id = id.from(_N, "DICOMTags", "DICOMStudyId"),
         type = "string",
         name = "DICOMStudyId",
         target_id = prelude.String.id,
      }),
      DICOMStudyDescription = schema.new({
         id = id.from(_N, "DICOMTags", "DICOMStudyDescription"),
         type = "string",
         name = "DICOMStudyDescription",
         target_id = prelude.String.id,
      }),
      DICOMNumberOfStudyRelatedSeries = schema.new({
         id = id.from(_N, "DICOMTags", "DICOMNumberOfStudyRelatedSeries"),
         type = "integer",
         name = "DICOMNumberOfStudyRelatedSeries",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      DICOMNumberOfStudyRelatedInstances = schema.new({
         id = id.from(_N, "DICOMTags", "DICOMNumberOfStudyRelatedInstances"),
         type = "integer",
         name = "DICOMNumberOfStudyRelatedInstances",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      DICOMAccessionNumber = schema.new({
         id = id.from(_N, "DICOMTags", "DICOMAccessionNumber"),
         type = "string",
         name = "DICOMAccessionNumber",
         target_id = prelude.String.id,
      }),
      DICOMSeriesInstanceUID = schema.new({
         id = id.from(_N, "DICOMTags", "DICOMSeriesInstanceUID"),
         type = "string",
         name = "DICOMSeriesInstanceUID",
         target_id = prelude.String.id,
      }),
      DICOMSeriesModality = schema.new({
         id = id.from(_N, "DICOMTags", "DICOMSeriesModality"),
         type = "string",
         name = "DICOMSeriesModality",
         target_id = prelude.String.id,
      }),
      DICOMSeriesBodyPart = schema.new({
         id = id.from(_N, "DICOMTags", "DICOMSeriesBodyPart"),
         type = "string",
         name = "DICOMSeriesBodyPart",
         target_id = prelude.String.id,
      }),
      DICOMSeriesNumber = schema.new({
         id = id.from(_N, "DICOMTags", "DICOMSeriesNumber"),
         type = "integer",
         name = "DICOMSeriesNumber",
         target_id = prelude.Integer.id,
      }),
      DICOMStudyDate = schema.new({
         id = id.from(_N, "DICOMTags", "DICOMStudyDate"),
         type = "string",
         name = "DICOMStudyDate",
         target_id = prelude.String.id,
      }),
      DICOMStudyTime = schema.new({
         id = id.from(_N, "DICOMTags", "DICOMStudyTime"),
         type = "string",
         name = "DICOMStudyTime",
         target_id = prelude.String.id,
      }),
   },
})

M.ImageSetsMetadataSummary = schema.new({
   id = id.from(_N, "ImageSetsMetadataSummary"),
   type = "structure",
   members = {
      imageSetId = schema.new({
         id = id.from(_N, "ImageSetsMetadataSummary", "imageSetId"),
         type = "string",
         name = "imageSetId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      version = schema.new({
         id = id.from(_N, "ImageSetsMetadataSummary", "version"),
         type = "integer",
         name = "version",
         target_id = prelude.Integer.id,
      }),
      createdAt = schema.new({
         id = id.from(_N, "ImageSetsMetadataSummary", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
      }),
      updatedAt = schema.new({
         id = id.from(_N, "ImageSetsMetadataSummary", "updatedAt"),
         type = "timestamp",
         name = "updatedAt",
         target_id = prelude.Timestamp.id,
      }),
      lastAccessedAt = schema.new({
         id = id.from(_N, "ImageSetsMetadataSummary", "lastAccessedAt"),
         type = "timestamp",
         name = "lastAccessedAt",
         target_id = prelude.Timestamp.id,
      }),
      storageTier = schema.new({
         id = id.from(_N, "ImageSetsMetadataSummary", "storageTier"),
         type = "string",
         name = "storageTier",
         target_id = prelude.String.id,
      }),
      DICOMTags = schema.new({
         id = id.from(_N, "ImageSetsMetadataSummary", "DICOMTags"),
         type = "structure",
         name = "DICOMTags",
         target_id = id.from(_N, "DICOMTags"),
         target = M.DICOMTags,
      }),
      isPrimary = schema.new({
         id = id.from(_N, "ImageSetsMetadataSummary", "isPrimary"),
         type = "boolean",
         name = "isPrimary",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.SearchImageSetsOutput = schema.new({
   id = id.from(_N, "SearchImageSetsResponse"),
   type = "structure",
   members = {
      imageSetsMetadataSummaries = schema.new({
         id = id.from(_N, "SearchImageSetsOutput", "imageSetsMetadataSummaries"),
         type = "list",
         name = "imageSetsMetadataSummaries",
         target_id = prelude.Document.id,
         list_member = M.ImageSetsMetadataSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sort = schema.new({
         id = id.from(_N, "SearchImageSetsOutput", "sort"),
         type = "structure",
         name = "sort",
         target_id = id.from(_N, "Sort"),
         target = M.Sort,
      }),
      nextToken = schema.new({
         id = id.from(_N, "SearchImageSetsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.StartDICOMImportJobInput = schema.new({
   id = id.from(_N, "StartDICOMImportJobRequest"),
   type = "structure",
   members = {
      jobName = schema.new({
         id = id.from(_N, "StartDICOMImportJobInput", "jobName"),
         type = "string",
         name = "jobName",
         target_id = prelude.String.id,
      }),
      dataAccessRoleArn = schema.new({
         id = id.from(_N, "StartDICOMImportJobInput", "dataAccessRoleArn"),
         type = "string",
         name = "dataAccessRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      clientToken = schema.new({
         id = id.from(_N, "StartDICOMImportJobInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      datastoreId = schema.new({
         id = id.from(_N, "StartDICOMImportJobInput", "datastoreId"),
         type = "string",
         name = "datastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      inputS3Uri = schema.new({
         id = id.from(_N, "StartDICOMImportJobInput", "inputS3Uri"),
         type = "string",
         name = "inputS3Uri",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      outputS3Uri = schema.new({
         id = id.from(_N, "StartDICOMImportJobInput", "outputS3Uri"),
         type = "string",
         name = "outputS3Uri",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      inputOwnerAccountId = schema.new({
         id = id.from(_N, "StartDICOMImportJobInput", "inputOwnerAccountId"),
         type = "string",
         name = "inputOwnerAccountId",
         target_id = prelude.String.id,
      }),
      importConfiguration = schema.new({
         id = id.from(_N, "StartDICOMImportJobInput", "importConfiguration"),
         type = "union",
         name = "importConfiguration",
         target_id = id.from(_N, "ImportConfiguration"),
         target = M.ImportConfiguration,
      }),
   },
})

M.StartDICOMImportJobOutput = schema.new({
   id = id.from(_N, "StartDICOMImportJobResponse"),
   type = "structure",
   members = {
      datastoreId = schema.new({
         id = id.from(_N, "StartDICOMImportJobOutput", "datastoreId"),
         type = "string",
         name = "datastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      jobId = schema.new({
         id = id.from(_N, "StartDICOMImportJobOutput", "jobId"),
         type = "string",
         name = "jobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      jobStatus = schema.new({
         id = id.from(_N, "StartDICOMImportJobOutput", "jobStatus"),
         type = "string",
         name = "jobStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      submittedAt = schema.new({
         id = id.from(_N, "StartDICOMImportJobOutput", "submittedAt"),
         type = "timestamp",
         name = "submittedAt",
         target_id = prelude.Timestamp.id,
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

M.DICOMUpdates = schema.new({
   id = id.from(_N, "DICOMUpdates"),
   type = "structure",
   members = {
      removableAttributes = schema.new({
         id = id.from(_N, "DICOMUpdates", "removableAttributes"),
         type = "blob",
         name = "removableAttributes",
         target_id = prelude.Blob.id,
      }),
      updatableAttributes = schema.new({
         id = id.from(_N, "DICOMUpdates", "updatableAttributes"),
         type = "blob",
         name = "updatableAttributes",
         target_id = prelude.Blob.id,
      }),
   },
})

M.MetadataUpdates = schema.new({
   id = id.from(_N, "MetadataUpdates"),
   type = "union",
   members = {
      DICOMUpdates = schema.new({
         id = id.from(_N, "MetadataUpdates", "DICOMUpdates"),
         type = "structure",
         name = "DICOMUpdates",
         target_id = id.from(_N, "DICOMUpdates"),
         target = M.DICOMUpdates,
      }),
      revertToVersionId = schema.new({
         id = id.from(_N, "MetadataUpdates", "revertToVersionId"),
         type = "string",
         name = "revertToVersionId",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateImageSetMetadataInput = schema.new({
   id = id.from(_N, "UpdateImageSetMetadataRequest"),
   type = "structure",
   members = {
      datastoreId = schema.new({
         id = id.from(_N, "UpdateImageSetMetadataInput", "datastoreId"),
         type = "string",
         name = "datastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      imageSetId = schema.new({
         id = id.from(_N, "UpdateImageSetMetadataInput", "imageSetId"),
         type = "string",
         name = "imageSetId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      latestVersionId = schema.new({
         id = id.from(_N, "UpdateImageSetMetadataInput", "latestVersionId"),
         type = "string",
         name = "latestVersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "latestVersion" },
         },
      }),
      force = schema.new({
         id = id.from(_N, "UpdateImageSetMetadataInput", "force"),
         type = "boolean",
         name = "force",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "force" },
         },
      }),
      includeStudyImageSets = schema.new({
         id = id.from(_N, "UpdateImageSetMetadataInput", "includeStudyImageSets"),
         type = "boolean",
         name = "includeStudyImageSets",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "includeStudyImageSets" },
         },
      }),
      updateImageSetMetadataUpdates = schema.new({
         id = id.from(_N, "UpdateImageSetMetadataInput", "updateImageSetMetadataUpdates"),
         type = "union",
         name = "updateImageSetMetadataUpdates",
         target_id = id.from(_N, "MetadataUpdates"),
         target = M.MetadataUpdates,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UpdateImageSetMetadataOutput = schema.new({
   id = id.from(_N, "UpdateImageSetMetadataResponse"),
   type = "structure",
   members = {
      datastoreId = schema.new({
         id = id.from(_N, "UpdateImageSetMetadataOutput", "datastoreId"),
         type = "string",
         name = "datastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      imageSetId = schema.new({
         id = id.from(_N, "UpdateImageSetMetadataOutput", "imageSetId"),
         type = "string",
         name = "imageSetId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      latestVersionId = schema.new({
         id = id.from(_N, "UpdateImageSetMetadataOutput", "latestVersionId"),
         type = "string",
         name = "latestVersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      imageSetState = schema.new({
         id = id.from(_N, "UpdateImageSetMetadataOutput", "imageSetState"),
         type = "string",
         name = "imageSetState",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      imageSetWorkflowStatus = schema.new({
         id = id.from(_N, "UpdateImageSetMetadataOutput", "imageSetWorkflowStatus"),
         type = "string",
         name = "imageSetWorkflowStatus",
         target_id = prelude.String.id,
      }),
      createdAt = schema.new({
         id = id.from(_N, "UpdateImageSetMetadataOutput", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
      }),
      updatedAt = schema.new({
         id = id.from(_N, "UpdateImageSetMetadataOutput", "updatedAt"),
         type = "timestamp",
         name = "updatedAt",
         target_id = prelude.Timestamp.id,
      }),
      message = schema.new({
         id = id.from(_N, "UpdateImageSetMetadataOutput", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})


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

M.Service = schema.service({
   id = id.from("com.amazonaws.medicalimaging", "AHIGatewayService"),
   version = "2023-07-19",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CopyImageSet = schema.operation({
   id = id.from("com.amazonaws.medicalimaging", "CopyImageSet"),
   input = M.CopyImageSetInput,
   output = M.CopyImageSetOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/datastore/{datastoreId}/imageSet/{sourceImageSetId}/copyImageSet" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateDatastore = schema.operation({
   id = id.from("com.amazonaws.medicalimaging", "CreateDatastore"),
   input = M.CreateDatastoreInput,
   output = M.CreateDatastoreOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/datastore" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteDatastore = schema.operation({
   id = id.from("com.amazonaws.medicalimaging", "DeleteDatastore"),
   input = M.DeleteDatastoreInput,
   output = M.DeleteDatastoreOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/datastore/{datastoreId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteImageSet = schema.operation({
   id = id.from("com.amazonaws.medicalimaging", "DeleteImageSet"),
   input = M.DeleteImageSetInput,
   output = M.DeleteImageSetOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/datastore/{datastoreId}/imageSet/{imageSetId}/deleteImageSet" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetDatastore = schema.operation({
   id = id.from("com.amazonaws.medicalimaging", "GetDatastore"),
   input = M.GetDatastoreInput,
   output = M.GetDatastoreOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/datastore/{datastoreId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetDICOMImportJob = schema.operation({
   id = id.from("com.amazonaws.medicalimaging", "GetDICOMImportJob"),
   input = M.GetDICOMImportJobInput,
   output = M.GetDICOMImportJobOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/getDICOMImportJob/datastore/{datastoreId}/job/{jobId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetImageFrame = schema.operation({
   id = id.from("com.amazonaws.medicalimaging", "GetImageFrame"),
   input = M.GetImageFrameInput,
   output = M.GetImageFrameOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/datastore/{datastoreId}/imageSet/{imageSetId}/getImageFrame" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetImageSet = schema.operation({
   id = id.from("com.amazonaws.medicalimaging", "GetImageSet"),
   input = M.GetImageSetInput,
   output = M.GetImageSetOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/datastore/{datastoreId}/imageSet/{imageSetId}/getImageSet" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetImageSetMetadata = schema.operation({
   id = id.from("com.amazonaws.medicalimaging", "GetImageSetMetadata"),
   input = M.GetImageSetMetadataInput,
   output = M.GetImageSetMetadataOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/datastore/{datastoreId}/imageSet/{imageSetId}/getImageSetMetadata" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDatastores = schema.operation({
   id = id.from("com.amazonaws.medicalimaging", "ListDatastores"),
   input = M.ListDatastoresInput,
   output = M.ListDatastoresOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/datastore" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDICOMImportJobs = schema.operation({
   id = id.from("com.amazonaws.medicalimaging", "ListDICOMImportJobs"),
   input = M.ListDICOMImportJobsInput,
   output = M.ListDICOMImportJobsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/listDICOMImportJobs/datastore/{datastoreId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListImageSetVersions = schema.operation({
   id = id.from("com.amazonaws.medicalimaging", "ListImageSetVersions"),
   input = M.ListImageSetVersionsInput,
   output = M.ListImageSetVersionsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/datastore/{datastoreId}/imageSet/{imageSetId}/listImageSetVersions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.medicalimaging", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SearchImageSets = schema.operation({
   id = id.from("com.amazonaws.medicalimaging", "SearchImageSets"),
   input = M.SearchImageSetsInput,
   output = M.SearchImageSetsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/datastore/{datastoreId}/searchImageSets" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartDICOMImportJob = schema.operation({
   id = id.from("com.amazonaws.medicalimaging", "StartDICOMImportJob"),
   input = M.StartDICOMImportJobInput,
   output = M.StartDICOMImportJobOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/startDICOMImportJob/datastore/{datastoreId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.medicalimaging", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.medicalimaging", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateImageSetMetadata = schema.operation({
   id = id.from("com.amazonaws.medicalimaging", "UpdateImageSetMetadata"),
   input = M.UpdateImageSetMetadataInput,
   output = M.UpdateImageSetMetadataOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/datastore/{datastoreId}/imageSet/{imageSetId}/updateImageSetMetadata" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
