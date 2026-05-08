

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.m2"

local M = {}

M.EngineVersionsSummaryList = schema.new({ type = "list", list_member = M.EngineVersionsSummary })

M.ValidationExceptionFieldList = schema.new({ type = "list", list_member = M.ValidationExceptionField })

M.TagMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.EntityNameList = schema.new({ type = "list", list_member = prelude.String })

M.ApplicationSummaryList = schema.new({ type = "list", list_member = M.ApplicationSummary })

M.LogGroupSummaries = schema.new({ type = "list", list_member = M.LogGroupSummary })

M.ArnList = schema.new({ type = "list", list_member = prelude.String })

M.PortList = schema.new({ type = "list", list_member = prelude.Integer })

M.ApplicationVersionSummaryList = schema.new({ type = "list", list_member = M.ApplicationVersionSummary })

M.BatchJobDefinitions = schema.new({ type = "list", list_member = M.BatchJobDefinition })

M.IdentifierList = schema.new({ type = "list", list_member = prelude.String })

M.BatchJobExecutionSummaryList = schema.new({ type = "list", list_member = M.BatchJobExecutionSummary })

M.BatchJobStepList = schema.new({ type = "list", list_member = M.JobStep })

M.DataSetExportTaskList = schema.new({ type = "list", list_member = M.DataSetExportTask })

M.DataSetImportTaskList = schema.new({ type = "list", list_member = M.DataSetImportTask })

M.DataSetsSummaryList = schema.new({ type = "list", list_member = M.DataSetSummary })

M.DeploymentList = schema.new({ type = "list", list_member = M.DeploymentSummary })

M.BatchJobParametersMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.EnvironmentSummaryList = schema.new({ type = "list", list_member = M.EnvironmentSummary })

M.String50List = schema.new({ type = "list", list_member = prelude.String })

M.StorageConfigurationList = schema.new({ type = "list", list_member = M.StorageConfiguration })

M.DataSetExportList = schema.new({ type = "list", list_member = M.DataSetExportItem })

M.DataSetImportList = schema.new({ type = "list", list_member = M.DataSetImportItem })

M.AlternateKeyList = schema.new({ type = "list", list_member = M.AlternateKey })

M.String20List = schema.new({ type = "list", list_member = prelude.String })

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

