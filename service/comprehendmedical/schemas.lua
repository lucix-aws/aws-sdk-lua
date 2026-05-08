

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.comprehendmedical"

local M = {}

M.EntityList = schema.new({ type = "list", list_member = M.Entity })

M.UnmappedAttributeList = schema.new({ type = "list", list_member = M.UnmappedAttribute })

M.ICD10CMEntityList = schema.new({ type = "list", list_member = M.ICD10CMEntity })

M.RxNormEntityList = schema.new({ type = "list", list_member = M.RxNormEntity })

M.SNOMEDCTEntityList = schema.new({ type = "list", list_member = M.SNOMEDCTEntity })

M.ComprehendMedicalAsyncJobPropertiesList = schema.new({ type = "list", list_member = M.ComprehendMedicalAsyncJobProperties })

M.TraitList = schema.new({ type = "list", list_member = M.Trait })

M.AttributeList = schema.new({ type = "list", list_member = M.Attribute })

M.ICD10CMAttributeList = schema.new({ type = "list", list_member = M.ICD10CMAttribute })

M.ICD10CMTraitList = schema.new({ type = "list", list_member = M.ICD10CMTrait })

M.ICD10CMConceptList = schema.new({ type = "list", list_member = M.ICD10CMConcept })

M.RxNormAttributeList = schema.new({ type = "list", list_member = M.RxNormAttribute })

M.RxNormTraitList = schema.new({ type = "list", list_member = M.RxNormTrait })

M.RxNormConceptList = schema.new({ type = "list", list_member = M.RxNormConcept })

M.SNOMEDCTAttributeList = schema.new({ type = "list", list_member = M.SNOMEDCTAttribute })

M.SNOMEDCTTraitList = schema.new({ type = "list", list_member = M.SNOMEDCTTrait })

M.SNOMEDCTConceptList = schema.new({ type = "list", list_member = M.SNOMEDCTConcept })

M.Trait = schema.new({
   id = id.from(_N, "Trait"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "Trait", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Score = schema.new({
         id = id.from(_N, "Trait", "Score"),
         type = "float",
         name = "Score",
         target_id = prelude.Float.id,
      }),
   },
})

