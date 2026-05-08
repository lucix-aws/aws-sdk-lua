

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.lookoutequipment"

local M = {}

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.FaultCodes = schema.new({ type = "list", list_member = prelude.String })

M.DataIngestionJobSummaries = schema.new({ type = "list", list_member = M.DataIngestionJobSummary })

M.DatasetSummaries = schema.new({ type = "list", list_member = M.DatasetSummary })

M.InferenceEventSummaries = schema.new({ type = "list", list_member = M.InferenceEventSummary })

M.InferenceExecutionSummaries = schema.new({ type = "list", list_member = M.InferenceExecutionSummary })

M.InferenceSchedulerSummaries = schema.new({ type = "list", list_member = M.InferenceSchedulerSummary })

M.LabelGroupSummaries = schema.new({ type = "list", list_member = M.LabelGroupSummary })

M.LabelSummaries = schema.new({ type = "list", list_member = M.LabelSummary })

M.ModelSummaries = schema.new({ type = "list", list_member = M.ModelSummary })

M.ModelVersionSummaries = schema.new({ type = "list", list_member = M.ModelVersionSummary })

M.RetrainingSchedulerSummaries = schema.new({ type = "list", list_member = M.RetrainingSchedulerSummary })

M.SensorStatisticsSummaries = schema.new({ type = "list", list_member = M.SensorStatisticsSummary })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.ListOfDiscardedFiles = schema.new({ type = "list", list_member = M.S3Object })

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
      Message = schema.new({
         id = id.from(_N, "ConflictException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DatasetSchema = schema.new({
   id = id.from(_N, "DatasetSchema"),
   type = "structure",
   members = {
      InlineDataSchema = schema.new({
         id = id.from(_N, "DatasetSchema", "InlineDataSchema"),
         type = "string",
         name = "InlineDataSchema",
         target_id = prelude.String.id,
         traits = {
            [traits.MEDIA_TYPE] = { value = "application/json" },
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

M.CreateDatasetInput = schema.new({
   id = id.from(_N, "CreateDatasetRequest"),
   type = "structure",
   members = {
      DatasetName = schema.new({
         id = id.from(_N, "CreateDatasetInput", "DatasetName"),
         type = "string",
         name = "DatasetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DatasetSchema = schema.new({
         id = id.from(_N, "CreateDatasetInput", "DatasetSchema"),
         type = "structure",
         name = "DatasetSchema",
         target_id = id.from(_N, "DatasetSchema"),
         target = M.DatasetSchema,
      }),
      ServerSideKmsKeyId = schema.new({
         id = id.from(_N, "CreateDatasetInput", "ServerSideKmsKeyId"),
         type = "string",
         name = "ServerSideKmsKeyId",
         target_id = prelude.String.id,
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CreateDatasetInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateDatasetInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.CreateDatasetOutput = schema.new({
   id = id.from(_N, "CreateDatasetResponse"),
   type = "structure",
   members = {
      DatasetName = schema.new({
         id = id.from(_N, "CreateDatasetOutput", "DatasetName"),
         type = "string",
         name = "DatasetName",
         target_id = prelude.String.id,
      }),
      DatasetArn = schema.new({
         id = id.from(_N, "CreateDatasetOutput", "DatasetArn"),
         type = "string",
         name = "DatasetArn",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "CreateDatasetOutput", "Status"),
         type = "string",
         name = "Status",
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
      Message = schema.new({
         id = id.from(_N, "InternalServerException", "Message"),
         type = "string",
         name = "Message",
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
      Message = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "Message"),
         type = "string",
         name = "Message",
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
      Message = schema.new({
         id = id.from(_N, "ThrottlingException", "Message"),
         type = "string",
         name = "Message",
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
      Message = schema.new({
         id = id.from(_N, "ValidationException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.InferenceInputNameConfiguration = schema.new({
   id = id.from(_N, "InferenceInputNameConfiguration"),
   type = "structure",
   members = {
      TimestampFormat = schema.new({
         id = id.from(_N, "InferenceInputNameConfiguration", "TimestampFormat"),
         type = "string",
         name = "TimestampFormat",
         target_id = prelude.String.id,
      }),
      ComponentTimestampDelimiter = schema.new({
         id = id.from(_N, "InferenceInputNameConfiguration", "ComponentTimestampDelimiter"),
         type = "string",
         name = "ComponentTimestampDelimiter",
         target_id = prelude.String.id,
      }),
   },
})

M.InferenceS3InputConfiguration = schema.new({
   id = id.from(_N, "InferenceS3InputConfiguration"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "InferenceS3InputConfiguration", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Prefix = schema.new({
         id = id.from(_N, "InferenceS3InputConfiguration", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
      }),
   },
})

M.InferenceInputConfiguration = schema.new({
   id = id.from(_N, "InferenceInputConfiguration"),
   type = "structure",
   members = {
      S3InputConfiguration = schema.new({
         id = id.from(_N, "InferenceInputConfiguration", "S3InputConfiguration"),
         type = "structure",
         name = "S3InputConfiguration",
         target_id = id.from(_N, "InferenceS3InputConfiguration"),
         target = M.InferenceS3InputConfiguration,
      }),
      InputTimeZoneOffset = schema.new({
         id = id.from(_N, "InferenceInputConfiguration", "InputTimeZoneOffset"),
         type = "string",
         name = "InputTimeZoneOffset",
         target_id = prelude.String.id,
      }),
      InferenceInputNameConfiguration = schema.new({
         id = id.from(_N, "InferenceInputConfiguration", "InferenceInputNameConfiguration"),
         type = "structure",
         name = "InferenceInputNameConfiguration",
         target_id = id.from(_N, "InferenceInputNameConfiguration"),
         target = M.InferenceInputNameConfiguration,
      }),
   },
})

M.InferenceS3OutputConfiguration = schema.new({
   id = id.from(_N, "InferenceS3OutputConfiguration"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "InferenceS3OutputConfiguration", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Prefix = schema.new({
         id = id.from(_N, "InferenceS3OutputConfiguration", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
      }),
   },
})

M.InferenceOutputConfiguration = schema.new({
   id = id.from(_N, "InferenceOutputConfiguration"),
   type = "structure",
   members = {
      S3OutputConfiguration = schema.new({
         id = id.from(_N, "InferenceOutputConfiguration", "S3OutputConfiguration"),
         type = "structure",
         name = "S3OutputConfiguration",
         target_id = id.from(_N, "InferenceS3OutputConfiguration"),
         target = M.InferenceS3OutputConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      KmsKeyId = schema.new({
         id = id.from(_N, "InferenceOutputConfiguration", "KmsKeyId"),
         type = "string",
         name = "KmsKeyId",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateInferenceSchedulerInput = schema.new({
   id = id.from(_N, "CreateInferenceSchedulerRequest"),
   type = "structure",
   members = {
      ModelName = schema.new({
         id = id.from(_N, "CreateInferenceSchedulerInput", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      InferenceSchedulerName = schema.new({
         id = id.from(_N, "CreateInferenceSchedulerInput", "InferenceSchedulerName"),
         type = "string",
         name = "InferenceSchedulerName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DataDelayOffsetInMinutes = schema.new({
         id = id.from(_N, "CreateInferenceSchedulerInput", "DataDelayOffsetInMinutes"),
         type = "long",
         name = "DataDelayOffsetInMinutes",
         target_id = prelude.Long.id,
      }),
      DataUploadFrequency = schema.new({
         id = id.from(_N, "CreateInferenceSchedulerInput", "DataUploadFrequency"),
         type = "string",
         name = "DataUploadFrequency",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DataInputConfiguration = schema.new({
         id = id.from(_N, "CreateInferenceSchedulerInput", "DataInputConfiguration"),
         type = "structure",
         name = "DataInputConfiguration",
         target_id = id.from(_N, "InferenceInputConfiguration"),
         target = M.InferenceInputConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DataOutputConfiguration = schema.new({
         id = id.from(_N, "CreateInferenceSchedulerInput", "DataOutputConfiguration"),
         type = "structure",
         name = "DataOutputConfiguration",
         target_id = id.from(_N, "InferenceOutputConfiguration"),
         target = M.InferenceOutputConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RoleArn = schema.new({
         id = id.from(_N, "CreateInferenceSchedulerInput", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ServerSideKmsKeyId = schema.new({
         id = id.from(_N, "CreateInferenceSchedulerInput", "ServerSideKmsKeyId"),
         type = "string",
         name = "ServerSideKmsKeyId",
         target_id = prelude.String.id,
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CreateInferenceSchedulerInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateInferenceSchedulerInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.CreateInferenceSchedulerOutput = schema.new({
   id = id.from(_N, "CreateInferenceSchedulerResponse"),
   type = "structure",
   members = {
      InferenceSchedulerArn = schema.new({
         id = id.from(_N, "CreateInferenceSchedulerOutput", "InferenceSchedulerArn"),
         type = "string",
         name = "InferenceSchedulerArn",
         target_id = prelude.String.id,
      }),
      InferenceSchedulerName = schema.new({
         id = id.from(_N, "CreateInferenceSchedulerOutput", "InferenceSchedulerName"),
         type = "string",
         name = "InferenceSchedulerName",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "CreateInferenceSchedulerOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      ModelQuality = schema.new({
         id = id.from(_N, "CreateInferenceSchedulerOutput", "ModelQuality"),
         type = "string",
         name = "ModelQuality",
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
      Message = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateLabelInput = schema.new({
   id = id.from(_N, "CreateLabelRequest"),
   type = "structure",
   members = {
      LabelGroupName = schema.new({
         id = id.from(_N, "CreateLabelInput", "LabelGroupName"),
         type = "string",
         name = "LabelGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StartTime = schema.new({
         id = id.from(_N, "CreateLabelInput", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndTime = schema.new({
         id = id.from(_N, "CreateLabelInput", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Rating = schema.new({
         id = id.from(_N, "CreateLabelInput", "Rating"),
         type = "string",
         name = "Rating",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FaultCode = schema.new({
         id = id.from(_N, "CreateLabelInput", "FaultCode"),
         type = "string",
         name = "FaultCode",
         target_id = prelude.String.id,
      }),
      Notes = schema.new({
         id = id.from(_N, "CreateLabelInput", "Notes"),
         type = "string",
         name = "Notes",
         target_id = prelude.String.id,
      }),
      Equipment = schema.new({
         id = id.from(_N, "CreateLabelInput", "Equipment"),
         type = "string",
         name = "Equipment",
         target_id = prelude.String.id,
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CreateLabelInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CreateLabelOutput = schema.new({
   id = id.from(_N, "CreateLabelResponse"),
   type = "structure",
   members = {
      LabelId = schema.new({
         id = id.from(_N, "CreateLabelOutput", "LabelId"),
         type = "string",
         name = "LabelId",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateLabelGroupInput = schema.new({
   id = id.from(_N, "CreateLabelGroupRequest"),
   type = "structure",
   members = {
      LabelGroupName = schema.new({
         id = id.from(_N, "CreateLabelGroupInput", "LabelGroupName"),
         type = "string",
         name = "LabelGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FaultCodes = schema.new({
         id = id.from(_N, "CreateLabelGroupInput", "FaultCodes"),
         type = "list",
         name = "FaultCodes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CreateLabelGroupInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateLabelGroupInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.CreateLabelGroupOutput = schema.new({
   id = id.from(_N, "CreateLabelGroupResponse"),
   type = "structure",
   members = {
      LabelGroupName = schema.new({
         id = id.from(_N, "CreateLabelGroupOutput", "LabelGroupName"),
         type = "string",
         name = "LabelGroupName",
         target_id = prelude.String.id,
      }),
      LabelGroupArn = schema.new({
         id = id.from(_N, "CreateLabelGroupOutput", "LabelGroupArn"),
         type = "string",
         name = "LabelGroupArn",
         target_id = prelude.String.id,
      }),
   },
})

M.DataPreProcessingConfiguration = schema.new({
   id = id.from(_N, "DataPreProcessingConfiguration"),
   type = "structure",
   members = {
      TargetSamplingRate = schema.new({
         id = id.from(_N, "DataPreProcessingConfiguration", "TargetSamplingRate"),
         type = "string",
         name = "TargetSamplingRate",
         target_id = prelude.String.id,
      }),
   },
})

M.LabelsS3InputConfiguration = schema.new({
   id = id.from(_N, "LabelsS3InputConfiguration"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "LabelsS3InputConfiguration", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Prefix = schema.new({
         id = id.from(_N, "LabelsS3InputConfiguration", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
      }),
   },
})

M.LabelsInputConfiguration = schema.new({
   id = id.from(_N, "LabelsInputConfiguration"),
   type = "structure",
   members = {
      S3InputConfiguration = schema.new({
         id = id.from(_N, "LabelsInputConfiguration", "S3InputConfiguration"),
         type = "structure",
         name = "S3InputConfiguration",
         target_id = id.from(_N, "LabelsS3InputConfiguration"),
         target = M.LabelsS3InputConfiguration,
      }),
      LabelGroupName = schema.new({
         id = id.from(_N, "LabelsInputConfiguration", "LabelGroupName"),
         type = "string",
         name = "LabelGroupName",
         target_id = prelude.String.id,
      }),
   },
})

M.ModelDiagnosticsS3OutputConfiguration = schema.new({
   id = id.from(_N, "ModelDiagnosticsS3OutputConfiguration"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "ModelDiagnosticsS3OutputConfiguration", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Prefix = schema.new({
         id = id.from(_N, "ModelDiagnosticsS3OutputConfiguration", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
      }),
   },
})

M.ModelDiagnosticsOutputConfiguration = schema.new({
   id = id.from(_N, "ModelDiagnosticsOutputConfiguration"),
   type = "structure",
   members = {
      S3OutputConfiguration = schema.new({
         id = id.from(_N, "ModelDiagnosticsOutputConfiguration", "S3OutputConfiguration"),
         type = "structure",
         name = "S3OutputConfiguration",
         target_id = id.from(_N, "ModelDiagnosticsS3OutputConfiguration"),
         target = M.ModelDiagnosticsS3OutputConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      KmsKeyId = schema.new({
         id = id.from(_N, "ModelDiagnosticsOutputConfiguration", "KmsKeyId"),
         type = "string",
         name = "KmsKeyId",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateModelInput = schema.new({
   id = id.from(_N, "CreateModelRequest"),
   type = "structure",
   members = {
      ModelName = schema.new({
         id = id.from(_N, "CreateModelInput", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DatasetName = schema.new({
         id = id.from(_N, "CreateModelInput", "DatasetName"),
         type = "string",
         name = "DatasetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DatasetSchema = schema.new({
         id = id.from(_N, "CreateModelInput", "DatasetSchema"),
         type = "structure",
         name = "DatasetSchema",
         target_id = id.from(_N, "DatasetSchema"),
         target = M.DatasetSchema,
      }),
      LabelsInputConfiguration = schema.new({
         id = id.from(_N, "CreateModelInput", "LabelsInputConfiguration"),
         type = "structure",
         name = "LabelsInputConfiguration",
         target_id = id.from(_N, "LabelsInputConfiguration"),
         target = M.LabelsInputConfiguration,
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CreateModelInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      TrainingDataStartTime = schema.new({
         id = id.from(_N, "CreateModelInput", "TrainingDataStartTime"),
         type = "timestamp",
         name = "TrainingDataStartTime",
         target_id = prelude.Timestamp.id,
      }),
      TrainingDataEndTime = schema.new({
         id = id.from(_N, "CreateModelInput", "TrainingDataEndTime"),
         type = "timestamp",
         name = "TrainingDataEndTime",
         target_id = prelude.Timestamp.id,
      }),
      EvaluationDataStartTime = schema.new({
         id = id.from(_N, "CreateModelInput", "EvaluationDataStartTime"),
         type = "timestamp",
         name = "EvaluationDataStartTime",
         target_id = prelude.Timestamp.id,
      }),
      EvaluationDataEndTime = schema.new({
         id = id.from(_N, "CreateModelInput", "EvaluationDataEndTime"),
         type = "timestamp",
         name = "EvaluationDataEndTime",
         target_id = prelude.Timestamp.id,
      }),
      RoleArn = schema.new({
         id = id.from(_N, "CreateModelInput", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
      }),
      DataPreProcessingConfiguration = schema.new({
         id = id.from(_N, "CreateModelInput", "DataPreProcessingConfiguration"),
         type = "structure",
         name = "DataPreProcessingConfiguration",
         target_id = id.from(_N, "DataPreProcessingConfiguration"),
         target = M.DataPreProcessingConfiguration,
      }),
      ServerSideKmsKeyId = schema.new({
         id = id.from(_N, "CreateModelInput", "ServerSideKmsKeyId"),
         type = "string",
         name = "ServerSideKmsKeyId",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateModelInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
      OffCondition = schema.new({
         id = id.from(_N, "CreateModelInput", "OffCondition"),
         type = "string",
         name = "OffCondition",
         target_id = prelude.String.id,
      }),
      ModelDiagnosticsOutputConfiguration = schema.new({
         id = id.from(_N, "CreateModelInput", "ModelDiagnosticsOutputConfiguration"),
         type = "structure",
         name = "ModelDiagnosticsOutputConfiguration",
         target_id = id.from(_N, "ModelDiagnosticsOutputConfiguration"),
         target = M.ModelDiagnosticsOutputConfiguration,
      }),
   },
})

M.CreateModelOutput = schema.new({
   id = id.from(_N, "CreateModelResponse"),
   type = "structure",
   members = {
      ModelArn = schema.new({
         id = id.from(_N, "CreateModelOutput", "ModelArn"),
         type = "string",
         name = "ModelArn",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "CreateModelOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateRetrainingSchedulerInput = schema.new({
   id = id.from(_N, "CreateRetrainingSchedulerRequest"),
   type = "structure",
   members = {
      ModelName = schema.new({
         id = id.from(_N, "CreateRetrainingSchedulerInput", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RetrainingStartDate = schema.new({
         id = id.from(_N, "CreateRetrainingSchedulerInput", "RetrainingStartDate"),
         type = "timestamp",
         name = "RetrainingStartDate",
         target_id = prelude.Timestamp.id,
      }),
      RetrainingFrequency = schema.new({
         id = id.from(_N, "CreateRetrainingSchedulerInput", "RetrainingFrequency"),
         type = "string",
         name = "RetrainingFrequency",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LookbackWindow = schema.new({
         id = id.from(_N, "CreateRetrainingSchedulerInput", "LookbackWindow"),
         type = "string",
         name = "LookbackWindow",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PromoteMode = schema.new({
         id = id.from(_N, "CreateRetrainingSchedulerInput", "PromoteMode"),
         type = "string",
         name = "PromoteMode",
         target_id = prelude.String.id,
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CreateRetrainingSchedulerInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CreateRetrainingSchedulerOutput = schema.new({
   id = id.from(_N, "CreateRetrainingSchedulerResponse"),
   type = "structure",
   members = {
      ModelName = schema.new({
         id = id.from(_N, "CreateRetrainingSchedulerOutput", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
      }),
      ModelArn = schema.new({
         id = id.from(_N, "CreateRetrainingSchedulerOutput", "ModelArn"),
         type = "string",
         name = "ModelArn",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "CreateRetrainingSchedulerOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteDatasetInput = schema.new({
   id = id.from(_N, "DeleteDatasetRequest"),
   type = "structure",
   members = {
      DatasetName = schema.new({
         id = id.from(_N, "DeleteDatasetInput", "DatasetName"),
         type = "string",
         name = "DatasetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteDatasetOutput = prelude.Unit

M.DeleteInferenceSchedulerInput = schema.new({
   id = id.from(_N, "DeleteInferenceSchedulerRequest"),
   type = "structure",
   members = {
      InferenceSchedulerName = schema.new({
         id = id.from(_N, "DeleteInferenceSchedulerInput", "InferenceSchedulerName"),
         type = "string",
         name = "InferenceSchedulerName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteInferenceSchedulerOutput = prelude.Unit

M.DeleteLabelInput = schema.new({
   id = id.from(_N, "DeleteLabelRequest"),
   type = "structure",
   members = {
      LabelGroupName = schema.new({
         id = id.from(_N, "DeleteLabelInput", "LabelGroupName"),
         type = "string",
         name = "LabelGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LabelId = schema.new({
         id = id.from(_N, "DeleteLabelInput", "LabelId"),
         type = "string",
         name = "LabelId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteLabelOutput = prelude.Unit

M.DeleteLabelGroupInput = schema.new({
   id = id.from(_N, "DeleteLabelGroupRequest"),
   type = "structure",
   members = {
      LabelGroupName = schema.new({
         id = id.from(_N, "DeleteLabelGroupInput", "LabelGroupName"),
         type = "string",
         name = "LabelGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteLabelGroupOutput = prelude.Unit

M.DeleteModelInput = schema.new({
   id = id.from(_N, "DeleteModelRequest"),
   type = "structure",
   members = {
      ModelName = schema.new({
         id = id.from(_N, "DeleteModelInput", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteModelOutput = prelude.Unit

M.DeleteResourcePolicyInput = schema.new({
   id = id.from(_N, "DeleteResourcePolicyRequest"),
   type = "structure",
   members = {
      ResourceArn = schema.new({
         id = id.from(_N, "DeleteResourcePolicyInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteResourcePolicyOutput = prelude.Unit

M.DeleteRetrainingSchedulerInput = schema.new({
   id = id.from(_N, "DeleteRetrainingSchedulerRequest"),
   type = "structure",
   members = {
      ModelName = schema.new({
         id = id.from(_N, "DeleteRetrainingSchedulerInput", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteRetrainingSchedulerOutput = prelude.Unit

M.DescribeDataIngestionJobInput = schema.new({
   id = id.from(_N, "DescribeDataIngestionJobRequest"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "DescribeDataIngestionJobInput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DuplicateTimestamps = schema.new({
   id = id.from(_N, "DuplicateTimestamps"),
   type = "structure",
   members = {
      TotalNumberOfDuplicateTimestamps = schema.new({
         id = id.from(_N, "DuplicateTimestamps", "TotalNumberOfDuplicateTimestamps"),
         type = "integer",
         name = "TotalNumberOfDuplicateTimestamps",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.MissingCompleteSensorData = schema.new({
   id = id.from(_N, "MissingCompleteSensorData"),
   type = "structure",
   members = {
      AffectedSensorCount = schema.new({
         id = id.from(_N, "MissingCompleteSensorData", "AffectedSensorCount"),
         type = "integer",
         name = "AffectedSensorCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SensorsWithShortDateRange = schema.new({
   id = id.from(_N, "SensorsWithShortDateRange"),
   type = "structure",
   members = {
      AffectedSensorCount = schema.new({
         id = id.from(_N, "SensorsWithShortDateRange", "AffectedSensorCount"),
         type = "integer",
         name = "AffectedSensorCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.InsufficientSensorData = schema.new({
   id = id.from(_N, "InsufficientSensorData"),
   type = "structure",
   members = {
      MissingCompleteSensorData = schema.new({
         id = id.from(_N, "InsufficientSensorData", "MissingCompleteSensorData"),
         type = "structure",
         name = "MissingCompleteSensorData",
         target_id = id.from(_N, "MissingCompleteSensorData"),
         target = M.MissingCompleteSensorData,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SensorsWithShortDateRange = schema.new({
         id = id.from(_N, "InsufficientSensorData", "SensorsWithShortDateRange"),
         type = "structure",
         name = "SensorsWithShortDateRange",
         target_id = id.from(_N, "SensorsWithShortDateRange"),
         target = M.SensorsWithShortDateRange,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.InvalidSensorData = schema.new({
   id = id.from(_N, "InvalidSensorData"),
   type = "structure",
   members = {
      AffectedSensorCount = schema.new({
         id = id.from(_N, "InvalidSensorData", "AffectedSensorCount"),
         type = "integer",
         name = "AffectedSensorCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TotalNumberOfInvalidValues = schema.new({
         id = id.from(_N, "InvalidSensorData", "TotalNumberOfInvalidValues"),
         type = "integer",
         name = "TotalNumberOfInvalidValues",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.MissingSensorData = schema.new({
   id = id.from(_N, "MissingSensorData"),
   type = "structure",
   members = {
      AffectedSensorCount = schema.new({
         id = id.from(_N, "MissingSensorData", "AffectedSensorCount"),
         type = "integer",
         name = "AffectedSensorCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TotalNumberOfMissingValues = schema.new({
         id = id.from(_N, "MissingSensorData", "TotalNumberOfMissingValues"),
         type = "integer",
         name = "TotalNumberOfMissingValues",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UnsupportedTimestamps = schema.new({
   id = id.from(_N, "UnsupportedTimestamps"),
   type = "structure",
   members = {
      TotalNumberOfUnsupportedTimestamps = schema.new({
         id = id.from(_N, "UnsupportedTimestamps", "TotalNumberOfUnsupportedTimestamps"),
         type = "integer",
         name = "TotalNumberOfUnsupportedTimestamps",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DataQualitySummary = schema.new({
   id = id.from(_N, "DataQualitySummary"),
   type = "structure",
   members = {
      InsufficientSensorData = schema.new({
         id = id.from(_N, "DataQualitySummary", "InsufficientSensorData"),
         type = "structure",
         name = "InsufficientSensorData",
         target_id = id.from(_N, "InsufficientSensorData"),
         target = M.InsufficientSensorData,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MissingSensorData = schema.new({
         id = id.from(_N, "DataQualitySummary", "MissingSensorData"),
         type = "structure",
         name = "MissingSensorData",
         target_id = id.from(_N, "MissingSensorData"),
         target = M.MissingSensorData,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      InvalidSensorData = schema.new({
         id = id.from(_N, "DataQualitySummary", "InvalidSensorData"),
         type = "structure",
         name = "InvalidSensorData",
         target_id = id.from(_N, "InvalidSensorData"),
         target = M.InvalidSensorData,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UnsupportedTimestamps = schema.new({
         id = id.from(_N, "DataQualitySummary", "UnsupportedTimestamps"),
         type = "structure",
         name = "UnsupportedTimestamps",
         target_id = id.from(_N, "UnsupportedTimestamps"),
         target = M.UnsupportedTimestamps,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DuplicateTimestamps = schema.new({
         id = id.from(_N, "DataQualitySummary", "DuplicateTimestamps"),
         type = "structure",
         name = "DuplicateTimestamps",
         target_id = id.from(_N, "DuplicateTimestamps"),
         target = M.DuplicateTimestamps,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.S3Object = schema.new({
   id = id.from(_N, "S3Object"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "S3Object", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Key = schema.new({
         id = id.from(_N, "S3Object", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.IngestedFilesSummary = schema.new({
   id = id.from(_N, "IngestedFilesSummary"),
   type = "structure",
   members = {
      TotalNumberOfFiles = schema.new({
         id = id.from(_N, "IngestedFilesSummary", "TotalNumberOfFiles"),
         type = "integer",
         name = "TotalNumberOfFiles",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IngestedNumberOfFiles = schema.new({
         id = id.from(_N, "IngestedFilesSummary", "IngestedNumberOfFiles"),
         type = "integer",
         name = "IngestedNumberOfFiles",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DiscardedFiles = schema.new({
         id = id.from(_N, "IngestedFilesSummary", "DiscardedFiles"),
         type = "list",
         name = "DiscardedFiles",
         target_id = prelude.Document.id,
         list_member = M.S3Object,
      }),
   },
})

M.IngestionS3InputConfiguration = schema.new({
   id = id.from(_N, "IngestionS3InputConfiguration"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "IngestionS3InputConfiguration", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Prefix = schema.new({
         id = id.from(_N, "IngestionS3InputConfiguration", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
      }),
      KeyPattern = schema.new({
         id = id.from(_N, "IngestionS3InputConfiguration", "KeyPattern"),
         type = "string",
         name = "KeyPattern",
         target_id = prelude.String.id,
      }),
   },
})

M.IngestionInputConfiguration = schema.new({
   id = id.from(_N, "IngestionInputConfiguration"),
   type = "structure",
   members = {
      S3InputConfiguration = schema.new({
         id = id.from(_N, "IngestionInputConfiguration", "S3InputConfiguration"),
         type = "structure",
         name = "S3InputConfiguration",
         target_id = id.from(_N, "IngestionS3InputConfiguration"),
         target = M.IngestionS3InputConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeDataIngestionJobOutput = schema.new({
   id = id.from(_N, "DescribeDataIngestionJobResponse"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "DescribeDataIngestionJobOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
      }),
      DatasetArn = schema.new({
         id = id.from(_N, "DescribeDataIngestionJobOutput", "DatasetArn"),
         type = "string",
         name = "DatasetArn",
         target_id = prelude.String.id,
      }),
      IngestionInputConfiguration = schema.new({
         id = id.from(_N, "DescribeDataIngestionJobOutput", "IngestionInputConfiguration"),
         type = "structure",
         name = "IngestionInputConfiguration",
         target_id = id.from(_N, "IngestionInputConfiguration"),
         target = M.IngestionInputConfiguration,
      }),
      RoleArn = schema.new({
         id = id.from(_N, "DescribeDataIngestionJobOutput", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "DescribeDataIngestionJobOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      Status = schema.new({
         id = id.from(_N, "DescribeDataIngestionJobOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      FailedReason = schema.new({
         id = id.from(_N, "DescribeDataIngestionJobOutput", "FailedReason"),
         type = "string",
         name = "FailedReason",
         target_id = prelude.String.id,
      }),
      DataQualitySummary = schema.new({
         id = id.from(_N, "DescribeDataIngestionJobOutput", "DataQualitySummary"),
         type = "structure",
         name = "DataQualitySummary",
         target_id = id.from(_N, "DataQualitySummary"),
         target = M.DataQualitySummary,
      }),
      IngestedFilesSummary = schema.new({
         id = id.from(_N, "DescribeDataIngestionJobOutput", "IngestedFilesSummary"),
         type = "structure",
         name = "IngestedFilesSummary",
         target_id = id.from(_N, "IngestedFilesSummary"),
         target = M.IngestedFilesSummary,
      }),
      StatusDetail = schema.new({
         id = id.from(_N, "DescribeDataIngestionJobOutput", "StatusDetail"),
         type = "string",
         name = "StatusDetail",
         target_id = prelude.String.id,
      }),
      IngestedDataSize = schema.new({
         id = id.from(_N, "DescribeDataIngestionJobOutput", "IngestedDataSize"),
         type = "long",
         name = "IngestedDataSize",
         target_id = prelude.Long.id,
      }),
      DataStartTime = schema.new({
         id = id.from(_N, "DescribeDataIngestionJobOutput", "DataStartTime"),
         type = "timestamp",
         name = "DataStartTime",
         target_id = prelude.Timestamp.id,
      }),
      DataEndTime = schema.new({
         id = id.from(_N, "DescribeDataIngestionJobOutput", "DataEndTime"),
         type = "timestamp",
         name = "DataEndTime",
         target_id = prelude.Timestamp.id,
      }),
      SourceDatasetArn = schema.new({
         id = id.from(_N, "DescribeDataIngestionJobOutput", "SourceDatasetArn"),
         type = "string",
         name = "SourceDatasetArn",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeDatasetInput = schema.new({
   id = id.from(_N, "DescribeDatasetRequest"),
   type = "structure",
   members = {
      DatasetName = schema.new({
         id = id.from(_N, "DescribeDatasetInput", "DatasetName"),
         type = "string",
         name = "DatasetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeDatasetOutput = schema.new({
   id = id.from(_N, "DescribeDatasetResponse"),
   type = "structure",
   members = {
      DatasetName = schema.new({
         id = id.from(_N, "DescribeDatasetOutput", "DatasetName"),
         type = "string",
         name = "DatasetName",
         target_id = prelude.String.id,
      }),
      DatasetArn = schema.new({
         id = id.from(_N, "DescribeDatasetOutput", "DatasetArn"),
         type = "string",
         name = "DatasetArn",
         target_id = prelude.String.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "DescribeDatasetOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      LastUpdatedAt = schema.new({
         id = id.from(_N, "DescribeDatasetOutput", "LastUpdatedAt"),
         type = "timestamp",
         name = "LastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      Status = schema.new({
         id = id.from(_N, "DescribeDatasetOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      Schema = schema.new({
         id = id.from(_N, "DescribeDatasetOutput", "Schema"),
         type = "string",
         name = "Schema",
         target_id = prelude.String.id,
         traits = {
            [traits.MEDIA_TYPE] = { value = "application/json" },
         },
      }),
      ServerSideKmsKeyId = schema.new({
         id = id.from(_N, "DescribeDatasetOutput", "ServerSideKmsKeyId"),
         type = "string",
         name = "ServerSideKmsKeyId",
         target_id = prelude.String.id,
      }),
      IngestionInputConfiguration = schema.new({
         id = id.from(_N, "DescribeDatasetOutput", "IngestionInputConfiguration"),
         type = "structure",
         name = "IngestionInputConfiguration",
         target_id = id.from(_N, "IngestionInputConfiguration"),
         target = M.IngestionInputConfiguration,
      }),
      DataQualitySummary = schema.new({
         id = id.from(_N, "DescribeDatasetOutput", "DataQualitySummary"),
         type = "structure",
         name = "DataQualitySummary",
         target_id = id.from(_N, "DataQualitySummary"),
         target = M.DataQualitySummary,
      }),
      IngestedFilesSummary = schema.new({
         id = id.from(_N, "DescribeDatasetOutput", "IngestedFilesSummary"),
         type = "structure",
         name = "IngestedFilesSummary",
         target_id = id.from(_N, "IngestedFilesSummary"),
         target = M.IngestedFilesSummary,
      }),
      RoleArn = schema.new({
         id = id.from(_N, "DescribeDatasetOutput", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
      }),
      DataStartTime = schema.new({
         id = id.from(_N, "DescribeDatasetOutput", "DataStartTime"),
         type = "timestamp",
         name = "DataStartTime",
         target_id = prelude.Timestamp.id,
      }),
      DataEndTime = schema.new({
         id = id.from(_N, "DescribeDatasetOutput", "DataEndTime"),
         type = "timestamp",
         name = "DataEndTime",
         target_id = prelude.Timestamp.id,
      }),
      SourceDatasetArn = schema.new({
         id = id.from(_N, "DescribeDatasetOutput", "SourceDatasetArn"),
         type = "string",
         name = "SourceDatasetArn",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeInferenceSchedulerInput = schema.new({
   id = id.from(_N, "DescribeInferenceSchedulerRequest"),
   type = "structure",
   members = {
      InferenceSchedulerName = schema.new({
         id = id.from(_N, "DescribeInferenceSchedulerInput", "InferenceSchedulerName"),
         type = "string",
         name = "InferenceSchedulerName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeInferenceSchedulerOutput = schema.new({
   id = id.from(_N, "DescribeInferenceSchedulerResponse"),
   type = "structure",
   members = {
      ModelArn = schema.new({
         id = id.from(_N, "DescribeInferenceSchedulerOutput", "ModelArn"),
         type = "string",
         name = "ModelArn",
         target_id = prelude.String.id,
      }),
      ModelName = schema.new({
         id = id.from(_N, "DescribeInferenceSchedulerOutput", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
      }),
      InferenceSchedulerName = schema.new({
         id = id.from(_N, "DescribeInferenceSchedulerOutput", "InferenceSchedulerName"),
         type = "string",
         name = "InferenceSchedulerName",
         target_id = prelude.String.id,
      }),
      InferenceSchedulerArn = schema.new({
         id = id.from(_N, "DescribeInferenceSchedulerOutput", "InferenceSchedulerArn"),
         type = "string",
         name = "InferenceSchedulerArn",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "DescribeInferenceSchedulerOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      DataDelayOffsetInMinutes = schema.new({
         id = id.from(_N, "DescribeInferenceSchedulerOutput", "DataDelayOffsetInMinutes"),
         type = "long",
         name = "DataDelayOffsetInMinutes",
         target_id = prelude.Long.id,
      }),
      DataUploadFrequency = schema.new({
         id = id.from(_N, "DescribeInferenceSchedulerOutput", "DataUploadFrequency"),
         type = "string",
         name = "DataUploadFrequency",
         target_id = prelude.String.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "DescribeInferenceSchedulerOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      UpdatedAt = schema.new({
         id = id.from(_N, "DescribeInferenceSchedulerOutput", "UpdatedAt"),
         type = "timestamp",
         name = "UpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      DataInputConfiguration = schema.new({
         id = id.from(_N, "DescribeInferenceSchedulerOutput", "DataInputConfiguration"),
         type = "structure",
         name = "DataInputConfiguration",
         target_id = id.from(_N, "InferenceInputConfiguration"),
         target = M.InferenceInputConfiguration,
      }),
      DataOutputConfiguration = schema.new({
         id = id.from(_N, "DescribeInferenceSchedulerOutput", "DataOutputConfiguration"),
         type = "structure",
         name = "DataOutputConfiguration",
         target_id = id.from(_N, "InferenceOutputConfiguration"),
         target = M.InferenceOutputConfiguration,
      }),
      RoleArn = schema.new({
         id = id.from(_N, "DescribeInferenceSchedulerOutput", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
      }),
      ServerSideKmsKeyId = schema.new({
         id = id.from(_N, "DescribeInferenceSchedulerOutput", "ServerSideKmsKeyId"),
         type = "string",
         name = "ServerSideKmsKeyId",
         target_id = prelude.String.id,
      }),
      LatestInferenceResult = schema.new({
         id = id.from(_N, "DescribeInferenceSchedulerOutput", "LatestInferenceResult"),
         type = "string",
         name = "LatestInferenceResult",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeLabelInput = schema.new({
   id = id.from(_N, "DescribeLabelRequest"),
   type = "structure",
   members = {
      LabelGroupName = schema.new({
         id = id.from(_N, "DescribeLabelInput", "LabelGroupName"),
         type = "string",
         name = "LabelGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LabelId = schema.new({
         id = id.from(_N, "DescribeLabelInput", "LabelId"),
         type = "string",
         name = "LabelId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeLabelOutput = schema.new({
   id = id.from(_N, "DescribeLabelResponse"),
   type = "structure",
   members = {
      LabelGroupName = schema.new({
         id = id.from(_N, "DescribeLabelOutput", "LabelGroupName"),
         type = "string",
         name = "LabelGroupName",
         target_id = prelude.String.id,
      }),
      LabelGroupArn = schema.new({
         id = id.from(_N, "DescribeLabelOutput", "LabelGroupArn"),
         type = "string",
         name = "LabelGroupArn",
         target_id = prelude.String.id,
      }),
      LabelId = schema.new({
         id = id.from(_N, "DescribeLabelOutput", "LabelId"),
         type = "string",
         name = "LabelId",
         target_id = prelude.String.id,
      }),
      StartTime = schema.new({
         id = id.from(_N, "DescribeLabelOutput", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
      }),
      EndTime = schema.new({
         id = id.from(_N, "DescribeLabelOutput", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
      }),
      Rating = schema.new({
         id = id.from(_N, "DescribeLabelOutput", "Rating"),
         type = "string",
         name = "Rating",
         target_id = prelude.String.id,
      }),
      FaultCode = schema.new({
         id = id.from(_N, "DescribeLabelOutput", "FaultCode"),
         type = "string",
         name = "FaultCode",
         target_id = prelude.String.id,
      }),
      Notes = schema.new({
         id = id.from(_N, "DescribeLabelOutput", "Notes"),
         type = "string",
         name = "Notes",
         target_id = prelude.String.id,
      }),
      Equipment = schema.new({
         id = id.from(_N, "DescribeLabelOutput", "Equipment"),
         type = "string",
         name = "Equipment",
         target_id = prelude.String.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "DescribeLabelOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DescribeLabelGroupInput = schema.new({
   id = id.from(_N, "DescribeLabelGroupRequest"),
   type = "structure",
   members = {
      LabelGroupName = schema.new({
         id = id.from(_N, "DescribeLabelGroupInput", "LabelGroupName"),
         type = "string",
         name = "LabelGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeLabelGroupOutput = schema.new({
   id = id.from(_N, "DescribeLabelGroupResponse"),
   type = "structure",
   members = {
      LabelGroupName = schema.new({
         id = id.from(_N, "DescribeLabelGroupOutput", "LabelGroupName"),
         type = "string",
         name = "LabelGroupName",
         target_id = prelude.String.id,
      }),
      LabelGroupArn = schema.new({
         id = id.from(_N, "DescribeLabelGroupOutput", "LabelGroupArn"),
         type = "string",
         name = "LabelGroupArn",
         target_id = prelude.String.id,
      }),
      FaultCodes = schema.new({
         id = id.from(_N, "DescribeLabelGroupOutput", "FaultCodes"),
         type = "list",
         name = "FaultCodes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "DescribeLabelGroupOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      UpdatedAt = schema.new({
         id = id.from(_N, "DescribeLabelGroupOutput", "UpdatedAt"),
         type = "timestamp",
         name = "UpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DescribeModelInput = schema.new({
   id = id.from(_N, "DescribeModelRequest"),
   type = "structure",
   members = {
      ModelName = schema.new({
         id = id.from(_N, "DescribeModelInput", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeModelOutput = schema.new({
   id = id.from(_N, "DescribeModelResponse"),
   type = "structure",
   members = {
      ModelName = schema.new({
         id = id.from(_N, "DescribeModelOutput", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
      }),
      ModelArn = schema.new({
         id = id.from(_N, "DescribeModelOutput", "ModelArn"),
         type = "string",
         name = "ModelArn",
         target_id = prelude.String.id,
      }),
      DatasetName = schema.new({
         id = id.from(_N, "DescribeModelOutput", "DatasetName"),
         type = "string",
         name = "DatasetName",
         target_id = prelude.String.id,
      }),
      DatasetArn = schema.new({
         id = id.from(_N, "DescribeModelOutput", "DatasetArn"),
         type = "string",
         name = "DatasetArn",
         target_id = prelude.String.id,
      }),
      Schema = schema.new({
         id = id.from(_N, "DescribeModelOutput", "Schema"),
         type = "string",
         name = "Schema",
         target_id = prelude.String.id,
         traits = {
            [traits.MEDIA_TYPE] = { value = "application/json" },
         },
      }),
      LabelsInputConfiguration = schema.new({
         id = id.from(_N, "DescribeModelOutput", "LabelsInputConfiguration"),
         type = "structure",
         name = "LabelsInputConfiguration",
         target_id = id.from(_N, "LabelsInputConfiguration"),
         target = M.LabelsInputConfiguration,
      }),
      TrainingDataStartTime = schema.new({
         id = id.from(_N, "DescribeModelOutput", "TrainingDataStartTime"),
         type = "timestamp",
         name = "TrainingDataStartTime",
         target_id = prelude.Timestamp.id,
      }),
      TrainingDataEndTime = schema.new({
         id = id.from(_N, "DescribeModelOutput", "TrainingDataEndTime"),
         type = "timestamp",
         name = "TrainingDataEndTime",
         target_id = prelude.Timestamp.id,
      }),
      EvaluationDataStartTime = schema.new({
         id = id.from(_N, "DescribeModelOutput", "EvaluationDataStartTime"),
         type = "timestamp",
         name = "EvaluationDataStartTime",
         target_id = prelude.Timestamp.id,
      }),
      EvaluationDataEndTime = schema.new({
         id = id.from(_N, "DescribeModelOutput", "EvaluationDataEndTime"),
         type = "timestamp",
         name = "EvaluationDataEndTime",
         target_id = prelude.Timestamp.id,
      }),
      RoleArn = schema.new({
         id = id.from(_N, "DescribeModelOutput", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
      }),
      DataPreProcessingConfiguration = schema.new({
         id = id.from(_N, "DescribeModelOutput", "DataPreProcessingConfiguration"),
         type = "structure",
         name = "DataPreProcessingConfiguration",
         target_id = id.from(_N, "DataPreProcessingConfiguration"),
         target = M.DataPreProcessingConfiguration,
      }),
      Status = schema.new({
         id = id.from(_N, "DescribeModelOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      TrainingExecutionStartTime = schema.new({
         id = id.from(_N, "DescribeModelOutput", "TrainingExecutionStartTime"),
         type = "timestamp",
         name = "TrainingExecutionStartTime",
         target_id = prelude.Timestamp.id,
      }),
      TrainingExecutionEndTime = schema.new({
         id = id.from(_N, "DescribeModelOutput", "TrainingExecutionEndTime"),
         type = "timestamp",
         name = "TrainingExecutionEndTime",
         target_id = prelude.Timestamp.id,
      }),
      FailedReason = schema.new({
         id = id.from(_N, "DescribeModelOutput", "FailedReason"),
         type = "string",
         name = "FailedReason",
         target_id = prelude.String.id,
      }),
      ModelMetrics = schema.new({
         id = id.from(_N, "DescribeModelOutput", "ModelMetrics"),
         type = "string",
         name = "ModelMetrics",
         target_id = prelude.String.id,
         traits = {
            [traits.MEDIA_TYPE] = { value = "application/json" },
         },
      }),
      LastUpdatedTime = schema.new({
         id = id.from(_N, "DescribeModelOutput", "LastUpdatedTime"),
         type = "timestamp",
         name = "LastUpdatedTime",
         target_id = prelude.Timestamp.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "DescribeModelOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      ServerSideKmsKeyId = schema.new({
         id = id.from(_N, "DescribeModelOutput", "ServerSideKmsKeyId"),
         type = "string",
         name = "ServerSideKmsKeyId",
         target_id = prelude.String.id,
      }),
      OffCondition = schema.new({
         id = id.from(_N, "DescribeModelOutput", "OffCondition"),
         type = "string",
         name = "OffCondition",
         target_id = prelude.String.id,
      }),
      SourceModelVersionArn = schema.new({
         id = id.from(_N, "DescribeModelOutput", "SourceModelVersionArn"),
         type = "string",
         name = "SourceModelVersionArn",
         target_id = prelude.String.id,
      }),
      ImportJobStartTime = schema.new({
         id = id.from(_N, "DescribeModelOutput", "ImportJobStartTime"),
         type = "timestamp",
         name = "ImportJobStartTime",
         target_id = prelude.Timestamp.id,
      }),
      ImportJobEndTime = schema.new({
         id = id.from(_N, "DescribeModelOutput", "ImportJobEndTime"),
         type = "timestamp",
         name = "ImportJobEndTime",
         target_id = prelude.Timestamp.id,
      }),
      ActiveModelVersion = schema.new({
         id = id.from(_N, "DescribeModelOutput", "ActiveModelVersion"),
         type = "long",
         name = "ActiveModelVersion",
         target_id = prelude.Long.id,
      }),
      ActiveModelVersionArn = schema.new({
         id = id.from(_N, "DescribeModelOutput", "ActiveModelVersionArn"),
         type = "string",
         name = "ActiveModelVersionArn",
         target_id = prelude.String.id,
      }),
      ModelVersionActivatedAt = schema.new({
         id = id.from(_N, "DescribeModelOutput", "ModelVersionActivatedAt"),
         type = "timestamp",
         name = "ModelVersionActivatedAt",
         target_id = prelude.Timestamp.id,
      }),
      PreviousActiveModelVersion = schema.new({
         id = id.from(_N, "DescribeModelOutput", "PreviousActiveModelVersion"),
         type = "long",
         name = "PreviousActiveModelVersion",
         target_id = prelude.Long.id,
      }),
      PreviousActiveModelVersionArn = schema.new({
         id = id.from(_N, "DescribeModelOutput", "PreviousActiveModelVersionArn"),
         type = "string",
         name = "PreviousActiveModelVersionArn",
         target_id = prelude.String.id,
      }),
      PreviousModelVersionActivatedAt = schema.new({
         id = id.from(_N, "DescribeModelOutput", "PreviousModelVersionActivatedAt"),
         type = "timestamp",
         name = "PreviousModelVersionActivatedAt",
         target_id = prelude.Timestamp.id,
      }),
      PriorModelMetrics = schema.new({
         id = id.from(_N, "DescribeModelOutput", "PriorModelMetrics"),
         type = "string",
         name = "PriorModelMetrics",
         target_id = prelude.String.id,
         traits = {
            [traits.MEDIA_TYPE] = { value = "application/json" },
         },
      }),
      LatestScheduledRetrainingFailedReason = schema.new({
         id = id.from(_N, "DescribeModelOutput", "LatestScheduledRetrainingFailedReason"),
         type = "string",
         name = "LatestScheduledRetrainingFailedReason",
         target_id = prelude.String.id,
      }),
      LatestScheduledRetrainingStatus = schema.new({
         id = id.from(_N, "DescribeModelOutput", "LatestScheduledRetrainingStatus"),
         type = "string",
         name = "LatestScheduledRetrainingStatus",
         target_id = prelude.String.id,
      }),
      LatestScheduledRetrainingModelVersion = schema.new({
         id = id.from(_N, "DescribeModelOutput", "LatestScheduledRetrainingModelVersion"),
         type = "long",
         name = "LatestScheduledRetrainingModelVersion",
         target_id = prelude.Long.id,
      }),
      LatestScheduledRetrainingStartTime = schema.new({
         id = id.from(_N, "DescribeModelOutput", "LatestScheduledRetrainingStartTime"),
         type = "timestamp",
         name = "LatestScheduledRetrainingStartTime",
         target_id = prelude.Timestamp.id,
      }),
      LatestScheduledRetrainingAvailableDataInDays = schema.new({
         id = id.from(_N, "DescribeModelOutput", "LatestScheduledRetrainingAvailableDataInDays"),
         type = "integer",
         name = "LatestScheduledRetrainingAvailableDataInDays",
         target_id = prelude.Integer.id,
      }),
      NextScheduledRetrainingStartDate = schema.new({
         id = id.from(_N, "DescribeModelOutput", "NextScheduledRetrainingStartDate"),
         type = "timestamp",
         name = "NextScheduledRetrainingStartDate",
         target_id = prelude.Timestamp.id,
      }),
      AccumulatedInferenceDataStartTime = schema.new({
         id = id.from(_N, "DescribeModelOutput", "AccumulatedInferenceDataStartTime"),
         type = "timestamp",
         name = "AccumulatedInferenceDataStartTime",
         target_id = prelude.Timestamp.id,
      }),
      AccumulatedInferenceDataEndTime = schema.new({
         id = id.from(_N, "DescribeModelOutput", "AccumulatedInferenceDataEndTime"),
         type = "timestamp",
         name = "AccumulatedInferenceDataEndTime",
         target_id = prelude.Timestamp.id,
      }),
      RetrainingSchedulerStatus = schema.new({
         id = id.from(_N, "DescribeModelOutput", "RetrainingSchedulerStatus"),
         type = "string",
         name = "RetrainingSchedulerStatus",
         target_id = prelude.String.id,
      }),
      ModelDiagnosticsOutputConfiguration = schema.new({
         id = id.from(_N, "DescribeModelOutput", "ModelDiagnosticsOutputConfiguration"),
         type = "structure",
         name = "ModelDiagnosticsOutputConfiguration",
         target_id = id.from(_N, "ModelDiagnosticsOutputConfiguration"),
         target = M.ModelDiagnosticsOutputConfiguration,
      }),
      ModelQuality = schema.new({
         id = id.from(_N, "DescribeModelOutput", "ModelQuality"),
         type = "string",
         name = "ModelQuality",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeModelVersionInput = schema.new({
   id = id.from(_N, "DescribeModelVersionRequest"),
   type = "structure",
   members = {
      ModelName = schema.new({
         id = id.from(_N, "DescribeModelVersionInput", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ModelVersion = schema.new({
         id = id.from(_N, "DescribeModelVersionInput", "ModelVersion"),
         type = "long",
         name = "ModelVersion",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeModelVersionOutput = schema.new({
   id = id.from(_N, "DescribeModelVersionResponse"),
   type = "structure",
   members = {
      ModelName = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
      }),
      ModelArn = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "ModelArn"),
         type = "string",
         name = "ModelArn",
         target_id = prelude.String.id,
      }),
      ModelVersion = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "ModelVersion"),
         type = "long",
         name = "ModelVersion",
         target_id = prelude.Long.id,
      }),
      ModelVersionArn = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "ModelVersionArn"),
         type = "string",
         name = "ModelVersionArn",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      SourceType = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "SourceType"),
         type = "string",
         name = "SourceType",
         target_id = prelude.String.id,
      }),
      DatasetName = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "DatasetName"),
         type = "string",
         name = "DatasetName",
         target_id = prelude.String.id,
      }),
      DatasetArn = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "DatasetArn"),
         type = "string",
         name = "DatasetArn",
         target_id = prelude.String.id,
      }),
      Schema = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "Schema"),
         type = "string",
         name = "Schema",
         target_id = prelude.String.id,
      }),
      LabelsInputConfiguration = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "LabelsInputConfiguration"),
         type = "structure",
         name = "LabelsInputConfiguration",
         target_id = id.from(_N, "LabelsInputConfiguration"),
         target = M.LabelsInputConfiguration,
      }),
      TrainingDataStartTime = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "TrainingDataStartTime"),
         type = "timestamp",
         name = "TrainingDataStartTime",
         target_id = prelude.Timestamp.id,
      }),
      TrainingDataEndTime = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "TrainingDataEndTime"),
         type = "timestamp",
         name = "TrainingDataEndTime",
         target_id = prelude.Timestamp.id,
      }),
      EvaluationDataStartTime = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "EvaluationDataStartTime"),
         type = "timestamp",
         name = "EvaluationDataStartTime",
         target_id = prelude.Timestamp.id,
      }),
      EvaluationDataEndTime = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "EvaluationDataEndTime"),
         type = "timestamp",
         name = "EvaluationDataEndTime",
         target_id = prelude.Timestamp.id,
      }),
      RoleArn = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
      }),
      DataPreProcessingConfiguration = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "DataPreProcessingConfiguration"),
         type = "structure",
         name = "DataPreProcessingConfiguration",
         target_id = id.from(_N, "DataPreProcessingConfiguration"),
         target = M.DataPreProcessingConfiguration,
      }),
      TrainingExecutionStartTime = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "TrainingExecutionStartTime"),
         type = "timestamp",
         name = "TrainingExecutionStartTime",
         target_id = prelude.Timestamp.id,
      }),
      TrainingExecutionEndTime = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "TrainingExecutionEndTime"),
         type = "timestamp",
         name = "TrainingExecutionEndTime",
         target_id = prelude.Timestamp.id,
      }),
      FailedReason = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "FailedReason"),
         type = "string",
         name = "FailedReason",
         target_id = prelude.String.id,
      }),
      ModelMetrics = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "ModelMetrics"),
         type = "string",
         name = "ModelMetrics",
         target_id = prelude.String.id,
      }),
      LastUpdatedTime = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "LastUpdatedTime"),
         type = "timestamp",
         name = "LastUpdatedTime",
         target_id = prelude.Timestamp.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      ServerSideKmsKeyId = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "ServerSideKmsKeyId"),
         type = "string",
         name = "ServerSideKmsKeyId",
         target_id = prelude.String.id,
      }),
      OffCondition = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "OffCondition"),
         type = "string",
         name = "OffCondition",
         target_id = prelude.String.id,
      }),
      SourceModelVersionArn = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "SourceModelVersionArn"),
         type = "string",
         name = "SourceModelVersionArn",
         target_id = prelude.String.id,
      }),
      ImportJobStartTime = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "ImportJobStartTime"),
         type = "timestamp",
         name = "ImportJobStartTime",
         target_id = prelude.Timestamp.id,
      }),
      ImportJobEndTime = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "ImportJobEndTime"),
         type = "timestamp",
         name = "ImportJobEndTime",
         target_id = prelude.Timestamp.id,
      }),
      ImportedDataSizeInBytes = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "ImportedDataSizeInBytes"),
         type = "long",
         name = "ImportedDataSizeInBytes",
         target_id = prelude.Long.id,
      }),
      PriorModelMetrics = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "PriorModelMetrics"),
         type = "string",
         name = "PriorModelMetrics",
         target_id = prelude.String.id,
      }),
      RetrainingAvailableDataInDays = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "RetrainingAvailableDataInDays"),
         type = "integer",
         name = "RetrainingAvailableDataInDays",
         target_id = prelude.Integer.id,
      }),
      AutoPromotionResult = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "AutoPromotionResult"),
         type = "string",
         name = "AutoPromotionResult",
         target_id = prelude.String.id,
      }),
      AutoPromotionResultReason = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "AutoPromotionResultReason"),
         type = "string",
         name = "AutoPromotionResultReason",
         target_id = prelude.String.id,
      }),
      ModelDiagnosticsOutputConfiguration = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "ModelDiagnosticsOutputConfiguration"),
         type = "structure",
         name = "ModelDiagnosticsOutputConfiguration",
         target_id = id.from(_N, "ModelDiagnosticsOutputConfiguration"),
         target = M.ModelDiagnosticsOutputConfiguration,
      }),
      ModelDiagnosticsResultsObject = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "ModelDiagnosticsResultsObject"),
         type = "structure",
         name = "ModelDiagnosticsResultsObject",
         target_id = id.from(_N, "S3Object"),
         target = M.S3Object,
      }),
      ModelQuality = schema.new({
         id = id.from(_N, "DescribeModelVersionOutput", "ModelQuality"),
         type = "string",
         name = "ModelQuality",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeResourcePolicyInput = schema.new({
   id = id.from(_N, "DescribeResourcePolicyRequest"),
   type = "structure",
   members = {
      ResourceArn = schema.new({
         id = id.from(_N, "DescribeResourcePolicyInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeResourcePolicyOutput = schema.new({
   id = id.from(_N, "DescribeResourcePolicyResponse"),
   type = "structure",
   members = {
      PolicyRevisionId = schema.new({
         id = id.from(_N, "DescribeResourcePolicyOutput", "PolicyRevisionId"),
         type = "string",
         name = "PolicyRevisionId",
         target_id = prelude.String.id,
      }),
      ResourcePolicy = schema.new({
         id = id.from(_N, "DescribeResourcePolicyOutput", "ResourcePolicy"),
         type = "string",
         name = "ResourcePolicy",
         target_id = prelude.String.id,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "DescribeResourcePolicyOutput", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
      }),
      LastModifiedTime = schema.new({
         id = id.from(_N, "DescribeResourcePolicyOutput", "LastModifiedTime"),
         type = "timestamp",
         name = "LastModifiedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DescribeRetrainingSchedulerInput = schema.new({
   id = id.from(_N, "DescribeRetrainingSchedulerRequest"),
   type = "structure",
   members = {
      ModelName = schema.new({
         id = id.from(_N, "DescribeRetrainingSchedulerInput", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeRetrainingSchedulerOutput = schema.new({
   id = id.from(_N, "DescribeRetrainingSchedulerResponse"),
   type = "structure",
   members = {
      ModelName = schema.new({
         id = id.from(_N, "DescribeRetrainingSchedulerOutput", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
      }),
      ModelArn = schema.new({
         id = id.from(_N, "DescribeRetrainingSchedulerOutput", "ModelArn"),
         type = "string",
         name = "ModelArn",
         target_id = prelude.String.id,
      }),
      RetrainingStartDate = schema.new({
         id = id.from(_N, "DescribeRetrainingSchedulerOutput", "RetrainingStartDate"),
         type = "timestamp",
         name = "RetrainingStartDate",
         target_id = prelude.Timestamp.id,
      }),
      RetrainingFrequency = schema.new({
         id = id.from(_N, "DescribeRetrainingSchedulerOutput", "RetrainingFrequency"),
         type = "string",
         name = "RetrainingFrequency",
         target_id = prelude.String.id,
      }),
      LookbackWindow = schema.new({
         id = id.from(_N, "DescribeRetrainingSchedulerOutput", "LookbackWindow"),
         type = "string",
         name = "LookbackWindow",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "DescribeRetrainingSchedulerOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      PromoteMode = schema.new({
         id = id.from(_N, "DescribeRetrainingSchedulerOutput", "PromoteMode"),
         type = "string",
         name = "PromoteMode",
         target_id = prelude.String.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "DescribeRetrainingSchedulerOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      UpdatedAt = schema.new({
         id = id.from(_N, "DescribeRetrainingSchedulerOutput", "UpdatedAt"),
         type = "timestamp",
         name = "UpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ImportDatasetInput = schema.new({
   id = id.from(_N, "ImportDatasetRequest"),
   type = "structure",
   members = {
      SourceDatasetArn = schema.new({
         id = id.from(_N, "ImportDatasetInput", "SourceDatasetArn"),
         type = "string",
         name = "SourceDatasetArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DatasetName = schema.new({
         id = id.from(_N, "ImportDatasetInput", "DatasetName"),
         type = "string",
         name = "DatasetName",
         target_id = prelude.String.id,
      }),
      ClientToken = schema.new({
         id = id.from(_N, "ImportDatasetInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      ServerSideKmsKeyId = schema.new({
         id = id.from(_N, "ImportDatasetInput", "ServerSideKmsKeyId"),
         type = "string",
         name = "ServerSideKmsKeyId",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "ImportDatasetInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.ImportDatasetOutput = schema.new({
   id = id.from(_N, "ImportDatasetResponse"),
   type = "structure",
   members = {
      DatasetName = schema.new({
         id = id.from(_N, "ImportDatasetOutput", "DatasetName"),
         type = "string",
         name = "DatasetName",
         target_id = prelude.String.id,
      }),
      DatasetArn = schema.new({
         id = id.from(_N, "ImportDatasetOutput", "DatasetArn"),
         type = "string",
         name = "DatasetArn",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "ImportDatasetOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      JobId = schema.new({
         id = id.from(_N, "ImportDatasetOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
      }),
   },
})

M.ImportModelVersionInput = schema.new({
   id = id.from(_N, "ImportModelVersionRequest"),
   type = "structure",
   members = {
      SourceModelVersionArn = schema.new({
         id = id.from(_N, "ImportModelVersionInput", "SourceModelVersionArn"),
         type = "string",
         name = "SourceModelVersionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ModelName = schema.new({
         id = id.from(_N, "ImportModelVersionInput", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
      }),
      DatasetName = schema.new({
         id = id.from(_N, "ImportModelVersionInput", "DatasetName"),
         type = "string",
         name = "DatasetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LabelsInputConfiguration = schema.new({
         id = id.from(_N, "ImportModelVersionInput", "LabelsInputConfiguration"),
         type = "structure",
         name = "LabelsInputConfiguration",
         target_id = id.from(_N, "LabelsInputConfiguration"),
         target = M.LabelsInputConfiguration,
      }),
      ClientToken = schema.new({
         id = id.from(_N, "ImportModelVersionInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      RoleArn = schema.new({
         id = id.from(_N, "ImportModelVersionInput", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
      }),
      ServerSideKmsKeyId = schema.new({
         id = id.from(_N, "ImportModelVersionInput", "ServerSideKmsKeyId"),
         type = "string",
         name = "ServerSideKmsKeyId",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "ImportModelVersionInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
      InferenceDataImportStrategy = schema.new({
         id = id.from(_N, "ImportModelVersionInput", "InferenceDataImportStrategy"),
         type = "string",
         name = "InferenceDataImportStrategy",
         target_id = prelude.String.id,
      }),
   },
})

M.ImportModelVersionOutput = schema.new({
   id = id.from(_N, "ImportModelVersionResponse"),
   type = "structure",
   members = {
      ModelName = schema.new({
         id = id.from(_N, "ImportModelVersionOutput", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
      }),
      ModelArn = schema.new({
         id = id.from(_N, "ImportModelVersionOutput", "ModelArn"),
         type = "string",
         name = "ModelArn",
         target_id = prelude.String.id,
      }),
      ModelVersionArn = schema.new({
         id = id.from(_N, "ImportModelVersionOutput", "ModelVersionArn"),
         type = "string",
         name = "ModelVersionArn",
         target_id = prelude.String.id,
      }),
      ModelVersion = schema.new({
         id = id.from(_N, "ImportModelVersionOutput", "ModelVersion"),
         type = "long",
         name = "ModelVersion",
         target_id = prelude.Long.id,
      }),
      Status = schema.new({
         id = id.from(_N, "ImportModelVersionOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDataIngestionJobsInput = schema.new({
   id = id.from(_N, "ListDataIngestionJobsRequest"),
   type = "structure",
   members = {
      DatasetName = schema.new({
         id = id.from(_N, "ListDataIngestionJobsInput", "DatasetName"),
         type = "string",
         name = "DatasetName",
         target_id = prelude.String.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListDataIngestionJobsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListDataIngestionJobsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      Status = schema.new({
         id = id.from(_N, "ListDataIngestionJobsInput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
})

M.DataIngestionJobSummary = schema.new({
   id = id.from(_N, "DataIngestionJobSummary"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "DataIngestionJobSummary", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
      }),
      DatasetName = schema.new({
         id = id.from(_N, "DataIngestionJobSummary", "DatasetName"),
         type = "string",
         name = "DatasetName",
         target_id = prelude.String.id,
      }),
      DatasetArn = schema.new({
         id = id.from(_N, "DataIngestionJobSummary", "DatasetArn"),
         type = "string",
         name = "DatasetArn",
         target_id = prelude.String.id,
      }),
      IngestionInputConfiguration = schema.new({
         id = id.from(_N, "DataIngestionJobSummary", "IngestionInputConfiguration"),
         type = "structure",
         name = "IngestionInputConfiguration",
         target_id = id.from(_N, "IngestionInputConfiguration"),
         target = M.IngestionInputConfiguration,
      }),
      Status = schema.new({
         id = id.from(_N, "DataIngestionJobSummary", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDataIngestionJobsOutput = schema.new({
   id = id.from(_N, "ListDataIngestionJobsResponse"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListDataIngestionJobsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      DataIngestionJobSummaries = schema.new({
         id = id.from(_N, "ListDataIngestionJobsOutput", "DataIngestionJobSummaries"),
         type = "list",
         name = "DataIngestionJobSummaries",
         target_id = prelude.Document.id,
         list_member = M.DataIngestionJobSummary,
      }),
   },
})

M.ListDatasetsInput = schema.new({
   id = id.from(_N, "ListDatasetsRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListDatasetsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListDatasetsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      DatasetNameBeginsWith = schema.new({
         id = id.from(_N, "ListDatasetsInput", "DatasetNameBeginsWith"),
         type = "string",
         name = "DatasetNameBeginsWith",
         target_id = prelude.String.id,
      }),
   },
})

M.DatasetSummary = schema.new({
   id = id.from(_N, "DatasetSummary"),
   type = "structure",
   members = {
      DatasetName = schema.new({
         id = id.from(_N, "DatasetSummary", "DatasetName"),
         type = "string",
         name = "DatasetName",
         target_id = prelude.String.id,
      }),
      DatasetArn = schema.new({
         id = id.from(_N, "DatasetSummary", "DatasetArn"),
         type = "string",
         name = "DatasetArn",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "DatasetSummary", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "DatasetSummary", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListDatasetsOutput = schema.new({
   id = id.from(_N, "ListDatasetsResponse"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListDatasetsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      DatasetSummaries = schema.new({
         id = id.from(_N, "ListDatasetsOutput", "DatasetSummaries"),
         type = "list",
         name = "DatasetSummaries",
         target_id = prelude.Document.id,
         list_member = M.DatasetSummary,
      }),
   },
})

M.ListInferenceEventsInput = schema.new({
   id = id.from(_N, "ListInferenceEventsRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListInferenceEventsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListInferenceEventsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      InferenceSchedulerName = schema.new({
         id = id.from(_N, "ListInferenceEventsInput", "InferenceSchedulerName"),
         type = "string",
         name = "InferenceSchedulerName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IntervalStartTime = schema.new({
         id = id.from(_N, "ListInferenceEventsInput", "IntervalStartTime"),
         type = "timestamp",
         name = "IntervalStartTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IntervalEndTime = schema.new({
         id = id.from(_N, "ListInferenceEventsInput", "IntervalEndTime"),
         type = "timestamp",
         name = "IntervalEndTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.InferenceEventSummary = schema.new({
   id = id.from(_N, "InferenceEventSummary"),
   type = "structure",
   members = {
      InferenceSchedulerArn = schema.new({
         id = id.from(_N, "InferenceEventSummary", "InferenceSchedulerArn"),
         type = "string",
         name = "InferenceSchedulerArn",
         target_id = prelude.String.id,
      }),
      InferenceSchedulerName = schema.new({
         id = id.from(_N, "InferenceEventSummary", "InferenceSchedulerName"),
         type = "string",
         name = "InferenceSchedulerName",
         target_id = prelude.String.id,
      }),
      EventStartTime = schema.new({
         id = id.from(_N, "InferenceEventSummary", "EventStartTime"),
         type = "timestamp",
         name = "EventStartTime",
         target_id = prelude.Timestamp.id,
      }),
      EventEndTime = schema.new({
         id = id.from(_N, "InferenceEventSummary", "EventEndTime"),
         type = "timestamp",
         name = "EventEndTime",
         target_id = prelude.Timestamp.id,
      }),
      Diagnostics = schema.new({
         id = id.from(_N, "InferenceEventSummary", "Diagnostics"),
         type = "string",
         name = "Diagnostics",
         target_id = prelude.String.id,
      }),
      EventDurationInSeconds = schema.new({
         id = id.from(_N, "InferenceEventSummary", "EventDurationInSeconds"),
         type = "long",
         name = "EventDurationInSeconds",
         target_id = prelude.Long.id,
      }),
   },
})

M.ListInferenceEventsOutput = schema.new({
   id = id.from(_N, "ListInferenceEventsResponse"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListInferenceEventsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      InferenceEventSummaries = schema.new({
         id = id.from(_N, "ListInferenceEventsOutput", "InferenceEventSummaries"),
         type = "list",
         name = "InferenceEventSummaries",
         target_id = prelude.Document.id,
         list_member = M.InferenceEventSummary,
      }),
   },
})

M.ListInferenceExecutionsInput = schema.new({
   id = id.from(_N, "ListInferenceExecutionsRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListInferenceExecutionsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListInferenceExecutionsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      InferenceSchedulerName = schema.new({
         id = id.from(_N, "ListInferenceExecutionsInput", "InferenceSchedulerName"),
         type = "string",
         name = "InferenceSchedulerName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DataStartTimeAfter = schema.new({
         id = id.from(_N, "ListInferenceExecutionsInput", "DataStartTimeAfter"),
         type = "timestamp",
         name = "DataStartTimeAfter",
         target_id = prelude.Timestamp.id,
      }),
      DataEndTimeBefore = schema.new({
         id = id.from(_N, "ListInferenceExecutionsInput", "DataEndTimeBefore"),
         type = "timestamp",
         name = "DataEndTimeBefore",
         target_id = prelude.Timestamp.id,
      }),
      Status = schema.new({
         id = id.from(_N, "ListInferenceExecutionsInput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
})

M.InferenceExecutionSummary = schema.new({
   id = id.from(_N, "InferenceExecutionSummary"),
   type = "structure",
   members = {
      ModelName = schema.new({
         id = id.from(_N, "InferenceExecutionSummary", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
      }),
      ModelArn = schema.new({
         id = id.from(_N, "InferenceExecutionSummary", "ModelArn"),
         type = "string",
         name = "ModelArn",
         target_id = prelude.String.id,
      }),
      InferenceSchedulerName = schema.new({
         id = id.from(_N, "InferenceExecutionSummary", "InferenceSchedulerName"),
         type = "string",
         name = "InferenceSchedulerName",
         target_id = prelude.String.id,
      }),
      InferenceSchedulerArn = schema.new({
         id = id.from(_N, "InferenceExecutionSummary", "InferenceSchedulerArn"),
         type = "string",
         name = "InferenceSchedulerArn",
         target_id = prelude.String.id,
      }),
      ScheduledStartTime = schema.new({
         id = id.from(_N, "InferenceExecutionSummary", "ScheduledStartTime"),
         type = "timestamp",
         name = "ScheduledStartTime",
         target_id = prelude.Timestamp.id,
      }),
      DataStartTime = schema.new({
         id = id.from(_N, "InferenceExecutionSummary", "DataStartTime"),
         type = "timestamp",
         name = "DataStartTime",
         target_id = prelude.Timestamp.id,
      }),
      DataEndTime = schema.new({
         id = id.from(_N, "InferenceExecutionSummary", "DataEndTime"),
         type = "timestamp",
         name = "DataEndTime",
         target_id = prelude.Timestamp.id,
      }),
      DataInputConfiguration = schema.new({
         id = id.from(_N, "InferenceExecutionSummary", "DataInputConfiguration"),
         type = "structure",
         name = "DataInputConfiguration",
         target_id = id.from(_N, "InferenceInputConfiguration"),
         target = M.InferenceInputConfiguration,
      }),
      DataOutputConfiguration = schema.new({
         id = id.from(_N, "InferenceExecutionSummary", "DataOutputConfiguration"),
         type = "structure",
         name = "DataOutputConfiguration",
         target_id = id.from(_N, "InferenceOutputConfiguration"),
         target = M.InferenceOutputConfiguration,
      }),
      CustomerResultObject = schema.new({
         id = id.from(_N, "InferenceExecutionSummary", "CustomerResultObject"),
         type = "structure",
         name = "CustomerResultObject",
         target_id = id.from(_N, "S3Object"),
         target = M.S3Object,
      }),
      Status = schema.new({
         id = id.from(_N, "InferenceExecutionSummary", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      FailedReason = schema.new({
         id = id.from(_N, "InferenceExecutionSummary", "FailedReason"),
         type = "string",
         name = "FailedReason",
         target_id = prelude.String.id,
      }),
      ModelVersion = schema.new({
         id = id.from(_N, "InferenceExecutionSummary", "ModelVersion"),
         type = "long",
         name = "ModelVersion",
         target_id = prelude.Long.id,
      }),
      ModelVersionArn = schema.new({
         id = id.from(_N, "InferenceExecutionSummary", "ModelVersionArn"),
         type = "string",
         name = "ModelVersionArn",
         target_id = prelude.String.id,
      }),
   },
})

M.ListInferenceExecutionsOutput = schema.new({
   id = id.from(_N, "ListInferenceExecutionsResponse"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListInferenceExecutionsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      InferenceExecutionSummaries = schema.new({
         id = id.from(_N, "ListInferenceExecutionsOutput", "InferenceExecutionSummaries"),
         type = "list",
         name = "InferenceExecutionSummaries",
         target_id = prelude.Document.id,
         list_member = M.InferenceExecutionSummary,
      }),
   },
})

M.ListInferenceSchedulersInput = schema.new({
   id = id.from(_N, "ListInferenceSchedulersRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListInferenceSchedulersInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListInferenceSchedulersInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      InferenceSchedulerNameBeginsWith = schema.new({
         id = id.from(_N, "ListInferenceSchedulersInput", "InferenceSchedulerNameBeginsWith"),
         type = "string",
         name = "InferenceSchedulerNameBeginsWith",
         target_id = prelude.String.id,
      }),
      ModelName = schema.new({
         id = id.from(_N, "ListInferenceSchedulersInput", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "ListInferenceSchedulersInput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
})

M.InferenceSchedulerSummary = schema.new({
   id = id.from(_N, "InferenceSchedulerSummary"),
   type = "structure",
   members = {
      ModelName = schema.new({
         id = id.from(_N, "InferenceSchedulerSummary", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
      }),
      ModelArn = schema.new({
         id = id.from(_N, "InferenceSchedulerSummary", "ModelArn"),
         type = "string",
         name = "ModelArn",
         target_id = prelude.String.id,
      }),
      InferenceSchedulerName = schema.new({
         id = id.from(_N, "InferenceSchedulerSummary", "InferenceSchedulerName"),
         type = "string",
         name = "InferenceSchedulerName",
         target_id = prelude.String.id,
      }),
      InferenceSchedulerArn = schema.new({
         id = id.from(_N, "InferenceSchedulerSummary", "InferenceSchedulerArn"),
         type = "string",
         name = "InferenceSchedulerArn",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "InferenceSchedulerSummary", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      DataDelayOffsetInMinutes = schema.new({
         id = id.from(_N, "InferenceSchedulerSummary", "DataDelayOffsetInMinutes"),
         type = "long",
         name = "DataDelayOffsetInMinutes",
         target_id = prelude.Long.id,
      }),
      DataUploadFrequency = schema.new({
         id = id.from(_N, "InferenceSchedulerSummary", "DataUploadFrequency"),
         type = "string",
         name = "DataUploadFrequency",
         target_id = prelude.String.id,
      }),
      LatestInferenceResult = schema.new({
         id = id.from(_N, "InferenceSchedulerSummary", "LatestInferenceResult"),
         type = "string",
         name = "LatestInferenceResult",
         target_id = prelude.String.id,
      }),
   },
})

M.ListInferenceSchedulersOutput = schema.new({
   id = id.from(_N, "ListInferenceSchedulersResponse"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListInferenceSchedulersOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      InferenceSchedulerSummaries = schema.new({
         id = id.from(_N, "ListInferenceSchedulersOutput", "InferenceSchedulerSummaries"),
         type = "list",
         name = "InferenceSchedulerSummaries",
         target_id = prelude.Document.id,
         list_member = M.InferenceSchedulerSummary,
      }),
   },
})

M.ListLabelGroupsInput = schema.new({
   id = id.from(_N, "ListLabelGroupsRequest"),
   type = "structure",
   members = {
      LabelGroupNameBeginsWith = schema.new({
         id = id.from(_N, "ListLabelGroupsInput", "LabelGroupNameBeginsWith"),
         type = "string",
         name = "LabelGroupNameBeginsWith",
         target_id = prelude.String.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListLabelGroupsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListLabelGroupsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.LabelGroupSummary = schema.new({
   id = id.from(_N, "LabelGroupSummary"),
   type = "structure",
   members = {
      LabelGroupName = schema.new({
         id = id.from(_N, "LabelGroupSummary", "LabelGroupName"),
         type = "string",
         name = "LabelGroupName",
         target_id = prelude.String.id,
      }),
      LabelGroupArn = schema.new({
         id = id.from(_N, "LabelGroupSummary", "LabelGroupArn"),
         type = "string",
         name = "LabelGroupArn",
         target_id = prelude.String.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "LabelGroupSummary", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      UpdatedAt = schema.new({
         id = id.from(_N, "LabelGroupSummary", "UpdatedAt"),
         type = "timestamp",
         name = "UpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListLabelGroupsOutput = schema.new({
   id = id.from(_N, "ListLabelGroupsResponse"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListLabelGroupsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      LabelGroupSummaries = schema.new({
         id = id.from(_N, "ListLabelGroupsOutput", "LabelGroupSummaries"),
         type = "list",
         name = "LabelGroupSummaries",
         target_id = prelude.Document.id,
         list_member = M.LabelGroupSummary,
      }),
   },
})

M.ListLabelsInput = schema.new({
   id = id.from(_N, "ListLabelsRequest"),
   type = "structure",
   members = {
      LabelGroupName = schema.new({
         id = id.from(_N, "ListLabelsInput", "LabelGroupName"),
         type = "string",
         name = "LabelGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IntervalStartTime = schema.new({
         id = id.from(_N, "ListLabelsInput", "IntervalStartTime"),
         type = "timestamp",
         name = "IntervalStartTime",
         target_id = prelude.Timestamp.id,
      }),
      IntervalEndTime = schema.new({
         id = id.from(_N, "ListLabelsInput", "IntervalEndTime"),
         type = "timestamp",
         name = "IntervalEndTime",
         target_id = prelude.Timestamp.id,
      }),
      FaultCode = schema.new({
         id = id.from(_N, "ListLabelsInput", "FaultCode"),
         type = "string",
         name = "FaultCode",
         target_id = prelude.String.id,
      }),
      Equipment = schema.new({
         id = id.from(_N, "ListLabelsInput", "Equipment"),
         type = "string",
         name = "Equipment",
         target_id = prelude.String.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListLabelsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListLabelsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.LabelSummary = schema.new({
   id = id.from(_N, "LabelSummary"),
   type = "structure",
   members = {
      LabelGroupName = schema.new({
         id = id.from(_N, "LabelSummary", "LabelGroupName"),
         type = "string",
         name = "LabelGroupName",
         target_id = prelude.String.id,
      }),
      LabelId = schema.new({
         id = id.from(_N, "LabelSummary", "LabelId"),
         type = "string",
         name = "LabelId",
         target_id = prelude.String.id,
      }),
      LabelGroupArn = schema.new({
         id = id.from(_N, "LabelSummary", "LabelGroupArn"),
         type = "string",
         name = "LabelGroupArn",
         target_id = prelude.String.id,
      }),
      StartTime = schema.new({
         id = id.from(_N, "LabelSummary", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
      }),
      EndTime = schema.new({
         id = id.from(_N, "LabelSummary", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
      }),
      Rating = schema.new({
         id = id.from(_N, "LabelSummary", "Rating"),
         type = "string",
         name = "Rating",
         target_id = prelude.String.id,
      }),
      FaultCode = schema.new({
         id = id.from(_N, "LabelSummary", "FaultCode"),
         type = "string",
         name = "FaultCode",
         target_id = prelude.String.id,
      }),
      Equipment = schema.new({
         id = id.from(_N, "LabelSummary", "Equipment"),
         type = "string",
         name = "Equipment",
         target_id = prelude.String.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "LabelSummary", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListLabelsOutput = schema.new({
   id = id.from(_N, "ListLabelsResponse"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListLabelsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      LabelSummaries = schema.new({
         id = id.from(_N, "ListLabelsOutput", "LabelSummaries"),
         type = "list",
         name = "LabelSummaries",
         target_id = prelude.Document.id,
         list_member = M.LabelSummary,
      }),
   },
})

M.ListModelsInput = schema.new({
   id = id.from(_N, "ListModelsRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListModelsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListModelsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      Status = schema.new({
         id = id.from(_N, "ListModelsInput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      ModelNameBeginsWith = schema.new({
         id = id.from(_N, "ListModelsInput", "ModelNameBeginsWith"),
         type = "string",
         name = "ModelNameBeginsWith",
         target_id = prelude.String.id,
      }),
      DatasetNameBeginsWith = schema.new({
         id = id.from(_N, "ListModelsInput", "DatasetNameBeginsWith"),
         type = "string",
         name = "DatasetNameBeginsWith",
         target_id = prelude.String.id,
      }),
   },
})

M.ModelSummary = schema.new({
   id = id.from(_N, "ModelSummary"),
   type = "structure",
   members = {
      ModelName = schema.new({
         id = id.from(_N, "ModelSummary", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
      }),
      ModelArn = schema.new({
         id = id.from(_N, "ModelSummary", "ModelArn"),
         type = "string",
         name = "ModelArn",
         target_id = prelude.String.id,
      }),
      DatasetName = schema.new({
         id = id.from(_N, "ModelSummary", "DatasetName"),
         type = "string",
         name = "DatasetName",
         target_id = prelude.String.id,
      }),
      DatasetArn = schema.new({
         id = id.from(_N, "ModelSummary", "DatasetArn"),
         type = "string",
         name = "DatasetArn",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "ModelSummary", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "ModelSummary", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      ActiveModelVersion = schema.new({
         id = id.from(_N, "ModelSummary", "ActiveModelVersion"),
         type = "long",
         name = "ActiveModelVersion",
         target_id = prelude.Long.id,
      }),
      ActiveModelVersionArn = schema.new({
         id = id.from(_N, "ModelSummary", "ActiveModelVersionArn"),
         type = "string",
         name = "ActiveModelVersionArn",
         target_id = prelude.String.id,
      }),
      LatestScheduledRetrainingStatus = schema.new({
         id = id.from(_N, "ModelSummary", "LatestScheduledRetrainingStatus"),
         type = "string",
         name = "LatestScheduledRetrainingStatus",
         target_id = prelude.String.id,
      }),
      LatestScheduledRetrainingModelVersion = schema.new({
         id = id.from(_N, "ModelSummary", "LatestScheduledRetrainingModelVersion"),
         type = "long",
         name = "LatestScheduledRetrainingModelVersion",
         target_id = prelude.Long.id,
      }),
      LatestScheduledRetrainingStartTime = schema.new({
         id = id.from(_N, "ModelSummary", "LatestScheduledRetrainingStartTime"),
         type = "timestamp",
         name = "LatestScheduledRetrainingStartTime",
         target_id = prelude.Timestamp.id,
      }),
      NextScheduledRetrainingStartDate = schema.new({
         id = id.from(_N, "ModelSummary", "NextScheduledRetrainingStartDate"),
         type = "timestamp",
         name = "NextScheduledRetrainingStartDate",
         target_id = prelude.Timestamp.id,
      }),
      RetrainingSchedulerStatus = schema.new({
         id = id.from(_N, "ModelSummary", "RetrainingSchedulerStatus"),
         type = "string",
         name = "RetrainingSchedulerStatus",
         target_id = prelude.String.id,
      }),
      ModelDiagnosticsOutputConfiguration = schema.new({
         id = id.from(_N, "ModelSummary", "ModelDiagnosticsOutputConfiguration"),
         type = "structure",
         name = "ModelDiagnosticsOutputConfiguration",
         target_id = id.from(_N, "ModelDiagnosticsOutputConfiguration"),
         target = M.ModelDiagnosticsOutputConfiguration,
      }),
      ModelQuality = schema.new({
         id = id.from(_N, "ModelSummary", "ModelQuality"),
         type = "string",
         name = "ModelQuality",
         target_id = prelude.String.id,
      }),
   },
})

M.ListModelsOutput = schema.new({
   id = id.from(_N, "ListModelsResponse"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListModelsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      ModelSummaries = schema.new({
         id = id.from(_N, "ListModelsOutput", "ModelSummaries"),
         type = "list",
         name = "ModelSummaries",
         target_id = prelude.Document.id,
         list_member = M.ModelSummary,
      }),
   },
})

M.ListModelVersionsInput = schema.new({
   id = id.from(_N, "ListModelVersionsRequest"),
   type = "structure",
   members = {
      ModelName = schema.new({
         id = id.from(_N, "ListModelVersionsInput", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListModelVersionsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListModelVersionsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      Status = schema.new({
         id = id.from(_N, "ListModelVersionsInput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      SourceType = schema.new({
         id = id.from(_N, "ListModelVersionsInput", "SourceType"),
         type = "string",
         name = "SourceType",
         target_id = prelude.String.id,
      }),
      CreatedAtEndTime = schema.new({
         id = id.from(_N, "ListModelVersionsInput", "CreatedAtEndTime"),
         type = "timestamp",
         name = "CreatedAtEndTime",
         target_id = prelude.Timestamp.id,
      }),
      CreatedAtStartTime = schema.new({
         id = id.from(_N, "ListModelVersionsInput", "CreatedAtStartTime"),
         type = "timestamp",
         name = "CreatedAtStartTime",
         target_id = prelude.Timestamp.id,
      }),
      MaxModelVersion = schema.new({
         id = id.from(_N, "ListModelVersionsInput", "MaxModelVersion"),
         type = "long",
         name = "MaxModelVersion",
         target_id = prelude.Long.id,
      }),
      MinModelVersion = schema.new({
         id = id.from(_N, "ListModelVersionsInput", "MinModelVersion"),
         type = "long",
         name = "MinModelVersion",
         target_id = prelude.Long.id,
      }),
   },
})

M.ModelVersionSummary = schema.new({
   id = id.from(_N, "ModelVersionSummary"),
   type = "structure",
   members = {
      ModelName = schema.new({
         id = id.from(_N, "ModelVersionSummary", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
      }),
      ModelArn = schema.new({
         id = id.from(_N, "ModelVersionSummary", "ModelArn"),
         type = "string",
         name = "ModelArn",
         target_id = prelude.String.id,
      }),
      ModelVersion = schema.new({
         id = id.from(_N, "ModelVersionSummary", "ModelVersion"),
         type = "long",
         name = "ModelVersion",
         target_id = prelude.Long.id,
      }),
      ModelVersionArn = schema.new({
         id = id.from(_N, "ModelVersionSummary", "ModelVersionArn"),
         type = "string",
         name = "ModelVersionArn",
         target_id = prelude.String.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "ModelVersionSummary", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      Status = schema.new({
         id = id.from(_N, "ModelVersionSummary", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      SourceType = schema.new({
         id = id.from(_N, "ModelVersionSummary", "SourceType"),
         type = "string",
         name = "SourceType",
         target_id = prelude.String.id,
      }),
      ModelQuality = schema.new({
         id = id.from(_N, "ModelVersionSummary", "ModelQuality"),
         type = "string",
         name = "ModelQuality",
         target_id = prelude.String.id,
      }),
   },
})

M.ListModelVersionsOutput = schema.new({
   id = id.from(_N, "ListModelVersionsResponse"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListModelVersionsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      ModelVersionSummaries = schema.new({
         id = id.from(_N, "ListModelVersionsOutput", "ModelVersionSummaries"),
         type = "list",
         name = "ModelVersionSummaries",
         target_id = prelude.Document.id,
         list_member = M.ModelVersionSummary,
      }),
   },
})

M.ListRetrainingSchedulersInput = schema.new({
   id = id.from(_N, "ListRetrainingSchedulersRequest"),
   type = "structure",
   members = {
      ModelNameBeginsWith = schema.new({
         id = id.from(_N, "ListRetrainingSchedulersInput", "ModelNameBeginsWith"),
         type = "string",
         name = "ModelNameBeginsWith",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "ListRetrainingSchedulersInput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListRetrainingSchedulersInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListRetrainingSchedulersInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.RetrainingSchedulerSummary = schema.new({
   id = id.from(_N, "RetrainingSchedulerSummary"),
   type = "structure",
   members = {
      ModelName = schema.new({
         id = id.from(_N, "RetrainingSchedulerSummary", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
      }),
      ModelArn = schema.new({
         id = id.from(_N, "RetrainingSchedulerSummary", "ModelArn"),
         type = "string",
         name = "ModelArn",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "RetrainingSchedulerSummary", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      RetrainingStartDate = schema.new({
         id = id.from(_N, "RetrainingSchedulerSummary", "RetrainingStartDate"),
         type = "timestamp",
         name = "RetrainingStartDate",
         target_id = prelude.Timestamp.id,
      }),
      RetrainingFrequency = schema.new({
         id = id.from(_N, "RetrainingSchedulerSummary", "RetrainingFrequency"),
         type = "string",
         name = "RetrainingFrequency",
         target_id = prelude.String.id,
      }),
      LookbackWindow = schema.new({
         id = id.from(_N, "RetrainingSchedulerSummary", "LookbackWindow"),
         type = "string",
         name = "LookbackWindow",
         target_id = prelude.String.id,
      }),
   },
})

M.ListRetrainingSchedulersOutput = schema.new({
   id = id.from(_N, "ListRetrainingSchedulersResponse"),
   type = "structure",
   members = {
      RetrainingSchedulerSummaries = schema.new({
         id = id.from(_N, "ListRetrainingSchedulersOutput", "RetrainingSchedulerSummaries"),
         type = "list",
         name = "RetrainingSchedulerSummaries",
         target_id = prelude.Document.id,
         list_member = M.RetrainingSchedulerSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListRetrainingSchedulersOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListSensorStatisticsInput = schema.new({
   id = id.from(_N, "ListSensorStatisticsRequest"),
   type = "structure",
   members = {
      DatasetName = schema.new({
         id = id.from(_N, "ListSensorStatisticsInput", "DatasetName"),
         type = "string",
         name = "DatasetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IngestionJobId = schema.new({
         id = id.from(_N, "ListSensorStatisticsInput", "IngestionJobId"),
         type = "string",
         name = "IngestionJobId",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListSensorStatisticsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListSensorStatisticsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.CategoricalValues = schema.new({
   id = id.from(_N, "CategoricalValues"),
   type = "structure",
   members = {
      Status = schema.new({
         id = id.from(_N, "CategoricalValues", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NumberOfCategory = schema.new({
         id = id.from(_N, "CategoricalValues", "NumberOfCategory"),
         type = "integer",
         name = "NumberOfCategory",
         target_id = prelude.Integer.id,
      }),
   },
})

M.CountPercent = schema.new({
   id = id.from(_N, "CountPercent"),
   type = "structure",
   members = {
      Count = schema.new({
         id = id.from(_N, "CountPercent", "Count"),
         type = "integer",
         name = "Count",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Percentage = schema.new({
         id = id.from(_N, "CountPercent", "Percentage"),
         type = "float",
         name = "Percentage",
         target_id = prelude.Float.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.LargeTimestampGaps = schema.new({
   id = id.from(_N, "LargeTimestampGaps"),
   type = "structure",
   members = {
      Status = schema.new({
         id = id.from(_N, "LargeTimestampGaps", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NumberOfLargeTimestampGaps = schema.new({
         id = id.from(_N, "LargeTimestampGaps", "NumberOfLargeTimestampGaps"),
         type = "integer",
         name = "NumberOfLargeTimestampGaps",
         target_id = prelude.Integer.id,
      }),
      MaxTimestampGapInDays = schema.new({
         id = id.from(_N, "LargeTimestampGaps", "MaxTimestampGapInDays"),
         type = "integer",
         name = "MaxTimestampGapInDays",
         target_id = prelude.Integer.id,
      }),
   },
})

M.MonotonicValues = schema.new({
   id = id.from(_N, "MonotonicValues"),
   type = "structure",
   members = {
      Status = schema.new({
         id = id.from(_N, "MonotonicValues", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Monotonicity = schema.new({
         id = id.from(_N, "MonotonicValues", "Monotonicity"),
         type = "string",
         name = "Monotonicity",
         target_id = prelude.String.id,
      }),
   },
})

M.MultipleOperatingModes = schema.new({
   id = id.from(_N, "MultipleOperatingModes"),
   type = "structure",
   members = {
      Status = schema.new({
         id = id.from(_N, "MultipleOperatingModes", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SensorStatisticsSummary = schema.new({
   id = id.from(_N, "SensorStatisticsSummary"),
   type = "structure",
   members = {
      ComponentName = schema.new({
         id = id.from(_N, "SensorStatisticsSummary", "ComponentName"),
         type = "string",
         name = "ComponentName",
         target_id = prelude.String.id,
      }),
      SensorName = schema.new({
         id = id.from(_N, "SensorStatisticsSummary", "SensorName"),
         type = "string",
         name = "SensorName",
         target_id = prelude.String.id,
      }),
      DataExists = schema.new({
         id = id.from(_N, "SensorStatisticsSummary", "DataExists"),
         type = "boolean",
         name = "DataExists",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      MissingValues = schema.new({
         id = id.from(_N, "SensorStatisticsSummary", "MissingValues"),
         type = "structure",
         name = "MissingValues",
         target_id = id.from(_N, "CountPercent"),
         target = M.CountPercent,
      }),
      InvalidValues = schema.new({
         id = id.from(_N, "SensorStatisticsSummary", "InvalidValues"),
         type = "structure",
         name = "InvalidValues",
         target_id = id.from(_N, "CountPercent"),
         target = M.CountPercent,
      }),
      InvalidDateEntries = schema.new({
         id = id.from(_N, "SensorStatisticsSummary", "InvalidDateEntries"),
         type = "structure",
         name = "InvalidDateEntries",
         target_id = id.from(_N, "CountPercent"),
         target = M.CountPercent,
      }),
      DuplicateTimestamps = schema.new({
         id = id.from(_N, "SensorStatisticsSummary", "DuplicateTimestamps"),
         type = "structure",
         name = "DuplicateTimestamps",
         target_id = id.from(_N, "CountPercent"),
         target = M.CountPercent,
      }),
      CategoricalValues = schema.new({
         id = id.from(_N, "SensorStatisticsSummary", "CategoricalValues"),
         type = "structure",
         name = "CategoricalValues",
         target_id = id.from(_N, "CategoricalValues"),
         target = M.CategoricalValues,
      }),
      MultipleOperatingModes = schema.new({
         id = id.from(_N, "SensorStatisticsSummary", "MultipleOperatingModes"),
         type = "structure",
         name = "MultipleOperatingModes",
         target_id = id.from(_N, "MultipleOperatingModes"),
         target = M.MultipleOperatingModes,
      }),
      LargeTimestampGaps = schema.new({
         id = id.from(_N, "SensorStatisticsSummary", "LargeTimestampGaps"),
         type = "structure",
         name = "LargeTimestampGaps",
         target_id = id.from(_N, "LargeTimestampGaps"),
         target = M.LargeTimestampGaps,
      }),
      MonotonicValues = schema.new({
         id = id.from(_N, "SensorStatisticsSummary", "MonotonicValues"),
         type = "structure",
         name = "MonotonicValues",
         target_id = id.from(_N, "MonotonicValues"),
         target = M.MonotonicValues,
      }),
      DataStartTime = schema.new({
         id = id.from(_N, "SensorStatisticsSummary", "DataStartTime"),
         type = "timestamp",
         name = "DataStartTime",
         target_id = prelude.Timestamp.id,
      }),
      DataEndTime = schema.new({
         id = id.from(_N, "SensorStatisticsSummary", "DataEndTime"),
         type = "timestamp",
         name = "DataEndTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListSensorStatisticsOutput = schema.new({
   id = id.from(_N, "ListSensorStatisticsResponse"),
   type = "structure",
   members = {
      SensorStatisticsSummaries = schema.new({
         id = id.from(_N, "ListSensorStatisticsOutput", "SensorStatisticsSummaries"),
         type = "list",
         name = "SensorStatisticsSummaries",
         target_id = prelude.Document.id,
         list_member = M.SensorStatisticsSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListSensorStatisticsOutput", "NextToken"),
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
      ResourceArn = schema.new({
         id = id.from(_N, "ListTagsForResourceInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
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

M.PutResourcePolicyInput = schema.new({
   id = id.from(_N, "PutResourcePolicyRequest"),
   type = "structure",
   members = {
      ResourceArn = schema.new({
         id = id.from(_N, "PutResourcePolicyInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ResourcePolicy = schema.new({
         id = id.from(_N, "PutResourcePolicyInput", "ResourcePolicy"),
         type = "string",
         name = "ResourcePolicy",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PolicyRevisionId = schema.new({
         id = id.from(_N, "PutResourcePolicyInput", "PolicyRevisionId"),
         type = "string",
         name = "PolicyRevisionId",
         target_id = prelude.String.id,
      }),
      ClientToken = schema.new({
         id = id.from(_N, "PutResourcePolicyInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.PutResourcePolicyOutput = schema.new({
   id = id.from(_N, "PutResourcePolicyResponse"),
   type = "structure",
   members = {
      ResourceArn = schema.new({
         id = id.from(_N, "PutResourcePolicyOutput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
      }),
      PolicyRevisionId = schema.new({
         id = id.from(_N, "PutResourcePolicyOutput", "PolicyRevisionId"),
         type = "string",
         name = "PolicyRevisionId",
         target_id = prelude.String.id,
      }),
   },
})

M.StartDataIngestionJobInput = schema.new({
   id = id.from(_N, "StartDataIngestionJobRequest"),
   type = "structure",
   members = {
      DatasetName = schema.new({
         id = id.from(_N, "StartDataIngestionJobInput", "DatasetName"),
         type = "string",
         name = "DatasetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IngestionInputConfiguration = schema.new({
         id = id.from(_N, "StartDataIngestionJobInput", "IngestionInputConfiguration"),
         type = "structure",
         name = "IngestionInputConfiguration",
         target_id = id.from(_N, "IngestionInputConfiguration"),
         target = M.IngestionInputConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RoleArn = schema.new({
         id = id.from(_N, "StartDataIngestionJobInput", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientToken = schema.new({
         id = id.from(_N, "StartDataIngestionJobInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.StartDataIngestionJobOutput = schema.new({
   id = id.from(_N, "StartDataIngestionJobResponse"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "StartDataIngestionJobOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "StartDataIngestionJobOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
})

M.StartInferenceSchedulerInput = schema.new({
   id = id.from(_N, "StartInferenceSchedulerRequest"),
   type = "structure",
   members = {
      InferenceSchedulerName = schema.new({
         id = id.from(_N, "StartInferenceSchedulerInput", "InferenceSchedulerName"),
         type = "string",
         name = "InferenceSchedulerName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartInferenceSchedulerOutput = schema.new({
   id = id.from(_N, "StartInferenceSchedulerResponse"),
   type = "structure",
   members = {
      ModelArn = schema.new({
         id = id.from(_N, "StartInferenceSchedulerOutput", "ModelArn"),
         type = "string",
         name = "ModelArn",
         target_id = prelude.String.id,
      }),
      ModelName = schema.new({
         id = id.from(_N, "StartInferenceSchedulerOutput", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
      }),
      InferenceSchedulerName = schema.new({
         id = id.from(_N, "StartInferenceSchedulerOutput", "InferenceSchedulerName"),
         type = "string",
         name = "InferenceSchedulerName",
         target_id = prelude.String.id,
      }),
      InferenceSchedulerArn = schema.new({
         id = id.from(_N, "StartInferenceSchedulerOutput", "InferenceSchedulerArn"),
         type = "string",
         name = "InferenceSchedulerArn",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "StartInferenceSchedulerOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
})

M.StartRetrainingSchedulerInput = schema.new({
   id = id.from(_N, "StartRetrainingSchedulerRequest"),
   type = "structure",
   members = {
      ModelName = schema.new({
         id = id.from(_N, "StartRetrainingSchedulerInput", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartRetrainingSchedulerOutput = schema.new({
   id = id.from(_N, "StartRetrainingSchedulerResponse"),
   type = "structure",
   members = {
      ModelName = schema.new({
         id = id.from(_N, "StartRetrainingSchedulerOutput", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
      }),
      ModelArn = schema.new({
         id = id.from(_N, "StartRetrainingSchedulerOutput", "ModelArn"),
         type = "string",
         name = "ModelArn",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "StartRetrainingSchedulerOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
})

M.StopInferenceSchedulerInput = schema.new({
   id = id.from(_N, "StopInferenceSchedulerRequest"),
   type = "structure",
   members = {
      InferenceSchedulerName = schema.new({
         id = id.from(_N, "StopInferenceSchedulerInput", "InferenceSchedulerName"),
         type = "string",
         name = "InferenceSchedulerName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StopInferenceSchedulerOutput = schema.new({
   id = id.from(_N, "StopInferenceSchedulerResponse"),
   type = "structure",
   members = {
      ModelArn = schema.new({
         id = id.from(_N, "StopInferenceSchedulerOutput", "ModelArn"),
         type = "string",
         name = "ModelArn",
         target_id = prelude.String.id,
      }),
      ModelName = schema.new({
         id = id.from(_N, "StopInferenceSchedulerOutput", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
      }),
      InferenceSchedulerName = schema.new({
         id = id.from(_N, "StopInferenceSchedulerOutput", "InferenceSchedulerName"),
         type = "string",
         name = "InferenceSchedulerName",
         target_id = prelude.String.id,
      }),
      InferenceSchedulerArn = schema.new({
         id = id.from(_N, "StopInferenceSchedulerOutput", "InferenceSchedulerArn"),
         type = "string",
         name = "InferenceSchedulerArn",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "StopInferenceSchedulerOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
})

M.StopRetrainingSchedulerInput = schema.new({
   id = id.from(_N, "StopRetrainingSchedulerRequest"),
   type = "structure",
   members = {
      ModelName = schema.new({
         id = id.from(_N, "StopRetrainingSchedulerInput", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StopRetrainingSchedulerOutput = schema.new({
   id = id.from(_N, "StopRetrainingSchedulerResponse"),
   type = "structure",
   members = {
      ModelName = schema.new({
         id = id.from(_N, "StopRetrainingSchedulerOutput", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
      }),
      ModelArn = schema.new({
         id = id.from(_N, "StopRetrainingSchedulerOutput", "ModelArn"),
         type = "string",
         name = "ModelArn",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "StopRetrainingSchedulerOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
})

M.TagResourceInput = schema.new({
   id = id.from(_N, "TagResourceRequest"),
   type = "structure",
   members = {
      ResourceArn = schema.new({
         id = id.from(_N, "TagResourceInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
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
      ResourceArn = schema.new({
         id = id.from(_N, "UntagResourceInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
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

M.UpdateActiveModelVersionInput = schema.new({
   id = id.from(_N, "UpdateActiveModelVersionRequest"),
   type = "structure",
   members = {
      ModelName = schema.new({
         id = id.from(_N, "UpdateActiveModelVersionInput", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ModelVersion = schema.new({
         id = id.from(_N, "UpdateActiveModelVersionInput", "ModelVersion"),
         type = "long",
         name = "ModelVersion",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateActiveModelVersionOutput = schema.new({
   id = id.from(_N, "UpdateActiveModelVersionResponse"),
   type = "structure",
   members = {
      ModelName = schema.new({
         id = id.from(_N, "UpdateActiveModelVersionOutput", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
      }),
      ModelArn = schema.new({
         id = id.from(_N, "UpdateActiveModelVersionOutput", "ModelArn"),
         type = "string",
         name = "ModelArn",
         target_id = prelude.String.id,
      }),
      CurrentActiveVersion = schema.new({
         id = id.from(_N, "UpdateActiveModelVersionOutput", "CurrentActiveVersion"),
         type = "long",
         name = "CurrentActiveVersion",
         target_id = prelude.Long.id,
      }),
      PreviousActiveVersion = schema.new({
         id = id.from(_N, "UpdateActiveModelVersionOutput", "PreviousActiveVersion"),
         type = "long",
         name = "PreviousActiveVersion",
         target_id = prelude.Long.id,
      }),
      CurrentActiveVersionArn = schema.new({
         id = id.from(_N, "UpdateActiveModelVersionOutput", "CurrentActiveVersionArn"),
         type = "string",
         name = "CurrentActiveVersionArn",
         target_id = prelude.String.id,
      }),
      PreviousActiveVersionArn = schema.new({
         id = id.from(_N, "UpdateActiveModelVersionOutput", "PreviousActiveVersionArn"),
         type = "string",
         name = "PreviousActiveVersionArn",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateInferenceSchedulerInput = schema.new({
   id = id.from(_N, "UpdateInferenceSchedulerRequest"),
   type = "structure",
   members = {
      InferenceSchedulerName = schema.new({
         id = id.from(_N, "UpdateInferenceSchedulerInput", "InferenceSchedulerName"),
         type = "string",
         name = "InferenceSchedulerName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DataDelayOffsetInMinutes = schema.new({
         id = id.from(_N, "UpdateInferenceSchedulerInput", "DataDelayOffsetInMinutes"),
         type = "long",
         name = "DataDelayOffsetInMinutes",
         target_id = prelude.Long.id,
      }),
      DataUploadFrequency = schema.new({
         id = id.from(_N, "UpdateInferenceSchedulerInput", "DataUploadFrequency"),
         type = "string",
         name = "DataUploadFrequency",
         target_id = prelude.String.id,
      }),
      DataInputConfiguration = schema.new({
         id = id.from(_N, "UpdateInferenceSchedulerInput", "DataInputConfiguration"),
         type = "structure",
         name = "DataInputConfiguration",
         target_id = id.from(_N, "InferenceInputConfiguration"),
         target = M.InferenceInputConfiguration,
      }),
      DataOutputConfiguration = schema.new({
         id = id.from(_N, "UpdateInferenceSchedulerInput", "DataOutputConfiguration"),
         type = "structure",
         name = "DataOutputConfiguration",
         target_id = id.from(_N, "InferenceOutputConfiguration"),
         target = M.InferenceOutputConfiguration,
      }),
      RoleArn = schema.new({
         id = id.from(_N, "UpdateInferenceSchedulerInput", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateInferenceSchedulerOutput = prelude.Unit

M.UpdateLabelGroupInput = schema.new({
   id = id.from(_N, "UpdateLabelGroupRequest"),
   type = "structure",
   members = {
      LabelGroupName = schema.new({
         id = id.from(_N, "UpdateLabelGroupInput", "LabelGroupName"),
         type = "string",
         name = "LabelGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FaultCodes = schema.new({
         id = id.from(_N, "UpdateLabelGroupInput", "FaultCodes"),
         type = "list",
         name = "FaultCodes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.UpdateLabelGroupOutput = prelude.Unit

M.UpdateModelInput = schema.new({
   id = id.from(_N, "UpdateModelRequest"),
   type = "structure",
   members = {
      ModelName = schema.new({
         id = id.from(_N, "UpdateModelInput", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LabelsInputConfiguration = schema.new({
         id = id.from(_N, "UpdateModelInput", "LabelsInputConfiguration"),
         type = "structure",
         name = "LabelsInputConfiguration",
         target_id = id.from(_N, "LabelsInputConfiguration"),
         target = M.LabelsInputConfiguration,
      }),
      RoleArn = schema.new({
         id = id.from(_N, "UpdateModelInput", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
      }),
      ModelDiagnosticsOutputConfiguration = schema.new({
         id = id.from(_N, "UpdateModelInput", "ModelDiagnosticsOutputConfiguration"),
         type = "structure",
         name = "ModelDiagnosticsOutputConfiguration",
         target_id = id.from(_N, "ModelDiagnosticsOutputConfiguration"),
         target = M.ModelDiagnosticsOutputConfiguration,
      }),
   },
})

M.UpdateModelOutput = prelude.Unit

M.UpdateRetrainingSchedulerInput = schema.new({
   id = id.from(_N, "UpdateRetrainingSchedulerRequest"),
   type = "structure",
   members = {
      ModelName = schema.new({
         id = id.from(_N, "UpdateRetrainingSchedulerInput", "ModelName"),
         type = "string",
         name = "ModelName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RetrainingStartDate = schema.new({
         id = id.from(_N, "UpdateRetrainingSchedulerInput", "RetrainingStartDate"),
         type = "timestamp",
         name = "RetrainingStartDate",
         target_id = prelude.Timestamp.id,
      }),
      RetrainingFrequency = schema.new({
         id = id.from(_N, "UpdateRetrainingSchedulerInput", "RetrainingFrequency"),
         type = "string",
         name = "RetrainingFrequency",
         target_id = prelude.String.id,
      }),
      LookbackWindow = schema.new({
         id = id.from(_N, "UpdateRetrainingSchedulerInput", "LookbackWindow"),
         type = "string",
         name = "LookbackWindow",
         target_id = prelude.String.id,
      }),
      PromoteMode = schema.new({
         id = id.from(_N, "UpdateRetrainingSchedulerInput", "PromoteMode"),
         type = "string",
         name = "PromoteMode",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateRetrainingSchedulerOutput = prelude.Unit


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
   id = id.from("com.amazonaws.lookoutequipment", "AWSLookoutEquipmentFrontendService"),
   version = "2020-12-15",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateDataset = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "CreateDataset"),
   input = M.CreateDatasetInput,
   output = M.CreateDatasetOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateInferenceScheduler = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "CreateInferenceScheduler"),
   input = M.CreateInferenceSchedulerInput,
   output = M.CreateInferenceSchedulerOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateLabel = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "CreateLabel"),
   input = M.CreateLabelInput,
   output = M.CreateLabelOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateLabelGroup = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "CreateLabelGroup"),
   input = M.CreateLabelGroupInput,
   output = M.CreateLabelGroupOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateModel = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "CreateModel"),
   input = M.CreateModelInput,
   output = M.CreateModelOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateRetrainingScheduler = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "CreateRetrainingScheduler"),
   input = M.CreateRetrainingSchedulerInput,
   output = M.CreateRetrainingSchedulerOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteDataset = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "DeleteDataset"),
   input = M.DeleteDatasetInput,
   output = M.DeleteDatasetOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteInferenceScheduler = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "DeleteInferenceScheduler"),
   input = M.DeleteInferenceSchedulerInput,
   output = M.DeleteInferenceSchedulerOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteLabel = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "DeleteLabel"),
   input = M.DeleteLabelInput,
   output = M.DeleteLabelOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteLabelGroup = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "DeleteLabelGroup"),
   input = M.DeleteLabelGroupInput,
   output = M.DeleteLabelGroupOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteModel = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "DeleteModel"),
   input = M.DeleteModelInput,
   output = M.DeleteModelOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteResourcePolicy = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "DeleteResourcePolicy"),
   input = M.DeleteResourcePolicyInput,
   output = M.DeleteResourcePolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteRetrainingScheduler = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "DeleteRetrainingScheduler"),
   input = M.DeleteRetrainingSchedulerInput,
   output = M.DeleteRetrainingSchedulerOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeDataIngestionJob = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "DescribeDataIngestionJob"),
   input = M.DescribeDataIngestionJobInput,
   output = M.DescribeDataIngestionJobOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeDataset = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "DescribeDataset"),
   input = M.DescribeDatasetInput,
   output = M.DescribeDatasetOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeInferenceScheduler = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "DescribeInferenceScheduler"),
   input = M.DescribeInferenceSchedulerInput,
   output = M.DescribeInferenceSchedulerOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeLabel = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "DescribeLabel"),
   input = M.DescribeLabelInput,
   output = M.DescribeLabelOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeLabelGroup = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "DescribeLabelGroup"),
   input = M.DescribeLabelGroupInput,
   output = M.DescribeLabelGroupOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeModel = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "DescribeModel"),
   input = M.DescribeModelInput,
   output = M.DescribeModelOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeModelVersion = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "DescribeModelVersion"),
   input = M.DescribeModelVersionInput,
   output = M.DescribeModelVersionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeResourcePolicy = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "DescribeResourcePolicy"),
   input = M.DescribeResourcePolicyInput,
   output = M.DescribeResourcePolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeRetrainingScheduler = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "DescribeRetrainingScheduler"),
   input = M.DescribeRetrainingSchedulerInput,
   output = M.DescribeRetrainingSchedulerOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ImportDataset = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "ImportDataset"),
   input = M.ImportDatasetInput,
   output = M.ImportDatasetOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ImportModelVersion = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "ImportModelVersion"),
   input = M.ImportModelVersionInput,
   output = M.ImportModelVersionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDataIngestionJobs = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "ListDataIngestionJobs"),
   input = M.ListDataIngestionJobsInput,
   output = M.ListDataIngestionJobsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDatasets = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "ListDatasets"),
   input = M.ListDatasetsInput,
   output = M.ListDatasetsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListInferenceEvents = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "ListInferenceEvents"),
   input = M.ListInferenceEventsInput,
   output = M.ListInferenceEventsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListInferenceExecutions = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "ListInferenceExecutions"),
   input = M.ListInferenceExecutionsInput,
   output = M.ListInferenceExecutionsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListInferenceSchedulers = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "ListInferenceSchedulers"),
   input = M.ListInferenceSchedulersInput,
   output = M.ListInferenceSchedulersOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListLabelGroups = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "ListLabelGroups"),
   input = M.ListLabelGroupsInput,
   output = M.ListLabelGroupsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListLabels = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "ListLabels"),
   input = M.ListLabelsInput,
   output = M.ListLabelsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListModels = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "ListModels"),
   input = M.ListModelsInput,
   output = M.ListModelsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListModelVersions = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "ListModelVersions"),
   input = M.ListModelVersionsInput,
   output = M.ListModelVersionsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListRetrainingSchedulers = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "ListRetrainingSchedulers"),
   input = M.ListRetrainingSchedulersInput,
   output = M.ListRetrainingSchedulersOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListSensorStatistics = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "ListSensorStatistics"),
   input = M.ListSensorStatisticsInput,
   output = M.ListSensorStatisticsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutResourcePolicy = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "PutResourcePolicy"),
   input = M.PutResourcePolicyInput,
   output = M.PutResourcePolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartDataIngestionJob = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "StartDataIngestionJob"),
   input = M.StartDataIngestionJobInput,
   output = M.StartDataIngestionJobOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartInferenceScheduler = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "StartInferenceScheduler"),
   input = M.StartInferenceSchedulerInput,
   output = M.StartInferenceSchedulerOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartRetrainingScheduler = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "StartRetrainingScheduler"),
   input = M.StartRetrainingSchedulerInput,
   output = M.StartRetrainingSchedulerOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopInferenceScheduler = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "StopInferenceScheduler"),
   input = M.StopInferenceSchedulerInput,
   output = M.StopInferenceSchedulerOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopRetrainingScheduler = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "StopRetrainingScheduler"),
   input = M.StopRetrainingSchedulerInput,
   output = M.StopRetrainingSchedulerOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateActiveModelVersion = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "UpdateActiveModelVersion"),
   input = M.UpdateActiveModelVersionInput,
   output = M.UpdateActiveModelVersionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateInferenceScheduler = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "UpdateInferenceScheduler"),
   input = M.UpdateInferenceSchedulerInput,
   output = M.UpdateInferenceSchedulerOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateLabelGroup = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "UpdateLabelGroup"),
   input = M.UpdateLabelGroupInput,
   output = M.UpdateLabelGroupOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateModel = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "UpdateModel"),
   input = M.UpdateModelInput,
   output = M.UpdateModelOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateRetrainingScheduler = schema.operation({
   id = id.from("com.amazonaws.lookoutequipment", "UpdateRetrainingScheduler"),
   input = M.UpdateRetrainingSchedulerInput,
   output = M.UpdateRetrainingSchedulerOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
