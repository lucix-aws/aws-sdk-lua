

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.supplychain"

local M = {}

M.DataIntegrationFlowSourceList = schema.new({ type = "list", list_member = M.DataIntegrationFlowSource })

M.DataIntegrationEventList = schema.new({ type = "list", list_member = M.DataIntegrationEvent })

M.DataIntegrationFlowExecutionList = schema.new({ type = "list", list_member = M.DataIntegrationFlowExecution })

M.TagMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.DataLakeDatasetSchemaFieldList = schema.new({ type = "list", list_member = M.DataLakeDatasetSchemaField })

M.DataLakeDatasetPrimaryKeyFieldList = schema.new({ type = "list", list_member = M.DataLakeDatasetPrimaryKeyField })

M.DataLakeDatasetPartitionFieldList = schema.new({ type = "list", list_member = M.DataLakeDatasetPartitionField })

M.DataIntegrationFlowList = schema.new({ type = "list", list_member = M.DataIntegrationFlow })

M.DataLakeDatasetList = schema.new({ type = "list", list_member = M.DataLakeDataset })

M.DataLakeNamespaceList = schema.new({ type = "list", list_member = M.DataLakeNamespace })

M.InstanceNameList = schema.new({ type = "list", list_member = prelude.String })

M.InstanceStateList = schema.new({ type = "list", list_member = prelude.String })

M.InstanceList = schema.new({ type = "list", list_member = M.Instance })

M.DataIntegrationFlowFieldPriorityDedupeFieldList = schema.new({ type = "list", list_member = M.DataIntegrationFlowFieldPriorityDedupeField })

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
      }),
   },
})