M.Attribute = schema.new({
   id = id.from(_N, "Attribute"),
   type = "structure",
   members = {
      Type = schema.new({
         id = id.from(_N, "Attribute", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      Score = schema.new({
         id = id.from(_N, "Attribute", "Score"),
         type = "float",
         name = "Score",
         target_id = prelude.Float.id,
      }),
      RelationshipScore = schema.new({
         id = id.from(_N, "Attribute", "RelationshipScore"),
         type = "float",
         name = "RelationshipScore",
         target_id = prelude.Float.id,
      }),
      RelationshipType = schema.new({
         id = id.from(_N, "Attribute", "RelationshipType"),
         type = "string",
         name = "RelationshipType",
         target_id = prelude.String.id,
      }),
      Id = schema.new({
         id = id.from(_N, "Attribute", "Id"),
         type = "integer",
         name = "Id",
         target_id = prelude.Integer.id,
      }),
      BeginOffset = schema.new({
         id = id.from(_N, "Attribute", "BeginOffset"),
         type = "integer",
         name = "BeginOffset",
         target_id = prelude.Integer.id,
      }),
      EndOffset = schema.new({
         id = id.from(_N, "Attribute", "EndOffset"),
         type = "integer",
         name = "EndOffset",
         target_id = prelude.Integer.id,
      }),
      Text = schema.new({
         id = id.from(_N, "Attribute", "Text"),
         type = "string",
         name = "Text",
         target_id = prelude.String.id,
      }),
      Category = schema.new({
         id = id.from(_N, "Attribute", "Category"),
         type = "string",
         name = "Category",
         target_id = prelude.String.id,
      }),
      Traits = schema.new({
         id = id.from(_N, "Attribute", "Traits"),
         type = "list",
         name = "Traits",
         target_id = prelude.Document.id,
         list_member = M.Trait,
      }),
   },
})

M.Characters = schema.new({
   id = id.from(_N, "Characters"),
   type = "structure",
   members = {
      OriginalTextCharacters = schema.new({
         id = id.from(_N, "Characters", "OriginalTextCharacters"),
         type = "integer",
         name = "OriginalTextCharacters",
         target_id = prelude.Integer.id,
      }),
   },
})

M.DescribeEntitiesDetectionV2JobInput = schema.new({
   id = id.from(_N, "DescribeEntitiesDetectionV2JobRequest"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "DescribeEntitiesDetectionV2JobInput", "JobId"),
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
   type = "structure",
   members = {
      S3Bucket = schema.new({
         id = id.from(_N, "InputDataConfig", "S3Bucket"),
         type = "string",
         name = "S3Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      S3Key = schema.new({
         id = id.from(_N, "InputDataConfig", "S3Key"),
         type = "string",
         name = "S3Key",
         target_id = prelude.String.id,
      }),
   },
})

M.OutputDataConfig = schema.new({
   id = id.from(_N, "OutputDataConfig"),
   type = "structure",
   members = {
      S3Bucket = schema.new({
         id = id.from(_N, "OutputDataConfig", "S3Bucket"),
         type = "string",
         name = "S3Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      S3Key = schema.new({
         id = id.from(_N, "OutputDataConfig", "S3Key"),
         type = "string",
         name = "S3Key",
         target_id = prelude.String.id,
      }),
   },
})

M.ComprehendMedicalAsyncJobProperties = schema.new({
   id = id.from(_N, "ComprehendMedicalAsyncJobProperties"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "ComprehendMedicalAsyncJobProperties", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
      }),
      JobName = schema.new({
         id = id.from(_N, "ComprehendMedicalAsyncJobProperties", "JobName"),
         type = "string",
         name = "JobName",
         target_id = prelude.String.id,
      }),
      JobStatus = schema.new({
         id = id.from(_N, "ComprehendMedicalAsyncJobProperties", "JobStatus"),
         type = "string",
         name = "JobStatus",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "ComprehendMedicalAsyncJobProperties", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      SubmitTime = schema.new({
         id = id.from(_N, "ComprehendMedicalAsyncJobProperties", "SubmitTime"),
         type = "timestamp",
         name = "SubmitTime",
         target_id = prelude.Timestamp.id,
      }),
      EndTime = schema.new({
         id = id.from(_N, "ComprehendMedicalAsyncJobProperties", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
      }),
      ExpirationTime = schema.new({
         id = id.from(_N, "ComprehendMedicalAsyncJobProperties", "ExpirationTime"),
         type = "timestamp",
         name = "ExpirationTime",
         target_id = prelude.Timestamp.id,
      }),
      InputDataConfig = schema.new({
         id = id.from(_N, "ComprehendMedicalAsyncJobProperties", "InputDataConfig"),
         type = "structure",
         name = "InputDataConfig",
         target_id = id.from(_N, "InputDataConfig"),
         target = M.InputDataConfig,
      }),
      OutputDataConfig = schema.new({
         id = id.from(_N, "ComprehendMedicalAsyncJobProperties", "OutputDataConfig"),
         type = "structure",
         name = "OutputDataConfig",
         target_id = id.from(_N, "OutputDataConfig"),
         target = M.OutputDataConfig,
      }),
      LanguageCode = schema.new({
         id = id.from(_N, "ComprehendMedicalAsyncJobProperties", "LanguageCode"),
         type = "string",
         name = "LanguageCode",
         target_id = prelude.String.id,
      }),
      DataAccessRoleArn = schema.new({
         id = id.from(_N, "ComprehendMedicalAsyncJobProperties", "DataAccessRoleArn"),
         type = "string",
         name = "DataAccessRoleArn",
         target_id = prelude.String.id,
      }),
      ManifestFilePath = schema.new({
         id = id.from(_N, "ComprehendMedicalAsyncJobProperties", "ManifestFilePath"),
         type = "string",
         name = "ManifestFilePath",
         target_id = prelude.String.id,
      }),
      KMSKey = schema.new({
         id = id.from(_N, "ComprehendMedicalAsyncJobProperties", "KMSKey"),
         type = "string",
         name = "KMSKey",
         target_id = prelude.String.id,
      }),
      ModelVersion = schema.new({
         id = id.from(_N, "ComprehendMedicalAsyncJobProperties", "ModelVersion"),
         type = "string",
         name = "ModelVersion",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeEntitiesDetectionV2JobOutput = schema.new({
   id = id.from(_N, "DescribeEntitiesDetectionV2JobResponse"),
   type = "structure",
   members = {
      ComprehendMedicalAsyncJobProperties = schema.new({
         id = id.from(_N, "DescribeEntitiesDetectionV2JobOutput", "ComprehendMedicalAsyncJobProperties"),
         type = "structure",
         name = "ComprehendMedicalAsyncJobProperties",
         target_id = id.from(_N, "ComprehendMedicalAsyncJobProperties"),
         target = M.ComprehendMedicalAsyncJobProperties,
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

M.InvalidRequestException = schema.new({
   id = id.from(_N, "InvalidRequestException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "InvalidRequestException", "Message"),
         type = "string",
         name = "Message",
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
      }),
   },
})

M.TooManyRequestsException = schema.new({
   id = id.from(_N, "TooManyRequestsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "TooManyRequestsException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeICD10CMInferenceJobInput = schema.new({
   id = id.from(_N, "DescribeICD10CMInferenceJobRequest"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "DescribeICD10CMInferenceJobInput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeICD10CMInferenceJobOutput = schema.new({
   id = id.from(_N, "DescribeICD10CMInferenceJobResponse"),
   type = "structure",
   members = {
      ComprehendMedicalAsyncJobProperties = schema.new({
         id = id.from(_N, "DescribeICD10CMInferenceJobOutput", "ComprehendMedicalAsyncJobProperties"),
         type = "structure",
         name = "ComprehendMedicalAsyncJobProperties",
         target_id = id.from(_N, "ComprehendMedicalAsyncJobProperties"),
         target = M.ComprehendMedicalAsyncJobProperties,
      }),
   },
})

M.DescribePHIDetectionJobInput = schema.new({
   id = id.from(_N, "DescribePHIDetectionJobRequest"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "DescribePHIDetectionJobInput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribePHIDetectionJobOutput = schema.new({
   id = id.from(_N, "DescribePHIDetectionJobResponse"),
   type = "structure",
   members = {
      ComprehendMedicalAsyncJobProperties = schema.new({
         id = id.from(_N, "DescribePHIDetectionJobOutput", "ComprehendMedicalAsyncJobProperties"),
         type = "structure",
         name = "ComprehendMedicalAsyncJobProperties",
         target_id = id.from(_N, "ComprehendMedicalAsyncJobProperties"),
         target = M.ComprehendMedicalAsyncJobProperties,
      }),
   },
})

M.DescribeRxNormInferenceJobInput = schema.new({
   id = id.from(_N, "DescribeRxNormInferenceJobRequest"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "DescribeRxNormInferenceJobInput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeRxNormInferenceJobOutput = schema.new({
   id = id.from(_N, "DescribeRxNormInferenceJobResponse"),
   type = "structure",
   members = {
      ComprehendMedicalAsyncJobProperties = schema.new({
         id = id.from(_N, "DescribeRxNormInferenceJobOutput", "ComprehendMedicalAsyncJobProperties"),
         type = "structure",
         name = "ComprehendMedicalAsyncJobProperties",
         target_id = id.from(_N, "ComprehendMedicalAsyncJobProperties"),
         target = M.ComprehendMedicalAsyncJobProperties,
      }),
   },
})

M.DescribeSNOMEDCTInferenceJobInput = schema.new({
   id = id.from(_N, "DescribeSNOMEDCTInferenceJobRequest"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "DescribeSNOMEDCTInferenceJobInput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeSNOMEDCTInferenceJobOutput = schema.new({
   id = id.from(_N, "DescribeSNOMEDCTInferenceJobResponse"),
   type = "structure",
   members = {
      ComprehendMedicalAsyncJobProperties = schema.new({
         id = id.from(_N, "DescribeSNOMEDCTInferenceJobOutput", "ComprehendMedicalAsyncJobProperties"),
         type = "structure",
         name = "ComprehendMedicalAsyncJobProperties",
         target_id = id.from(_N, "ComprehendMedicalAsyncJobProperties"),
         target = M.ComprehendMedicalAsyncJobProperties,
      }),
   },
})

M.DetectEntitiesInput = schema.new({
   id = id.from(_N, "DetectEntitiesRequest"),
   type = "structure",
   members = {
      Text = schema.new({
         id = id.from(_N, "DetectEntitiesInput", "Text"),
         type = "string",
         name = "Text",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Entity = schema.new({
   id = id.from(_N, "Entity"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "Entity", "Id"),
         type = "integer",
         name = "Id",
         target_id = prelude.Integer.id,
      }),
      BeginOffset = schema.new({
         id = id.from(_N, "Entity", "BeginOffset"),
         type = "integer",
         name = "BeginOffset",
         target_id = prelude.Integer.id,
      }),
      EndOffset = schema.new({
         id = id.from(_N, "Entity", "EndOffset"),
         type = "integer",
         name = "EndOffset",
         target_id = prelude.Integer.id,
      }),
      Score = schema.new({
         id = id.from(_N, "Entity", "Score"),
         type = "float",
         name = "Score",
         target_id = prelude.Float.id,
      }),
      Text = schema.new({
         id = id.from(_N, "Entity", "Text"),
         type = "string",
         name = "Text",
         target_id = prelude.String.id,
      }),
      Category = schema.new({
         id = id.from(_N, "Entity", "Category"),
         type = "string",
         name = "Category",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "Entity", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      Traits = schema.new({
         id = id.from(_N, "Entity", "Traits"),
         type = "list",
         name = "Traits",
         target_id = prelude.Document.id,
         list_member = M.Trait,
      }),
      Attributes = schema.new({
         id = id.from(_N, "Entity", "Attributes"),
         type = "list",
         name = "Attributes",
         target_id = prelude.Document.id,
         list_member = M.Attribute,
      }),
   },
})

M.UnmappedAttribute = schema.new({
   id = id.from(_N, "UnmappedAttribute"),
   type = "structure",
   members = {
      Type = schema.new({
         id = id.from(_N, "UnmappedAttribute", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      Attribute = schema.new({
         id = id.from(_N, "UnmappedAttribute", "Attribute"),
         type = "structure",
         name = "Attribute",
         target_id = id.from(_N, "Attribute"),
         target = M.Attribute,
      }),
   },
})

M.DetectEntitiesOutput = schema.new({
   id = id.from(_N, "DetectEntitiesResponse"),
   type = "structure",
   members = {
      Entities = schema.new({
         id = id.from(_N, "DetectEntitiesOutput", "Entities"),
         type = "list",
         name = "Entities",
         target_id = prelude.Document.id,
         list_member = M.Entity,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UnmappedAttributes = schema.new({
         id = id.from(_N, "DetectEntitiesOutput", "UnmappedAttributes"),
         type = "list",
         name = "UnmappedAttributes",
         target_id = prelude.Document.id,
         list_member = M.UnmappedAttribute,
      }),
      PaginationToken = schema.new({
         id = id.from(_N, "DetectEntitiesOutput", "PaginationToken"),
         type = "string",
         name = "PaginationToken",
         target_id = prelude.String.id,
      }),
      ModelVersion = schema.new({
         id = id.from(_N, "DetectEntitiesOutput", "ModelVersion"),
         type = "string",
         name = "ModelVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.InvalidEncodingException = schema.new({
   id = id.from(_N, "InvalidEncodingException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "InvalidEncodingException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
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
      Message = schema.new({
         id = id.from(_N, "ServiceUnavailableException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.TextSizeLimitExceededException = schema.new({
   id = id.from(_N, "TextSizeLimitExceededException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "TextSizeLimitExceededException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.DetectEntitiesV2Input = schema.new({
   id = id.from(_N, "DetectEntitiesV2Request"),
   type = "structure",
   members = {
      Text = schema.new({
         id = id.from(_N, "DetectEntitiesV2Input", "Text"),
         type = "string",
         name = "Text",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DetectEntitiesV2Output = schema.new({
   id = id.from(_N, "DetectEntitiesV2Response"),
   type = "structure",
   members = {
      Entities = schema.new({
         id = id.from(_N, "DetectEntitiesV2Output", "Entities"),
         type = "list",
         name = "Entities",
         target_id = prelude.Document.id,
         list_member = M.Entity,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UnmappedAttributes = schema.new({
         id = id.from(_N, "DetectEntitiesV2Output", "UnmappedAttributes"),
         type = "list",
         name = "UnmappedAttributes",
         target_id = prelude.Document.id,
         list_member = M.UnmappedAttribute,
      }),
      PaginationToken = schema.new({
         id = id.from(_N, "DetectEntitiesV2Output", "PaginationToken"),
         type = "string",
         name = "PaginationToken",
         target_id = prelude.String.id,
      }),
      ModelVersion = schema.new({
         id = id.from(_N, "DetectEntitiesV2Output", "ModelVersion"),
         type = "string",
         name = "ModelVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DetectPHIInput = schema.new({
   id = id.from(_N, "DetectPHIRequest"),
   type = "structure",
   members = {
      Text = schema.new({
         id = id.from(_N, "DetectPHIInput", "Text"),
         type = "string",
         name = "Text",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DetectPHIOutput = schema.new({
   id = id.from(_N, "DetectPHIResponse"),
   type = "structure",
   members = {
      Entities = schema.new({
         id = id.from(_N, "DetectPHIOutput", "Entities"),
         type = "list",
         name = "Entities",
         target_id = prelude.Document.id,
         list_member = M.Entity,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PaginationToken = schema.new({
         id = id.from(_N, "DetectPHIOutput", "PaginationToken"),
         type = "string",
         name = "PaginationToken",
         target_id = prelude.String.id,
      }),
      ModelVersion = schema.new({
         id = id.from(_N, "DetectPHIOutput", "ModelVersion"),
         type = "string",
         name = "ModelVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.InferICD10CMInput = schema.new({
   id = id.from(_N, "InferICD10CMRequest"),
   type = "structure",
   members = {
      Text = schema.new({
         id = id.from(_N, "InferICD10CMInput", "Text"),
         type = "string",
         name = "Text",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ICD10CMTrait = schema.new({
   id = id.from(_N, "ICD10CMTrait"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "ICD10CMTrait", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Score = schema.new({
         id = id.from(_N, "ICD10CMTrait", "Score"),
         type = "float",
         name = "Score",
         target_id = prelude.Float.id,
      }),
   },
})

M.ICD10CMAttribute = schema.new({
   id = id.from(_N, "ICD10CMAttribute"),
   type = "structure",
   members = {
      Type = schema.new({
         id = id.from(_N, "ICD10CMAttribute", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      Score = schema.new({
         id = id.from(_N, "ICD10CMAttribute", "Score"),
         type = "float",
         name = "Score",
         target_id = prelude.Float.id,
      }),
      RelationshipScore = schema.new({
         id = id.from(_N, "ICD10CMAttribute", "RelationshipScore"),
         type = "float",
         name = "RelationshipScore",
         target_id = prelude.Float.id,
      }),
      Id = schema.new({
         id = id.from(_N, "ICD10CMAttribute", "Id"),
         type = "integer",
         name = "Id",
         target_id = prelude.Integer.id,
      }),
      BeginOffset = schema.new({
         id = id.from(_N, "ICD10CMAttribute", "BeginOffset"),
         type = "integer",
         name = "BeginOffset",
         target_id = prelude.Integer.id,
      }),
      EndOffset = schema.new({
         id = id.from(_N, "ICD10CMAttribute", "EndOffset"),
         type = "integer",
         name = "EndOffset",
         target_id = prelude.Integer.id,
      }),
      Text = schema.new({
         id = id.from(_N, "ICD10CMAttribute", "Text"),
         type = "string",
         name = "Text",
         target_id = prelude.String.id,
      }),
      Traits = schema.new({
         id = id.from(_N, "ICD10CMAttribute", "Traits"),
         type = "list",
         name = "Traits",
         target_id = prelude.Document.id,
         list_member = M.ICD10CMTrait,
      }),
      Category = schema.new({
         id = id.from(_N, "ICD10CMAttribute", "Category"),
         type = "string",
         name = "Category",
         target_id = prelude.String.id,
      }),
      RelationshipType = schema.new({
         id = id.from(_N, "ICD10CMAttribute", "RelationshipType"),
         type = "string",
         name = "RelationshipType",
         target_id = prelude.String.id,
      }),
   },
})

M.ICD10CMConcept = schema.new({
   id = id.from(_N, "ICD10CMConcept"),
   type = "structure",
   members = {
      Description = schema.new({
         id = id.from(_N, "ICD10CMConcept", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Code = schema.new({
         id = id.from(_N, "ICD10CMConcept", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Score = schema.new({
         id = id.from(_N, "ICD10CMConcept", "Score"),
         type = "float",
         name = "Score",
         target_id = prelude.Float.id,
      }),
   },
})

M.ICD10CMEntity = schema.new({
   id = id.from(_N, "ICD10CMEntity"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "ICD10CMEntity", "Id"),
         type = "integer",
         name = "Id",
         target_id = prelude.Integer.id,
      }),
      Text = schema.new({
         id = id.from(_N, "ICD10CMEntity", "Text"),
         type = "string",
         name = "Text",
         target_id = prelude.String.id,
      }),
      Category = schema.new({
         id = id.from(_N, "ICD10CMEntity", "Category"),
         type = "string",
         name = "Category",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "ICD10CMEntity", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      Score = schema.new({
         id = id.from(_N, "ICD10CMEntity", "Score"),
         type = "float",
         name = "Score",
         target_id = prelude.Float.id,
      }),
      BeginOffset = schema.new({
         id = id.from(_N, "ICD10CMEntity", "BeginOffset"),
         type = "integer",
         name = "BeginOffset",
         target_id = prelude.Integer.id,
      }),
      EndOffset = schema.new({
         id = id.from(_N, "ICD10CMEntity", "EndOffset"),
         type = "integer",
         name = "EndOffset",
         target_id = prelude.Integer.id,
      }),
      Attributes = schema.new({
         id = id.from(_N, "ICD10CMEntity", "Attributes"),
         type = "list",
         name = "Attributes",
         target_id = prelude.Document.id,
         list_member = M.ICD10CMAttribute,
      }),
      Traits = schema.new({
         id = id.from(_N, "ICD10CMEntity", "Traits"),
         type = "list",
         name = "Traits",
         target_id = prelude.Document.id,
         list_member = M.ICD10CMTrait,
      }),
      ICD10CMConcepts = schema.new({
         id = id.from(_N, "ICD10CMEntity", "ICD10CMConcepts"),
         type = "list",
         name = "ICD10CMConcepts",
         target_id = prelude.Document.id,
         list_member = M.ICD10CMConcept,
      }),
   },
})

M.InferICD10CMOutput = schema.new({
   id = id.from(_N, "InferICD10CMResponse"),
   type = "structure",
   members = {
      Entities = schema.new({
         id = id.from(_N, "InferICD10CMOutput", "Entities"),
         type = "list",
         name = "Entities",
         target_id = prelude.Document.id,
         list_member = M.ICD10CMEntity,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PaginationToken = schema.new({
         id = id.from(_N, "InferICD10CMOutput", "PaginationToken"),
         type = "string",
         name = "PaginationToken",
         target_id = prelude.String.id,
      }),
      ModelVersion = schema.new({
         id = id.from(_N, "InferICD10CMOutput", "ModelVersion"),
         type = "string",
         name = "ModelVersion",
         target_id = prelude.String.id,
      }),
   },
})

M.InferRxNormInput = schema.new({
   id = id.from(_N, "InferRxNormRequest"),
   type = "structure",
   members = {
      Text = schema.new({
         id = id.from(_N, "InferRxNormInput", "Text"),
         type = "string",
         name = "Text",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RxNormTrait = schema.new({
   id = id.from(_N, "RxNormTrait"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "RxNormTrait", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Score = schema.new({
         id = id.from(_N, "RxNormTrait", "Score"),
         type = "float",
         name = "Score",
         target_id = prelude.Float.id,
      }),
   },
})

M.RxNormAttribute = schema.new({
   id = id.from(_N, "RxNormAttribute"),
   type = "structure",
   members = {
      Type = schema.new({
         id = id.from(_N, "RxNormAttribute", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      Score = schema.new({
         id = id.from(_N, "RxNormAttribute", "Score"),
         type = "float",
         name = "Score",
         target_id = prelude.Float.id,
      }),
      RelationshipScore = schema.new({
         id = id.from(_N, "RxNormAttribute", "RelationshipScore"),
         type = "float",
         name = "RelationshipScore",
         target_id = prelude.Float.id,
      }),
      Id = schema.new({
         id = id.from(_N, "RxNormAttribute", "Id"),
         type = "integer",
         name = "Id",
         target_id = prelude.Integer.id,
      }),
      BeginOffset = schema.new({
         id = id.from(_N, "RxNormAttribute", "BeginOffset"),
         type = "integer",
         name = "BeginOffset",
         target_id = prelude.Integer.id,
      }),
      EndOffset = schema.new({
         id = id.from(_N, "RxNormAttribute", "EndOffset"),
         type = "integer",
         name = "EndOffset",
         target_id = prelude.Integer.id,
      }),
      Text = schema.new({
         id = id.from(_N, "RxNormAttribute", "Text"),
         type = "string",
         name = "Text",
         target_id = prelude.String.id,
      }),
      Traits = schema.new({
         id = id.from(_N, "RxNormAttribute", "Traits"),
         type = "list",
         name = "Traits",
         target_id = prelude.Document.id,
         list_member = M.RxNormTrait,
      }),
   },
})

M.RxNormConcept = schema.new({
   id = id.from(_N, "RxNormConcept"),
   type = "structure",
   members = {
      Description = schema.new({
         id = id.from(_N, "RxNormConcept", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Code = schema.new({
         id = id.from(_N, "RxNormConcept", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Score = schema.new({
         id = id.from(_N, "RxNormConcept", "Score"),
         type = "float",
         name = "Score",
         target_id = prelude.Float.id,
      }),
   },
})

M.RxNormEntity = schema.new({
   id = id.from(_N, "RxNormEntity"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "RxNormEntity", "Id"),
         type = "integer",
         name = "Id",
         target_id = prelude.Integer.id,
      }),
      Text = schema.new({
         id = id.from(_N, "RxNormEntity", "Text"),
         type = "string",
         name = "Text",
         target_id = prelude.String.id,
      }),
      Category = schema.new({
         id = id.from(_N, "RxNormEntity", "Category"),
         type = "string",
         name = "Category",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "RxNormEntity", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      Score = schema.new({
         id = id.from(_N, "RxNormEntity", "Score"),
         type = "float",
         name = "Score",
         target_id = prelude.Float.id,
      }),
      BeginOffset = schema.new({
         id = id.from(_N, "RxNormEntity", "BeginOffset"),
         type = "integer",
         name = "BeginOffset",
         target_id = prelude.Integer.id,
      }),
      EndOffset = schema.new({
         id = id.from(_N, "RxNormEntity", "EndOffset"),
         type = "integer",
         name = "EndOffset",
         target_id = prelude.Integer.id,
      }),
      Attributes = schema.new({
         id = id.from(_N, "RxNormEntity", "Attributes"),
         type = "list",
         name = "Attributes",
         target_id = prelude.Document.id,
         list_member = M.RxNormAttribute,
      }),
      Traits = schema.new({
         id = id.from(_N, "RxNormEntity", "Traits"),
         type = "list",
         name = "Traits",
         target_id = prelude.Document.id,
         list_member = M.RxNormTrait,
      }),
      RxNormConcepts = schema.new({
         id = id.from(_N, "RxNormEntity", "RxNormConcepts"),
         type = "list",
         name = "RxNormConcepts",
         target_id = prelude.Document.id,
         list_member = M.RxNormConcept,
      }),
   },
})

M.InferRxNormOutput = schema.new({
   id = id.from(_N, "InferRxNormResponse"),
   type = "structure",
   members = {
      Entities = schema.new({
         id = id.from(_N, "InferRxNormOutput", "Entities"),
         type = "list",
         name = "Entities",
         target_id = prelude.Document.id,
         list_member = M.RxNormEntity,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PaginationToken = schema.new({
         id = id.from(_N, "InferRxNormOutput", "PaginationToken"),
         type = "string",
         name = "PaginationToken",
         target_id = prelude.String.id,
      }),
      ModelVersion = schema.new({
         id = id.from(_N, "InferRxNormOutput", "ModelVersion"),
         type = "string",
         name = "ModelVersion",
         target_id = prelude.String.id,
      }),
   },
})

M.InferSNOMEDCTInput = schema.new({
   id = id.from(_N, "InferSNOMEDCTRequest"),
   type = "structure",
   members = {
      Text = schema.new({
         id = id.from(_N, "InferSNOMEDCTInput", "Text"),
         type = "string",
         name = "Text",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SNOMEDCTConcept = schema.new({
   id = id.from(_N, "SNOMEDCTConcept"),
   type = "structure",
   members = {
      Description = schema.new({
         id = id.from(_N, "SNOMEDCTConcept", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Code = schema.new({
         id = id.from(_N, "SNOMEDCTConcept", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Score = schema.new({
         id = id.from(_N, "SNOMEDCTConcept", "Score"),
         type = "float",
         name = "Score",
         target_id = prelude.Float.id,
      }),
   },
})

M.SNOMEDCTTrait = schema.new({
   id = id.from(_N, "SNOMEDCTTrait"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "SNOMEDCTTrait", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Score = schema.new({
         id = id.from(_N, "SNOMEDCTTrait", "Score"),
         type = "float",
         name = "Score",
         target_id = prelude.Float.id,
      }),
   },
})

M.SNOMEDCTAttribute = schema.new({
   id = id.from(_N, "SNOMEDCTAttribute"),
   type = "structure",
   members = {
      Category = schema.new({
         id = id.from(_N, "SNOMEDCTAttribute", "Category"),
         type = "string",
         name = "Category",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "SNOMEDCTAttribute", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      Score = schema.new({
         id = id.from(_N, "SNOMEDCTAttribute", "Score"),
         type = "float",
         name = "Score",
         target_id = prelude.Float.id,
      }),
      RelationshipScore = schema.new({
         id = id.from(_N, "SNOMEDCTAttribute", "RelationshipScore"),
         type = "float",
         name = "RelationshipScore",
         target_id = prelude.Float.id,
      }),
      RelationshipType = schema.new({
         id = id.from(_N, "SNOMEDCTAttribute", "RelationshipType"),
         type = "string",
         name = "RelationshipType",
         target_id = prelude.String.id,
      }),
      Id = schema.new({
         id = id.from(_N, "SNOMEDCTAttribute", "Id"),
         type = "integer",
         name = "Id",
         target_id = prelude.Integer.id,
      }),
      BeginOffset = schema.new({
         id = id.from(_N, "SNOMEDCTAttribute", "BeginOffset"),
         type = "integer",
         name = "BeginOffset",
         target_id = prelude.Integer.id,
      }),
      EndOffset = schema.new({
         id = id.from(_N, "SNOMEDCTAttribute", "EndOffset"),
         type = "integer",
         name = "EndOffset",
         target_id = prelude.Integer.id,
      }),
      Text = schema.new({
         id = id.from(_N, "SNOMEDCTAttribute", "Text"),
         type = "string",
         name = "Text",
         target_id = prelude.String.id,
      }),
      Traits = schema.new({
         id = id.from(_N, "SNOMEDCTAttribute", "Traits"),
         type = "list",
         name = "Traits",
         target_id = prelude.Document.id,
         list_member = M.SNOMEDCTTrait,
      }),
      SNOMEDCTConcepts = schema.new({
         id = id.from(_N, "SNOMEDCTAttribute", "SNOMEDCTConcepts"),
         type = "list",
         name = "SNOMEDCTConcepts",
         target_id = prelude.Document.id,
         list_member = M.SNOMEDCTConcept,
      }),
   },
})

M.SNOMEDCTEntity = schema.new({
   id = id.from(_N, "SNOMEDCTEntity"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "SNOMEDCTEntity", "Id"),
         type = "integer",
         name = "Id",
         target_id = prelude.Integer.id,
      }),
      Text = schema.new({
         id = id.from(_N, "SNOMEDCTEntity", "Text"),
         type = "string",
         name = "Text",
         target_id = prelude.String.id,
      }),
      Category = schema.new({
         id = id.from(_N, "SNOMEDCTEntity", "Category"),
         type = "string",
         name = "Category",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "SNOMEDCTEntity", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      Score = schema.new({
         id = id.from(_N, "SNOMEDCTEntity", "Score"),
         type = "float",
         name = "Score",
         target_id = prelude.Float.id,
      }),
      BeginOffset = schema.new({
         id = id.from(_N, "SNOMEDCTEntity", "BeginOffset"),
         type = "integer",
         name = "BeginOffset",
         target_id = prelude.Integer.id,
      }),
      EndOffset = schema.new({
         id = id.from(_N, "SNOMEDCTEntity", "EndOffset"),
         type = "integer",
         name = "EndOffset",
         target_id = prelude.Integer.id,
      }),
      Attributes = schema.new({
         id = id.from(_N, "SNOMEDCTEntity", "Attributes"),
         type = "list",
         name = "Attributes",
         target_id = prelude.Document.id,
         list_member = M.SNOMEDCTAttribute,
      }),
      Traits = schema.new({
         id = id.from(_N, "SNOMEDCTEntity", "Traits"),
         type = "list",
         name = "Traits",
         target_id = prelude.Document.id,
         list_member = M.SNOMEDCTTrait,
      }),
      SNOMEDCTConcepts = schema.new({
         id = id.from(_N, "SNOMEDCTEntity", "SNOMEDCTConcepts"),
         type = "list",
         name = "SNOMEDCTConcepts",
         target_id = prelude.Document.id,
         list_member = M.SNOMEDCTConcept,
      }),
   },
})

M.SNOMEDCTDetails = schema.new({
   id = id.from(_N, "SNOMEDCTDetails"),
   type = "structure",
   members = {
      Edition = schema.new({
         id = id.from(_N, "SNOMEDCTDetails", "Edition"),
         type = "string",
         name = "Edition",
         target_id = prelude.String.id,
      }),
      Language = schema.new({
         id = id.from(_N, "SNOMEDCTDetails", "Language"),
         type = "string",
         name = "Language",
         target_id = prelude.String.id,
      }),
      VersionDate = schema.new({
         id = id.from(_N, "SNOMEDCTDetails", "VersionDate"),
         type = "string",
         name = "VersionDate",
         target_id = prelude.String.id,
      }),
   },
})

M.InferSNOMEDCTOutput = schema.new({
   id = id.from(_N, "InferSNOMEDCTResponse"),
   type = "structure",
   members = {
      Entities = schema.new({
         id = id.from(_N, "InferSNOMEDCTOutput", "Entities"),
         type = "list",
         name = "Entities",
         target_id = prelude.Document.id,
         list_member = M.SNOMEDCTEntity,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PaginationToken = schema.new({
         id = id.from(_N, "InferSNOMEDCTOutput", "PaginationToken"),
         type = "string",
         name = "PaginationToken",
         target_id = prelude.String.id,
      }),
      ModelVersion = schema.new({
         id = id.from(_N, "InferSNOMEDCTOutput", "ModelVersion"),
         type = "string",
         name = "ModelVersion",
         target_id = prelude.String.id,
      }),
      SNOMEDCTDetails = schema.new({
         id = id.from(_N, "InferSNOMEDCTOutput", "SNOMEDCTDetails"),
         type = "structure",
         name = "SNOMEDCTDetails",
         target_id = id.from(_N, "SNOMEDCTDetails"),
         target = M.SNOMEDCTDetails,
      }),
      Characters = schema.new({
         id = id.from(_N, "InferSNOMEDCTOutput", "Characters"),
         type = "structure",
         name = "Characters",
         target_id = id.from(_N, "Characters"),
         target = M.Characters,
      }),
   },
})

M.ComprehendMedicalAsyncJobFilter = schema.new({
   id = id.from(_N, "ComprehendMedicalAsyncJobFilter"),
   type = "structure",
   members = {
      JobName = schema.new({
         id = id.from(_N, "ComprehendMedicalAsyncJobFilter", "JobName"),
         type = "string",
         name = "JobName",
         target_id = prelude.String.id,
      }),
      JobStatus = schema.new({
         id = id.from(_N, "ComprehendMedicalAsyncJobFilter", "JobStatus"),
         type = "string",
         name = "JobStatus",
         target_id = prelude.String.id,
      }),
      SubmitTimeBefore = schema.new({
         id = id.from(_N, "ComprehendMedicalAsyncJobFilter", "SubmitTimeBefore"),
         type = "timestamp",
         name = "SubmitTimeBefore",
         target_id = prelude.Timestamp.id,
      }),
      SubmitTimeAfter = schema.new({
         id = id.from(_N, "ComprehendMedicalAsyncJobFilter", "SubmitTimeAfter"),
         type = "timestamp",
         name = "SubmitTimeAfter",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListEntitiesDetectionV2JobsInput = schema.new({
   id = id.from(_N, "ListEntitiesDetectionV2JobsRequest"),
   type = "structure",
   members = {
      Filter = schema.new({
         id = id.from(_N, "ListEntitiesDetectionV2JobsInput", "Filter"),
         type = "structure",
         name = "Filter",
         target_id = id.from(_N, "ComprehendMedicalAsyncJobFilter"),
         target = M.ComprehendMedicalAsyncJobFilter,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListEntitiesDetectionV2JobsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListEntitiesDetectionV2JobsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ListEntitiesDetectionV2JobsOutput = schema.new({
   id = id.from(_N, "ListEntitiesDetectionV2JobsResponse"),
   type = "structure",
   members = {
      ComprehendMedicalAsyncJobPropertiesList = schema.new({
         id = id.from(_N, "ListEntitiesDetectionV2JobsOutput", "ComprehendMedicalAsyncJobPropertiesList"),
         type = "list",
         name = "ComprehendMedicalAsyncJobPropertiesList",
         target_id = prelude.Document.id,
         list_member = M.ComprehendMedicalAsyncJobProperties,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListEntitiesDetectionV2JobsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
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

M.ListICD10CMInferenceJobsInput = schema.new({
   id = id.from(_N, "ListICD10CMInferenceJobsRequest"),
   type = "structure",
   members = {
      Filter = schema.new({
         id = id.from(_N, "ListICD10CMInferenceJobsInput", "Filter"),
         type = "structure",
         name = "Filter",
         target_id = id.from(_N, "ComprehendMedicalAsyncJobFilter"),
         target = M.ComprehendMedicalAsyncJobFilter,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListICD10CMInferenceJobsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListICD10CMInferenceJobsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ListICD10CMInferenceJobsOutput = schema.new({
   id = id.from(_N, "ListICD10CMInferenceJobsResponse"),
   type = "structure",
   members = {
      ComprehendMedicalAsyncJobPropertiesList = schema.new({
         id = id.from(_N, "ListICD10CMInferenceJobsOutput", "ComprehendMedicalAsyncJobPropertiesList"),
         type = "list",
         name = "ComprehendMedicalAsyncJobPropertiesList",
         target_id = prelude.Document.id,
         list_member = M.ComprehendMedicalAsyncJobProperties,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListICD10CMInferenceJobsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPHIDetectionJobsInput = schema.new({
   id = id.from(_N, "ListPHIDetectionJobsRequest"),
   type = "structure",
   members = {
      Filter = schema.new({
         id = id.from(_N, "ListPHIDetectionJobsInput", "Filter"),
         type = "structure",
         name = "Filter",
         target_id = id.from(_N, "ComprehendMedicalAsyncJobFilter"),
         target = M.ComprehendMedicalAsyncJobFilter,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListPHIDetectionJobsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListPHIDetectionJobsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ListPHIDetectionJobsOutput = schema.new({
   id = id.from(_N, "ListPHIDetectionJobsResponse"),
   type = "structure",
   members = {
      ComprehendMedicalAsyncJobPropertiesList = schema.new({
         id = id.from(_N, "ListPHIDetectionJobsOutput", "ComprehendMedicalAsyncJobPropertiesList"),
         type = "list",
         name = "ComprehendMedicalAsyncJobPropertiesList",
         target_id = prelude.Document.id,
         list_member = M.ComprehendMedicalAsyncJobProperties,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListPHIDetectionJobsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListRxNormInferenceJobsInput = schema.new({
   id = id.from(_N, "ListRxNormInferenceJobsRequest"),
   type = "structure",
   members = {
      Filter = schema.new({
         id = id.from(_N, "ListRxNormInferenceJobsInput", "Filter"),
         type = "structure",
         name = "Filter",
         target_id = id.from(_N, "ComprehendMedicalAsyncJobFilter"),
         target = M.ComprehendMedicalAsyncJobFilter,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListRxNormInferenceJobsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListRxNormInferenceJobsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ListRxNormInferenceJobsOutput = schema.new({
   id = id.from(_N, "ListRxNormInferenceJobsResponse"),
   type = "structure",
   members = {
      ComprehendMedicalAsyncJobPropertiesList = schema.new({
         id = id.from(_N, "ListRxNormInferenceJobsOutput", "ComprehendMedicalAsyncJobPropertiesList"),
         type = "list",
         name = "ComprehendMedicalAsyncJobPropertiesList",
         target_id = prelude.Document.id,
         list_member = M.ComprehendMedicalAsyncJobProperties,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListRxNormInferenceJobsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListSNOMEDCTInferenceJobsInput = schema.new({
   id = id.from(_N, "ListSNOMEDCTInferenceJobsRequest"),
   type = "structure",
   members = {
      Filter = schema.new({
         id = id.from(_N, "ListSNOMEDCTInferenceJobsInput", "Filter"),
         type = "structure",
         name = "Filter",
         target_id = id.from(_N, "ComprehendMedicalAsyncJobFilter"),
         target = M.ComprehendMedicalAsyncJobFilter,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListSNOMEDCTInferenceJobsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListSNOMEDCTInferenceJobsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ListSNOMEDCTInferenceJobsOutput = schema.new({
   id = id.from(_N, "ListSNOMEDCTInferenceJobsResponse"),
   type = "structure",
   members = {
      ComprehendMedicalAsyncJobPropertiesList = schema.new({
         id = id.from(_N, "ListSNOMEDCTInferenceJobsOutput", "ComprehendMedicalAsyncJobPropertiesList"),
         type = "list",
         name = "ComprehendMedicalAsyncJobPropertiesList",
         target_id = prelude.Document.id,
         list_member = M.ComprehendMedicalAsyncJobProperties,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListSNOMEDCTInferenceJobsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.StartEntitiesDetectionV2JobInput = schema.new({
   id = id.from(_N, "StartEntitiesDetectionV2JobRequest"),
   type = "structure",
   members = {
      InputDataConfig = schema.new({
         id = id.from(_N, "StartEntitiesDetectionV2JobInput", "InputDataConfig"),
         type = "structure",
         name = "InputDataConfig",
         target_id = id.from(_N, "InputDataConfig"),
         target = M.InputDataConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      OutputDataConfig = schema.new({
         id = id.from(_N, "StartEntitiesDetectionV2JobInput", "OutputDataConfig"),
         type = "structure",
         name = "OutputDataConfig",
         target_id = id.from(_N, "OutputDataConfig"),
         target = M.OutputDataConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DataAccessRoleArn = schema.new({
         id = id.from(_N, "StartEntitiesDetectionV2JobInput", "DataAccessRoleArn"),
         type = "string",
         name = "DataAccessRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      JobName = schema.new({
         id = id.from(_N, "StartEntitiesDetectionV2JobInput", "JobName"),
         type = "string",
         name = "JobName",
         target_id = prelude.String.id,
      }),
      ClientRequestToken = schema.new({
         id = id.from(_N, "StartEntitiesDetectionV2JobInput", "ClientRequestToken"),
         type = "string",
         name = "ClientRequestToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      KMSKey = schema.new({
         id = id.from(_N, "StartEntitiesDetectionV2JobInput", "KMSKey"),
         type = "string",
         name = "KMSKey",
         target_id = prelude.String.id,
      }),
      LanguageCode = schema.new({
         id = id.from(_N, "StartEntitiesDetectionV2JobInput", "LanguageCode"),
         type = "string",
         name = "LanguageCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartEntitiesDetectionV2JobOutput = schema.new({
   id = id.from(_N, "StartEntitiesDetectionV2JobResponse"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "StartEntitiesDetectionV2JobOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
      }),
   },
})

M.StartICD10CMInferenceJobInput = schema.new({
   id = id.from(_N, "StartICD10CMInferenceJobRequest"),
   type = "structure",
   members = {
      InputDataConfig = schema.new({
         id = id.from(_N, "StartICD10CMInferenceJobInput", "InputDataConfig"),
         type = "structure",
         name = "InputDataConfig",
         target_id = id.from(_N, "InputDataConfig"),
         target = M.InputDataConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      OutputDataConfig = schema.new({
         id = id.from(_N, "StartICD10CMInferenceJobInput", "OutputDataConfig"),
         type = "structure",
         name = "OutputDataConfig",
         target_id = id.from(_N, "OutputDataConfig"),
         target = M.OutputDataConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DataAccessRoleArn = schema.new({
         id = id.from(_N, "StartICD10CMInferenceJobInput", "DataAccessRoleArn"),
         type = "string",
         name = "DataAccessRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      JobName = schema.new({
         id = id.from(_N, "StartICD10CMInferenceJobInput", "JobName"),
         type = "string",
         name = "JobName",
         target_id = prelude.String.id,
      }),
      ClientRequestToken = schema.new({
         id = id.from(_N, "StartICD10CMInferenceJobInput", "ClientRequestToken"),
         type = "string",
         name = "ClientRequestToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      KMSKey = schema.new({
         id = id.from(_N, "StartICD10CMInferenceJobInput", "KMSKey"),
         type = "string",
         name = "KMSKey",
         target_id = prelude.String.id,
      }),
      LanguageCode = schema.new({
         id = id.from(_N, "StartICD10CMInferenceJobInput", "LanguageCode"),
         type = "string",
         name = "LanguageCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartICD10CMInferenceJobOutput = schema.new({
   id = id.from(_N, "StartICD10CMInferenceJobResponse"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "StartICD10CMInferenceJobOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
      }),
   },
})

M.StartPHIDetectionJobInput = schema.new({
   id = id.from(_N, "StartPHIDetectionJobRequest"),
   type = "structure",
   members = {
      InputDataConfig = schema.new({
         id = id.from(_N, "StartPHIDetectionJobInput", "InputDataConfig"),
         type = "structure",
         name = "InputDataConfig",
         target_id = id.from(_N, "InputDataConfig"),
         target = M.InputDataConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      OutputDataConfig = schema.new({
         id = id.from(_N, "StartPHIDetectionJobInput", "OutputDataConfig"),
         type = "structure",
         name = "OutputDataConfig",
         target_id = id.from(_N, "OutputDataConfig"),
         target = M.OutputDataConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DataAccessRoleArn = schema.new({
         id = id.from(_N, "StartPHIDetectionJobInput", "DataAccessRoleArn"),
         type = "string",
         name = "DataAccessRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      JobName = schema.new({
         id = id.from(_N, "StartPHIDetectionJobInput", "JobName"),
         type = "string",
         name = "JobName",
         target_id = prelude.String.id,
      }),
      ClientRequestToken = schema.new({
         id = id.from(_N, "StartPHIDetectionJobInput", "ClientRequestToken"),
         type = "string",
         name = "ClientRequestToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      KMSKey = schema.new({
         id = id.from(_N, "StartPHIDetectionJobInput", "KMSKey"),
         type = "string",
         name = "KMSKey",
         target_id = prelude.String.id,
      }),
      LanguageCode = schema.new({
         id = id.from(_N, "StartPHIDetectionJobInput", "LanguageCode"),
         type = "string",
         name = "LanguageCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartPHIDetectionJobOutput = schema.new({
   id = id.from(_N, "StartPHIDetectionJobResponse"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "StartPHIDetectionJobOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
      }),
   },
})

M.StartRxNormInferenceJobInput = schema.new({
   id = id.from(_N, "StartRxNormInferenceJobRequest"),
   type = "structure",
   members = {
      InputDataConfig = schema.new({
         id = id.from(_N, "StartRxNormInferenceJobInput", "InputDataConfig"),
         type = "structure",
         name = "InputDataConfig",
         target_id = id.from(_N, "InputDataConfig"),
         target = M.InputDataConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      OutputDataConfig = schema.new({
         id = id.from(_N, "StartRxNormInferenceJobInput", "OutputDataConfig"),
         type = "structure",
         name = "OutputDataConfig",
         target_id = id.from(_N, "OutputDataConfig"),
         target = M.OutputDataConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DataAccessRoleArn = schema.new({
         id = id.from(_N, "StartRxNormInferenceJobInput", "DataAccessRoleArn"),
         type = "string",
         name = "DataAccessRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      JobName = schema.new({
         id = id.from(_N, "StartRxNormInferenceJobInput", "JobName"),
         type = "string",
         name = "JobName",
         target_id = prelude.String.id,
      }),
      ClientRequestToken = schema.new({
         id = id.from(_N, "StartRxNormInferenceJobInput", "ClientRequestToken"),
         type = "string",
         name = "ClientRequestToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      KMSKey = schema.new({
         id = id.from(_N, "StartRxNormInferenceJobInput", "KMSKey"),
         type = "string",
         name = "KMSKey",
         target_id = prelude.String.id,
      }),
      LanguageCode = schema.new({
         id = id.from(_N, "StartRxNormInferenceJobInput", "LanguageCode"),
         type = "string",
         name = "LanguageCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartRxNormInferenceJobOutput = schema.new({
   id = id.from(_N, "StartRxNormInferenceJobResponse"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "StartRxNormInferenceJobOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
      }),
   },
})

M.StartSNOMEDCTInferenceJobInput = schema.new({
   id = id.from(_N, "StartSNOMEDCTInferenceJobRequest"),
   type = "structure",
   members = {
      InputDataConfig = schema.new({
         id = id.from(_N, "StartSNOMEDCTInferenceJobInput", "InputDataConfig"),
         type = "structure",
         name = "InputDataConfig",
         target_id = id.from(_N, "InputDataConfig"),
         target = M.InputDataConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      OutputDataConfig = schema.new({
         id = id.from(_N, "StartSNOMEDCTInferenceJobInput", "OutputDataConfig"),
         type = "structure",
         name = "OutputDataConfig",
         target_id = id.from(_N, "OutputDataConfig"),
         target = M.OutputDataConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DataAccessRoleArn = schema.new({
         id = id.from(_N, "StartSNOMEDCTInferenceJobInput", "DataAccessRoleArn"),
         type = "string",
         name = "DataAccessRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      JobName = schema.new({
         id = id.from(_N, "StartSNOMEDCTInferenceJobInput", "JobName"),
         type = "string",
         name = "JobName",
         target_id = prelude.String.id,
      }),
      ClientRequestToken = schema.new({
         id = id.from(_N, "StartSNOMEDCTInferenceJobInput", "ClientRequestToken"),
         type = "string",
         name = "ClientRequestToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      KMSKey = schema.new({
         id = id.from(_N, "StartSNOMEDCTInferenceJobInput", "KMSKey"),
         type = "string",
         name = "KMSKey",
         target_id = prelude.String.id,
      }),
      LanguageCode = schema.new({
         id = id.from(_N, "StartSNOMEDCTInferenceJobInput", "LanguageCode"),
         type = "string",
         name = "LanguageCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartSNOMEDCTInferenceJobOutput = schema.new({
   id = id.from(_N, "StartSNOMEDCTInferenceJobResponse"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "StartSNOMEDCTInferenceJobOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
      }),
   },
})

M.StopEntitiesDetectionV2JobInput = schema.new({
   id = id.from(_N, "StopEntitiesDetectionV2JobRequest"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "StopEntitiesDetectionV2JobInput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StopEntitiesDetectionV2JobOutput = schema.new({
   id = id.from(_N, "StopEntitiesDetectionV2JobResponse"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "StopEntitiesDetectionV2JobOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
      }),
   },
})

M.StopICD10CMInferenceJobInput = schema.new({
   id = id.from(_N, "StopICD10CMInferenceJobRequest"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "StopICD10CMInferenceJobInput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StopICD10CMInferenceJobOutput = schema.new({
   id = id.from(_N, "StopICD10CMInferenceJobResponse"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "StopICD10CMInferenceJobOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
      }),
   },
})

M.StopPHIDetectionJobInput = schema.new({
   id = id.from(_N, "StopPHIDetectionJobRequest"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "StopPHIDetectionJobInput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StopPHIDetectionJobOutput = schema.new({
   id = id.from(_N, "StopPHIDetectionJobResponse"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "StopPHIDetectionJobOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
      }),
   },
})

M.StopRxNormInferenceJobInput = schema.new({
   id = id.from(_N, "StopRxNormInferenceJobRequest"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "StopRxNormInferenceJobInput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StopRxNormInferenceJobOutput = schema.new({
   id = id.from(_N, "StopRxNormInferenceJobResponse"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "StopRxNormInferenceJobOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
      }),
   },
})

M.StopSNOMEDCTInferenceJobInput = schema.new({
   id = id.from(_N, "StopSNOMEDCTInferenceJobRequest"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "StopSNOMEDCTInferenceJobInput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StopSNOMEDCTInferenceJobOutput = schema.new({
   id = id.from(_N, "StopSNOMEDCTInferenceJobResponse"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "StopSNOMEDCTInferenceJobOutput", "JobId"),
         type = "string",
         name = "JobId",
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
   id = id.from("com.amazonaws.comprehendmedical", "ComprehendMedical_20181030"),
   version = "2018-10-30",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeEntitiesDetectionV2Job = schema.operation({
   id = id.from("com.amazonaws.comprehendmedical", "DescribeEntitiesDetectionV2Job"),
   input = M.DescribeEntitiesDetectionV2JobInput,
   output = M.DescribeEntitiesDetectionV2JobOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeICD10CMInferenceJob = schema.operation({
   id = id.from("com.amazonaws.comprehendmedical", "DescribeICD10CMInferenceJob"),
   input = M.DescribeICD10CMInferenceJobInput,
   output = M.DescribeICD10CMInferenceJobOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribePHIDetectionJob = schema.operation({
   id = id.from("com.amazonaws.comprehendmedical", "DescribePHIDetectionJob"),
   input = M.DescribePHIDetectionJobInput,
   output = M.DescribePHIDetectionJobOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeRxNormInferenceJob = schema.operation({
   id = id.from("com.amazonaws.comprehendmedical", "DescribeRxNormInferenceJob"),
   input = M.DescribeRxNormInferenceJobInput,
   output = M.DescribeRxNormInferenceJobOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeSNOMEDCTInferenceJob = schema.operation({
   id = id.from("com.amazonaws.comprehendmedical", "DescribeSNOMEDCTInferenceJob"),
   input = M.DescribeSNOMEDCTInferenceJobInput,
   output = M.DescribeSNOMEDCTInferenceJobOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DetectEntities = schema.operation({
   id = id.from("com.amazonaws.comprehendmedical", "DetectEntities"),
   input = M.DetectEntitiesInput,
   output = M.DetectEntitiesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DetectEntitiesV2 = schema.operation({
   id = id.from("com.amazonaws.comprehendmedical", "DetectEntitiesV2"),
   input = M.DetectEntitiesV2Input,
   output = M.DetectEntitiesV2Output,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DetectPHI = schema.operation({
   id = id.from("com.amazonaws.comprehendmedical", "DetectPHI"),
   input = M.DetectPHIInput,
   output = M.DetectPHIOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.InferICD10CM = schema.operation({
   id = id.from("com.amazonaws.comprehendmedical", "InferICD10CM"),
   input = M.InferICD10CMInput,
   output = M.InferICD10CMOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.InferRxNorm = schema.operation({
   id = id.from("com.amazonaws.comprehendmedical", "InferRxNorm"),
   input = M.InferRxNormInput,
   output = M.InferRxNormOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.InferSNOMEDCT = schema.operation({
   id = id.from("com.amazonaws.comprehendmedical", "InferSNOMEDCT"),
   input = M.InferSNOMEDCTInput,
   output = M.InferSNOMEDCTOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListEntitiesDetectionV2Jobs = schema.operation({
   id = id.from("com.amazonaws.comprehendmedical", "ListEntitiesDetectionV2Jobs"),
   input = M.ListEntitiesDetectionV2JobsInput,
   output = M.ListEntitiesDetectionV2JobsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListICD10CMInferenceJobs = schema.operation({
   id = id.from("com.amazonaws.comprehendmedical", "ListICD10CMInferenceJobs"),
   input = M.ListICD10CMInferenceJobsInput,
   output = M.ListICD10CMInferenceJobsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPHIDetectionJobs = schema.operation({
   id = id.from("com.amazonaws.comprehendmedical", "ListPHIDetectionJobs"),
   input = M.ListPHIDetectionJobsInput,
   output = M.ListPHIDetectionJobsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListRxNormInferenceJobs = schema.operation({
   id = id.from("com.amazonaws.comprehendmedical", "ListRxNormInferenceJobs"),
   input = M.ListRxNormInferenceJobsInput,
   output = M.ListRxNormInferenceJobsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListSNOMEDCTInferenceJobs = schema.operation({
   id = id.from("com.amazonaws.comprehendmedical", "ListSNOMEDCTInferenceJobs"),
   input = M.ListSNOMEDCTInferenceJobsInput,
   output = M.ListSNOMEDCTInferenceJobsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartEntitiesDetectionV2Job = schema.operation({
   id = id.from("com.amazonaws.comprehendmedical", "StartEntitiesDetectionV2Job"),
   input = M.StartEntitiesDetectionV2JobInput,
   output = M.StartEntitiesDetectionV2JobOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartICD10CMInferenceJob = schema.operation({
   id = id.from("com.amazonaws.comprehendmedical", "StartICD10CMInferenceJob"),
   input = M.StartICD10CMInferenceJobInput,
   output = M.StartICD10CMInferenceJobOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartPHIDetectionJob = schema.operation({
   id = id.from("com.amazonaws.comprehendmedical", "StartPHIDetectionJob"),
   input = M.StartPHIDetectionJobInput,
   output = M.StartPHIDetectionJobOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartRxNormInferenceJob = schema.operation({
   id = id.from("com.amazonaws.comprehendmedical", "StartRxNormInferenceJob"),
   input = M.StartRxNormInferenceJobInput,
   output = M.StartRxNormInferenceJobOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartSNOMEDCTInferenceJob = schema.operation({
   id = id.from("com.amazonaws.comprehendmedical", "StartSNOMEDCTInferenceJob"),
   input = M.StartSNOMEDCTInferenceJobInput,
   output = M.StartSNOMEDCTInferenceJobOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopEntitiesDetectionV2Job = schema.operation({
   id = id.from("com.amazonaws.comprehendmedical", "StopEntitiesDetectionV2Job"),
   input = M.StopEntitiesDetectionV2JobInput,
   output = M.StopEntitiesDetectionV2JobOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopICD10CMInferenceJob = schema.operation({
   id = id.from("com.amazonaws.comprehendmedical", "StopICD10CMInferenceJob"),
   input = M.StopICD10CMInferenceJobInput,
   output = M.StopICD10CMInferenceJobOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopPHIDetectionJob = schema.operation({
   id = id.from("com.amazonaws.comprehendmedical", "StopPHIDetectionJob"),
   input = M.StopPHIDetectionJobInput,
   output = M.StopPHIDetectionJobOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopRxNormInferenceJob = schema.operation({
   id = id.from("com.amazonaws.comprehendmedical", "StopRxNormInferenceJob"),
   input = M.StopRxNormInferenceJobInput,
   output = M.StopRxNormInferenceJobOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopSNOMEDCTInferenceJob = schema.operation({
   id = id.from("com.amazonaws.comprehendmedical", "StopSNOMEDCTInferenceJob"),
   input = M.StopSNOMEDCTInferenceJobInput,
   output = M.StopSNOMEDCTInferenceJobOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
