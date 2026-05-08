

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.healthlake"

local M = {}

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.DatastorePropertiesList = schema.new({ type = "list", list_member = M.DatastoreProperties })

M.ExportJobPropertiesList = schema.new({ type = "list", list_member = M.ExportJobProperties })

M.ImportJobPropertiesList = schema.new({ type = "list", list_member = M.ImportJobProperties })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.AccessDeniedException = schema.new({
   id = id.from(_N, "AccessDeniedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "AccessDeniedException", "Message"),
         type = "string",
         name = "Message",
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
      Message = schema.new({
         id = id.from(_N, "ConflictException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.IdentityProviderConfiguration = schema.new({
   id = id.from(_N, "IdentityProviderConfiguration"),
   type = "structure",
   members = {
      AuthorizationStrategy = schema.new({
         id = id.from(_N, "IdentityProviderConfiguration", "AuthorizationStrategy"),
         type = "string",
         name = "AuthorizationStrategy",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FineGrainedAuthorizationEnabled = schema.new({
         id = id.from(_N, "IdentityProviderConfiguration", "FineGrainedAuthorizationEnabled"),
         type = "boolean",
         name = "FineGrainedAuthorizationEnabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      Metadata = schema.new({
         id = id.from(_N, "IdentityProviderConfiguration", "Metadata"),
         type = "string",
         name = "Metadata",
         target_id = prelude.String.id,
      }),
      IdpLambdaArn = schema.new({
         id = id.from(_N, "IdentityProviderConfiguration", "IdpLambdaArn"),
         type = "string",
         name = "IdpLambdaArn",
         target_id = prelude.String.id,
      }),
   },
})

M.PreloadDataConfig = schema.new({
   id = id.from(_N, "PreloadDataConfig"),
   type = "structure",
   members = {
      PreloadDataType = schema.new({
         id = id.from(_N, "PreloadDataConfig", "PreloadDataType"),
         type = "string",
         name = "PreloadDataType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.KmsEncryptionConfig = schema.new({
   id = id.from(_N, "KmsEncryptionConfig"),
   type = "structure",
   members = {
      CmkType = schema.new({
         id = id.from(_N, "KmsEncryptionConfig", "CmkType"),
         type = "string",
         name = "CmkType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      KmsKeyId = schema.new({
         id = id.from(_N, "KmsEncryptionConfig", "KmsKeyId"),
         type = "string",
         name = "KmsKeyId",
         target_id = prelude.String.id,
      }),
   },
})

M.SseConfiguration = schema.new({
   id = id.from(_N, "SseConfiguration"),
   type = "structure",
   members = {
      KmsEncryptionConfig = schema.new({
         id = id.from(_N, "SseConfiguration", "KmsEncryptionConfig"),
         type = "structure",
         name = "KmsEncryptionConfig",
         target_id = id.from(_N, "KmsEncryptionConfig"),
         target = M.KmsEncryptionConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Tag = schema.new({
   id = id.from(_N, "Tag"),
   type = "structure",
   members = {
      Key = schema.new({
         id = id.from(_N, "Tag", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Value = schema.new({
         id = id.from(_N, "Tag", "Value"),
         type = "string",
         name = "Value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateFHIRDatastoreInput = schema.new({
   id = id.from(_N, "CreateFHIRDatastoreRequest"),
   type = "structure",
   members = {
      DatastoreName = schema.new({
         id = id.from(_N, "CreateFHIRDatastoreInput", "DatastoreName"),
         type = "string",
         name = "DatastoreName",
         target_id = prelude.String.id,
      }),
      DatastoreTypeVersion = schema.new({
         id = id.from(_N, "CreateFHIRDatastoreInput", "DatastoreTypeVersion"),
         type = "string",
         name = "DatastoreTypeVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SseConfiguration = schema.new({
         id = id.from(_N, "CreateFHIRDatastoreInput", "SseConfiguration"),
         type = "structure",
         name = "SseConfiguration",
         target_id = id.from(_N, "SseConfiguration"),
         target = M.SseConfiguration,
      }),
      PreloadDataConfig = schema.new({
         id = id.from(_N, "CreateFHIRDatastoreInput", "PreloadDataConfig"),
         type = "structure",
         name = "PreloadDataConfig",
         target_id = id.from(_N, "PreloadDataConfig"),
         target = M.PreloadDataConfig,
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CreateFHIRDatastoreInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateFHIRDatastoreInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
      IdentityProviderConfiguration = schema.new({
         id = id.from(_N, "CreateFHIRDatastoreInput", "IdentityProviderConfiguration"),
         type = "structure",
         name = "IdentityProviderConfiguration",
         target_id = id.from(_N, "IdentityProviderConfiguration"),
         target = M.IdentityProviderConfiguration,
      }),
   },
})

M.CreateFHIRDatastoreOutput = schema.new({
   id = id.from(_N, "CreateFHIRDatastoreResponse"),
   type = "structure",
   members = {
      DatastoreId = schema.new({
         id = id.from(_N, "CreateFHIRDatastoreOutput", "DatastoreId"),
         type = "string",
         name = "DatastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DatastoreArn = schema.new({
         id = id.from(_N, "CreateFHIRDatastoreOutput", "DatastoreArn"),
         type = "string",
         name = "DatastoreArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DatastoreStatus = schema.new({
         id = id.from(_N, "CreateFHIRDatastoreOutput", "DatastoreStatus"),
         type = "string",
         name = "DatastoreStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DatastoreEndpoint = schema.new({
         id = id.from(_N, "CreateFHIRDatastoreOutput", "DatastoreEndpoint"),
         type = "string",
         name = "DatastoreEndpoint",
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
      Message = schema.new({
         id = id.from(_N, "InternalServerException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
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
      Message = schema.new({
         id = id.from(_N, "ThrottlingException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
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
      Message = schema.new({
         id = id.from(_N, "ValidationException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.DatastoreFilter = schema.new({
   id = id.from(_N, "DatastoreFilter"),
   type = "structure",
   members = {
      DatastoreName = schema.new({
         id = id.from(_N, "DatastoreFilter", "DatastoreName"),
         type = "string",
         name = "DatastoreName",
         target_id = prelude.String.id,
      }),
      DatastoreStatus = schema.new({
         id = id.from(_N, "DatastoreFilter", "DatastoreStatus"),
         type = "string",
         name = "DatastoreStatus",
         target_id = prelude.String.id,
      }),
      CreatedBefore = schema.new({
         id = id.from(_N, "DatastoreFilter", "CreatedBefore"),
         type = "timestamp",
         name = "CreatedBefore",
         target_id = prelude.Timestamp.id,
      }),
      CreatedAfter = schema.new({
         id = id.from(_N, "DatastoreFilter", "CreatedAfter"),
         type = "timestamp",
         name = "CreatedAfter",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ErrorCause = schema.new({
   id = id.from(_N, "ErrorCause"),
   type = "structure",
   members = {
      ErrorMessage = schema.new({
         id = id.from(_N, "ErrorCause", "ErrorMessage"),
         type = "string",
         name = "ErrorMessage",
         target_id = prelude.String.id,
      }),
      ErrorCategory = schema.new({
         id = id.from(_N, "ErrorCause", "ErrorCategory"),
         type = "string",
         name = "ErrorCategory",
         target_id = prelude.String.id,
      }),
   },
})

M.DatastoreProperties = schema.new({
   id = id.from(_N, "DatastoreProperties"),
   type = "structure",
   members = {
      DatastoreId = schema.new({
         id = id.from(_N, "DatastoreProperties", "DatastoreId"),
         type = "string",
         name = "DatastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DatastoreArn = schema.new({
         id = id.from(_N, "DatastoreProperties", "DatastoreArn"),
         type = "string",
         name = "DatastoreArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DatastoreName = schema.new({
         id = id.from(_N, "DatastoreProperties", "DatastoreName"),
         type = "string",
         name = "DatastoreName",
         target_id = prelude.String.id,
      }),
      DatastoreStatus = schema.new({
         id = id.from(_N, "DatastoreProperties", "DatastoreStatus"),
         type = "string",
         name = "DatastoreStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "DatastoreProperties", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      DatastoreTypeVersion = schema.new({
         id = id.from(_N, "DatastoreProperties", "DatastoreTypeVersion"),
         type = "string",
         name = "DatastoreTypeVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DatastoreEndpoint = schema.new({
         id = id.from(_N, "DatastoreProperties", "DatastoreEndpoint"),
         type = "string",
         name = "DatastoreEndpoint",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SseConfiguration = schema.new({
         id = id.from(_N, "DatastoreProperties", "SseConfiguration"),
         type = "structure",
         name = "SseConfiguration",
         target_id = id.from(_N, "SseConfiguration"),
         target = M.SseConfiguration,
      }),
      PreloadDataConfig = schema.new({
         id = id.from(_N, "DatastoreProperties", "PreloadDataConfig"),
         type = "structure",
         name = "PreloadDataConfig",
         target_id = id.from(_N, "PreloadDataConfig"),
         target = M.PreloadDataConfig,
      }),
      IdentityProviderConfiguration = schema.new({
         id = id.from(_N, "DatastoreProperties", "IdentityProviderConfiguration"),
         type = "structure",
         name = "IdentityProviderConfiguration",
         target_id = id.from(_N, "IdentityProviderConfiguration"),
         target = M.IdentityProviderConfiguration,
      }),
      ErrorCause = schema.new({
         id = id.from(_N, "DatastoreProperties", "ErrorCause"),
         type = "structure",
         name = "ErrorCause",
         target_id = id.from(_N, "ErrorCause"),
         target = M.ErrorCause,
      }),
   },
})

M.DeleteFHIRDatastoreInput = schema.new({
   id = id.from(_N, "DeleteFHIRDatastoreRequest"),
   type = "structure",
   members = {
      DatastoreId = schema.new({
         id = id.from(_N, "DeleteFHIRDatastoreInput", "DatastoreId"),
         type = "string",
         name = "DatastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteFHIRDatastoreOutput = schema.new({
   id = id.from(_N, "DeleteFHIRDatastoreResponse"),
   type = "structure",
   members = {
      DatastoreId = schema.new({
         id = id.from(_N, "DeleteFHIRDatastoreOutput", "DatastoreId"),
         type = "string",
         name = "DatastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DatastoreArn = schema.new({
         id = id.from(_N, "DeleteFHIRDatastoreOutput", "DatastoreArn"),
         type = "string",
         name = "DatastoreArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DatastoreStatus = schema.new({
         id = id.from(_N, "DeleteFHIRDatastoreOutput", "DatastoreStatus"),
         type = "string",
         name = "DatastoreStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DatastoreEndpoint = schema.new({
         id = id.from(_N, "DeleteFHIRDatastoreOutput", "DatastoreEndpoint"),
         type = "string",
         name = "DatastoreEndpoint",
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
      Message = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeFHIRDatastoreInput = schema.new({
   id = id.from(_N, "DescribeFHIRDatastoreRequest"),
   type = "structure",
   members = {
      DatastoreId = schema.new({
         id = id.from(_N, "DescribeFHIRDatastoreInput", "DatastoreId"),
         type = "string",
         name = "DatastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeFHIRDatastoreOutput = schema.new({
   id = id.from(_N, "DescribeFHIRDatastoreResponse"),
   type = "structure",
   members = {
      DatastoreProperties = schema.new({
         id = id.from(_N, "DescribeFHIRDatastoreOutput", "DatastoreProperties"),
         type = "structure",
         name = "DatastoreProperties",
         target_id = id.from(_N, "DatastoreProperties"),
         target = M.DatastoreProperties,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeFHIRExportJobInput = schema.new({
   id = id.from(_N, "DescribeFHIRExportJobRequest"),
   type = "structure",
   members = {
      DatastoreId = schema.new({
         id = id.from(_N, "DescribeFHIRExportJobInput", "DatastoreId"),
         type = "string",
         name = "DatastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      JobId = schema.new({
         id = id.from(_N, "DescribeFHIRExportJobInput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.S3Configuration = schema.new({
   id = id.from(_N, "S3Configuration"),
   type = "structure",
   members = {
      S3Uri = schema.new({
         id = id.from(_N, "S3Configuration", "S3Uri"),
         type = "string",
         name = "S3Uri",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      KmsKeyId = schema.new({
         id = id.from(_N, "S3Configuration", "KmsKeyId"),
         type = "string",
         name = "KmsKeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.OutputDataConfig = schema.new({
   id = id.from(_N, "OutputDataConfig"),
   type = "union",
   members = {
      S3Configuration = schema.new({
         id = id.from(_N, "OutputDataConfig", "S3Configuration"),
         type = "structure",
         name = "S3Configuration",
         target_id = id.from(_N, "S3Configuration"),
         target = M.S3Configuration,
      }),
   },
})

M.ExportJobProperties = schema.new({
   id = id.from(_N, "ExportJobProperties"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "ExportJobProperties", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      JobName = schema.new({
         id = id.from(_N, "ExportJobProperties", "JobName"),
         type = "string",
         name = "JobName",
         target_id = prelude.String.id,
      }),
      JobStatus = schema.new({
         id = id.from(_N, "ExportJobProperties", "JobStatus"),
         type = "string",
         name = "JobStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SubmitTime = schema.new({
         id = id.from(_N, "ExportJobProperties", "SubmitTime"),
         type = "timestamp",
         name = "SubmitTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndTime = schema.new({
         id = id.from(_N, "ExportJobProperties", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
      }),
      DatastoreId = schema.new({
         id = id.from(_N, "ExportJobProperties", "DatastoreId"),
         type = "string",
         name = "DatastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      OutputDataConfig = schema.new({
         id = id.from(_N, "ExportJobProperties", "OutputDataConfig"),
         type = "union",
         name = "OutputDataConfig",
         target_id = id.from(_N, "OutputDataConfig"),
         target = M.OutputDataConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DataAccessRoleArn = schema.new({
         id = id.from(_N, "ExportJobProperties", "DataAccessRoleArn"),
         type = "string",
         name = "DataAccessRoleArn",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "ExportJobProperties", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeFHIRExportJobOutput = schema.new({
   id = id.from(_N, "DescribeFHIRExportJobResponse"),
   type = "structure",
   members = {
      ExportJobProperties = schema.new({
         id = id.from(_N, "DescribeFHIRExportJobOutput", "ExportJobProperties"),
         type = "structure",
         name = "ExportJobProperties",
         target_id = id.from(_N, "ExportJobProperties"),
         target = M.ExportJobProperties,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeFHIRImportJobInput = schema.new({
   id = id.from(_N, "DescribeFHIRImportJobRequest"),
   type = "structure",
   members = {
      DatastoreId = schema.new({
         id = id.from(_N, "DescribeFHIRImportJobInput", "DatastoreId"),
         type = "string",
         name = "DatastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      JobId = schema.new({
         id = id.from(_N, "DescribeFHIRImportJobInput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.InputDataConfig = schema.new({
   id = id.from(_N, "InputDataConfig"),
   type = "union",
   members = {
      S3Uri = schema.new({
         id = id.from(_N, "InputDataConfig", "S3Uri"),
         type = "string",
         name = "S3Uri",
         target_id = prelude.String.id,
      }),
   },
})

M.JobProgressReport = schema.new({
   id = id.from(_N, "JobProgressReport"),
   type = "structure",
   members = {
      TotalNumberOfScannedFiles = schema.new({
         id = id.from(_N, "JobProgressReport", "TotalNumberOfScannedFiles"),
         type = "long",
         name = "TotalNumberOfScannedFiles",
         target_id = prelude.Long.id,
      }),
      TotalSizeOfScannedFilesInMB = schema.new({
         id = id.from(_N, "JobProgressReport", "TotalSizeOfScannedFilesInMB"),
         type = "double",
         name = "TotalSizeOfScannedFilesInMB",
         target_id = prelude.Double.id,
      }),
      TotalNumberOfImportedFiles = schema.new({
         id = id.from(_N, "JobProgressReport", "TotalNumberOfImportedFiles"),
         type = "long",
         name = "TotalNumberOfImportedFiles",
         target_id = prelude.Long.id,
      }),
      TotalNumberOfResourcesScanned = schema.new({
         id = id.from(_N, "JobProgressReport", "TotalNumberOfResourcesScanned"),
         type = "long",
         name = "TotalNumberOfResourcesScanned",
         target_id = prelude.Long.id,
      }),
      TotalNumberOfResourcesImported = schema.new({
         id = id.from(_N, "JobProgressReport", "TotalNumberOfResourcesImported"),
         type = "long",
         name = "TotalNumberOfResourcesImported",
         target_id = prelude.Long.id,
      }),
      TotalNumberOfResourcesWithCustomerError = schema.new({
         id = id.from(_N, "JobProgressReport", "TotalNumberOfResourcesWithCustomerError"),
         type = "long",
         name = "TotalNumberOfResourcesWithCustomerError",
         target_id = prelude.Long.id,
      }),
      TotalNumberOfFilesReadWithCustomerError = schema.new({
         id = id.from(_N, "JobProgressReport", "TotalNumberOfFilesReadWithCustomerError"),
         type = "long",
         name = "TotalNumberOfFilesReadWithCustomerError",
         target_id = prelude.Long.id,
      }),
      Throughput = schema.new({
         id = id.from(_N, "JobProgressReport", "Throughput"),
         type = "double",
         name = "Throughput",
         target_id = prelude.Double.id,
      }),
   },
})

M.ImportJobProperties = schema.new({
   id = id.from(_N, "ImportJobProperties"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "ImportJobProperties", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      JobName = schema.new({
         id = id.from(_N, "ImportJobProperties", "JobName"),
         type = "string",
         name = "JobName",
         target_id = prelude.String.id,
      }),
      JobStatus = schema.new({
         id = id.from(_N, "ImportJobProperties", "JobStatus"),
         type = "string",
         name = "JobStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SubmitTime = schema.new({
         id = id.from(_N, "ImportJobProperties", "SubmitTime"),
         type = "timestamp",
         name = "SubmitTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndTime = schema.new({
         id = id.from(_N, "ImportJobProperties", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
      }),
      DatastoreId = schema.new({
         id = id.from(_N, "ImportJobProperties", "DatastoreId"),
         type = "string",
         name = "DatastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      InputDataConfig = schema.new({
         id = id.from(_N, "ImportJobProperties", "InputDataConfig"),
         type = "union",
         name = "InputDataConfig",
         target_id = id.from(_N, "InputDataConfig"),
         target = M.InputDataConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      JobOutputDataConfig = schema.new({
         id = id.from(_N, "ImportJobProperties", "JobOutputDataConfig"),
         type = "union",
         name = "JobOutputDataConfig",
         target_id = id.from(_N, "OutputDataConfig"),
         target = M.OutputDataConfig,
      }),
      JobProgressReport = schema.new({
         id = id.from(_N, "ImportJobProperties", "JobProgressReport"),
         type = "structure",
         name = "JobProgressReport",
         target_id = id.from(_N, "JobProgressReport"),
         target = M.JobProgressReport,
      }),
      DataAccessRoleArn = schema.new({
         id = id.from(_N, "ImportJobProperties", "DataAccessRoleArn"),
         type = "string",
         name = "DataAccessRoleArn",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "ImportJobProperties", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      ValidationLevel = schema.new({
         id = id.from(_N, "ImportJobProperties", "ValidationLevel"),
         type = "string",
         name = "ValidationLevel",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeFHIRImportJobOutput = schema.new({
   id = id.from(_N, "DescribeFHIRImportJobResponse"),
   type = "structure",
   members = {
      ImportJobProperties = schema.new({
         id = id.from(_N, "DescribeFHIRImportJobOutput", "ImportJobProperties"),
         type = "structure",
         name = "ImportJobProperties",
         target_id = id.from(_N, "ImportJobProperties"),
         target = M.ImportJobProperties,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListFHIRDatastoresInput = schema.new({
   id = id.from(_N, "ListFHIRDatastoresRequest"),
   type = "structure",
   members = {
      Filter = schema.new({
         id = id.from(_N, "ListFHIRDatastoresInput", "Filter"),
         type = "structure",
         name = "Filter",
         target_id = id.from(_N, "DatastoreFilter"),
         target = M.DatastoreFilter,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListFHIRDatastoresInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListFHIRDatastoresInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ListFHIRDatastoresOutput = schema.new({
   id = id.from(_N, "ListFHIRDatastoresResponse"),
   type = "structure",
   members = {
      DatastorePropertiesList = schema.new({
         id = id.from(_N, "ListFHIRDatastoresOutput", "DatastorePropertiesList"),
         type = "list",
         name = "DatastorePropertiesList",
         target_id = prelude.Document.id,
         list_member = M.DatastoreProperties,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListFHIRDatastoresOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListFHIRExportJobsInput = schema.new({
   id = id.from(_N, "ListFHIRExportJobsRequest"),
   type = "structure",
   members = {
      DatastoreId = schema.new({
         id = id.from(_N, "ListFHIRExportJobsInput", "DatastoreId"),
         type = "string",
         name = "DatastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListFHIRExportJobsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListFHIRExportJobsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      JobName = schema.new({
         id = id.from(_N, "ListFHIRExportJobsInput", "JobName"),
         type = "string",
         name = "JobName",
         target_id = prelude.String.id,
      }),
      JobStatus = schema.new({
         id = id.from(_N, "ListFHIRExportJobsInput", "JobStatus"),
         type = "string",
         name = "JobStatus",
         target_id = prelude.String.id,
      }),
      SubmittedBefore = schema.new({
         id = id.from(_N, "ListFHIRExportJobsInput", "SubmittedBefore"),
         type = "timestamp",
         name = "SubmittedBefore",
         target_id = prelude.Timestamp.id,
      }),
      SubmittedAfter = schema.new({
         id = id.from(_N, "ListFHIRExportJobsInput", "SubmittedAfter"),
         type = "timestamp",
         name = "SubmittedAfter",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListFHIRExportJobsOutput = schema.new({
   id = id.from(_N, "ListFHIRExportJobsResponse"),
   type = "structure",
   members = {
      ExportJobPropertiesList = schema.new({
         id = id.from(_N, "ListFHIRExportJobsOutput", "ExportJobPropertiesList"),
         type = "list",
         name = "ExportJobPropertiesList",
         target_id = prelude.Document.id,
         list_member = M.ExportJobProperties,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListFHIRExportJobsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListFHIRImportJobsInput = schema.new({
   id = id.from(_N, "ListFHIRImportJobsRequest"),
   type = "structure",
   members = {
      DatastoreId = schema.new({
         id = id.from(_N, "ListFHIRImportJobsInput", "DatastoreId"),
         type = "string",
         name = "DatastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListFHIRImportJobsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListFHIRImportJobsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      JobName = schema.new({
         id = id.from(_N, "ListFHIRImportJobsInput", "JobName"),
         type = "string",
         name = "JobName",
         target_id = prelude.String.id,
      }),
      JobStatus = schema.new({
         id = id.from(_N, "ListFHIRImportJobsInput", "JobStatus"),
         type = "string",
         name = "JobStatus",
         target_id = prelude.String.id,
      }),
      SubmittedBefore = schema.new({
         id = id.from(_N, "ListFHIRImportJobsInput", "SubmittedBefore"),
         type = "timestamp",
         name = "SubmittedBefore",
         target_id = prelude.Timestamp.id,
      }),
      SubmittedAfter = schema.new({
         id = id.from(_N, "ListFHIRImportJobsInput", "SubmittedAfter"),
         type = "timestamp",
         name = "SubmittedAfter",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListFHIRImportJobsOutput = schema.new({
   id = id.from(_N, "ListFHIRImportJobsResponse"),
   type = "structure",
   members = {
      ImportJobPropertiesList = schema.new({
         id = id.from(_N, "ListFHIRImportJobsOutput", "ImportJobPropertiesList"),
         type = "list",
         name = "ImportJobPropertiesList",
         target_id = prelude.Document.id,
         list_member = M.ImportJobProperties,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListFHIRImportJobsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListTagsForResourceInput = schema.new({
   id = id.from(_N, "ListTagsForResourceRequest"),
   type = "structure",
   members = {
      ResourceARN = schema.new({
         id = id.from(_N, "ListTagsForResourceInput", "ResourceARN"),
         type = "string",
         name = "ResourceARN",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListTagsForResourceOutput = schema.new({
   id = id.from(_N, "ListTagsForResourceResponse"),
   type = "structure",
   members = {
      Tags = schema.new({
         id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.StartFHIRExportJobInput = schema.new({
   id = id.from(_N, "StartFHIRExportJobRequest"),
   type = "structure",
   members = {
      JobName = schema.new({
         id = id.from(_N, "StartFHIRExportJobInput", "JobName"),
         type = "string",
         name = "JobName",
         target_id = prelude.String.id,
      }),
      OutputDataConfig = schema.new({
         id = id.from(_N, "StartFHIRExportJobInput", "OutputDataConfig"),
         type = "union",
         name = "OutputDataConfig",
         target_id = id.from(_N, "OutputDataConfig"),
         target = M.OutputDataConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DatastoreId = schema.new({
         id = id.from(_N, "StartFHIRExportJobInput", "DatastoreId"),
         type = "string",
         name = "DatastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DataAccessRoleArn = schema.new({
         id = id.from(_N, "StartFHIRExportJobInput", "DataAccessRoleArn"),
         type = "string",
         name = "DataAccessRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientToken = schema.new({
         id = id.from(_N, "StartFHIRExportJobInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.StartFHIRExportJobOutput = schema.new({
   id = id.from(_N, "StartFHIRExportJobResponse"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "StartFHIRExportJobOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      JobStatus = schema.new({
         id = id.from(_N, "StartFHIRExportJobOutput", "JobStatus"),
         type = "string",
         name = "JobStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DatastoreId = schema.new({
         id = id.from(_N, "StartFHIRExportJobOutput", "DatastoreId"),
         type = "string",
         name = "DatastoreId",
         target_id = prelude.String.id,
      }),
   },
})

M.StartFHIRImportJobInput = schema.new({
   id = id.from(_N, "StartFHIRImportJobRequest"),
   type = "structure",
   members = {
      JobName = schema.new({
         id = id.from(_N, "StartFHIRImportJobInput", "JobName"),
         type = "string",
         name = "JobName",
         target_id = prelude.String.id,
      }),
      InputDataConfig = schema.new({
         id = id.from(_N, "StartFHIRImportJobInput", "InputDataConfig"),
         type = "union",
         name = "InputDataConfig",
         target_id = id.from(_N, "InputDataConfig"),
         target = M.InputDataConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      JobOutputDataConfig = schema.new({
         id = id.from(_N, "StartFHIRImportJobInput", "JobOutputDataConfig"),
         type = "union",
         name = "JobOutputDataConfig",
         target_id = id.from(_N, "OutputDataConfig"),
         target = M.OutputDataConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DatastoreId = schema.new({
         id = id.from(_N, "StartFHIRImportJobInput", "DatastoreId"),
         type = "string",
         name = "DatastoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DataAccessRoleArn = schema.new({
         id = id.from(_N, "StartFHIRImportJobInput", "DataAccessRoleArn"),
         type = "string",
         name = "DataAccessRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientToken = schema.new({
         id = id.from(_N, "StartFHIRImportJobInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      ValidationLevel = schema.new({
         id = id.from(_N, "StartFHIRImportJobInput", "ValidationLevel"),
         type = "string",
         name = "ValidationLevel",
         target_id = prelude.String.id,
      }),
   },
})

M.StartFHIRImportJobOutput = schema.new({
   id = id.from(_N, "StartFHIRImportJobResponse"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "StartFHIRImportJobOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      JobStatus = schema.new({
         id = id.from(_N, "StartFHIRImportJobOutput", "JobStatus"),
         type = "string",
         name = "JobStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DatastoreId = schema.new({
         id = id.from(_N, "StartFHIRImportJobOutput", "DatastoreId"),
         type = "string",
         name = "DatastoreId",
         target_id = prelude.String.id,
      }),
   },
})

M.TagResourceInput = schema.new({
   id = id.from(_N, "TagResourceRequest"),
   type = "structure",
   members = {
      ResourceARN = schema.new({
         id = id.from(_N, "TagResourceInput", "ResourceARN"),
         type = "string",
         name = "ResourceARN",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "TagResourceInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
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
      ResourceARN = schema.new({
         id = id.from(_N, "UntagResourceInput", "ResourceARN"),
         type = "string",
         name = "ResourceARN",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TagKeys = schema.new({
         id = id.from(_N, "UntagResourceInput", "TagKeys"),
         type = "list",
         name = "TagKeys",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UntagResourceOutput = schema.new({
   id = id.from(_N, "UntagResourceResponse"),
   type = "structure",
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
   id = id.from("com.amazonaws.healthlake", "HealthLake"),
   version = "2017-07-01",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateFHIRDatastore = schema.operation({
   id = id.from("com.amazonaws.healthlake", "CreateFHIRDatastore"),
   input = M.CreateFHIRDatastoreInput,
   output = M.CreateFHIRDatastoreOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteFHIRDatastore = schema.operation({
   id = id.from("com.amazonaws.healthlake", "DeleteFHIRDatastore"),
   input = M.DeleteFHIRDatastoreInput,
   output = M.DeleteFHIRDatastoreOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeFHIRDatastore = schema.operation({
   id = id.from("com.amazonaws.healthlake", "DescribeFHIRDatastore"),
   input = M.DescribeFHIRDatastoreInput,
   output = M.DescribeFHIRDatastoreOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeFHIRExportJob = schema.operation({
   id = id.from("com.amazonaws.healthlake", "DescribeFHIRExportJob"),
   input = M.DescribeFHIRExportJobInput,
   output = M.DescribeFHIRExportJobOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeFHIRImportJob = schema.operation({
   id = id.from("com.amazonaws.healthlake", "DescribeFHIRImportJob"),
   input = M.DescribeFHIRImportJobInput,
   output = M.DescribeFHIRImportJobOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListFHIRDatastores = schema.operation({
   id = id.from("com.amazonaws.healthlake", "ListFHIRDatastores"),
   input = M.ListFHIRDatastoresInput,
   output = M.ListFHIRDatastoresOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListFHIRExportJobs = schema.operation({
   id = id.from("com.amazonaws.healthlake", "ListFHIRExportJobs"),
   input = M.ListFHIRExportJobsInput,
   output = M.ListFHIRExportJobsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListFHIRImportJobs = schema.operation({
   id = id.from("com.amazonaws.healthlake", "ListFHIRImportJobs"),
   input = M.ListFHIRImportJobsInput,
   output = M.ListFHIRImportJobsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.healthlake", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartFHIRExportJob = schema.operation({
   id = id.from("com.amazonaws.healthlake", "StartFHIRExportJob"),
   input = M.StartFHIRExportJobInput,
   output = M.StartFHIRExportJobOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartFHIRImportJob = schema.operation({
   id = id.from("com.amazonaws.healthlake", "StartFHIRImportJob"),
   input = M.StartFHIRImportJobInput,
   output = M.StartFHIRImportJobOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.healthlake", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.healthlake", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