M.BillOfMaterialsImportJob = schema.new({
   id = id.from(_N, "BillOfMaterialsImportJob"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "BillOfMaterialsImportJob", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      jobId = schema.new({
         id = id.from(_N, "BillOfMaterialsImportJob", "jobId"),
         type = "string",
         name = "jobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "BillOfMaterialsImportJob", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      s3uri = schema.new({
         id = id.from(_N, "BillOfMaterialsImportJob", "s3uri"),
         type = "string",
         name = "s3uri",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      message = schema.new({
         id = id.from(_N, "BillOfMaterialsImportJob", "message"),
         type = "string",
         name = "message",
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
      }),
   },
})

M.CreateBillOfMaterialsImportJobInput = schema.new({
   id = id.from(_N, "CreateBillOfMaterialsImportJobRequest"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "CreateBillOfMaterialsImportJobInput", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      s3uri = schema.new({
         id = id.from(_N, "CreateBillOfMaterialsImportJobInput", "s3uri"),
         type = "string",
         name = "s3uri",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      clientToken = schema.new({
         id = id.from(_N, "CreateBillOfMaterialsImportJobInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CreateBillOfMaterialsImportJobOutput = schema.new({
   id = id.from(_N, "CreateBillOfMaterialsImportJobResponse"),
   type = "structure",
   members = {
      jobId = schema.new({
         id = id.from(_N, "CreateBillOfMaterialsImportJobOutput", "jobId"),
         type = "string",
         name = "jobId",
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
      }),
   },
})

M.GetBillOfMaterialsImportJobInput = schema.new({
   id = id.from(_N, "GetBillOfMaterialsImportJobRequest"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "GetBillOfMaterialsImportJobInput", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      jobId = schema.new({
         id = id.from(_N, "GetBillOfMaterialsImportJobInput", "jobId"),
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

M.GetBillOfMaterialsImportJobOutput = schema.new({
   id = id.from(_N, "GetBillOfMaterialsImportJobResponse"),
   type = "structure",
   members = {
      job = schema.new({
         id = id.from(_N, "GetBillOfMaterialsImportJobOutput", "job"),
         type = "structure",
         name = "job",
         target_id = id.from(_N, "BillOfMaterialsImportJob"),
         target = M.BillOfMaterialsImportJob,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DataIntegrationFlowFieldPriorityDedupeField = schema.new({
   id = id.from(_N, "DataIntegrationFlowFieldPriorityDedupeField"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "DataIntegrationFlowFieldPriorityDedupeField", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sortOrder = schema.new({
         id = id.from(_N, "DataIntegrationFlowFieldPriorityDedupeField", "sortOrder"),
         type = "string",
         name = "sortOrder",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration = schema.new({
   id = id.from(_N, "DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration"),
   type = "structure",
   members = {
      fields = schema.new({
         id = id.from(_N, "DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration", "fields"),
         type = "list",
         name = "fields",
         target_id = prelude.Document.id,
         list_member = M.DataIntegrationFlowFieldPriorityDedupeField,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DataIntegrationFlowDedupeStrategy = schema.new({
   id = id.from(_N, "DataIntegrationFlowDedupeStrategy"),
   type = "structure",
   members = {
      type = schema.new({
         id = id.from(_N, "DataIntegrationFlowDedupeStrategy", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      fieldPriority = schema.new({
         id = id.from(_N, "DataIntegrationFlowDedupeStrategy", "fieldPriority"),
         type = "structure",
         name = "fieldPriority",
         target_id = id.from(_N, "DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration"),
         target = M.DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration,
      }),
   },
})

M.DataIntegrationFlowDatasetOptions = schema.new({
   id = id.from(_N, "DataIntegrationFlowDatasetOptions"),
   type = "structure",
   members = {
      loadType = schema.new({
         id = id.from(_N, "DataIntegrationFlowDatasetOptions", "loadType"),
         type = "string",
         name = "loadType",
         target_id = prelude.String.id,
      }),
      dedupeRecords = schema.new({
         id = id.from(_N, "DataIntegrationFlowDatasetOptions", "dedupeRecords"),
         type = "boolean",
         name = "dedupeRecords",
         target_id = prelude.Boolean.id,
      }),
      dedupeStrategy = schema.new({
         id = id.from(_N, "DataIntegrationFlowDatasetOptions", "dedupeStrategy"),
         type = "structure",
         name = "dedupeStrategy",
         target_id = id.from(_N, "DataIntegrationFlowDedupeStrategy"),
         target = M.DataIntegrationFlowDedupeStrategy,
      }),
   },
})

M.DataIntegrationFlowDatasetSourceConfiguration = schema.new({
   id = id.from(_N, "DataIntegrationFlowDatasetSourceConfiguration"),
   type = "structure",
   members = {
      datasetIdentifier = schema.new({
         id = id.from(_N, "DataIntegrationFlowDatasetSourceConfiguration", "datasetIdentifier"),
         type = "string",
         name = "datasetIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      options = schema.new({
         id = id.from(_N, "DataIntegrationFlowDatasetSourceConfiguration", "options"),
         type = "structure",
         name = "options",
         target_id = id.from(_N, "DataIntegrationFlowDatasetOptions"),
         target = M.DataIntegrationFlowDatasetOptions,
      }),
   },
})

M.DataIntegrationFlowS3Options = schema.new({
   id = id.from(_N, "DataIntegrationFlowS3Options"),
   type = "structure",
   members = {
      fileType = schema.new({
         id = id.from(_N, "DataIntegrationFlowS3Options", "fileType"),
         type = "string",
         name = "fileType",
         target_id = prelude.String.id,
      }),
   },
})

M.DataIntegrationFlowS3SourceConfiguration = schema.new({
   id = id.from(_N, "DataIntegrationFlowS3SourceConfiguration"),
   type = "structure",
   members = {
      bucketName = schema.new({
         id = id.from(_N, "DataIntegrationFlowS3SourceConfiguration", "bucketName"),
         type = "string",
         name = "bucketName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      prefix = schema.new({
         id = id.from(_N, "DataIntegrationFlowS3SourceConfiguration", "prefix"),
         type = "string",
         name = "prefix",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      options = schema.new({
         id = id.from(_N, "DataIntegrationFlowS3SourceConfiguration", "options"),
         type = "structure",
         name = "options",
         target_id = id.from(_N, "DataIntegrationFlowS3Options"),
         target = M.DataIntegrationFlowS3Options,
      }),
   },
})

M.DataIntegrationFlowSource = schema.new({
   id = id.from(_N, "DataIntegrationFlowSource"),
   type = "structure",
   members = {
      sourceType = schema.new({
         id = id.from(_N, "DataIntegrationFlowSource", "sourceType"),
         type = "string",
         name = "sourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sourceName = schema.new({
         id = id.from(_N, "DataIntegrationFlowSource", "sourceName"),
         type = "string",
         name = "sourceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      s3Source = schema.new({
         id = id.from(_N, "DataIntegrationFlowSource", "s3Source"),
         type = "structure",
         name = "s3Source",
         target_id = id.from(_N, "DataIntegrationFlowS3SourceConfiguration"),
         target = M.DataIntegrationFlowS3SourceConfiguration,
      }),
      datasetSource = schema.new({
         id = id.from(_N, "DataIntegrationFlowSource", "datasetSource"),
         type = "structure",
         name = "datasetSource",
         target_id = id.from(_N, "DataIntegrationFlowDatasetSourceConfiguration"),
         target = M.DataIntegrationFlowDatasetSourceConfiguration,
      }),
   },
})

M.DataIntegrationFlowDatasetTargetConfiguration = schema.new({
   id = id.from(_N, "DataIntegrationFlowDatasetTargetConfiguration"),
   type = "structure",
   members = {
      datasetIdentifier = schema.new({
         id = id.from(_N, "DataIntegrationFlowDatasetTargetConfiguration", "datasetIdentifier"),
         type = "string",
         name = "datasetIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      options = schema.new({
         id = id.from(_N, "DataIntegrationFlowDatasetTargetConfiguration", "options"),
         type = "structure",
         name = "options",
         target_id = id.from(_N, "DataIntegrationFlowDatasetOptions"),
         target = M.DataIntegrationFlowDatasetOptions,
      }),
   },
})

M.DataIntegrationFlowS3TargetConfiguration = schema.new({
   id = id.from(_N, "DataIntegrationFlowS3TargetConfiguration"),
   type = "structure",
   members = {
      bucketName = schema.new({
         id = id.from(_N, "DataIntegrationFlowS3TargetConfiguration", "bucketName"),
         type = "string",
         name = "bucketName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      prefix = schema.new({
         id = id.from(_N, "DataIntegrationFlowS3TargetConfiguration", "prefix"),
         type = "string",
         name = "prefix",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      options = schema.new({
         id = id.from(_N, "DataIntegrationFlowS3TargetConfiguration", "options"),
         type = "structure",
         name = "options",
         target_id = id.from(_N, "DataIntegrationFlowS3Options"),
         target = M.DataIntegrationFlowS3Options,
      }),
   },
})

M.DataIntegrationFlowTarget = schema.new({
   id = id.from(_N, "DataIntegrationFlowTarget"),
   type = "structure",
   members = {
      targetType = schema.new({
         id = id.from(_N, "DataIntegrationFlowTarget", "targetType"),
         type = "string",
         name = "targetType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      s3Target = schema.new({
         id = id.from(_N, "DataIntegrationFlowTarget", "s3Target"),
         type = "structure",
         name = "s3Target",
         target_id = id.from(_N, "DataIntegrationFlowS3TargetConfiguration"),
         target = M.DataIntegrationFlowS3TargetConfiguration,
      }),
      datasetTarget = schema.new({
         id = id.from(_N, "DataIntegrationFlowTarget", "datasetTarget"),
         type = "structure",
         name = "datasetTarget",
         target_id = id.from(_N, "DataIntegrationFlowDatasetTargetConfiguration"),
         target = M.DataIntegrationFlowDatasetTargetConfiguration,
      }),
   },
})

M.DataIntegrationFlowSQLTransformationConfiguration = schema.new({
   id = id.from(_N, "DataIntegrationFlowSQLTransformationConfiguration"),
   type = "structure",
   members = {
      query = schema.new({
         id = id.from(_N, "DataIntegrationFlowSQLTransformationConfiguration", "query"),
         type = "string",
         name = "query",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DataIntegrationFlowTransformation = schema.new({
   id = id.from(_N, "DataIntegrationFlowTransformation"),
   type = "structure",
   members = {
      transformationType = schema.new({
         id = id.from(_N, "DataIntegrationFlowTransformation", "transformationType"),
         type = "string",
         name = "transformationType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sqlTransformation = schema.new({
         id = id.from(_N, "DataIntegrationFlowTransformation", "sqlTransformation"),
         type = "structure",
         name = "sqlTransformation",
         target_id = id.from(_N, "DataIntegrationFlowSQLTransformationConfiguration"),
         target = M.DataIntegrationFlowSQLTransformationConfiguration,
      }),
   },
})

M.CreateDataIntegrationFlowInput = schema.new({
   id = id.from(_N, "CreateDataIntegrationFlowRequest"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "CreateDataIntegrationFlowInput", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "CreateDataIntegrationFlowInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      sources = schema.new({
         id = id.from(_N, "CreateDataIntegrationFlowInput", "sources"),
         type = "list",
         name = "sources",
         target_id = prelude.Document.id,
         list_member = M.DataIntegrationFlowSource,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      transformation = schema.new({
         id = id.from(_N, "CreateDataIntegrationFlowInput", "transformation"),
         type = "structure",
         name = "transformation",
         target_id = id.from(_N, "DataIntegrationFlowTransformation"),
         target = M.DataIntegrationFlowTransformation,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      target = schema.new({
         id = id.from(_N, "CreateDataIntegrationFlowInput", "target"),
         type = "structure",
         name = "target",
         target_id = id.from(_N, "DataIntegrationFlowTarget"),
         target = M.DataIntegrationFlowTarget,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "CreateDataIntegrationFlowInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreateDataIntegrationFlowOutput = schema.new({
   id = id.from(_N, "CreateDataIntegrationFlowResponse"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "CreateDataIntegrationFlowOutput", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "CreateDataIntegrationFlowOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DataLakeDatasetPartitionFieldTransform = schema.new({
   id = id.from(_N, "DataLakeDatasetPartitionFieldTransform"),
   type = "structure",
   members = {
      type = schema.new({
         id = id.from(_N, "DataLakeDatasetPartitionFieldTransform", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DataLakeDatasetPartitionField = schema.new({
   id = id.from(_N, "DataLakeDatasetPartitionField"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "DataLakeDatasetPartitionField", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      transform = schema.new({
         id = id.from(_N, "DataLakeDatasetPartitionField", "transform"),
         type = "structure",
         name = "transform",
         target_id = id.from(_N, "DataLakeDatasetPartitionFieldTransform"),
         target = M.DataLakeDatasetPartitionFieldTransform,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DataLakeDatasetPartitionSpec = schema.new({
   id = id.from(_N, "DataLakeDatasetPartitionSpec"),
   type = "structure",
   members = {
      fields = schema.new({
         id = id.from(_N, "DataLakeDatasetPartitionSpec", "fields"),
         type = "list",
         name = "fields",
         target_id = prelude.Document.id,
         list_member = M.DataLakeDatasetPartitionField,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DataLakeDatasetSchemaField = schema.new({
   id = id.from(_N, "DataLakeDatasetSchemaField"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "DataLakeDatasetSchemaField", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      type = schema.new({
         id = id.from(_N, "DataLakeDatasetSchemaField", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      isRequired = schema.new({
         id = id.from(_N, "DataLakeDatasetSchemaField", "isRequired"),
         type = "boolean",
         name = "isRequired",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DataLakeDatasetPrimaryKeyField = schema.new({
   id = id.from(_N, "DataLakeDatasetPrimaryKeyField"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "DataLakeDatasetPrimaryKeyField", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DataLakeDatasetSchema = schema.new({
   id = id.from(_N, "DataLakeDatasetSchema"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "DataLakeDatasetSchema", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      fields = schema.new({
         id = id.from(_N, "DataLakeDatasetSchema", "fields"),
         type = "list",
         name = "fields",
         target_id = prelude.Document.id,
         list_member = M.DataLakeDatasetSchemaField,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      primaryKeys = schema.new({
         id = id.from(_N, "DataLakeDatasetSchema", "primaryKeys"),
         type = "list",
         name = "primaryKeys",
         target_id = prelude.Document.id,
         list_member = M.DataLakeDatasetPrimaryKeyField,
      }),
   },
})

M.CreateDataLakeDatasetInput = schema.new({
   id = id.from(_N, "CreateDataLakeDatasetRequest"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "CreateDataLakeDatasetInput", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      namespace = schema.new({
         id = id.from(_N, "CreateDataLakeDatasetInput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "CreateDataLakeDatasetInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      schema = schema.new({
         id = id.from(_N, "CreateDataLakeDatasetInput", "schema"),
         type = "structure",
         name = "schema",
         target_id = id.from(_N, "DataLakeDatasetSchema"),
         target = M.DataLakeDatasetSchema,
      }),
      description = schema.new({
         id = id.from(_N, "CreateDataLakeDatasetInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      partitionSpec = schema.new({
         id = id.from(_N, "CreateDataLakeDatasetInput", "partitionSpec"),
         type = "structure",
         name = "partitionSpec",
         target_id = id.from(_N, "DataLakeDatasetPartitionSpec"),
         target = M.DataLakeDatasetPartitionSpec,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateDataLakeDatasetInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.DataLakeDataset = schema.new({
   id = id.from(_N, "DataLakeDataset"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "DataLakeDataset", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      namespace = schema.new({
         id = id.from(_N, "DataLakeDataset", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "DataLakeDataset", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      arn = schema.new({
         id = id.from(_N, "DataLakeDataset", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      schema = schema.new({
         id = id.from(_N, "DataLakeDataset", "schema"),
         type = "structure",
         name = "schema",
         target_id = id.from(_N, "DataLakeDatasetSchema"),
         target = M.DataLakeDatasetSchema,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "DataLakeDataset", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      partitionSpec = schema.new({
         id = id.from(_N, "DataLakeDataset", "partitionSpec"),
         type = "structure",
         name = "partitionSpec",
         target_id = id.from(_N, "DataLakeDatasetPartitionSpec"),
         target = M.DataLakeDatasetPartitionSpec,
      }),
      createdTime = schema.new({
         id = id.from(_N, "DataLakeDataset", "createdTime"),
         type = "timestamp",
         name = "createdTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      lastModifiedTime = schema.new({
         id = id.from(_N, "DataLakeDataset", "lastModifiedTime"),
         type = "timestamp",
         name = "lastModifiedTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateDataLakeDatasetOutput = schema.new({
   id = id.from(_N, "CreateDataLakeDatasetResponse"),
   type = "structure",
   members = {
      dataset = schema.new({
         id = id.from(_N, "CreateDataLakeDatasetOutput", "dataset"),
         type = "structure",
         name = "dataset",
         target_id = id.from(_N, "DataLakeDataset"),
         target = M.DataLakeDataset,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateDataLakeNamespaceInput = schema.new({
   id = id.from(_N, "CreateDataLakeNamespaceRequest"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "CreateDataLakeNamespaceInput", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "CreateDataLakeNamespaceInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "CreateDataLakeNamespaceInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateDataLakeNamespaceInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.DataLakeNamespace = schema.new({
   id = id.from(_N, "DataLakeNamespace"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "DataLakeNamespace", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "DataLakeNamespace", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      arn = schema.new({
         id = id.from(_N, "DataLakeNamespace", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "DataLakeNamespace", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      createdTime = schema.new({
         id = id.from(_N, "DataLakeNamespace", "createdTime"),
         type = "timestamp",
         name = "createdTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      lastModifiedTime = schema.new({
         id = id.from(_N, "DataLakeNamespace", "lastModifiedTime"),
         type = "timestamp",
         name = "lastModifiedTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateDataLakeNamespaceOutput = schema.new({
   id = id.from(_N, "CreateDataLakeNamespaceResponse"),
   type = "structure",
   members = {
      namespace = schema.new({
         id = id.from(_N, "CreateDataLakeNamespaceOutput", "namespace"),
         type = "structure",
         name = "namespace",
         target_id = id.from(_N, "DataLakeNamespace"),
         target = M.DataLakeNamespace,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateInstanceInput = schema.new({
   id = id.from(_N, "CreateInstanceRequest"),
   type = "structure",
   members = {
      instanceName = schema.new({
         id = id.from(_N, "CreateInstanceInput", "instanceName"),
         type = "string",
         name = "instanceName",
         target_id = prelude.String.id,
      }),
      instanceDescription = schema.new({
         id = id.from(_N, "CreateInstanceInput", "instanceDescription"),
         type = "string",
         name = "instanceDescription",
         target_id = prelude.String.id,
      }),
      kmsKeyArn = schema.new({
         id = id.from(_N, "CreateInstanceInput", "kmsKeyArn"),
         type = "string",
         name = "kmsKeyArn",
         target_id = prelude.String.id,
      }),
      webAppDnsDomain = schema.new({
         id = id.from(_N, "CreateInstanceInput", "webAppDnsDomain"),
         type = "string",
         name = "webAppDnsDomain",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateInstanceInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      clientToken = schema.new({
         id = id.from(_N, "CreateInstanceInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.Instance = schema.new({
   id = id.from(_N, "Instance"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "Instance", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      awsAccountId = schema.new({
         id = id.from(_N, "Instance", "awsAccountId"),
         type = "string",
         name = "awsAccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      state = schema.new({
         id = id.from(_N, "Instance", "state"),
         type = "string",
         name = "state",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      errorMessage = schema.new({
         id = id.from(_N, "Instance", "errorMessage"),
         type = "string",
         name = "errorMessage",
         target_id = prelude.String.id,
      }),
      webAppDnsDomain = schema.new({
         id = id.from(_N, "Instance", "webAppDnsDomain"),
         type = "string",
         name = "webAppDnsDomain",
         target_id = prelude.String.id,
      }),
      createdTime = schema.new({
         id = id.from(_N, "Instance", "createdTime"),
         type = "timestamp",
         name = "createdTime",
         target_id = prelude.Timestamp.id,
      }),
      lastModifiedTime = schema.new({
         id = id.from(_N, "Instance", "lastModifiedTime"),
         type = "timestamp",
         name = "lastModifiedTime",
         target_id = prelude.Timestamp.id,
      }),
      instanceName = schema.new({
         id = id.from(_N, "Instance", "instanceName"),
         type = "string",
         name = "instanceName",
         target_id = prelude.String.id,
      }),
      instanceDescription = schema.new({
         id = id.from(_N, "Instance", "instanceDescription"),
         type = "string",
         name = "instanceDescription",
         target_id = prelude.String.id,
      }),
      kmsKeyArn = schema.new({
         id = id.from(_N, "Instance", "kmsKeyArn"),
         type = "string",
         name = "kmsKeyArn",
         target_id = prelude.String.id,
      }),
      versionNumber = schema.new({
         id = id.from(_N, "Instance", "versionNumber"),
         type = "double",
         name = "versionNumber",
         target_id = prelude.Double.id,
      }),
   },
})

M.CreateInstanceOutput = schema.new({
   id = id.from(_N, "CreateInstanceResponse"),
   type = "structure",
   members = {
      instance = schema.new({
         id = id.from(_N, "CreateInstanceOutput", "instance"),
         type = "structure",
         name = "instance",
         target_id = id.from(_N, "Instance"),
         target = M.Instance,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DataIntegrationEventDatasetLoadExecutionDetails = schema.new({
   id = id.from(_N, "DataIntegrationEventDatasetLoadExecutionDetails"),
   type = "structure",
   members = {
      status = schema.new({
         id = id.from(_N, "DataIntegrationEventDatasetLoadExecutionDetails", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      message = schema.new({
         id = id.from(_N, "DataIntegrationEventDatasetLoadExecutionDetails", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.DataIntegrationEventDatasetTargetDetails = schema.new({
   id = id.from(_N, "DataIntegrationEventDatasetTargetDetails"),
   type = "structure",
   members = {
      datasetIdentifier = schema.new({
         id = id.from(_N, "DataIntegrationEventDatasetTargetDetails", "datasetIdentifier"),
         type = "string",
         name = "datasetIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      operationType = schema.new({
         id = id.from(_N, "DataIntegrationEventDatasetTargetDetails", "operationType"),
         type = "string",
         name = "operationType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      datasetLoadExecution = schema.new({
         id = id.from(_N, "DataIntegrationEventDatasetTargetDetails", "datasetLoadExecution"),
         type = "structure",
         name = "datasetLoadExecution",
         target_id = id.from(_N, "DataIntegrationEventDatasetLoadExecutionDetails"),
         target = M.DataIntegrationEventDatasetLoadExecutionDetails,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DataIntegrationEvent = schema.new({
   id = id.from(_N, "DataIntegrationEvent"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "DataIntegrationEvent", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      eventId = schema.new({
         id = id.from(_N, "DataIntegrationEvent", "eventId"),
         type = "string",
         name = "eventId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      eventType = schema.new({
         id = id.from(_N, "DataIntegrationEvent", "eventType"),
         type = "string",
         name = "eventType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      eventGroupId = schema.new({
         id = id.from(_N, "DataIntegrationEvent", "eventGroupId"),
         type = "string",
         name = "eventGroupId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      eventTimestamp = schema.new({
         id = id.from(_N, "DataIntegrationEvent", "eventTimestamp"),
         type = "timestamp",
         name = "eventTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      datasetTargetDetails = schema.new({
         id = id.from(_N, "DataIntegrationEvent", "datasetTargetDetails"),
         type = "structure",
         name = "datasetTargetDetails",
         target_id = id.from(_N, "DataIntegrationEventDatasetTargetDetails"),
         target = M.DataIntegrationEventDatasetTargetDetails,
      }),
   },
})

M.DataIntegrationEventDatasetTargetConfiguration = schema.new({
   id = id.from(_N, "DataIntegrationEventDatasetTargetConfiguration"),
   type = "structure",
   members = {
      datasetIdentifier = schema.new({
         id = id.from(_N, "DataIntegrationEventDatasetTargetConfiguration", "datasetIdentifier"),
         type = "string",
         name = "datasetIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      operationType = schema.new({
         id = id.from(_N, "DataIntegrationEventDatasetTargetConfiguration", "operationType"),
         type = "string",
         name = "operationType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DataIntegrationFlow = schema.new({
   id = id.from(_N, "DataIntegrationFlow"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "DataIntegrationFlow", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "DataIntegrationFlow", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sources = schema.new({
         id = id.from(_N, "DataIntegrationFlow", "sources"),
         type = "list",
         name = "sources",
         target_id = prelude.Document.id,
         list_member = M.DataIntegrationFlowSource,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      transformation = schema.new({
         id = id.from(_N, "DataIntegrationFlow", "transformation"),
         type = "structure",
         name = "transformation",
         target_id = id.from(_N, "DataIntegrationFlowTransformation"),
         target = M.DataIntegrationFlowTransformation,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      target = schema.new({
         id = id.from(_N, "DataIntegrationFlow", "target"),
         type = "structure",
         name = "target",
         target_id = id.from(_N, "DataIntegrationFlowTarget"),
         target = M.DataIntegrationFlowTarget,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      createdTime = schema.new({
         id = id.from(_N, "DataIntegrationFlow", "createdTime"),
         type = "timestamp",
         name = "createdTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      lastModifiedTime = schema.new({
         id = id.from(_N, "DataIntegrationFlow", "lastModifiedTime"),
         type = "timestamp",
         name = "lastModifiedTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DataIntegrationFlowDatasetSource = schema.new({
   id = id.from(_N, "DataIntegrationFlowDatasetSource"),
   type = "structure",
   members = {
      datasetIdentifier = schema.new({
         id = id.from(_N, "DataIntegrationFlowDatasetSource", "datasetIdentifier"),
         type = "string",
         name = "datasetIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DataIntegrationFlowExecutionOutputMetadata = schema.new({
   id = id.from(_N, "DataIntegrationFlowExecutionOutputMetadata"),
   type = "structure",
   members = {
      diagnosticReportsRootS3URI = schema.new({
         id = id.from(_N, "DataIntegrationFlowExecutionOutputMetadata", "diagnosticReportsRootS3URI"),
         type = "string",
         name = "diagnosticReportsRootS3URI",
         target_id = prelude.String.id,
      }),
   },
})

M.DataIntegrationFlowS3Source = schema.new({
   id = id.from(_N, "DataIntegrationFlowS3Source"),
   type = "structure",
   members = {
      bucketName = schema.new({
         id = id.from(_N, "DataIntegrationFlowS3Source", "bucketName"),
         type = "string",
         name = "bucketName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      key = schema.new({
         id = id.from(_N, "DataIntegrationFlowS3Source", "key"),
         type = "string",
         name = "key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DataIntegrationFlowExecutionSourceInfo = schema.new({
   id = id.from(_N, "DataIntegrationFlowExecutionSourceInfo"),
   type = "structure",
   members = {
      sourceType = schema.new({
         id = id.from(_N, "DataIntegrationFlowExecutionSourceInfo", "sourceType"),
         type = "string",
         name = "sourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      s3Source = schema.new({
         id = id.from(_N, "DataIntegrationFlowExecutionSourceInfo", "s3Source"),
         type = "structure",
         name = "s3Source",
         target_id = id.from(_N, "DataIntegrationFlowS3Source"),
         target = M.DataIntegrationFlowS3Source,
      }),
      datasetSource = schema.new({
         id = id.from(_N, "DataIntegrationFlowExecutionSourceInfo", "datasetSource"),
         type = "structure",
         name = "datasetSource",
         target_id = id.from(_N, "DataIntegrationFlowDatasetSource"),
         target = M.DataIntegrationFlowDatasetSource,
      }),
   },
})

M.DataIntegrationFlowExecution = schema.new({
   id = id.from(_N, "DataIntegrationFlowExecution"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "DataIntegrationFlowExecution", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      flowName = schema.new({
         id = id.from(_N, "DataIntegrationFlowExecution", "flowName"),
         type = "string",
         name = "flowName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      executionId = schema.new({
         id = id.from(_N, "DataIntegrationFlowExecution", "executionId"),
         type = "string",
         name = "executionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "DataIntegrationFlowExecution", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      sourceInfo = schema.new({
         id = id.from(_N, "DataIntegrationFlowExecution", "sourceInfo"),
         type = "structure",
         name = "sourceInfo",
         target_id = id.from(_N, "DataIntegrationFlowExecutionSourceInfo"),
         target = M.DataIntegrationFlowExecutionSourceInfo,
      }),
      message = schema.new({
         id = id.from(_N, "DataIntegrationFlowExecution", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
      startTime = schema.new({
         id = id.from(_N, "DataIntegrationFlowExecution", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
      }),
      endTime = schema.new({
         id = id.from(_N, "DataIntegrationFlowExecution", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
      }),
      outputMetadata = schema.new({
         id = id.from(_N, "DataIntegrationFlowExecution", "outputMetadata"),
         type = "structure",
         name = "outputMetadata",
         target_id = id.from(_N, "DataIntegrationFlowExecutionOutputMetadata"),
         target = M.DataIntegrationFlowExecutionOutputMetadata,
      }),
   },
})

M.DeleteDataIntegrationFlowInput = schema.new({
   id = id.from(_N, "DeleteDataIntegrationFlowRequest"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "DeleteDataIntegrationFlowInput", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "DeleteDataIntegrationFlowInput", "name"),
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

M.DeleteDataIntegrationFlowOutput = schema.new({
   id = id.from(_N, "DeleteDataIntegrationFlowResponse"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "DeleteDataIntegrationFlowOutput", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "DeleteDataIntegrationFlowOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetDataIntegrationFlowInput = schema.new({
   id = id.from(_N, "GetDataIntegrationFlowRequest"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "GetDataIntegrationFlowInput", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "GetDataIntegrationFlowInput", "name"),
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

M.GetDataIntegrationFlowOutput = schema.new({
   id = id.from(_N, "GetDataIntegrationFlowResponse"),
   type = "structure",
   members = {
      flow = schema.new({
         id = id.from(_N, "GetDataIntegrationFlowOutput", "flow"),
         type = "structure",
         name = "flow",
         target_id = id.from(_N, "DataIntegrationFlow"),
         target = M.DataIntegrationFlow,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListDataIntegrationFlowsInput = schema.new({
   id = id.from(_N, "ListDataIntegrationFlowsRequest"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "ListDataIntegrationFlowsInput", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListDataIntegrationFlowsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListDataIntegrationFlowsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 10 },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListDataIntegrationFlowsOutput = schema.new({
   id = id.from(_N, "ListDataIntegrationFlowsResponse"),
   type = "structure",
   members = {
      flows = schema.new({
         id = id.from(_N, "ListDataIntegrationFlowsOutput", "flows"),
         type = "list",
         name = "flows",
         target_id = prelude.Document.id,
         list_member = M.DataIntegrationFlow,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListDataIntegrationFlowsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateDataIntegrationFlowInput = schema.new({
   id = id.from(_N, "UpdateDataIntegrationFlowRequest"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "UpdateDataIntegrationFlowInput", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "UpdateDataIntegrationFlowInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      sources = schema.new({
         id = id.from(_N, "UpdateDataIntegrationFlowInput", "sources"),
         type = "list",
         name = "sources",
         target_id = prelude.Document.id,
         list_member = M.DataIntegrationFlowSource,
      }),
      transformation = schema.new({
         id = id.from(_N, "UpdateDataIntegrationFlowInput", "transformation"),
         type = "structure",
         name = "transformation",
         target_id = id.from(_N, "DataIntegrationFlowTransformation"),
         target = M.DataIntegrationFlowTransformation,
      }),
      target = schema.new({
         id = id.from(_N, "UpdateDataIntegrationFlowInput", "target"),
         type = "structure",
         name = "target",
         target_id = id.from(_N, "DataIntegrationFlowTarget"),
         target = M.DataIntegrationFlowTarget,
      }),
   },
})

M.UpdateDataIntegrationFlowOutput = schema.new({
   id = id.from(_N, "UpdateDataIntegrationFlowResponse"),
   type = "structure",
   members = {
      flow = schema.new({
         id = id.from(_N, "UpdateDataIntegrationFlowOutput", "flow"),
         type = "structure",
         name = "flow",
         target_id = id.from(_N, "DataIntegrationFlow"),
         target = M.DataIntegrationFlow,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteDataLakeDatasetInput = schema.new({
   id = id.from(_N, "DeleteDataLakeDatasetRequest"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "DeleteDataLakeDatasetInput", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      namespace = schema.new({
         id = id.from(_N, "DeleteDataLakeDatasetInput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "DeleteDataLakeDatasetInput", "name"),
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

M.DeleteDataLakeDatasetOutput = schema.new({
   id = id.from(_N, "DeleteDataLakeDatasetResponse"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "DeleteDataLakeDatasetOutput", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      namespace = schema.new({
         id = id.from(_N, "DeleteDataLakeDatasetOutput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "DeleteDataLakeDatasetOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetDataLakeDatasetInput = schema.new({
   id = id.from(_N, "GetDataLakeDatasetRequest"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "GetDataLakeDatasetInput", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      namespace = schema.new({
         id = id.from(_N, "GetDataLakeDatasetInput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "GetDataLakeDatasetInput", "name"),
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

M.GetDataLakeDatasetOutput = schema.new({
   id = id.from(_N, "GetDataLakeDatasetResponse"),
   type = "structure",
   members = {
      dataset = schema.new({
         id = id.from(_N, "GetDataLakeDatasetOutput", "dataset"),
         type = "structure",
         name = "dataset",
         target_id = id.from(_N, "DataLakeDataset"),
         target = M.DataLakeDataset,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListDataLakeDatasetsInput = schema.new({
   id = id.from(_N, "ListDataLakeDatasetsRequest"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "ListDataLakeDatasetsInput", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      namespace = schema.new({
         id = id.from(_N, "ListDataLakeDatasetsInput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListDataLakeDatasetsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListDataLakeDatasetsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 10 },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListDataLakeDatasetsOutput = schema.new({
   id = id.from(_N, "ListDataLakeDatasetsResponse"),
   type = "structure",
   members = {
      datasets = schema.new({
         id = id.from(_N, "ListDataLakeDatasetsOutput", "datasets"),
         type = "list",
         name = "datasets",
         target_id = prelude.Document.id,
         list_member = M.DataLakeDataset,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListDataLakeDatasetsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateDataLakeDatasetInput = schema.new({
   id = id.from(_N, "UpdateDataLakeDatasetRequest"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "UpdateDataLakeDatasetInput", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      namespace = schema.new({
         id = id.from(_N, "UpdateDataLakeDatasetInput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "UpdateDataLakeDatasetInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "UpdateDataLakeDatasetInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateDataLakeDatasetOutput = schema.new({
   id = id.from(_N, "UpdateDataLakeDatasetResponse"),
   type = "structure",
   members = {
      dataset = schema.new({
         id = id.from(_N, "UpdateDataLakeDatasetOutput", "dataset"),
         type = "structure",
         name = "dataset",
         target_id = id.from(_N, "DataLakeDataset"),
         target = M.DataLakeDataset,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteDataLakeNamespaceInput = schema.new({
   id = id.from(_N, "DeleteDataLakeNamespaceRequest"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "DeleteDataLakeNamespaceInput", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "DeleteDataLakeNamespaceInput", "name"),
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

M.DeleteDataLakeNamespaceOutput = schema.new({
   id = id.from(_N, "DeleteDataLakeNamespaceResponse"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "DeleteDataLakeNamespaceOutput", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "DeleteDataLakeNamespaceOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetDataLakeNamespaceInput = schema.new({
   id = id.from(_N, "GetDataLakeNamespaceRequest"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "GetDataLakeNamespaceInput", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "GetDataLakeNamespaceInput", "name"),
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

M.GetDataLakeNamespaceOutput = schema.new({
   id = id.from(_N, "GetDataLakeNamespaceResponse"),
   type = "structure",
   members = {
      namespace = schema.new({
         id = id.from(_N, "GetDataLakeNamespaceOutput", "namespace"),
         type = "structure",
         name = "namespace",
         target_id = id.from(_N, "DataLakeNamespace"),
         target = M.DataLakeNamespace,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListDataLakeNamespacesInput = schema.new({
   id = id.from(_N, "ListDataLakeNamespacesRequest"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "ListDataLakeNamespacesInput", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListDataLakeNamespacesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListDataLakeNamespacesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 10 },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListDataLakeNamespacesOutput = schema.new({
   id = id.from(_N, "ListDataLakeNamespacesResponse"),
   type = "structure",
   members = {
      namespaces = schema.new({
         id = id.from(_N, "ListDataLakeNamespacesOutput", "namespaces"),
         type = "list",
         name = "namespaces",
         target_id = prelude.Document.id,
         list_member = M.DataLakeNamespace,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListDataLakeNamespacesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateDataLakeNamespaceInput = schema.new({
   id = id.from(_N, "UpdateDataLakeNamespaceRequest"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "UpdateDataLakeNamespaceInput", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "UpdateDataLakeNamespaceInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "UpdateDataLakeNamespaceInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateDataLakeNamespaceOutput = schema.new({
   id = id.from(_N, "UpdateDataLakeNamespaceResponse"),
   type = "structure",
   members = {
      namespace = schema.new({
         id = id.from(_N, "UpdateDataLakeNamespaceOutput", "namespace"),
         type = "structure",
         name = "namespace",
         target_id = id.from(_N, "DataLakeNamespace"),
         target = M.DataLakeNamespace,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteInstanceInput = schema.new({
   id = id.from(_N, "DeleteInstanceRequest"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "DeleteInstanceInput", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteInstanceOutput = schema.new({
   id = id.from(_N, "DeleteInstanceResponse"),
   type = "structure",
   members = {
      instance = schema.new({
         id = id.from(_N, "DeleteInstanceOutput", "instance"),
         type = "structure",
         name = "instance",
         target_id = id.from(_N, "Instance"),
         target = M.Instance,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetDataIntegrationEventInput = schema.new({
   id = id.from(_N, "GetDataIntegrationEventRequest"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "GetDataIntegrationEventInput", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      eventId = schema.new({
         id = id.from(_N, "GetDataIntegrationEventInput", "eventId"),
         type = "string",
         name = "eventId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetDataIntegrationEventOutput = schema.new({
   id = id.from(_N, "GetDataIntegrationEventResponse"),
   type = "structure",
   members = {
      event = schema.new({
         id = id.from(_N, "GetDataIntegrationEventOutput", "event"),
         type = "structure",
         name = "event",
         target_id = id.from(_N, "DataIntegrationEvent"),
         target = M.DataIntegrationEvent,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetDataIntegrationFlowExecutionInput = schema.new({
   id = id.from(_N, "GetDataIntegrationFlowExecutionRequest"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "GetDataIntegrationFlowExecutionInput", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      flowName = schema.new({
         id = id.from(_N, "GetDataIntegrationFlowExecutionInput", "flowName"),
         type = "string",
         name = "flowName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      executionId = schema.new({
         id = id.from(_N, "GetDataIntegrationFlowExecutionInput", "executionId"),
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

M.GetDataIntegrationFlowExecutionOutput = schema.new({
   id = id.from(_N, "GetDataIntegrationFlowExecutionResponse"),
   type = "structure",
   members = {
      flowExecution = schema.new({
         id = id.from(_N, "GetDataIntegrationFlowExecutionOutput", "flowExecution"),
         type = "structure",
         name = "flowExecution",
         target_id = id.from(_N, "DataIntegrationFlowExecution"),
         target = M.DataIntegrationFlowExecution,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetInstanceInput = schema.new({
   id = id.from(_N, "GetInstanceRequest"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "GetInstanceInput", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetInstanceOutput = schema.new({
   id = id.from(_N, "GetInstanceResponse"),
   type = "structure",
   members = {
      instance = schema.new({
         id = id.from(_N, "GetInstanceOutput", "instance"),
         type = "structure",
         name = "instance",
         target_id = id.from(_N, "Instance"),
         target = M.Instance,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListInstancesInput = schema.new({
   id = id.from(_N, "ListInstancesRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListInstancesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListInstancesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 10 },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      instanceNameFilter = schema.new({
         id = id.from(_N, "ListInstancesInput", "instanceNameFilter"),
         type = "list",
         name = "instanceNameFilter",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.HTTP_QUERY] = { name = "instanceNameFilter" },
         },
      }),
      instanceStateFilter = schema.new({
         id = id.from(_N, "ListInstancesInput", "instanceStateFilter"),
         type = "list",
         name = "instanceStateFilter",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.HTTP_QUERY] = { name = "instanceStateFilter" },
         },
      }),
   },
})

M.ListInstancesOutput = schema.new({
   id = id.from(_N, "ListInstancesResponse"),
   type = "structure",
   members = {
      instances = schema.new({
         id = id.from(_N, "ListInstancesOutput", "instances"),
         type = "list",
         name = "instances",
         target_id = prelude.Document.id,
         list_member = M.Instance,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListInstancesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateInstanceInput = schema.new({
   id = id.from(_N, "UpdateInstanceRequest"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "UpdateInstanceInput", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      instanceName = schema.new({
         id = id.from(_N, "UpdateInstanceInput", "instanceName"),
         type = "string",
         name = "instanceName",
         target_id = prelude.String.id,
      }),
      instanceDescription = schema.new({
         id = id.from(_N, "UpdateInstanceInput", "instanceDescription"),
         type = "string",
         name = "instanceDescription",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateInstanceOutput = schema.new({
   id = id.from(_N, "UpdateInstanceResponse"),
   type = "structure",
   members = {
      instance = schema.new({
         id = id.from(_N, "UpdateInstanceOutput", "instance"),
         type = "structure",
         name = "instance",
         target_id = id.from(_N, "Instance"),
         target = M.Instance,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListDataIntegrationEventsInput = schema.new({
   id = id.from(_N, "ListDataIntegrationEventsRequest"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "ListDataIntegrationEventsInput", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      eventType = schema.new({
         id = id.from(_N, "ListDataIntegrationEventsInput", "eventType"),
         type = "string",
         name = "eventType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "eventType" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListDataIntegrationEventsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListDataIntegrationEventsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 10 },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListDataIntegrationEventsOutput = schema.new({
   id = id.from(_N, "ListDataIntegrationEventsResponse"),
   type = "structure",
   members = {
      events = schema.new({
         id = id.from(_N, "ListDataIntegrationEventsOutput", "events"),
         type = "list",
         name = "events",
         target_id = prelude.Document.id,
         list_member = M.DataIntegrationEvent,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListDataIntegrationEventsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDataIntegrationFlowExecutionsInput = schema.new({
   id = id.from(_N, "ListDataIntegrationFlowExecutionsRequest"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "ListDataIntegrationFlowExecutionsInput", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      flowName = schema.new({
         id = id.from(_N, "ListDataIntegrationFlowExecutionsInput", "flowName"),
         type = "string",
         name = "flowName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListDataIntegrationFlowExecutionsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListDataIntegrationFlowExecutionsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 10 },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListDataIntegrationFlowExecutionsOutput = schema.new({
   id = id.from(_N, "ListDataIntegrationFlowExecutionsResponse"),
   type = "structure",
   members = {
      flowExecutions = schema.new({
         id = id.from(_N, "ListDataIntegrationFlowExecutionsOutput", "flowExecutions"),
         type = "list",
         name = "flowExecutions",
         target_id = prelude.Document.id,
         list_member = M.DataIntegrationFlowExecution,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListDataIntegrationFlowExecutionsOutput", "nextToken"),
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

M.SendDataIntegrationEventInput = schema.new({
   id = id.from(_N, "SendDataIntegrationEventRequest"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "SendDataIntegrationEventInput", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      eventType = schema.new({
         id = id.from(_N, "SendDataIntegrationEventInput", "eventType"),
         type = "string",
         name = "eventType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      data = schema.new({
         id = id.from(_N, "SendDataIntegrationEventInput", "data"),
         type = "string",
         name = "data",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      eventGroupId = schema.new({
         id = id.from(_N, "SendDataIntegrationEventInput", "eventGroupId"),
         type = "string",
         name = "eventGroupId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      eventTimestamp = schema.new({
         id = id.from(_N, "SendDataIntegrationEventInput", "eventTimestamp"),
         type = "timestamp",
         name = "eventTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
         },
      }),
      clientToken = schema.new({
         id = id.from(_N, "SendDataIntegrationEventInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      datasetTarget = schema.new({
         id = id.from(_N, "SendDataIntegrationEventInput", "datasetTarget"),
         type = "structure",
         name = "datasetTarget",
         target_id = id.from(_N, "DataIntegrationEventDatasetTargetConfiguration"),
         target = M.DataIntegrationEventDatasetTargetConfiguration,
      }),
   },
})

M.SendDataIntegrationEventOutput = schema.new({
   id = id.from(_N, "SendDataIntegrationEventResponse"),
   type = "structure",
   members = {
      eventId = schema.new({
         id = id.from(_N, "SendDataIntegrationEventOutput", "eventId"),
         type = "string",
         name = "eventId",
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
   id = id.from("com.amazonaws.supplychain", "GalaxyPublicAPIGateway"),
   version = "2024-01-01",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateBillOfMaterialsImportJob = schema.operation({
   id = id.from("com.amazonaws.supplychain", "CreateBillOfMaterialsImportJob"),
   input = M.CreateBillOfMaterialsImportJobInput,
   output = M.CreateBillOfMaterialsImportJobOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/api/configuration/instances/{instanceId}/bill-of-materials-import-jobs" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateDataIntegrationFlow = schema.operation({
   id = id.from("com.amazonaws.supplychain", "CreateDataIntegrationFlow"),
   input = M.CreateDataIntegrationFlowInput,
   output = M.CreateDataIntegrationFlowOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/api/data-integration/instance/{instanceId}/data-integration-flows/{name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateDataLakeDataset = schema.operation({
   id = id.from("com.amazonaws.supplychain", "CreateDataLakeDataset"),
   input = M.CreateDataLakeDatasetInput,
   output = M.CreateDataLakeDatasetOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets/{name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateDataLakeNamespace = schema.operation({
   id = id.from("com.amazonaws.supplychain", "CreateDataLakeNamespace"),
   input = M.CreateDataLakeNamespaceInput,
   output = M.CreateDataLakeNamespaceOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/api/datalake/instance/{instanceId}/namespaces/{name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateInstance = schema.operation({
   id = id.from("com.amazonaws.supplychain", "CreateInstance"),
   input = M.CreateInstanceInput,
   output = M.CreateInstanceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/api/instance" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteDataIntegrationFlow = schema.operation({
   id = id.from("com.amazonaws.supplychain", "DeleteDataIntegrationFlow"),
   input = M.DeleteDataIntegrationFlowInput,
   output = M.DeleteDataIntegrationFlowOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/api/data-integration/instance/{instanceId}/data-integration-flows/{name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteDataLakeDataset = schema.operation({
   id = id.from("com.amazonaws.supplychain", "DeleteDataLakeDataset"),
   input = M.DeleteDataLakeDatasetInput,
   output = M.DeleteDataLakeDatasetOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets/{name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteDataLakeNamespace = schema.operation({
   id = id.from("com.amazonaws.supplychain", "DeleteDataLakeNamespace"),
   input = M.DeleteDataLakeNamespaceInput,
   output = M.DeleteDataLakeNamespaceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/api/datalake/instance/{instanceId}/namespaces/{name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteInstance = schema.operation({
   id = id.from("com.amazonaws.supplychain", "DeleteInstance"),
   input = M.DeleteInstanceInput,
   output = M.DeleteInstanceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/api/instance/{instanceId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetBillOfMaterialsImportJob = schema.operation({
   id = id.from("com.amazonaws.supplychain", "GetBillOfMaterialsImportJob"),
   input = M.GetBillOfMaterialsImportJobInput,
   output = M.GetBillOfMaterialsImportJobOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/api/configuration/instances/{instanceId}/bill-of-materials-import-jobs/{jobId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetDataIntegrationEvent = schema.operation({
   id = id.from("com.amazonaws.supplychain", "GetDataIntegrationEvent"),
   input = M.GetDataIntegrationEventInput,
   output = M.GetDataIntegrationEventOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/api-data/data-integration/instance/{instanceId}/data-integration-events/{eventId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetDataIntegrationFlow = schema.operation({
   id = id.from("com.amazonaws.supplychain", "GetDataIntegrationFlow"),
   input = M.GetDataIntegrationFlowInput,
   output = M.GetDataIntegrationFlowOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/api/data-integration/instance/{instanceId}/data-integration-flows/{name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetDataIntegrationFlowExecution = schema.operation({
   id = id.from("com.amazonaws.supplychain", "GetDataIntegrationFlowExecution"),
   input = M.GetDataIntegrationFlowExecutionInput,
   output = M.GetDataIntegrationFlowExecutionOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/api-data/data-integration/instance/{instanceId}/data-integration-flows/{flowName}/executions/{executionId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetDataLakeDataset = schema.operation({
   id = id.from("com.amazonaws.supplychain", "GetDataLakeDataset"),
   input = M.GetDataLakeDatasetInput,
   output = M.GetDataLakeDatasetOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets/{name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetDataLakeNamespace = schema.operation({
   id = id.from("com.amazonaws.supplychain", "GetDataLakeNamespace"),
   input = M.GetDataLakeNamespaceInput,
   output = M.GetDataLakeNamespaceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/api/datalake/instance/{instanceId}/namespaces/{name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetInstance = schema.operation({
   id = id.from("com.amazonaws.supplychain", "GetInstance"),
   input = M.GetInstanceInput,
   output = M.GetInstanceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/api/instance/{instanceId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDataIntegrationEvents = schema.operation({
   id = id.from("com.amazonaws.supplychain", "ListDataIntegrationEvents"),
   input = M.ListDataIntegrationEventsInput,
   output = M.ListDataIntegrationEventsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/api-data/data-integration/instance/{instanceId}/data-integration-events" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDataIntegrationFlowExecutions = schema.operation({
   id = id.from("com.amazonaws.supplychain", "ListDataIntegrationFlowExecutions"),
   input = M.ListDataIntegrationFlowExecutionsInput,
   output = M.ListDataIntegrationFlowExecutionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/api-data/data-integration/instance/{instanceId}/data-integration-flows/{flowName}/executions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDataIntegrationFlows = schema.operation({
   id = id.from("com.amazonaws.supplychain", "ListDataIntegrationFlows"),
   input = M.ListDataIntegrationFlowsInput,
   output = M.ListDataIntegrationFlowsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/api/data-integration/instance/{instanceId}/data-integration-flows" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDataLakeDatasets = schema.operation({
   id = id.from("com.amazonaws.supplychain", "ListDataLakeDatasets"),
   input = M.ListDataLakeDatasetsInput,
   output = M.ListDataLakeDatasetsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDataLakeNamespaces = schema.operation({
   id = id.from("com.amazonaws.supplychain", "ListDataLakeNamespaces"),
   input = M.ListDataLakeNamespacesInput,
   output = M.ListDataLakeNamespacesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/api/datalake/instance/{instanceId}/namespaces" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListInstances = schema.operation({
   id = id.from("com.amazonaws.supplychain", "ListInstances"),
   input = M.ListInstancesInput,
   output = M.ListInstancesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/api/instance" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.supplychain", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/api/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SendDataIntegrationEvent = schema.operation({
   id = id.from("com.amazonaws.supplychain", "SendDataIntegrationEvent"),
   input = M.SendDataIntegrationEventInput,
   output = M.SendDataIntegrationEventOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/api-data/data-integration/instance/{instanceId}/data-integration-events" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.supplychain", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/api/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.supplychain", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/api/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateDataIntegrationFlow = schema.operation({
   id = id.from("com.amazonaws.supplychain", "UpdateDataIntegrationFlow"),
   input = M.UpdateDataIntegrationFlowInput,
   output = M.UpdateDataIntegrationFlowOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/api/data-integration/instance/{instanceId}/data-integration-flows/{name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateDataLakeDataset = schema.operation({
   id = id.from("com.amazonaws.supplychain", "UpdateDataLakeDataset"),
   input = M.UpdateDataLakeDatasetInput,
   output = M.UpdateDataLakeDatasetOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets/{name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateDataLakeNamespace = schema.operation({
   id = id.from("com.amazonaws.supplychain", "UpdateDataLakeNamespace"),
   input = M.UpdateDataLakeNamespaceInput,
   output = M.UpdateDataLakeNamespaceOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/api/datalake/instance/{instanceId}/namespaces/{name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateInstance = schema.operation({
   id = id.from("com.amazonaws.supplychain", "UpdateInstance"),
   input = M.UpdateInstanceInput,
   output = M.UpdateInstanceOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/api/instance/{instanceId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