M.AlternateKey = schema.new({
   id = id.from(_N, "AlternateKey"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "AlternateKey", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      offset = schema.new({
         id = id.from(_N, "AlternateKey", "offset"),
         type = "integer",
         name = "offset",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      length = schema.new({
         id = id.from(_N, "AlternateKey", "length"),
         type = "integer",
         name = "length",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      allowDuplicates = schema.new({
         id = id.from(_N, "AlternateKey", "allowDuplicates"),
         type = "boolean",
         name = "allowDuplicates",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.CancelBatchJobExecutionInput = schema.new({
   id = id.from(_N, "CancelBatchJobExecutionRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "CancelBatchJobExecutionInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      executionId = schema.new({
         id = id.from(_N, "CancelBatchJobExecutionInput", "executionId"),
         type = "string",
         name = "executionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      authSecretsManagerArn = schema.new({
         id = id.from(_N, "CancelBatchJobExecutionInput", "authSecretsManagerArn"),
         type = "string",
         name = "authSecretsManagerArn",
         target_id = prelude.String.id,
      }),
   },
})

M.CancelBatchJobExecutionOutput = schema.new({
   id = id.from(_N, "CancelBatchJobExecutionResponse"),
   type = "structure",
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
      resourceId = schema.new({
         id = id.from(_N, "ConflictException", "resourceId"),
         type = "string",
         name = "resourceId",
         target_id = prelude.String.id,
      }),
      resourceType = schema.new({
         id = id.from(_N, "ConflictException", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
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
      retryAfterSeconds = schema.new({
         id = id.from(_N, "InternalServerException", "retryAfterSeconds"),
         type = "integer",
         name = "retryAfterSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
            [traits.HTTP_HEADER] = { name = "Retry-After" },
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
      resourceId = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "resourceId"),
         type = "string",
         name = "resourceId",
         target_id = prelude.String.id,
      }),
      resourceType = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "resourceType"),
         type = "string",
         name = "resourceType",
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
      message = schema.new({
         id = id.from(_N, "ThrottlingException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      serviceCode = schema.new({
         id = id.from(_N, "ThrottlingException", "serviceCode"),
         type = "string",
         name = "serviceCode",
         target_id = prelude.String.id,
      }),
      quotaCode = schema.new({
         id = id.from(_N, "ThrottlingException", "quotaCode"),
         type = "string",
         name = "quotaCode",
         target_id = prelude.String.id,
      }),
      retryAfterSeconds = schema.new({
         id = id.from(_N, "ThrottlingException", "retryAfterSeconds"),
         type = "integer",
         name = "retryAfterSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
            [traits.HTTP_HEADER] = { name = "Retry-After" },
         },
      }),
   },
})

M.ValidationExceptionField = schema.new({
   id = id.from(_N, "ValidationExceptionField"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "ValidationExceptionField", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      message = schema.new({
         id = id.from(_N, "ValidationExceptionField", "message"),
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
      reason = schema.new({
         id = id.from(_N, "ValidationException", "reason"),
         type = "string",
         name = "reason",
         target_id = prelude.String.id,
      }),
      fieldList = schema.new({
         id = id.from(_N, "ValidationException", "fieldList"),
         type = "list",
         name = "fieldList",
         target_id = prelude.Document.id,
         list_member = M.ValidationExceptionField,
      }),
   },
})

M.Definition = schema.new({
   id = id.from(_N, "Definition"),
   type = "union",
   members = {
      s3Location = schema.new({
         id = id.from(_N, "Definition", "s3Location"),
         type = "string",
         name = "s3Location",
         target_id = prelude.String.id,
      }),
      content = schema.new({
         id = id.from(_N, "Definition", "content"),
         type = "string",
         name = "content",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateApplicationInput = schema.new({
   id = id.from(_N, "CreateApplicationRequest"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "CreateApplicationInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "CreateApplicationInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      engineType = schema.new({
         id = id.from(_N, "CreateApplicationInput", "engineType"),
         type = "string",
         name = "engineType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      definition = schema.new({
         id = id.from(_N, "CreateApplicationInput", "definition"),
         type = "union",
         name = "definition",
         target_id = id.from(_N, "Definition"),
         target = M.Definition,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "CreateApplicationInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      clientToken = schema.new({
         id = id.from(_N, "CreateApplicationInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      kmsKeyId = schema.new({
         id = id.from(_N, "CreateApplicationInput", "kmsKeyId"),
         type = "string",
         name = "kmsKeyId",
         target_id = prelude.String.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "CreateApplicationInput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateApplicationOutput = schema.new({
   id = id.from(_N, "CreateApplicationResponse"),
   type = "structure",
   members = {
      applicationArn = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "applicationArn"),
         type = "string",
         name = "applicationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      applicationId = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      applicationVersion = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "applicationVersion"),
         type = "integer",
         name = "applicationVersion",
         target_id = prelude.Integer.id,
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
      resourceId = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "resourceId"),
         type = "string",
         name = "resourceId",
         target_id = prelude.String.id,
      }),
      resourceType = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
      }),
      serviceCode = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "serviceCode"),
         type = "string",
         name = "serviceCode",
         target_id = prelude.String.id,
      }),
      quotaCode = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "quotaCode"),
         type = "string",
         name = "quotaCode",
         target_id = prelude.String.id,
      }),
   },
})

M.ExternalLocation = schema.new({
   id = id.from(_N, "ExternalLocation"),
   type = "union",
   members = {
      s3Location = schema.new({
         id = id.from(_N, "ExternalLocation", "s3Location"),
         type = "string",
         name = "s3Location",
         target_id = prelude.String.id,
      }),
   },
})

M.DataSetExportItem = schema.new({
   id = id.from(_N, "DataSetExportItem"),
   type = "structure",
   members = {
      datasetName = schema.new({
         id = id.from(_N, "DataSetExportItem", "datasetName"),
         type = "string",
         name = "datasetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      externalLocation = schema.new({
         id = id.from(_N, "DataSetExportItem", "externalLocation"),
         type = "union",
         name = "externalLocation",
         target_id = id.from(_N, "ExternalLocation"),
         target = M.ExternalLocation,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DataSetExportConfig = schema.new({
   id = id.from(_N, "DataSetExportConfig"),
   type = "union",
   members = {
      s3Location = schema.new({
         id = id.from(_N, "DataSetExportConfig", "s3Location"),
         type = "string",
         name = "s3Location",
         target_id = prelude.String.id,
      }),
      dataSets = schema.new({
         id = id.from(_N, "DataSetExportConfig", "dataSets"),
         type = "list",
         name = "dataSets",
         target_id = prelude.Document.id,
         list_member = M.DataSetExportItem,
      }),
   },
})

M.CreateDataSetExportTaskInput = schema.new({
   id = id.from(_N, "CreateDataSetExportTaskRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "CreateDataSetExportTaskInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      exportConfig = schema.new({
         id = id.from(_N, "CreateDataSetExportTaskInput", "exportConfig"),
         type = "union",
         name = "exportConfig",
         target_id = id.from(_N, "DataSetExportConfig"),
         target = M.DataSetExportConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      clientToken = schema.new({
         id = id.from(_N, "CreateDataSetExportTaskInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      kmsKeyId = schema.new({
         id = id.from(_N, "CreateDataSetExportTaskInput", "kmsKeyId"),
         type = "string",
         name = "kmsKeyId",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateDataSetExportTaskOutput = schema.new({
   id = id.from(_N, "CreateDataSetExportTaskResponse"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "CreateDataSetExportTaskOutput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GdgAttributes = schema.new({
   id = id.from(_N, "GdgAttributes"),
   type = "structure",
   members = {
      limit = schema.new({
         id = id.from(_N, "GdgAttributes", "limit"),
         type = "integer",
         name = "limit",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      rollDisposition = schema.new({
         id = id.from(_N, "GdgAttributes", "rollDisposition"),
         type = "string",
         name = "rollDisposition",
         target_id = prelude.String.id,
      }),
   },
})

M.PoAttributes = schema.new({
   id = id.from(_N, "PoAttributes"),
   type = "structure",
   members = {
      format = schema.new({
         id = id.from(_N, "PoAttributes", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      encoding = schema.new({
         id = id.from(_N, "PoAttributes", "encoding"),
         type = "string",
         name = "encoding",
         target_id = prelude.String.id,
      }),
      memberFileExtensions = schema.new({
         id = id.from(_N, "PoAttributes", "memberFileExtensions"),
         type = "list",
         name = "memberFileExtensions",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PsAttributes = schema.new({
   id = id.from(_N, "PsAttributes"),
   type = "structure",
   members = {
      format = schema.new({
         id = id.from(_N, "PsAttributes", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      encoding = schema.new({
         id = id.from(_N, "PsAttributes", "encoding"),
         type = "string",
         name = "encoding",
         target_id = prelude.String.id,
      }),
   },
})

M.PrimaryKey = schema.new({
   id = id.from(_N, "PrimaryKey"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "PrimaryKey", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      offset = schema.new({
         id = id.from(_N, "PrimaryKey", "offset"),
         type = "integer",
         name = "offset",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      length = schema.new({
         id = id.from(_N, "PrimaryKey", "length"),
         type = "integer",
         name = "length",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.VsamAttributes = schema.new({
   id = id.from(_N, "VsamAttributes"),
   type = "structure",
   members = {
      format = schema.new({
         id = id.from(_N, "VsamAttributes", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      encoding = schema.new({
         id = id.from(_N, "VsamAttributes", "encoding"),
         type = "string",
         name = "encoding",
         target_id = prelude.String.id,
      }),
      compressed = schema.new({
         id = id.from(_N, "VsamAttributes", "compressed"),
         type = "boolean",
         name = "compressed",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      primaryKey = schema.new({
         id = id.from(_N, "VsamAttributes", "primaryKey"),
         type = "structure",
         name = "primaryKey",
         target_id = id.from(_N, "PrimaryKey"),
         target = M.PrimaryKey,
      }),
      alternateKeys = schema.new({
         id = id.from(_N, "VsamAttributes", "alternateKeys"),
         type = "list",
         name = "alternateKeys",
         target_id = prelude.Document.id,
         list_member = M.AlternateKey,
      }),
   },
})

M.DatasetOrgAttributes = schema.new({
   id = id.from(_N, "DatasetOrgAttributes"),
   type = "union",
   members = {
      vsam = schema.new({
         id = id.from(_N, "DatasetOrgAttributes", "vsam"),
         type = "structure",
         name = "vsam",
         target_id = id.from(_N, "VsamAttributes"),
         target = M.VsamAttributes,
      }),
      gdg = schema.new({
         id = id.from(_N, "DatasetOrgAttributes", "gdg"),
         type = "structure",
         name = "gdg",
         target_id = id.from(_N, "GdgAttributes"),
         target = M.GdgAttributes,
      }),
      po = schema.new({
         id = id.from(_N, "DatasetOrgAttributes", "po"),
         type = "structure",
         name = "po",
         target_id = id.from(_N, "PoAttributes"),
         target = M.PoAttributes,
      }),
      ps = schema.new({
         id = id.from(_N, "DatasetOrgAttributes", "ps"),
         type = "structure",
         name = "ps",
         target_id = id.from(_N, "PsAttributes"),
         target = M.PsAttributes,
      }),
   },
})

M.RecordLength = schema.new({
   id = id.from(_N, "RecordLength"),
   type = "structure",
   members = {
      min = schema.new({
         id = id.from(_N, "RecordLength", "min"),
         type = "integer",
         name = "min",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      max = schema.new({
         id = id.from(_N, "RecordLength", "max"),
         type = "integer",
         name = "max",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.DataSet = schema.new({
   id = id.from(_N, "DataSet"),
   type = "structure",
   members = {
      storageType = schema.new({
         id = id.from(_N, "DataSet", "storageType"),
         type = "string",
         name = "storageType",
         target_id = prelude.String.id,
      }),
      datasetName = schema.new({
         id = id.from(_N, "DataSet", "datasetName"),
         type = "string",
         name = "datasetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      datasetOrg = schema.new({
         id = id.from(_N, "DataSet", "datasetOrg"),
         type = "union",
         name = "datasetOrg",
         target_id = id.from(_N, "DatasetOrgAttributes"),
         target = M.DatasetOrgAttributes,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      relativePath = schema.new({
         id = id.from(_N, "DataSet", "relativePath"),
         type = "string",
         name = "relativePath",
         target_id = prelude.String.id,
      }),
      recordLength = schema.new({
         id = id.from(_N, "DataSet", "recordLength"),
         type = "structure",
         name = "recordLength",
         target_id = id.from(_N, "RecordLength"),
         target = M.RecordLength,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DataSetImportItem = schema.new({
   id = id.from(_N, "DataSetImportItem"),
   type = "structure",
   members = {
      dataSet = schema.new({
         id = id.from(_N, "DataSetImportItem", "dataSet"),
         type = "structure",
         name = "dataSet",
         target_id = id.from(_N, "DataSet"),
         target = M.DataSet,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      externalLocation = schema.new({
         id = id.from(_N, "DataSetImportItem", "externalLocation"),
         type = "union",
         name = "externalLocation",
         target_id = id.from(_N, "ExternalLocation"),
         target = M.ExternalLocation,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DataSetImportConfig = schema.new({
   id = id.from(_N, "DataSetImportConfig"),
   type = "union",
   members = {
      s3Location = schema.new({
         id = id.from(_N, "DataSetImportConfig", "s3Location"),
         type = "string",
         name = "s3Location",
         target_id = prelude.String.id,
      }),
      dataSets = schema.new({
         id = id.from(_N, "DataSetImportConfig", "dataSets"),
         type = "list",
         name = "dataSets",
         target_id = prelude.Document.id,
         list_member = M.DataSetImportItem,
      }),
   },
})

M.CreateDataSetImportTaskInput = schema.new({
   id = id.from(_N, "CreateDataSetImportTaskRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "CreateDataSetImportTaskInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      importConfig = schema.new({
         id = id.from(_N, "CreateDataSetImportTaskInput", "importConfig"),
         type = "union",
         name = "importConfig",
         target_id = id.from(_N, "DataSetImportConfig"),
         target = M.DataSetImportConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      clientToken = schema.new({
         id = id.from(_N, "CreateDataSetImportTaskInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CreateDataSetImportTaskOutput = schema.new({
   id = id.from(_N, "CreateDataSetImportTaskResponse"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "CreateDataSetImportTaskOutput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateDeploymentInput = schema.new({
   id = id.from(_N, "CreateDeploymentRequest"),
   type = "structure",
   members = {
      environmentId = schema.new({
         id = id.from(_N, "CreateDeploymentInput", "environmentId"),
         type = "string",
         name = "environmentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      applicationId = schema.new({
         id = id.from(_N, "CreateDeploymentInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      applicationVersion = schema.new({
         id = id.from(_N, "CreateDeploymentInput", "applicationVersion"),
         type = "integer",
         name = "applicationVersion",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      clientToken = schema.new({
         id = id.from(_N, "CreateDeploymentInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CreateDeploymentOutput = schema.new({
   id = id.from(_N, "CreateDeploymentResponse"),
   type = "structure",
   members = {
      deploymentId = schema.new({
         id = id.from(_N, "CreateDeploymentOutput", "deploymentId"),
         type = "string",
         name = "deploymentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteApplicationInput = schema.new({
   id = id.from(_N, "DeleteApplicationRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "DeleteApplicationInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteApplicationOutput = schema.new({
   id = id.from(_N, "DeleteApplicationResponse"),
   type = "structure",
})

M.DeleteApplicationFromEnvironmentInput = schema.new({
   id = id.from(_N, "DeleteApplicationFromEnvironmentRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "DeleteApplicationFromEnvironmentInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      environmentId = schema.new({
         id = id.from(_N, "DeleteApplicationFromEnvironmentInput", "environmentId"),
         type = "string",
         name = "environmentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteApplicationFromEnvironmentOutput = schema.new({
   id = id.from(_N, "DeleteApplicationFromEnvironmentResponse"),
   type = "structure",
})

M.GetApplicationInput = schema.new({
   id = id.from(_N, "GetApplicationRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "GetApplicationInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeployedVersionSummary = schema.new({
   id = id.from(_N, "DeployedVersionSummary"),
   type = "structure",
   members = {
      applicationVersion = schema.new({
         id = id.from(_N, "DeployedVersionSummary", "applicationVersion"),
         type = "integer",
         name = "applicationVersion",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "DeployedVersionSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      statusReason = schema.new({
         id = id.from(_N, "DeployedVersionSummary", "statusReason"),
         type = "string",
         name = "statusReason",
         target_id = prelude.String.id,
      }),
   },
})

M.ApplicationVersionSummary = schema.new({
   id = id.from(_N, "ApplicationVersionSummary"),
   type = "structure",
   members = {
      applicationVersion = schema.new({
         id = id.from(_N, "ApplicationVersionSummary", "applicationVersion"),
         type = "integer",
         name = "applicationVersion",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "ApplicationVersionSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      statusReason = schema.new({
         id = id.from(_N, "ApplicationVersionSummary", "statusReason"),
         type = "string",
         name = "statusReason",
         target_id = prelude.String.id,
      }),
      creationTime = schema.new({
         id = id.from(_N, "ApplicationVersionSummary", "creationTime"),
         type = "timestamp",
         name = "creationTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.LogGroupSummary = schema.new({
   id = id.from(_N, "LogGroupSummary"),
   type = "structure",
   members = {
      logType = schema.new({
         id = id.from(_N, "LogGroupSummary", "logType"),
         type = "string",
         name = "logType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      logGroupName = schema.new({
         id = id.from(_N, "LogGroupSummary", "logGroupName"),
         type = "string",
         name = "logGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetApplicationOutput = schema.new({
   id = id.from(_N, "GetApplicationResponse"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "GetApplicationOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "GetApplicationOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      applicationId = schema.new({
         id = id.from(_N, "GetApplicationOutput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      applicationArn = schema.new({
         id = id.from(_N, "GetApplicationOutput", "applicationArn"),
         type = "string",
         name = "applicationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "GetApplicationOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      latestVersion = schema.new({
         id = id.from(_N, "GetApplicationOutput", "latestVersion"),
         type = "structure",
         name = "latestVersion",
         target_id = id.from(_N, "ApplicationVersionSummary"),
         target = M.ApplicationVersionSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      deployedVersion = schema.new({
         id = id.from(_N, "GetApplicationOutput", "deployedVersion"),
         type = "structure",
         name = "deployedVersion",
         target_id = id.from(_N, "DeployedVersionSummary"),
         target = M.DeployedVersionSummary,
      }),
      engineType = schema.new({
         id = id.from(_N, "GetApplicationOutput", "engineType"),
         type = "string",
         name = "engineType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      logGroups = schema.new({
         id = id.from(_N, "GetApplicationOutput", "logGroups"),
         type = "list",
         name = "logGroups",
         target_id = prelude.Document.id,
         list_member = M.LogGroupSummary,
      }),
      creationTime = schema.new({
         id = id.from(_N, "GetApplicationOutput", "creationTime"),
         type = "timestamp",
         name = "creationTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      lastStartTime = schema.new({
         id = id.from(_N, "GetApplicationOutput", "lastStartTime"),
         type = "timestamp",
         name = "lastStartTime",
         target_id = prelude.Timestamp.id,
      }),
      tags = schema.new({
         id = id.from(_N, "GetApplicationOutput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      environmentId = schema.new({
         id = id.from(_N, "GetApplicationOutput", "environmentId"),
         type = "string",
         name = "environmentId",
         target_id = prelude.String.id,
      }),
      targetGroupArns = schema.new({
         id = id.from(_N, "GetApplicationOutput", "targetGroupArns"),
         type = "list",
         name = "targetGroupArns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      listenerArns = schema.new({
         id = id.from(_N, "GetApplicationOutput", "listenerArns"),
         type = "list",
         name = "listenerArns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      listenerPorts = schema.new({
         id = id.from(_N, "GetApplicationOutput", "listenerPorts"),
         type = "list",
         name = "listenerPorts",
         target_id = prelude.Document.id,
         list_member = prelude.Integer,
      }),
      loadBalancerDnsName = schema.new({
         id = id.from(_N, "GetApplicationOutput", "loadBalancerDnsName"),
         type = "string",
         name = "loadBalancerDnsName",
         target_id = prelude.String.id,
      }),
      statusReason = schema.new({
         id = id.from(_N, "GetApplicationOutput", "statusReason"),
         type = "string",
         name = "statusReason",
         target_id = prelude.String.id,
      }),
      kmsKeyId = schema.new({
         id = id.from(_N, "GetApplicationOutput", "kmsKeyId"),
         type = "string",
         name = "kmsKeyId",
         target_id = prelude.String.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "GetApplicationOutput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
   },
})

M.GetApplicationVersionInput = schema.new({
   id = id.from(_N, "GetApplicationVersionRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "GetApplicationVersionInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      applicationVersion = schema.new({
         id = id.from(_N, "GetApplicationVersionInput", "applicationVersion"),
         type = "integer",
         name = "applicationVersion",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetApplicationVersionOutput = schema.new({
   id = id.from(_N, "GetApplicationVersionResponse"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "GetApplicationVersionOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      applicationVersion = schema.new({
         id = id.from(_N, "GetApplicationVersionOutput", "applicationVersion"),
         type = "integer",
         name = "applicationVersion",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "GetApplicationVersionOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      definitionContent = schema.new({
         id = id.from(_N, "GetApplicationVersionOutput", "definitionContent"),
         type = "string",
         name = "definitionContent",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "GetApplicationVersionOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      creationTime = schema.new({
         id = id.from(_N, "GetApplicationVersionOutput", "creationTime"),
         type = "timestamp",
         name = "creationTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      statusReason = schema.new({
         id = id.from(_N, "GetApplicationVersionOutput", "statusReason"),
         type = "string",
         name = "statusReason",
         target_id = prelude.String.id,
      }),
   },
})

M.GetBatchJobExecutionInput = schema.new({
   id = id.from(_N, "GetBatchJobExecutionRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "GetBatchJobExecutionInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      executionId = schema.new({
         id = id.from(_N, "GetBatchJobExecutionInput", "executionId"),
         type = "string",
         name = "executionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.FileBatchJobIdentifier = schema.new({
   id = id.from(_N, "FileBatchJobIdentifier"),
   type = "structure",
   members = {
      fileName = schema.new({
         id = id.from(_N, "FileBatchJobIdentifier", "fileName"),
         type = "string",
         name = "fileName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      folderPath = schema.new({
         id = id.from(_N, "FileBatchJobIdentifier", "folderPath"),
         type = "string",
         name = "folderPath",
         target_id = prelude.String.id,
      }),
   },
})

M.JobStepRestartMarker = schema.new({
   id = id.from(_N, "JobStepRestartMarker"),
   type = "structure",
   members = {
      fromStep = schema.new({
         id = id.from(_N, "JobStepRestartMarker", "fromStep"),
         type = "string",
         name = "fromStep",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      fromProcStep = schema.new({
         id = id.from(_N, "JobStepRestartMarker", "fromProcStep"),
         type = "string",
         name = "fromProcStep",
         target_id = prelude.String.id,
      }),
      toStep = schema.new({
         id = id.from(_N, "JobStepRestartMarker", "toStep"),
         type = "string",
         name = "toStep",
         target_id = prelude.String.id,
      }),
      toProcStep = schema.new({
         id = id.from(_N, "JobStepRestartMarker", "toProcStep"),
         type = "string",
         name = "toProcStep",
         target_id = prelude.String.id,
      }),
      stepCheckpoint = schema.new({
         id = id.from(_N, "JobStepRestartMarker", "stepCheckpoint"),
         type = "integer",
         name = "stepCheckpoint",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      skip = schema.new({
         id = id.from(_N, "JobStepRestartMarker", "skip"),
         type = "boolean",
         name = "skip",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
   },
})

M.RestartBatchJobIdentifier = schema.new({
   id = id.from(_N, "RestartBatchJobIdentifier"),
   type = "structure",
   members = {
      executionId = schema.new({
         id = id.from(_N, "RestartBatchJobIdentifier", "executionId"),
         type = "string",
         name = "executionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      jobStepRestartMarker = schema.new({
         id = id.from(_N, "RestartBatchJobIdentifier", "jobStepRestartMarker"),
         type = "structure",
         name = "jobStepRestartMarker",
         target_id = id.from(_N, "JobStepRestartMarker"),
         target = M.JobStepRestartMarker,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.JobIdentifier = schema.new({
   id = id.from(_N, "JobIdentifier"),
   type = "union",
   members = {
      fileName = schema.new({
         id = id.from(_N, "JobIdentifier", "fileName"),
         type = "string",
         name = "fileName",
         target_id = prelude.String.id,
      }),
      scriptName = schema.new({
         id = id.from(_N, "JobIdentifier", "scriptName"),
         type = "string",
         name = "scriptName",
         target_id = prelude.String.id,
      }),
   },
})

M.S3BatchJobIdentifier = schema.new({
   id = id.from(_N, "S3BatchJobIdentifier"),
   type = "structure",
   members = {
      bucket = schema.new({
         id = id.from(_N, "S3BatchJobIdentifier", "bucket"),
         type = "string",
         name = "bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      keyPrefix = schema.new({
         id = id.from(_N, "S3BatchJobIdentifier", "keyPrefix"),
         type = "string",
         name = "keyPrefix",
         target_id = prelude.String.id,
      }),
      identifier = schema.new({
         id = id.from(_N, "S3BatchJobIdentifier", "identifier"),
         type = "union",
         name = "identifier",
         target_id = id.from(_N, "JobIdentifier"),
         target = M.JobIdentifier,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ScriptBatchJobIdentifier = schema.new({
   id = id.from(_N, "ScriptBatchJobIdentifier"),
   type = "structure",
   members = {
      scriptName = schema.new({
         id = id.from(_N, "ScriptBatchJobIdentifier", "scriptName"),
         type = "string",
         name = "scriptName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BatchJobIdentifier = schema.new({
   id = id.from(_N, "BatchJobIdentifier"),
   type = "union",
   members = {
      fileBatchJobIdentifier = schema.new({
         id = id.from(_N, "BatchJobIdentifier", "fileBatchJobIdentifier"),
         type = "structure",
         name = "fileBatchJobIdentifier",
         target_id = id.from(_N, "FileBatchJobIdentifier"),
         target = M.FileBatchJobIdentifier,
      }),
      scriptBatchJobIdentifier = schema.new({
         id = id.from(_N, "BatchJobIdentifier", "scriptBatchJobIdentifier"),
         type = "structure",
         name = "scriptBatchJobIdentifier",
         target_id = id.from(_N, "ScriptBatchJobIdentifier"),
         target = M.ScriptBatchJobIdentifier,
      }),
      s3BatchJobIdentifier = schema.new({
         id = id.from(_N, "BatchJobIdentifier", "s3BatchJobIdentifier"),
         type = "structure",
         name = "s3BatchJobIdentifier",
         target_id = id.from(_N, "S3BatchJobIdentifier"),
         target = M.S3BatchJobIdentifier,
      }),
      restartBatchJobIdentifier = schema.new({
         id = id.from(_N, "BatchJobIdentifier", "restartBatchJobIdentifier"),
         type = "structure",
         name = "restartBatchJobIdentifier",
         target_id = id.from(_N, "RestartBatchJobIdentifier"),
         target = M.RestartBatchJobIdentifier,
      }),
   },
})

M.GetBatchJobExecutionOutput = schema.new({
   id = id.from(_N, "GetBatchJobExecutionResponse"),
   type = "structure",
   members = {
      executionId = schema.new({
         id = id.from(_N, "GetBatchJobExecutionOutput", "executionId"),
         type = "string",
         name = "executionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      applicationId = schema.new({
         id = id.from(_N, "GetBatchJobExecutionOutput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      jobId = schema.new({
         id = id.from(_N, "GetBatchJobExecutionOutput", "jobId"),
         type = "string",
         name = "jobId",
         target_id = prelude.String.id,
      }),
      jobName = schema.new({
         id = id.from(_N, "GetBatchJobExecutionOutput", "jobName"),
         type = "string",
         name = "jobName",
         target_id = prelude.String.id,
      }),
      jobUser = schema.new({
         id = id.from(_N, "GetBatchJobExecutionOutput", "jobUser"),
         type = "string",
         name = "jobUser",
         target_id = prelude.String.id,
      }),
      jobType = schema.new({
         id = id.from(_N, "GetBatchJobExecutionOutput", "jobType"),
         type = "string",
         name = "jobType",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "GetBatchJobExecutionOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      startTime = schema.new({
         id = id.from(_N, "GetBatchJobExecutionOutput", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      endTime = schema.new({
         id = id.from(_N, "GetBatchJobExecutionOutput", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
      }),
      statusReason = schema.new({
         id = id.from(_N, "GetBatchJobExecutionOutput", "statusReason"),
         type = "string",
         name = "statusReason",
         target_id = prelude.String.id,
      }),
      returnCode = schema.new({
         id = id.from(_N, "GetBatchJobExecutionOutput", "returnCode"),
         type = "string",
         name = "returnCode",
         target_id = prelude.String.id,
      }),
      batchJobIdentifier = schema.new({
         id = id.from(_N, "GetBatchJobExecutionOutput", "batchJobIdentifier"),
         type = "union",
         name = "batchJobIdentifier",
         target_id = id.from(_N, "BatchJobIdentifier"),
         target = M.BatchJobIdentifier,
      }),
      jobStepRestartMarker = schema.new({
         id = id.from(_N, "GetBatchJobExecutionOutput", "jobStepRestartMarker"),
         type = "structure",
         name = "jobStepRestartMarker",
         target_id = id.from(_N, "JobStepRestartMarker"),
         target = M.JobStepRestartMarker,
      }),
   },
})

M.ExecutionTimeoutException = schema.new({
   id = id.from(_N, "ExecutionTimeoutException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ExecutionTimeoutException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetDataSetDetailsInput = schema.new({
   id = id.from(_N, "GetDataSetDetailsRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "GetDataSetDetailsInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      dataSetName = schema.new({
         id = id.from(_N, "GetDataSetDetailsInput", "dataSetName"),
         type = "string",
         name = "dataSetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GdgDetailAttributes = schema.new({
   id = id.from(_N, "GdgDetailAttributes"),
   type = "structure",
   members = {
      limit = schema.new({
         id = id.from(_N, "GdgDetailAttributes", "limit"),
         type = "integer",
         name = "limit",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      rollDisposition = schema.new({
         id = id.from(_N, "GdgDetailAttributes", "rollDisposition"),
         type = "string",
         name = "rollDisposition",
         target_id = prelude.String.id,
      }),
   },
})

M.PoDetailAttributes = schema.new({
   id = id.from(_N, "PoDetailAttributes"),
   type = "structure",
   members = {
      format = schema.new({
         id = id.from(_N, "PoDetailAttributes", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      encoding = schema.new({
         id = id.from(_N, "PoDetailAttributes", "encoding"),
         type = "string",
         name = "encoding",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PsDetailAttributes = schema.new({
   id = id.from(_N, "PsDetailAttributes"),
   type = "structure",
   members = {
      format = schema.new({
         id = id.from(_N, "PsDetailAttributes", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      encoding = schema.new({
         id = id.from(_N, "PsDetailAttributes", "encoding"),
         type = "string",
         name = "encoding",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.VsamDetailAttributes = schema.new({
   id = id.from(_N, "VsamDetailAttributes"),
   type = "structure",
   members = {
      encoding = schema.new({
         id = id.from(_N, "VsamDetailAttributes", "encoding"),
         type = "string",
         name = "encoding",
         target_id = prelude.String.id,
      }),
      recordFormat = schema.new({
         id = id.from(_N, "VsamDetailAttributes", "recordFormat"),
         type = "string",
         name = "recordFormat",
         target_id = prelude.String.id,
      }),
      compressed = schema.new({
         id = id.from(_N, "VsamDetailAttributes", "compressed"),
         type = "boolean",
         name = "compressed",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      cacheAtStartup = schema.new({
         id = id.from(_N, "VsamDetailAttributes", "cacheAtStartup"),
         type = "boolean",
         name = "cacheAtStartup",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      primaryKey = schema.new({
         id = id.from(_N, "VsamDetailAttributes", "primaryKey"),
         type = "structure",
         name = "primaryKey",
         target_id = id.from(_N, "PrimaryKey"),
         target = M.PrimaryKey,
      }),
      alternateKeys = schema.new({
         id = id.from(_N, "VsamDetailAttributes", "alternateKeys"),
         type = "list",
         name = "alternateKeys",
         target_id = prelude.Document.id,
         list_member = M.AlternateKey,
      }),
   },
})

M.DatasetDetailOrgAttributes = schema.new({
   id = id.from(_N, "DatasetDetailOrgAttributes"),
   type = "union",
   members = {
      vsam = schema.new({
         id = id.from(_N, "DatasetDetailOrgAttributes", "vsam"),
         type = "structure",
         name = "vsam",
         target_id = id.from(_N, "VsamDetailAttributes"),
         target = M.VsamDetailAttributes,
      }),
      gdg = schema.new({
         id = id.from(_N, "DatasetDetailOrgAttributes", "gdg"),
         type = "structure",
         name = "gdg",
         target_id = id.from(_N, "GdgDetailAttributes"),
         target = M.GdgDetailAttributes,
      }),
      po = schema.new({
         id = id.from(_N, "DatasetDetailOrgAttributes", "po"),
         type = "structure",
         name = "po",
         target_id = id.from(_N, "PoDetailAttributes"),
         target = M.PoDetailAttributes,
      }),
      ps = schema.new({
         id = id.from(_N, "DatasetDetailOrgAttributes", "ps"),
         type = "structure",
         name = "ps",
         target_id = id.from(_N, "PsDetailAttributes"),
         target = M.PsDetailAttributes,
      }),
   },
})

M.GetDataSetDetailsOutput = schema.new({
   id = id.from(_N, "GetDataSetDetailsResponse"),
   type = "structure",
   members = {
      dataSetName = schema.new({
         id = id.from(_N, "GetDataSetDetailsOutput", "dataSetName"),
         type = "string",
         name = "dataSetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      dataSetOrg = schema.new({
         id = id.from(_N, "GetDataSetDetailsOutput", "dataSetOrg"),
         type = "union",
         name = "dataSetOrg",
         target_id = id.from(_N, "DatasetDetailOrgAttributes"),
         target = M.DatasetDetailOrgAttributes,
      }),
      recordLength = schema.new({
         id = id.from(_N, "GetDataSetDetailsOutput", "recordLength"),
         type = "integer",
         name = "recordLength",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      location = schema.new({
         id = id.from(_N, "GetDataSetDetailsOutput", "location"),
         type = "string",
         name = "location",
         target_id = prelude.String.id,
      }),
      blocksize = schema.new({
         id = id.from(_N, "GetDataSetDetailsOutput", "blocksize"),
         type = "integer",
         name = "blocksize",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      creationTime = schema.new({
         id = id.from(_N, "GetDataSetDetailsOutput", "creationTime"),
         type = "timestamp",
         name = "creationTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedTime = schema.new({
         id = id.from(_N, "GetDataSetDetailsOutput", "lastUpdatedTime"),
         type = "timestamp",
         name = "lastUpdatedTime",
         target_id = prelude.Timestamp.id,
      }),
      lastReferencedTime = schema.new({
         id = id.from(_N, "GetDataSetDetailsOutput", "lastReferencedTime"),
         type = "timestamp",
         name = "lastReferencedTime",
         target_id = prelude.Timestamp.id,
      }),
      fileSize = schema.new({
         id = id.from(_N, "GetDataSetDetailsOutput", "fileSize"),
         type = "long",
         name = "fileSize",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
   },
})

M.ServiceUnavailableException = schema.new({
   id = id.from(_N, "ServiceUnavailableException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ServiceUnavailableException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetDataSetExportTaskInput = schema.new({
   id = id.from(_N, "GetDataSetExportTaskRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "GetDataSetExportTaskInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      taskId = schema.new({
         id = id.from(_N, "GetDataSetExportTaskInput", "taskId"),
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

M.DataSetExportSummary = schema.new({
   id = id.from(_N, "DataSetExportSummary"),
   type = "structure",
   members = {
      total = schema.new({
         id = id.from(_N, "DataSetExportSummary", "total"),
         type = "integer",
         name = "total",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      succeeded = schema.new({
         id = id.from(_N, "DataSetExportSummary", "succeeded"),
         type = "integer",
         name = "succeeded",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      failed = schema.new({
         id = id.from(_N, "DataSetExportSummary", "failed"),
         type = "integer",
         name = "failed",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      pending = schema.new({
         id = id.from(_N, "DataSetExportSummary", "pending"),
         type = "integer",
         name = "pending",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      inProgress = schema.new({
         id = id.from(_N, "DataSetExportSummary", "inProgress"),
         type = "integer",
         name = "inProgress",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.GetDataSetExportTaskOutput = schema.new({
   id = id.from(_N, "GetDataSetExportTaskResponse"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "GetDataSetExportTaskOutput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "GetDataSetExportTaskOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      summary = schema.new({
         id = id.from(_N, "GetDataSetExportTaskOutput", "summary"),
         type = "structure",
         name = "summary",
         target_id = id.from(_N, "DataSetExportSummary"),
         target = M.DataSetExportSummary,
      }),
      statusReason = schema.new({
         id = id.from(_N, "GetDataSetExportTaskOutput", "statusReason"),
         type = "string",
         name = "statusReason",
         target_id = prelude.String.id,
      }),
      kmsKeyArn = schema.new({
         id = id.from(_N, "GetDataSetExportTaskOutput", "kmsKeyArn"),
         type = "string",
         name = "kmsKeyArn",
         target_id = prelude.String.id,
      }),
   },
})

M.GetDataSetImportTaskInput = schema.new({
   id = id.from(_N, "GetDataSetImportTaskRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "GetDataSetImportTaskInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      taskId = schema.new({
         id = id.from(_N, "GetDataSetImportTaskInput", "taskId"),
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

M.DataSetImportSummary = schema.new({
   id = id.from(_N, "DataSetImportSummary"),
   type = "structure",
   members = {
      total = schema.new({
         id = id.from(_N, "DataSetImportSummary", "total"),
         type = "integer",
         name = "total",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      succeeded = schema.new({
         id = id.from(_N, "DataSetImportSummary", "succeeded"),
         type = "integer",
         name = "succeeded",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      failed = schema.new({
         id = id.from(_N, "DataSetImportSummary", "failed"),
         type = "integer",
         name = "failed",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      pending = schema.new({
         id = id.from(_N, "DataSetImportSummary", "pending"),
         type = "integer",
         name = "pending",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      inProgress = schema.new({
         id = id.from(_N, "DataSetImportSummary", "inProgress"),
         type = "integer",
         name = "inProgress",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.GetDataSetImportTaskOutput = schema.new({
   id = id.from(_N, "GetDataSetImportTaskResponse"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "GetDataSetImportTaskOutput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "GetDataSetImportTaskOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      summary = schema.new({
         id = id.from(_N, "GetDataSetImportTaskOutput", "summary"),
         type = "structure",
         name = "summary",
         target_id = id.from(_N, "DataSetImportSummary"),
         target = M.DataSetImportSummary,
      }),
   },
})

M.GetDeploymentInput = schema.new({
   id = id.from(_N, "GetDeploymentRequest"),
   type = "structure",
   members = {
      deploymentId = schema.new({
         id = id.from(_N, "GetDeploymentInput", "deploymentId"),
         type = "string",
         name = "deploymentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      applicationId = schema.new({
         id = id.from(_N, "GetDeploymentInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetDeploymentOutput = schema.new({
   id = id.from(_N, "GetDeploymentResponse"),
   type = "structure",
   members = {
      deploymentId = schema.new({
         id = id.from(_N, "GetDeploymentOutput", "deploymentId"),
         type = "string",
         name = "deploymentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      applicationId = schema.new({
         id = id.from(_N, "GetDeploymentOutput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      environmentId = schema.new({
         id = id.from(_N, "GetDeploymentOutput", "environmentId"),
         type = "string",
         name = "environmentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      applicationVersion = schema.new({
         id = id.from(_N, "GetDeploymentOutput", "applicationVersion"),
         type = "integer",
         name = "applicationVersion",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "GetDeploymentOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      creationTime = schema.new({
         id = id.from(_N, "GetDeploymentOutput", "creationTime"),
         type = "timestamp",
         name = "creationTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      statusReason = schema.new({
         id = id.from(_N, "GetDeploymentOutput", "statusReason"),
         type = "string",
         name = "statusReason",
         target_id = prelude.String.id,
      }),
   },
})

M.ListApplicationsInput = schema.new({
   id = id.from(_N, "ListApplicationsRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListApplicationsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListApplicationsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      names = schema.new({
         id = id.from(_N, "ListApplicationsInput", "names"),
         type = "list",
         name = "names",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.HTTP_QUERY] = { name = "names" },
         },
      }),
      environmentId = schema.new({
         id = id.from(_N, "ListApplicationsInput", "environmentId"),
         type = "string",
         name = "environmentId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "environmentId" },
         },
      }),
   },
})

M.ApplicationSummary = schema.new({
   id = id.from(_N, "ApplicationSummary"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "ApplicationSummary", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "ApplicationSummary", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      applicationId = schema.new({
         id = id.from(_N, "ApplicationSummary", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      applicationArn = schema.new({
         id = id.from(_N, "ApplicationSummary", "applicationArn"),
         type = "string",
         name = "applicationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      applicationVersion = schema.new({
         id = id.from(_N, "ApplicationSummary", "applicationVersion"),
         type = "integer",
         name = "applicationVersion",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "ApplicationSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      engineType = schema.new({
         id = id.from(_N, "ApplicationSummary", "engineType"),
         type = "string",
         name = "engineType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      creationTime = schema.new({
         id = id.from(_N, "ApplicationSummary", "creationTime"),
         type = "timestamp",
         name = "creationTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      environmentId = schema.new({
         id = id.from(_N, "ApplicationSummary", "environmentId"),
         type = "string",
         name = "environmentId",
         target_id = prelude.String.id,
      }),
      lastStartTime = schema.new({
         id = id.from(_N, "ApplicationSummary", "lastStartTime"),
         type = "timestamp",
         name = "lastStartTime",
         target_id = prelude.Timestamp.id,
      }),
      versionStatus = schema.new({
         id = id.from(_N, "ApplicationSummary", "versionStatus"),
         type = "string",
         name = "versionStatus",
         target_id = prelude.String.id,
      }),
      deploymentStatus = schema.new({
         id = id.from(_N, "ApplicationSummary", "deploymentStatus"),
         type = "string",
         name = "deploymentStatus",
         target_id = prelude.String.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "ApplicationSummary", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
   },
})

M.ListApplicationsOutput = schema.new({
   id = id.from(_N, "ListApplicationsResponse"),
   type = "structure",
   members = {
      applications = schema.new({
         id = id.from(_N, "ListApplicationsOutput", "applications"),
         type = "list",
         name = "applications",
         target_id = prelude.Document.id,
         list_member = M.ApplicationSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListApplicationsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListApplicationVersionsInput = schema.new({
   id = id.from(_N, "ListApplicationVersionsRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListApplicationVersionsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListApplicationVersionsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      applicationId = schema.new({
         id = id.from(_N, "ListApplicationVersionsInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.ListApplicationVersionsOutput = schema.new({
   id = id.from(_N, "ListApplicationVersionsResponse"),
   type = "structure",
   members = {
      applicationVersions = schema.new({
         id = id.from(_N, "ListApplicationVersionsOutput", "applicationVersions"),
         type = "list",
         name = "applicationVersions",
         target_id = prelude.Document.id,
         list_member = M.ApplicationVersionSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListApplicationVersionsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBatchJobDefinitionsInput = schema.new({
   id = id.from(_N, "ListBatchJobDefinitionsRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListBatchJobDefinitionsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListBatchJobDefinitionsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      applicationId = schema.new({
         id = id.from(_N, "ListBatchJobDefinitionsInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      prefix = schema.new({
         id = id.from(_N, "ListBatchJobDefinitionsInput", "prefix"),
         type = "string",
         name = "prefix",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "prefix" },
         },
      }),
   },
})

M.FileBatchJobDefinition = schema.new({
   id = id.from(_N, "FileBatchJobDefinition"),
   type = "structure",
   members = {
      fileName = schema.new({
         id = id.from(_N, "FileBatchJobDefinition", "fileName"),
         type = "string",
         name = "fileName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      folderPath = schema.new({
         id = id.from(_N, "FileBatchJobDefinition", "folderPath"),
         type = "string",
         name = "folderPath",
         target_id = prelude.String.id,
      }),
   },
})

M.ScriptBatchJobDefinition = schema.new({
   id = id.from(_N, "ScriptBatchJobDefinition"),
   type = "structure",
   members = {
      scriptName = schema.new({
         id = id.from(_N, "ScriptBatchJobDefinition", "scriptName"),
         type = "string",
         name = "scriptName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BatchJobDefinition = schema.new({
   id = id.from(_N, "BatchJobDefinition"),
   type = "union",
   members = {
      fileBatchJobDefinition = schema.new({
         id = id.from(_N, "BatchJobDefinition", "fileBatchJobDefinition"),
         type = "structure",
         name = "fileBatchJobDefinition",
         target_id = id.from(_N, "FileBatchJobDefinition"),
         target = M.FileBatchJobDefinition,
      }),
      scriptBatchJobDefinition = schema.new({
         id = id.from(_N, "BatchJobDefinition", "scriptBatchJobDefinition"),
         type = "structure",
         name = "scriptBatchJobDefinition",
         target_id = id.from(_N, "ScriptBatchJobDefinition"),
         target = M.ScriptBatchJobDefinition,
      }),
   },
})

M.ListBatchJobDefinitionsOutput = schema.new({
   id = id.from(_N, "ListBatchJobDefinitionsResponse"),
   type = "structure",
   members = {
      batchJobDefinitions = schema.new({
         id = id.from(_N, "ListBatchJobDefinitionsOutput", "batchJobDefinitions"),
         type = "list",
         name = "batchJobDefinitions",
         target_id = prelude.Document.id,
         list_member = M.BatchJobDefinition,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListBatchJobDefinitionsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBatchJobExecutionsInput = schema.new({
   id = id.from(_N, "ListBatchJobExecutionsRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListBatchJobExecutionsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListBatchJobExecutionsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      applicationId = schema.new({
         id = id.from(_N, "ListBatchJobExecutionsInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      executionIds = schema.new({
         id = id.from(_N, "ListBatchJobExecutionsInput", "executionIds"),
         type = "list",
         name = "executionIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.HTTP_QUERY] = { name = "executionIds" },
         },
      }),
      jobName = schema.new({
         id = id.from(_N, "ListBatchJobExecutionsInput", "jobName"),
         type = "string",
         name = "jobName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "jobName" },
         },
      }),
      status = schema.new({
         id = id.from(_N, "ListBatchJobExecutionsInput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "status" },
         },
      }),
      startedAfter = schema.new({
         id = id.from(_N, "ListBatchJobExecutionsInput", "startedAfter"),
         type = "timestamp",
         name = "startedAfter",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "startedAfter" },
         },
      }),
      startedBefore = schema.new({
         id = id.from(_N, "ListBatchJobExecutionsInput", "startedBefore"),
         type = "timestamp",
         name = "startedBefore",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "startedBefore" },
         },
      }),
   },
})

M.BatchJobExecutionSummary = schema.new({
   id = id.from(_N, "BatchJobExecutionSummary"),
   type = "structure",
   members = {
      executionId = schema.new({
         id = id.from(_N, "BatchJobExecutionSummary", "executionId"),
         type = "string",
         name = "executionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      applicationId = schema.new({
         id = id.from(_N, "BatchJobExecutionSummary", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      jobId = schema.new({
         id = id.from(_N, "BatchJobExecutionSummary", "jobId"),
         type = "string",
         name = "jobId",
         target_id = prelude.String.id,
      }),
      jobName = schema.new({
         id = id.from(_N, "BatchJobExecutionSummary", "jobName"),
         type = "string",
         name = "jobName",
         target_id = prelude.String.id,
      }),
      jobType = schema.new({
         id = id.from(_N, "BatchJobExecutionSummary", "jobType"),
         type = "string",
         name = "jobType",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "BatchJobExecutionSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      startTime = schema.new({
         id = id.from(_N, "BatchJobExecutionSummary", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      endTime = schema.new({
         id = id.from(_N, "BatchJobExecutionSummary", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
      }),
      returnCode = schema.new({
         id = id.from(_N, "BatchJobExecutionSummary", "returnCode"),
         type = "string",
         name = "returnCode",
         target_id = prelude.String.id,
      }),
      batchJobIdentifier = schema.new({
         id = id.from(_N, "BatchJobExecutionSummary", "batchJobIdentifier"),
         type = "union",
         name = "batchJobIdentifier",
         target_id = id.from(_N, "BatchJobIdentifier"),
         target = M.BatchJobIdentifier,
      }),
   },
})

M.ListBatchJobExecutionsOutput = schema.new({
   id = id.from(_N, "ListBatchJobExecutionsResponse"),
   type = "structure",
   members = {
      batchJobExecutions = schema.new({
         id = id.from(_N, "ListBatchJobExecutionsOutput", "batchJobExecutions"),
         type = "list",
         name = "batchJobExecutions",
         target_id = prelude.Document.id,
         list_member = M.BatchJobExecutionSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListBatchJobExecutionsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBatchJobRestartPointsInput = schema.new({
   id = id.from(_N, "ListBatchJobRestartPointsRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "ListBatchJobRestartPointsInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      executionId = schema.new({
         id = id.from(_N, "ListBatchJobRestartPointsInput", "executionId"),
         type = "string",
         name = "executionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      authSecretsManagerArn = schema.new({
         id = id.from(_N, "ListBatchJobRestartPointsInput", "authSecretsManagerArn"),
         type = "string",
         name = "authSecretsManagerArn",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "authSecretsManagerArn" },
         },
      }),
   },
})

M.JobStep = schema.new({
   id = id.from(_N, "JobStep"),
   type = "structure",
   members = {
      stepNumber = schema.new({
         id = id.from(_N, "JobStep", "stepNumber"),
         type = "integer",
         name = "stepNumber",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      stepName = schema.new({
         id = id.from(_N, "JobStep", "stepName"),
         type = "string",
         name = "stepName",
         target_id = prelude.String.id,
      }),
      procStepNumber = schema.new({
         id = id.from(_N, "JobStep", "procStepNumber"),
         type = "integer",
         name = "procStepNumber",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      procStepName = schema.new({
         id = id.from(_N, "JobStep", "procStepName"),
         type = "string",
         name = "procStepName",
         target_id = prelude.String.id,
      }),
      stepCondCode = schema.new({
         id = id.from(_N, "JobStep", "stepCondCode"),
         type = "string",
         name = "stepCondCode",
         target_id = prelude.String.id,
      }),
      stepRestartable = schema.new({
         id = id.from(_N, "JobStep", "stepRestartable"),
         type = "boolean",
         name = "stepRestartable",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      stepCheckpoint = schema.new({
         id = id.from(_N, "JobStep", "stepCheckpoint"),
         type = "integer",
         name = "stepCheckpoint",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      stepCheckpointStatus = schema.new({
         id = id.from(_N, "JobStep", "stepCheckpointStatus"),
         type = "string",
         name = "stepCheckpointStatus",
         target_id = prelude.String.id,
      }),
      stepCheckpointTime = schema.new({
         id = id.from(_N, "JobStep", "stepCheckpointTime"),
         type = "timestamp",
         name = "stepCheckpointTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListBatchJobRestartPointsOutput = schema.new({
   id = id.from(_N, "ListBatchJobRestartPointsResponse"),
   type = "structure",
   members = {
      batchJobSteps = schema.new({
         id = id.from(_N, "ListBatchJobRestartPointsOutput", "batchJobSteps"),
         type = "list",
         name = "batchJobSteps",
         target_id = prelude.Document.id,
         list_member = M.JobStep,
      }),
   },
})

M.ListDataSetExportHistoryInput = schema.new({
   id = id.from(_N, "ListDataSetExportHistoryRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListDataSetExportHistoryInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListDataSetExportHistoryInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      applicationId = schema.new({
         id = id.from(_N, "ListDataSetExportHistoryInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DataSetExportTask = schema.new({
   id = id.from(_N, "DataSetExportTask"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "DataSetExportTask", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "DataSetExportTask", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      summary = schema.new({
         id = id.from(_N, "DataSetExportTask", "summary"),
         type = "structure",
         name = "summary",
         target_id = id.from(_N, "DataSetExportSummary"),
         target = M.DataSetExportSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      statusReason = schema.new({
         id = id.from(_N, "DataSetExportTask", "statusReason"),
         type = "string",
         name = "statusReason",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDataSetExportHistoryOutput = schema.new({
   id = id.from(_N, "ListDataSetExportHistoryResponse"),
   type = "structure",
   members = {
      dataSetExportTasks = schema.new({
         id = id.from(_N, "ListDataSetExportHistoryOutput", "dataSetExportTasks"),
         type = "list",
         name = "dataSetExportTasks",
         target_id = prelude.Document.id,
         list_member = M.DataSetExportTask,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListDataSetExportHistoryOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDataSetImportHistoryInput = schema.new({
   id = id.from(_N, "ListDataSetImportHistoryRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListDataSetImportHistoryInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListDataSetImportHistoryInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      applicationId = schema.new({
         id = id.from(_N, "ListDataSetImportHistoryInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DataSetImportTask = schema.new({
   id = id.from(_N, "DataSetImportTask"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "DataSetImportTask", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "DataSetImportTask", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      summary = schema.new({
         id = id.from(_N, "DataSetImportTask", "summary"),
         type = "structure",
         name = "summary",
         target_id = id.from(_N, "DataSetImportSummary"),
         target = M.DataSetImportSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      statusReason = schema.new({
         id = id.from(_N, "DataSetImportTask", "statusReason"),
         type = "string",
         name = "statusReason",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDataSetImportHistoryOutput = schema.new({
   id = id.from(_N, "ListDataSetImportHistoryResponse"),
   type = "structure",
   members = {
      dataSetImportTasks = schema.new({
         id = id.from(_N, "ListDataSetImportHistoryOutput", "dataSetImportTasks"),
         type = "list",
         name = "dataSetImportTasks",
         target_id = prelude.Document.id,
         list_member = M.DataSetImportTask,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListDataSetImportHistoryOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDataSetsInput = schema.new({
   id = id.from(_N, "ListDataSetsRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "ListDataSetsInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListDataSetsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListDataSetsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      prefix = schema.new({
         id = id.from(_N, "ListDataSetsInput", "prefix"),
         type = "string",
         name = "prefix",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "prefix" },
         },
      }),
      nameFilter = schema.new({
         id = id.from(_N, "ListDataSetsInput", "nameFilter"),
         type = "string",
         name = "nameFilter",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nameFilter" },
         },
      }),
   },
})

M.DataSetSummary = schema.new({
   id = id.from(_N, "DataSetSummary"),
   type = "structure",
   members = {
      dataSetName = schema.new({
         id = id.from(_N, "DataSetSummary", "dataSetName"),
         type = "string",
         name = "dataSetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      dataSetOrg = schema.new({
         id = id.from(_N, "DataSetSummary", "dataSetOrg"),
         type = "string",
         name = "dataSetOrg",
         target_id = prelude.String.id,
      }),
      format = schema.new({
         id = id.from(_N, "DataSetSummary", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
      }),
      creationTime = schema.new({
         id = id.from(_N, "DataSetSummary", "creationTime"),
         type = "timestamp",
         name = "creationTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedTime = schema.new({
         id = id.from(_N, "DataSetSummary", "lastUpdatedTime"),
         type = "timestamp",
         name = "lastUpdatedTime",
         target_id = prelude.Timestamp.id,
      }),
      lastReferencedTime = schema.new({
         id = id.from(_N, "DataSetSummary", "lastReferencedTime"),
         type = "timestamp",
         name = "lastReferencedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListDataSetsOutput = schema.new({
   id = id.from(_N, "ListDataSetsResponse"),
   type = "structure",
   members = {
      dataSets = schema.new({
         id = id.from(_N, "ListDataSetsOutput", "dataSets"),
         type = "list",
         name = "dataSets",
         target_id = prelude.Document.id,
         list_member = M.DataSetSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListDataSetsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDeploymentsInput = schema.new({
   id = id.from(_N, "ListDeploymentsRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListDeploymentsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListDeploymentsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      applicationId = schema.new({
         id = id.from(_N, "ListDeploymentsInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeploymentSummary = schema.new({
   id = id.from(_N, "DeploymentSummary"),
   type = "structure",
   members = {
      deploymentId = schema.new({
         id = id.from(_N, "DeploymentSummary", "deploymentId"),
         type = "string",
         name = "deploymentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      applicationId = schema.new({
         id = id.from(_N, "DeploymentSummary", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      environmentId = schema.new({
         id = id.from(_N, "DeploymentSummary", "environmentId"),
         type = "string",
         name = "environmentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      applicationVersion = schema.new({
         id = id.from(_N, "DeploymentSummary", "applicationVersion"),
         type = "integer",
         name = "applicationVersion",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "DeploymentSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      creationTime = schema.new({
         id = id.from(_N, "DeploymentSummary", "creationTime"),
         type = "timestamp",
         name = "creationTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      statusReason = schema.new({
         id = id.from(_N, "DeploymentSummary", "statusReason"),
         type = "string",
         name = "statusReason",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDeploymentsOutput = schema.new({
   id = id.from(_N, "ListDeploymentsResponse"),
   type = "structure",
   members = {
      deployments = schema.new({
         id = id.from(_N, "ListDeploymentsOutput", "deployments"),
         type = "list",
         name = "deployments",
         target_id = prelude.Document.id,
         list_member = M.DeploymentSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListDeploymentsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.StartApplicationInput = schema.new({
   id = id.from(_N, "StartApplicationRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "StartApplicationInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.StartApplicationOutput = schema.new({
   id = id.from(_N, "StartApplicationResponse"),
   type = "structure",
})

M.StartBatchJobInput = schema.new({
   id = id.from(_N, "StartBatchJobRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "StartBatchJobInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      batchJobIdentifier = schema.new({
         id = id.from(_N, "StartBatchJobInput", "batchJobIdentifier"),
         type = "union",
         name = "batchJobIdentifier",
         target_id = id.from(_N, "BatchJobIdentifier"),
         target = M.BatchJobIdentifier,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      jobParams = schema.new({
         id = id.from(_N, "StartBatchJobInput", "jobParams"),
         type = "map",
         name = "jobParams",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      authSecretsManagerArn = schema.new({
         id = id.from(_N, "StartBatchJobInput", "authSecretsManagerArn"),
         type = "string",
         name = "authSecretsManagerArn",
         target_id = prelude.String.id,
      }),
   },
})

M.StartBatchJobOutput = schema.new({
   id = id.from(_N, "StartBatchJobResponse"),
   type = "structure",
   members = {
      executionId = schema.new({
         id = id.from(_N, "StartBatchJobOutput", "executionId"),
         type = "string",
         name = "executionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StopApplicationInput = schema.new({
   id = id.from(_N, "StopApplicationRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "StopApplicationInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      forceStop = schema.new({
         id = id.from(_N, "StopApplicationInput", "forceStop"),
         type = "boolean",
         name = "forceStop",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.StopApplicationOutput = schema.new({
   id = id.from(_N, "StopApplicationResponse"),
   type = "structure",
})

M.UpdateApplicationInput = schema.new({
   id = id.from(_N, "UpdateApplicationRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      currentApplicationVersion = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "currentApplicationVersion"),
         type = "integer",
         name = "currentApplicationVersion",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      definition = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "definition"),
         type = "union",
         name = "definition",
         target_id = id.from(_N, "Definition"),
         target = M.Definition,
      }),
   },
})

M.UpdateApplicationOutput = schema.new({
   id = id.from(_N, "UpdateApplicationResponse"),
   type = "structure",
   members = {
      applicationVersion = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "applicationVersion"),
         type = "integer",
         name = "applicationVersion",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.HighAvailabilityConfig = schema.new({
   id = id.from(_N, "HighAvailabilityConfig"),
   type = "structure",
   members = {
      desiredCapacity = schema.new({
         id = id.from(_N, "HighAvailabilityConfig", "desiredCapacity"),
         type = "integer",
         name = "desiredCapacity",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.EfsStorageConfiguration = schema.new({
   id = id.from(_N, "EfsStorageConfiguration"),
   type = "structure",
   members = {
      fileSystemId = schema.new({
         id = id.from(_N, "EfsStorageConfiguration", "fileSystemId"),
         type = "string",
         name = "fileSystemId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "file-system-id" },
         },
      }),
      mountPoint = schema.new({
         id = id.from(_N, "EfsStorageConfiguration", "mountPoint"),
         type = "string",
         name = "mountPoint",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "mount-point" },
         },
      }),
   },
})

M.FsxStorageConfiguration = schema.new({
   id = id.from(_N, "FsxStorageConfiguration"),
   type = "structure",
   members = {
      fileSystemId = schema.new({
         id = id.from(_N, "FsxStorageConfiguration", "fileSystemId"),
         type = "string",
         name = "fileSystemId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "file-system-id" },
         },
      }),
      mountPoint = schema.new({
         id = id.from(_N, "FsxStorageConfiguration", "mountPoint"),
         type = "string",
         name = "mountPoint",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "mount-point" },
         },
      }),
   },
})

M.StorageConfiguration = schema.new({
   id = id.from(_N, "StorageConfiguration"),
   type = "union",
   members = {
      efs = schema.new({
         id = id.from(_N, "StorageConfiguration", "efs"),
         type = "structure",
         name = "efs",
         target_id = id.from(_N, "EfsStorageConfiguration"),
         target = M.EfsStorageConfiguration,
      }),
      fsx = schema.new({
         id = id.from(_N, "StorageConfiguration", "fsx"),
         type = "structure",
         name = "fsx",
         target_id = id.from(_N, "FsxStorageConfiguration"),
         target = M.FsxStorageConfiguration,
      }),
   },
})

M.CreateEnvironmentInput = schema.new({
   id = id.from(_N, "CreateEnvironmentRequest"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "CreateEnvironmentInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      instanceType = schema.new({
         id = id.from(_N, "CreateEnvironmentInput", "instanceType"),
         type = "string",
         name = "instanceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "CreateEnvironmentInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      engineType = schema.new({
         id = id.from(_N, "CreateEnvironmentInput", "engineType"),
         type = "string",
         name = "engineType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      engineVersion = schema.new({
         id = id.from(_N, "CreateEnvironmentInput", "engineVersion"),
         type = "string",
         name = "engineVersion",
         target_id = prelude.String.id,
      }),
      subnetIds = schema.new({
         id = id.from(_N, "CreateEnvironmentInput", "subnetIds"),
         type = "list",
         name = "subnetIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      securityGroupIds = schema.new({
         id = id.from(_N, "CreateEnvironmentInput", "securityGroupIds"),
         type = "list",
         name = "securityGroupIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      storageConfigurations = schema.new({
         id = id.from(_N, "CreateEnvironmentInput", "storageConfigurations"),
         type = "list",
         name = "storageConfigurations",
         target_id = prelude.Document.id,
         list_member = M.StorageConfiguration,
      }),
      publiclyAccessible = schema.new({
         id = id.from(_N, "CreateEnvironmentInput", "publiclyAccessible"),
         type = "boolean",
         name = "publiclyAccessible",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      highAvailabilityConfig = schema.new({
         id = id.from(_N, "CreateEnvironmentInput", "highAvailabilityConfig"),
         type = "structure",
         name = "highAvailabilityConfig",
         target_id = id.from(_N, "HighAvailabilityConfig"),
         target = M.HighAvailabilityConfig,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateEnvironmentInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      preferredMaintenanceWindow = schema.new({
         id = id.from(_N, "CreateEnvironmentInput", "preferredMaintenanceWindow"),
         type = "string",
         name = "preferredMaintenanceWindow",
         target_id = prelude.String.id,
      }),
      networkType = schema.new({
         id = id.from(_N, "CreateEnvironmentInput", "networkType"),
         type = "string",
         name = "networkType",
         target_id = prelude.String.id,
      }),
      clientToken = schema.new({
         id = id.from(_N, "CreateEnvironmentInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      kmsKeyId = schema.new({
         id = id.from(_N, "CreateEnvironmentInput", "kmsKeyId"),
         type = "string",
         name = "kmsKeyId",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateEnvironmentOutput = schema.new({
   id = id.from(_N, "CreateEnvironmentResponse"),
   type = "structure",
   members = {
      environmentId = schema.new({
         id = id.from(_N, "CreateEnvironmentOutput", "environmentId"),
         type = "string",
         name = "environmentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteEnvironmentInput = schema.new({
   id = id.from(_N, "DeleteEnvironmentRequest"),
   type = "structure",
   members = {
      environmentId = schema.new({
         id = id.from(_N, "DeleteEnvironmentInput", "environmentId"),
         type = "string",
         name = "environmentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteEnvironmentOutput = schema.new({
   id = id.from(_N, "DeleteEnvironmentResponse"),
   type = "structure",
})

M.GetEnvironmentInput = schema.new({
   id = id.from(_N, "GetEnvironmentRequest"),
   type = "structure",
   members = {
      environmentId = schema.new({
         id = id.from(_N, "GetEnvironmentInput", "environmentId"),
         type = "string",
         name = "environmentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.MaintenanceSchedule = schema.new({
   id = id.from(_N, "MaintenanceSchedule"),
   type = "structure",
   members = {
      startTime = schema.new({
         id = id.from(_N, "MaintenanceSchedule", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
      }),
      endTime = schema.new({
         id = id.from(_N, "MaintenanceSchedule", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.PendingMaintenance = schema.new({
   id = id.from(_N, "PendingMaintenance"),
   type = "structure",
   members = {
      schedule = schema.new({
         id = id.from(_N, "PendingMaintenance", "schedule"),
         type = "structure",
         name = "schedule",
         target_id = id.from(_N, "MaintenanceSchedule"),
         target = M.MaintenanceSchedule,
      }),
      engineVersion = schema.new({
         id = id.from(_N, "PendingMaintenance", "engineVersion"),
         type = "string",
         name = "engineVersion",
         target_id = prelude.String.id,
      }),
   },
})

M.GetEnvironmentOutput = schema.new({
   id = id.from(_N, "GetEnvironmentResponse"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      environmentArn = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "environmentArn"),
         type = "string",
         name = "environmentArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      environmentId = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "environmentId"),
         type = "string",
         name = "environmentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      instanceType = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "instanceType"),
         type = "string",
         name = "instanceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      engineType = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "engineType"),
         type = "string",
         name = "engineType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      engineVersion = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "engineVersion"),
         type = "string",
         name = "engineVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      vpcId = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "vpcId"),
         type = "string",
         name = "vpcId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      subnetIds = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "subnetIds"),
         type = "list",
         name = "subnetIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      securityGroupIds = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "securityGroupIds"),
         type = "list",
         name = "securityGroupIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      creationTime = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "creationTime"),
         type = "timestamp",
         name = "creationTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      storageConfigurations = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "storageConfigurations"),
         type = "list",
         name = "storageConfigurations",
         target_id = prelude.Document.id,
         list_member = M.StorageConfiguration,
      }),
      tags = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      highAvailabilityConfig = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "highAvailabilityConfig"),
         type = "structure",
         name = "highAvailabilityConfig",
         target_id = id.from(_N, "HighAvailabilityConfig"),
         target = M.HighAvailabilityConfig,
      }),
      publiclyAccessible = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "publiclyAccessible"),
         type = "boolean",
         name = "publiclyAccessible",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      actualCapacity = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "actualCapacity"),
         type = "integer",
         name = "actualCapacity",
         target_id = prelude.Integer.id,
      }),
      loadBalancerArn = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "loadBalancerArn"),
         type = "string",
         name = "loadBalancerArn",
         target_id = prelude.String.id,
      }),
      statusReason = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "statusReason"),
         type = "string",
         name = "statusReason",
         target_id = prelude.String.id,
      }),
      preferredMaintenanceWindow = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "preferredMaintenanceWindow"),
         type = "string",
         name = "preferredMaintenanceWindow",
         target_id = prelude.String.id,
      }),
      pendingMaintenance = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "pendingMaintenance"),
         type = "structure",
         name = "pendingMaintenance",
         target_id = id.from(_N, "PendingMaintenance"),
         target = M.PendingMaintenance,
      }),
      kmsKeyId = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "kmsKeyId"),
         type = "string",
         name = "kmsKeyId",
         target_id = prelude.String.id,
      }),
      networkType = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "networkType"),
         type = "string",
         name = "networkType",
         target_id = prelude.String.id,
      }),
   },
})

M.ListEnvironmentsInput = schema.new({
   id = id.from(_N, "ListEnvironmentsRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListEnvironmentsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListEnvironmentsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      names = schema.new({
         id = id.from(_N, "ListEnvironmentsInput", "names"),
         type = "list",
         name = "names",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.HTTP_QUERY] = { name = "names" },
         },
      }),
      engineType = schema.new({
         id = id.from(_N, "ListEnvironmentsInput", "engineType"),
         type = "string",
         name = "engineType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "engineType" },
         },
      }),
   },
})

M.EnvironmentSummary = schema.new({
   id = id.from(_N, "EnvironmentSummary"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "EnvironmentSummary", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      environmentArn = schema.new({
         id = id.from(_N, "EnvironmentSummary", "environmentArn"),
         type = "string",
         name = "environmentArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      environmentId = schema.new({
         id = id.from(_N, "EnvironmentSummary", "environmentId"),
         type = "string",
         name = "environmentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      instanceType = schema.new({
         id = id.from(_N, "EnvironmentSummary", "instanceType"),
         type = "string",
         name = "instanceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "EnvironmentSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      engineType = schema.new({
         id = id.from(_N, "EnvironmentSummary", "engineType"),
         type = "string",
         name = "engineType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      engineVersion = schema.new({
         id = id.from(_N, "EnvironmentSummary", "engineVersion"),
         type = "string",
         name = "engineVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      creationTime = schema.new({
         id = id.from(_N, "EnvironmentSummary", "creationTime"),
         type = "timestamp",
         name = "creationTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      networkType = schema.new({
         id = id.from(_N, "EnvironmentSummary", "networkType"),
         type = "string",
         name = "networkType",
         target_id = prelude.String.id,
      }),
   },
})

M.ListEnvironmentsOutput = schema.new({
   id = id.from(_N, "ListEnvironmentsResponse"),
   type = "structure",
   members = {
      environments = schema.new({
         id = id.from(_N, "ListEnvironmentsOutput", "environments"),
         type = "list",
         name = "environments",
         target_id = prelude.Document.id,
         list_member = M.EnvironmentSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListEnvironmentsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateEnvironmentInput = schema.new({
   id = id.from(_N, "UpdateEnvironmentRequest"),
   type = "structure",
   members = {
      environmentId = schema.new({
         id = id.from(_N, "UpdateEnvironmentInput", "environmentId"),
         type = "string",
         name = "environmentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      desiredCapacity = schema.new({
         id = id.from(_N, "UpdateEnvironmentInput", "desiredCapacity"),
         type = "integer",
         name = "desiredCapacity",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      instanceType = schema.new({
         id = id.from(_N, "UpdateEnvironmentInput", "instanceType"),
         type = "string",
         name = "instanceType",
         target_id = prelude.String.id,
      }),
      engineVersion = schema.new({
         id = id.from(_N, "UpdateEnvironmentInput", "engineVersion"),
         type = "string",
         name = "engineVersion",
         target_id = prelude.String.id,
      }),
      preferredMaintenanceWindow = schema.new({
         id = id.from(_N, "UpdateEnvironmentInput", "preferredMaintenanceWindow"),
         type = "string",
         name = "preferredMaintenanceWindow",
         target_id = prelude.String.id,
      }),
      applyDuringMaintenanceWindow = schema.new({
         id = id.from(_N, "UpdateEnvironmentInput", "applyDuringMaintenanceWindow"),
         type = "boolean",
         name = "applyDuringMaintenanceWindow",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      forceUpdate = schema.new({
         id = id.from(_N, "UpdateEnvironmentInput", "forceUpdate"),
         type = "boolean",
         name = "forceUpdate",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.UpdateEnvironmentOutput = schema.new({
   id = id.from(_N, "UpdateEnvironmentResponse"),
   type = "structure",
   members = {
      environmentId = schema.new({
         id = id.from(_N, "UpdateEnvironmentOutput", "environmentId"),
         type = "string",
         name = "environmentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetSignedBluinsightsUrlInput = prelude.Unit

M.GetSignedBluinsightsUrlOutput = schema.new({
   id = id.from(_N, "GetSignedBluinsightsUrlResponse"),
   type = "structure",
   members = {
      signedBiUrl = schema.new({
         id = id.from(_N, "GetSignedBluinsightsUrlOutput", "signedBiUrl"),
         type = "string",
         name = "signedBiUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListEngineVersionsInput = schema.new({
   id = id.from(_N, "ListEngineVersionsRequest"),
   type = "structure",
   members = {
      engineType = schema.new({
         id = id.from(_N, "ListEngineVersionsInput", "engineType"),
         type = "string",
         name = "engineType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "engineType" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListEngineVersionsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListEngineVersionsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.EngineVersionsSummary = schema.new({
   id = id.from(_N, "EngineVersionsSummary"),
   type = "structure",
   members = {
      engineType = schema.new({
         id = id.from(_N, "EngineVersionsSummary", "engineType"),
         type = "string",
         name = "engineType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      engineVersion = schema.new({
         id = id.from(_N, "EngineVersionsSummary", "engineVersion"),
         type = "string",
         name = "engineVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListEngineVersionsOutput = schema.new({
   id = id.from(_N, "ListEngineVersionsResponse"),
   type = "structure",
   members = {
      engineVersions = schema.new({
         id = id.from(_N, "ListEngineVersionsOutput", "engineVersions"),
         type = "list",
         name = "engineVersions",
         target_id = prelude.Document.id,
         list_member = M.EngineVersionsSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListEngineVersionsOutput", "nextToken"),
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
   id = id.from("com.amazonaws.m2", "AwsSupernovaControlPlaneService"),
   version = "2021-04-28",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CancelBatchJobExecution = schema.operation({
   id = id.from("com.amazonaws.m2", "CancelBatchJobExecution"),
   input = M.CancelBatchJobExecutionInput,
   output = M.CancelBatchJobExecutionOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/applications/{applicationId}/batch-job-executions/{executionId}/cancel" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateApplication = schema.operation({
   id = id.from("com.amazonaws.m2", "CreateApplication"),
   input = M.CreateApplicationInput,
   output = M.CreateApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/applications" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateDataSetExportTask = schema.operation({
   id = id.from("com.amazonaws.m2", "CreateDataSetExportTask"),
   input = M.CreateDataSetExportTaskInput,
   output = M.CreateDataSetExportTaskOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/applications/{applicationId}/dataset-export-task" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateDataSetImportTask = schema.operation({
   id = id.from("com.amazonaws.m2", "CreateDataSetImportTask"),
   input = M.CreateDataSetImportTaskInput,
   output = M.CreateDataSetImportTaskOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/applications/{applicationId}/dataset-import-task" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateDeployment = schema.operation({
   id = id.from("com.amazonaws.m2", "CreateDeployment"),
   input = M.CreateDeploymentInput,
   output = M.CreateDeploymentOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/applications/{applicationId}/deployments" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateEnvironment = schema.operation({
   id = id.from("com.amazonaws.m2", "CreateEnvironment"),
   input = M.CreateEnvironmentInput,
   output = M.CreateEnvironmentOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/environments" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteApplication = schema.operation({
   id = id.from("com.amazonaws.m2", "DeleteApplication"),
   input = M.DeleteApplicationInput,
   output = M.DeleteApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/applications/{applicationId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteApplicationFromEnvironment = schema.operation({
   id = id.from("com.amazonaws.m2", "DeleteApplicationFromEnvironment"),
   input = M.DeleteApplicationFromEnvironmentInput,
   output = M.DeleteApplicationFromEnvironmentOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/applications/{applicationId}/environment/{environmentId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteEnvironment = schema.operation({
   id = id.from("com.amazonaws.m2", "DeleteEnvironment"),
   input = M.DeleteEnvironmentInput,
   output = M.DeleteEnvironmentOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/environments/{environmentId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetApplication = schema.operation({
   id = id.from("com.amazonaws.m2", "GetApplication"),
   input = M.GetApplicationInput,
   output = M.GetApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{applicationId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetApplicationVersion = schema.operation({
   id = id.from("com.amazonaws.m2", "GetApplicationVersion"),
   input = M.GetApplicationVersionInput,
   output = M.GetApplicationVersionOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{applicationId}/versions/{applicationVersion}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetBatchJobExecution = schema.operation({
   id = id.from("com.amazonaws.m2", "GetBatchJobExecution"),
   input = M.GetBatchJobExecutionInput,
   output = M.GetBatchJobExecutionOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{applicationId}/batch-job-executions/{executionId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetDataSetDetails = schema.operation({
   id = id.from("com.amazonaws.m2", "GetDataSetDetails"),
   input = M.GetDataSetDetailsInput,
   output = M.GetDataSetDetailsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{applicationId}/datasets/{dataSetName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetDataSetExportTask = schema.operation({
   id = id.from("com.amazonaws.m2", "GetDataSetExportTask"),
   input = M.GetDataSetExportTaskInput,
   output = M.GetDataSetExportTaskOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{applicationId}/dataset-export-tasks/{taskId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetDataSetImportTask = schema.operation({
   id = id.from("com.amazonaws.m2", "GetDataSetImportTask"),
   input = M.GetDataSetImportTaskInput,
   output = M.GetDataSetImportTaskOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{applicationId}/dataset-import-tasks/{taskId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetDeployment = schema.operation({
   id = id.from("com.amazonaws.m2", "GetDeployment"),
   input = M.GetDeploymentInput,
   output = M.GetDeploymentOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{applicationId}/deployments/{deploymentId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetEnvironment = schema.operation({
   id = id.from("com.amazonaws.m2", "GetEnvironment"),
   input = M.GetEnvironmentInput,
   output = M.GetEnvironmentOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/environments/{environmentId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSignedBluinsightsUrl = schema.operation({
   id = id.from("com.amazonaws.m2", "GetSignedBluinsightsUrl"),
   input = M.GetSignedBluinsightsUrlInput,
   output = M.GetSignedBluinsightsUrlOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/signed-bi-url" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListApplications = schema.operation({
   id = id.from("com.amazonaws.m2", "ListApplications"),
   input = M.ListApplicationsInput,
   output = M.ListApplicationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListApplicationVersions = schema.operation({
   id = id.from("com.amazonaws.m2", "ListApplicationVersions"),
   input = M.ListApplicationVersionsInput,
   output = M.ListApplicationVersionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{applicationId}/versions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListBatchJobDefinitions = schema.operation({
   id = id.from("com.amazonaws.m2", "ListBatchJobDefinitions"),
   input = M.ListBatchJobDefinitionsInput,
   output = M.ListBatchJobDefinitionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{applicationId}/batch-job-definitions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListBatchJobExecutions = schema.operation({
   id = id.from("com.amazonaws.m2", "ListBatchJobExecutions"),
   input = M.ListBatchJobExecutionsInput,
   output = M.ListBatchJobExecutionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{applicationId}/batch-job-executions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListBatchJobRestartPoints = schema.operation({
   id = id.from("com.amazonaws.m2", "ListBatchJobRestartPoints"),
   input = M.ListBatchJobRestartPointsInput,
   output = M.ListBatchJobRestartPointsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{applicationId}/batch-job-executions/{executionId}/steps" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDataSetExportHistory = schema.operation({
   id = id.from("com.amazonaws.m2", "ListDataSetExportHistory"),
   input = M.ListDataSetExportHistoryInput,
   output = M.ListDataSetExportHistoryOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{applicationId}/dataset-export-tasks" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDataSetImportHistory = schema.operation({
   id = id.from("com.amazonaws.m2", "ListDataSetImportHistory"),
   input = M.ListDataSetImportHistoryInput,
   output = M.ListDataSetImportHistoryOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{applicationId}/dataset-import-tasks" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDataSets = schema.operation({
   id = id.from("com.amazonaws.m2", "ListDataSets"),
   input = M.ListDataSetsInput,
   output = M.ListDataSetsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{applicationId}/datasets" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDeployments = schema.operation({
   id = id.from("com.amazonaws.m2", "ListDeployments"),
   input = M.ListDeploymentsInput,
   output = M.ListDeploymentsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{applicationId}/deployments" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListEngineVersions = schema.operation({
   id = id.from("com.amazonaws.m2", "ListEngineVersions"),
   input = M.ListEngineVersionsInput,
   output = M.ListEngineVersionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/engine-versions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListEnvironments = schema.operation({
   id = id.from("com.amazonaws.m2", "ListEnvironments"),
   input = M.ListEnvironmentsInput,
   output = M.ListEnvironmentsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/environments" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.m2", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartApplication = schema.operation({
   id = id.from("com.amazonaws.m2", "StartApplication"),
   input = M.StartApplicationInput,
   output = M.StartApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/applications/{applicationId}/start" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartBatchJob = schema.operation({
   id = id.from("com.amazonaws.m2", "StartBatchJob"),
   input = M.StartBatchJobInput,
   output = M.StartBatchJobOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/applications/{applicationId}/batch-job" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopApplication = schema.operation({
   id = id.from("com.amazonaws.m2", "StopApplication"),
   input = M.StopApplicationInput,
   output = M.StopApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/applications/{applicationId}/stop" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.m2", "TagResource"),
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
   id = id.from("com.amazonaws.m2", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateApplication = schema.operation({
   id = id.from("com.amazonaws.m2", "UpdateApplication"),
   input = M.UpdateApplicationInput,
   output = M.UpdateApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/applications/{applicationId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateEnvironment = schema.operation({
   id = id.from("com.amazonaws.m2", "UpdateEnvironment"),
   input = M.UpdateEnvironmentInput,
   output = M.UpdateEnvironmentOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/environments/{environmentId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
