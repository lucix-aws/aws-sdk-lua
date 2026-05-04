local M = {}

M.EntityType = {
    MEDICATION = "MEDICATION",
    MEDICAL_CONDITION = "MEDICAL_CONDITION",
    PROTECTED_HEALTH_INFORMATION = "PROTECTED_HEALTH_INFORMATION",
    TEST_TREATMENT_PROCEDURE = "TEST_TREATMENT_PROCEDURE",
    ANATOMY = "ANATOMY",
    TIME_EXPRESSION = "TIME_EXPRESSION",
    BEHAVIORAL_ENVIRONMENTAL_SOCIAL = "BEHAVIORAL_ENVIRONMENTAL_SOCIAL",
}

M.RelationshipType = {
    EVERY = "EVERY",
    WITH_DOSAGE = "WITH_DOSAGE",
    ADMINISTERED_VIA = "ADMINISTERED_VIA",
    FOR = "FOR",
    NEGATIVE = "NEGATIVE",
    OVERLAP = "OVERLAP",
    DOSAGE = "DOSAGE",
    ROUTE_OR_MODE = "ROUTE_OR_MODE",
    FORM = "FORM",
    FREQUENCY = "FREQUENCY",
    DURATION = "DURATION",
    STRENGTH = "STRENGTH",
    RATE = "RATE",
    ACUITY = "ACUITY",
    TEST_VALUE = "TEST_VALUE",
    TEST_UNITS = "TEST_UNITS",
    TEST_UNIT = "TEST_UNIT",
    DIRECTION = "DIRECTION",
    SYSTEM_ORGAN_SITE = "SYSTEM_ORGAN_SITE",
    AMOUNT = "AMOUNT",
    USAGE = "USAGE",
    QUALITY = "QUALITY",
}

M.AttributeName = {
    SIGN = "SIGN",
    SYMPTOM = "SYMPTOM",
    DIAGNOSIS = "DIAGNOSIS",
    NEGATION = "NEGATION",
    PERTAINS_TO_FAMILY = "PERTAINS_TO_FAMILY",
    HYPOTHETICAL = "HYPOTHETICAL",
    LOW_CONFIDENCE = "LOW_CONFIDENCE",
    PAST_HISTORY = "PAST_HISTORY",
    FUTURE = "FUTURE",
}

M.Trait = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Score = {
            type = "number",
        },
    },
}

M.EntitySubType = {
    NAME = "NAME",
    DX_NAME = "DX_NAME",
    DOSAGE = "DOSAGE",
    ROUTE_OR_MODE = "ROUTE_OR_MODE",
    FORM = "FORM",
    FREQUENCY = "FREQUENCY",
    DURATION = "DURATION",
    GENERIC_NAME = "GENERIC_NAME",
    BRAND_NAME = "BRAND_NAME",
    STRENGTH = "STRENGTH",
    RATE = "RATE",
    ACUITY = "ACUITY",
    TEST_NAME = "TEST_NAME",
    TEST_VALUE = "TEST_VALUE",
    TEST_UNITS = "TEST_UNITS",
    TEST_UNIT = "TEST_UNIT",
    PROCEDURE_NAME = "PROCEDURE_NAME",
    TREATMENT_NAME = "TREATMENT_NAME",
    DATE = "DATE",
    AGE = "AGE",
    CONTACT_POINT = "CONTACT_POINT",
    PHONE_OR_FAX = "PHONE_OR_FAX",
    EMAIL = "EMAIL",
    IDENTIFIER = "IDENTIFIER",
    ID = "ID",
    URL = "URL",
    ADDRESS = "ADDRESS",
    PROFESSION = "PROFESSION",
    SYSTEM_ORGAN_SITE = "SYSTEM_ORGAN_SITE",
    DIRECTION = "DIRECTION",
    QUALITY = "QUALITY",
    QUANTITY = "QUANTITY",
    TIME_EXPRESSION = "TIME_EXPRESSION",
    TIME_TO_MEDICATION_NAME = "TIME_TO_MEDICATION_NAME",
    TIME_TO_DX_NAME = "TIME_TO_DX_NAME",
    TIME_TO_TEST_NAME = "TIME_TO_TEST_NAME",
    TIME_TO_PROCEDURE_NAME = "TIME_TO_PROCEDURE_NAME",
    TIME_TO_TREATMENT_NAME = "TIME_TO_TREATMENT_NAME",
    AMOUNT = "AMOUNT",
    GENDER = "GENDER",
    RACE_ETHNICITY = "RACE_ETHNICITY",
    ALLERGIES = "ALLERGIES",
    TOBACCO_USE = "TOBACCO_USE",
    ALCOHOL_CONSUMPTION = "ALCOHOL_CONSUMPTION",
    REC_DRUG_USE = "REC_DRUG_USE",
}

M.Attribute = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Score = {
            type = "number",
        },
        RelationshipScore = {
            type = "number",
        },
        RelationshipType = {
            type = "string",
        },
        Id = {
            type = "number",
        },
        BeginOffset = {
            type = "number",
        },
        EndOffset = {
            type = "number",
        },
        Text = {
            type = "string",
        },
        Category = {
            type = "string",
        },
        Traits = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Characters = {
    type = "structure",
    members = {
        OriginalTextCharacters = {
            type = "number",
        },
    },
}

M.DescribeEntitiesDetectionV2JobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InputDataConfig = {
    type = "structure",
    members = {
        S3Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Key = {
            type = "string",
        },
    },
}

M.JobStatus = {
    SUBMITTED = "SUBMITTED",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    PARTIAL_SUCCESS = "PARTIAL_SUCCESS",
    FAILED = "FAILED",
    STOP_REQUESTED = "STOP_REQUESTED",
    STOPPED = "STOPPED",
}

M.LanguageCode = {
    EN = "en",
}

M.OutputDataConfig = {
    type = "structure",
    members = {
        S3Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Key = {
            type = "string",
        },
    },
}

M.ComprehendMedicalAsyncJobProperties = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobName = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        SubmitTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        ExpirationTime = {
            type = "timestamp",
        },
        InputDataConfig = {
            type = "structure",
        },
        OutputDataConfig = {
            type = "structure",
        },
        LanguageCode = {
            type = "string",
        },
        DataAccessRoleArn = {
            type = "string",
        },
        ManifestFilePath = {
            type = "string",
        },
        KMSKey = {
            type = "string",
        },
        ModelVersion = {
            type = "string",
        },
    },
}

M.DescribeEntitiesDetectionV2JobOutput = {
    type = "structure",
    members = {
        ComprehendMedicalAsyncJobProperties = {
            type = "structure",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeICD10CMInferenceJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeICD10CMInferenceJobOutput = {
    type = "structure",
    members = {
        ComprehendMedicalAsyncJobProperties = {
            type = "structure",
        },
    },
}

M.DescribePHIDetectionJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribePHIDetectionJobOutput = {
    type = "structure",
    members = {
        ComprehendMedicalAsyncJobProperties = {
            type = "structure",
        },
    },
}

M.DescribeRxNormInferenceJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeRxNormInferenceJobOutput = {
    type = "structure",
    members = {
        ComprehendMedicalAsyncJobProperties = {
            type = "structure",
        },
    },
}

M.DescribeSNOMEDCTInferenceJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeSNOMEDCTInferenceJobOutput = {
    type = "structure",
    members = {
        ComprehendMedicalAsyncJobProperties = {
            type = "structure",
        },
    },
}

M.DetectEntitiesInput = {
    type = "structure",
    members = {
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Entity = {
    type = "structure",
    members = {
        Id = {
            type = "number",
        },
        BeginOffset = {
            type = "number",
        },
        EndOffset = {
            type = "number",
        },
        Score = {
            type = "number",
        },
        Text = {
            type = "string",
        },
        Category = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Traits = {
            type = "list",
            member_type = "structure",
        },
        Attributes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UnmappedAttribute = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Attribute = {
            type = "structure",
        },
    },
}

M.DetectEntitiesOutput = {
    type = "structure",
    members = {
        Entities = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        UnmappedAttributes = {
            type = "list",
            member_type = "structure",
        },
        PaginationToken = {
            type = "string",
        },
        ModelVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidEncodingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TextSizeLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DetectEntitiesV2Input = {
    type = "structure",
    members = {
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DetectEntitiesV2Output = {
    type = "structure",
    members = {
        Entities = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        UnmappedAttributes = {
            type = "list",
            member_type = "structure",
        },
        PaginationToken = {
            type = "string",
        },
        ModelVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DetectPHIInput = {
    type = "structure",
    members = {
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DetectPHIOutput = {
    type = "structure",
    members = {
        Entities = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        PaginationToken = {
            type = "string",
        },
        ModelVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InferICD10CMInput = {
    type = "structure",
    members = {
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ICD10CMEntityType = {
    DX_NAME = "DX_NAME",
    TIME_EXPRESSION = "TIME_EXPRESSION",
}

M.ICD10CMRelationshipType = {
    OVERLAP = "OVERLAP",
    SYSTEM_ORGAN_SITE = "SYSTEM_ORGAN_SITE",
    QUALITY = "QUALITY",
}

M.ICD10CMTraitName = {
    NEGATION = "NEGATION",
    DIAGNOSIS = "DIAGNOSIS",
    SIGN = "SIGN",
    SYMPTOM = "SYMPTOM",
    PERTAINS_TO_FAMILY = "PERTAINS_TO_FAMILY",
    HYPOTHETICAL = "HYPOTHETICAL",
    LOW_CONFIDENCE = "LOW_CONFIDENCE",
}

M.ICD10CMTrait = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Score = {
            type = "number",
        },
    },
}

M.ICD10CMAttributeType = {
    ACUITY = "ACUITY",
    DIRECTION = "DIRECTION",
    SYSTEM_ORGAN_SITE = "SYSTEM_ORGAN_SITE",
    QUALITY = "QUALITY",
    QUANTITY = "QUANTITY",
    TIME_TO_DX_NAME = "TIME_TO_DX_NAME",
    TIME_EXPRESSION = "TIME_EXPRESSION",
}

M.ICD10CMAttribute = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Score = {
            type = "number",
        },
        RelationshipScore = {
            type = "number",
        },
        Id = {
            type = "number",
        },
        BeginOffset = {
            type = "number",
        },
        EndOffset = {
            type = "number",
        },
        Text = {
            type = "string",
        },
        Traits = {
            type = "list",
            member_type = "structure",
        },
        Category = {
            type = "string",
        },
        RelationshipType = {
            type = "string",
        },
    },
}

M.ICD10CMEntityCategory = {
    MEDICAL_CONDITION = "MEDICAL_CONDITION",
}

M.ICD10CMConcept = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        Score = {
            type = "number",
        },
    },
}

M.ICD10CMEntity = {
    type = "structure",
    members = {
        Id = {
            type = "number",
        },
        Text = {
            type = "string",
        },
        Category = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Score = {
            type = "number",
        },
        BeginOffset = {
            type = "number",
        },
        EndOffset = {
            type = "number",
        },
        Attributes = {
            type = "list",
            member_type = "structure",
        },
        Traits = {
            type = "list",
            member_type = "structure",
        },
        ICD10CMConcepts = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.InferICD10CMOutput = {
    type = "structure",
    members = {
        Entities = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        PaginationToken = {
            type = "string",
        },
        ModelVersion = {
            type = "string",
        },
    },
}

M.InferRxNormInput = {
    type = "structure",
    members = {
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RxNormTraitName = {
    NEGATION = "NEGATION",
    PAST_HISTORY = "PAST_HISTORY",
}

M.RxNormTrait = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Score = {
            type = "number",
        },
    },
}

M.RxNormAttributeType = {
    DOSAGE = "DOSAGE",
    DURATION = "DURATION",
    FORM = "FORM",
    FREQUENCY = "FREQUENCY",
    RATE = "RATE",
    ROUTE_OR_MODE = "ROUTE_OR_MODE",
    STRENGTH = "STRENGTH",
}

M.RxNormAttribute = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Score = {
            type = "number",
        },
        RelationshipScore = {
            type = "number",
        },
        Id = {
            type = "number",
        },
        BeginOffset = {
            type = "number",
        },
        EndOffset = {
            type = "number",
        },
        Text = {
            type = "string",
        },
        Traits = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RxNormEntityCategory = {
    MEDICATION = "MEDICATION",
}

M.RxNormConcept = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        Score = {
            type = "number",
        },
    },
}

M.RxNormEntityType = {
    BRAND_NAME = "BRAND_NAME",
    GENERIC_NAME = "GENERIC_NAME",
}

M.RxNormEntity = {
    type = "structure",
    members = {
        Id = {
            type = "number",
        },
        Text = {
            type = "string",
        },
        Category = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Score = {
            type = "number",
        },
        BeginOffset = {
            type = "number",
        },
        EndOffset = {
            type = "number",
        },
        Attributes = {
            type = "list",
            member_type = "structure",
        },
        Traits = {
            type = "list",
            member_type = "structure",
        },
        RxNormConcepts = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.InferRxNormOutput = {
    type = "structure",
    members = {
        Entities = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        PaginationToken = {
            type = "string",
        },
        ModelVersion = {
            type = "string",
        },
    },
}

M.InferSNOMEDCTInput = {
    type = "structure",
    members = {
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SNOMEDCTEntityCategory = {
    MEDICAL_CONDITION = "MEDICAL_CONDITION",
    ANATOMY = "ANATOMY",
    TEST_TREATMENT_PROCEDURE = "TEST_TREATMENT_PROCEDURE",
}

M.SNOMEDCTRelationshipType = {
    ACUITY = "ACUITY",
    QUALITY = "QUALITY",
    TEST_VALUE = "TEST_VALUE",
    TEST_UNITS = "TEST_UNITS",
    DIRECTION = "DIRECTION",
    SYSTEM_ORGAN_SITE = "SYSTEM_ORGAN_SITE",
    TEST_UNIT = "TEST_UNIT",
}

M.SNOMEDCTConcept = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        Score = {
            type = "number",
        },
    },
}

M.SNOMEDCTTraitName = {
    NEGATION = "NEGATION",
    DIAGNOSIS = "DIAGNOSIS",
    SIGN = "SIGN",
    SYMPTOM = "SYMPTOM",
    PERTAINS_TO_FAMILY = "PERTAINS_TO_FAMILY",
    HYPOTHETICAL = "HYPOTHETICAL",
    LOW_CONFIDENCE = "LOW_CONFIDENCE",
    PAST_HISTORY = "PAST_HISTORY",
    FUTURE = "FUTURE",
}

M.SNOMEDCTTrait = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Score = {
            type = "number",
        },
    },
}

M.SNOMEDCTAttributeType = {
    ACUITY = "ACUITY",
    QUALITY = "QUALITY",
    DIRECTION = "DIRECTION",
    SYSTEM_ORGAN_SITE = "SYSTEM_ORGAN_SITE",
    TEST_VALUE = "TEST_VALUE",
    TEST_UNIT = "TEST_UNIT",
}

M.SNOMEDCTAttribute = {
    type = "structure",
    members = {
        Category = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Score = {
            type = "number",
        },
        RelationshipScore = {
            type = "number",
        },
        RelationshipType = {
            type = "string",
        },
        Id = {
            type = "number",
        },
        BeginOffset = {
            type = "number",
        },
        EndOffset = {
            type = "number",
        },
        Text = {
            type = "string",
        },
        Traits = {
            type = "list",
            member_type = "structure",
        },
        SNOMEDCTConcepts = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SNOMEDCTEntityType = {
    DX_NAME = "DX_NAME",
    TEST_NAME = "TEST_NAME",
    PROCEDURE_NAME = "PROCEDURE_NAME",
    TREATMENT_NAME = "TREATMENT_NAME",
}

M.SNOMEDCTEntity = {
    type = "structure",
    members = {
        Id = {
            type = "number",
        },
        Text = {
            type = "string",
        },
        Category = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Score = {
            type = "number",
        },
        BeginOffset = {
            type = "number",
        },
        EndOffset = {
            type = "number",
        },
        Attributes = {
            type = "list",
            member_type = "structure",
        },
        Traits = {
            type = "list",
            member_type = "structure",
        },
        SNOMEDCTConcepts = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SNOMEDCTDetails = {
    type = "structure",
    members = {
        Edition = {
            type = "string",
        },
        Language = {
            type = "string",
        },
        VersionDate = {
            type = "string",
        },
    },
}

M.InferSNOMEDCTOutput = {
    type = "structure",
    members = {
        Entities = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        PaginationToken = {
            type = "string",
        },
        ModelVersion = {
            type = "string",
        },
        SNOMEDCTDetails = {
            type = "structure",
        },
        Characters = {
            type = "structure",
        },
    },
}

M.ComprehendMedicalAsyncJobFilter = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        SubmitTimeBefore = {
            type = "timestamp",
        },
        SubmitTimeAfter = {
            type = "timestamp",
        },
    },
}

M.ListEntitiesDetectionV2JobsInput = {
    type = "structure",
    members = {
        Filter = {
            type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListEntitiesDetectionV2JobsOutput = {
    type = "structure",
    members = {
        ComprehendMedicalAsyncJobPropertiesList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListICD10CMInferenceJobsInput = {
    type = "structure",
    members = {
        Filter = {
            type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListICD10CMInferenceJobsOutput = {
    type = "structure",
    members = {
        ComprehendMedicalAsyncJobPropertiesList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPHIDetectionJobsInput = {
    type = "structure",
    members = {
        Filter = {
            type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListPHIDetectionJobsOutput = {
    type = "structure",
    members = {
        ComprehendMedicalAsyncJobPropertiesList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRxNormInferenceJobsInput = {
    type = "structure",
    members = {
        Filter = {
            type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListRxNormInferenceJobsOutput = {
    type = "structure",
    members = {
        ComprehendMedicalAsyncJobPropertiesList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSNOMEDCTInferenceJobsInput = {
    type = "structure",
    members = {
        Filter = {
            type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListSNOMEDCTInferenceJobsOutput = {
    type = "structure",
    members = {
        ComprehendMedicalAsyncJobPropertiesList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StartEntitiesDetectionV2JobInput = {
    type = "structure",
    members = {
        InputDataConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        OutputDataConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DataAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobName = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
        },
        KMSKey = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartEntitiesDetectionV2JobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.StartICD10CMInferenceJobInput = {
    type = "structure",
    members = {
        InputDataConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        OutputDataConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DataAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobName = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
        },
        KMSKey = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartICD10CMInferenceJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.StartPHIDetectionJobInput = {
    type = "structure",
    members = {
        InputDataConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        OutputDataConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DataAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobName = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
        },
        KMSKey = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartPHIDetectionJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.StartRxNormInferenceJobInput = {
    type = "structure",
    members = {
        InputDataConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        OutputDataConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DataAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobName = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
        },
        KMSKey = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartRxNormInferenceJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.StartSNOMEDCTInferenceJobInput = {
    type = "structure",
    members = {
        InputDataConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        OutputDataConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DataAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobName = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
        },
        KMSKey = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartSNOMEDCTInferenceJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.StopEntitiesDetectionV2JobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopEntitiesDetectionV2JobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.StopICD10CMInferenceJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopICD10CMInferenceJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.StopPHIDetectionJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopPHIDetectionJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.StopRxNormInferenceJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopRxNormInferenceJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.StopSNOMEDCTInferenceJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopSNOMEDCTInferenceJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
    },
}

return M
