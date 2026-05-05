local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.s3vectors"

local M = {}

M.ValidationExceptionFieldList = schema.new({ type = "list", list_member = M.ValidationExceptionField })

M.TagsMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.ListVectorBucketsOutputList = schema.new({ type = "list", list_member = M.VectorBucketSummary })

M.ListIndexesOutputList = schema.new({ type = "list", list_member = M.IndexSummary })

M.DeleteVectorsInputList = schema.new({ type = "list", list_member = prelude.String })

M.GetVectorsInputList = schema.new({ type = "list", list_member = prelude.String })

M.GetVectorsOutputList = schema.new({ type = "list", list_member = M.GetOutputVector })

M.ListVectorsOutputList = schema.new({ type = "list", list_member = M.ListOutputVector })

M.PutVectorsInputList = schema.new({ type = "list", list_member = M.PutInputVector })

M.QueryVectorsOutputList = schema.new({ type = "list", list_member = M.QueryOutputVector })

M.NonFilterableMetadataKeys = schema.new({ type = "list", list_member = prelude.String })

M.Float32VectorData = schema.new({ type = "list", list_member = prelude.Float })

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

M.EncryptionConfiguration = schema.new({
    id = id.from(_N, "EncryptionConfiguration"),
    type = "structure",
    members = {
        sseType = schema.new({
            id = id.from(_N, "EncryptionConfiguration", "sseType"),
            type = "string",
            name = "sseType",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "AES256" },
            },
        }),
        kmsKeyArn = schema.new({
            id = id.from(_N, "EncryptionConfiguration", "kmsKeyArn"),
            type = "string",
            name = "kmsKeyArn",
            target_id = prelude.String.id,
        }),
    },
})

M.MetadataConfiguration = schema.new({
    id = id.from(_N, "MetadataConfiguration"),
    type = "structure",
    members = {
        nonFilterableMetadataKeys = schema.new({
            id = id.from(_N, "MetadataConfiguration", "nonFilterableMetadataKeys"),
            type = "list",
            name = "nonFilterableMetadataKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateIndexInput = schema.new({
    id = id.from(_N, "CreateIndexInput"),
    type = "structure",
    members = {
        vectorBucketName = schema.new({
            id = id.from(_N, "CreateIndexInput", "vectorBucketName"),
            type = "string",
            name = "vectorBucketName",
            target_id = prelude.String.id,
        }),
        vectorBucketArn = schema.new({
            id = id.from(_N, "CreateIndexInput", "vectorBucketArn"),
            type = "string",
            name = "vectorBucketArn",
            target_id = prelude.String.id,
        }),
        indexName = schema.new({
            id = id.from(_N, "CreateIndexInput", "indexName"),
            type = "string",
            name = "indexName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataType = schema.new({
            id = id.from(_N, "CreateIndexInput", "dataType"),
            type = "string",
            name = "dataType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dimension = schema.new({
            id = id.from(_N, "CreateIndexInput", "dimension"),
            type = "integer",
            name = "dimension",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        distanceMetric = schema.new({
            id = id.from(_N, "CreateIndexInput", "distanceMetric"),
            type = "string",
            name = "distanceMetric",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        metadataConfiguration = schema.new({
            id = id.from(_N, "CreateIndexInput", "metadataConfiguration"),
            type = "structure",
            name = "metadataConfiguration",
            target_id = id.from(_N, "MetadataConfiguration"),
            target = M.MetadataConfiguration,
        }),
        encryptionConfiguration = schema.new({
            id = id.from(_N, "CreateIndexInput", "encryptionConfiguration"),
            type = "structure",
            name = "encryptionConfiguration",
            target_id = id.from(_N, "EncryptionConfiguration"),
            target = M.EncryptionConfiguration,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateIndexInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateIndexOutput = schema.new({
    id = id.from(_N, "CreateIndexOutput"),
    type = "structure",
    members = {
        indexArn = schema.new({
            id = id.from(_N, "CreateIndexOutput", "indexArn"),
            type = "string",
            name = "indexArn",
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

M.NotFoundException = schema.new({
    id = id.from(_N, "NotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NotFoundException", "message"),
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

M.TooManyRequestsException = schema.new({
    id = id.from(_N, "TooManyRequestsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TooManyRequestsException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ValidationExceptionField = schema.new({
    id = id.from(_N, "ValidationExceptionField"),
    type = "structure",
    members = {
        path = schema.new({
            id = id.from(_N, "ValidationExceptionField", "path"),
            type = "string",
            name = "path",
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
        fieldList = schema.new({
            id = id.from(_N, "ValidationException", "fieldList"),
            type = "list",
            name = "fieldList",
            target_id = prelude.Document.id,
            list_member = M.ValidationExceptionField,
        }),
    },
})

M.CreateVectorBucketInput = schema.new({
    id = id.from(_N, "CreateVectorBucketInput"),
    type = "structure",
    members = {
        vectorBucketName = schema.new({
            id = id.from(_N, "CreateVectorBucketInput", "vectorBucketName"),
            type = "string",
            name = "vectorBucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        encryptionConfiguration = schema.new({
            id = id.from(_N, "CreateVectorBucketInput", "encryptionConfiguration"),
            type = "structure",
            name = "encryptionConfiguration",
            target_id = id.from(_N, "EncryptionConfiguration"),
            target = M.EncryptionConfiguration,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateVectorBucketInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateVectorBucketOutput = schema.new({
    id = id.from(_N, "CreateVectorBucketOutput"),
    type = "structure",
    members = {
        vectorBucketArn = schema.new({
            id = id.from(_N, "CreateVectorBucketOutput", "vectorBucketArn"),
            type = "string",
            name = "vectorBucketArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteIndexInput = schema.new({
    id = id.from(_N, "DeleteIndexInput"),
    type = "structure",
    members = {
        vectorBucketName = schema.new({
            id = id.from(_N, "DeleteIndexInput", "vectorBucketName"),
            type = "string",
            name = "vectorBucketName",
            target_id = prelude.String.id,
        }),
        indexName = schema.new({
            id = id.from(_N, "DeleteIndexInput", "indexName"),
            type = "string",
            name = "indexName",
            target_id = prelude.String.id,
        }),
        indexArn = schema.new({
            id = id.from(_N, "DeleteIndexInput", "indexArn"),
            type = "string",
            name = "indexArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteIndexOutput = schema.new({
    id = id.from(_N, "DeleteIndexOutput"),
    type = "structure",
})

M.DeleteVectorBucketInput = schema.new({
    id = id.from(_N, "DeleteVectorBucketInput"),
    type = "structure",
    members = {
        vectorBucketName = schema.new({
            id = id.from(_N, "DeleteVectorBucketInput", "vectorBucketName"),
            type = "string",
            name = "vectorBucketName",
            target_id = prelude.String.id,
        }),
        vectorBucketArn = schema.new({
            id = id.from(_N, "DeleteVectorBucketInput", "vectorBucketArn"),
            type = "string",
            name = "vectorBucketArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteVectorBucketOutput = schema.new({
    id = id.from(_N, "DeleteVectorBucketOutput"),
    type = "structure",
})

M.DeleteVectorBucketPolicyInput = schema.new({
    id = id.from(_N, "DeleteVectorBucketPolicyInput"),
    type = "structure",
    members = {
        vectorBucketName = schema.new({
            id = id.from(_N, "DeleteVectorBucketPolicyInput", "vectorBucketName"),
            type = "string",
            name = "vectorBucketName",
            target_id = prelude.String.id,
        }),
        vectorBucketArn = schema.new({
            id = id.from(_N, "DeleteVectorBucketPolicyInput", "vectorBucketArn"),
            type = "string",
            name = "vectorBucketArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteVectorBucketPolicyOutput = schema.new({
    id = id.from(_N, "DeleteVectorBucketPolicyOutput"),
    type = "structure",
})

M.DeleteVectorsInput = schema.new({
    id = id.from(_N, "DeleteVectorsInput"),
    type = "structure",
    members = {
        vectorBucketName = schema.new({
            id = id.from(_N, "DeleteVectorsInput", "vectorBucketName"),
            type = "string",
            name = "vectorBucketName",
            target_id = prelude.String.id,
        }),
        indexName = schema.new({
            id = id.from(_N, "DeleteVectorsInput", "indexName"),
            type = "string",
            name = "indexName",
            target_id = prelude.String.id,
        }),
        indexArn = schema.new({
            id = id.from(_N, "DeleteVectorsInput", "indexArn"),
            type = "string",
            name = "indexArn",
            target_id = prelude.String.id,
        }),
        keys = schema.new({
            id = id.from(_N, "DeleteVectorsInput", "keys"),
            type = "list",
            name = "keys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteVectorsOutput = schema.new({
    id = id.from(_N, "DeleteVectorsOutput"),
    type = "structure",
})

M.KmsDisabledException = schema.new({
    id = id.from(_N, "KmsDisabledException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "KmsDisabledException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.KmsInvalidKeyUsageException = schema.new({
    id = id.from(_N, "KmsInvalidKeyUsageException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "KmsInvalidKeyUsageException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.KmsInvalidStateException = schema.new({
    id = id.from(_N, "KmsInvalidStateException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "KmsInvalidStateException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.KmsNotFoundException = schema.new({
    id = id.from(_N, "KmsNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "KmsNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetIndexInput = schema.new({
    id = id.from(_N, "GetIndexInput"),
    type = "structure",
    members = {
        vectorBucketName = schema.new({
            id = id.from(_N, "GetIndexInput", "vectorBucketName"),
            type = "string",
            name = "vectorBucketName",
            target_id = prelude.String.id,
        }),
        indexName = schema.new({
            id = id.from(_N, "GetIndexInput", "indexName"),
            type = "string",
            name = "indexName",
            target_id = prelude.String.id,
        }),
        indexArn = schema.new({
            id = id.from(_N, "GetIndexInput", "indexArn"),
            type = "string",
            name = "indexArn",
            target_id = prelude.String.id,
        }),
    },
})

M.Index = schema.new({
    id = id.from(_N, "Index"),
    type = "structure",
    members = {
        vectorBucketName = schema.new({
            id = id.from(_N, "Index", "vectorBucketName"),
            type = "string",
            name = "vectorBucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        indexName = schema.new({
            id = id.from(_N, "Index", "indexName"),
            type = "string",
            name = "indexName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        indexArn = schema.new({
            id = id.from(_N, "Index", "indexArn"),
            type = "string",
            name = "indexArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTime = schema.new({
            id = id.from(_N, "Index", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataType = schema.new({
            id = id.from(_N, "Index", "dataType"),
            type = "string",
            name = "dataType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dimension = schema.new({
            id = id.from(_N, "Index", "dimension"),
            type = "integer",
            name = "dimension",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        distanceMetric = schema.new({
            id = id.from(_N, "Index", "distanceMetric"),
            type = "string",
            name = "distanceMetric",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        metadataConfiguration = schema.new({
            id = id.from(_N, "Index", "metadataConfiguration"),
            type = "structure",
            name = "metadataConfiguration",
            target_id = id.from(_N, "MetadataConfiguration"),
            target = M.MetadataConfiguration,
        }),
        encryptionConfiguration = schema.new({
            id = id.from(_N, "Index", "encryptionConfiguration"),
            type = "structure",
            name = "encryptionConfiguration",
            target_id = id.from(_N, "EncryptionConfiguration"),
            target = M.EncryptionConfiguration,
        }),
    },
})

M.GetIndexOutput = schema.new({
    id = id.from(_N, "GetIndexOutput"),
    type = "structure",
    members = {
        index = schema.new({
            id = id.from(_N, "GetIndexOutput", "index"),
            type = "structure",
            name = "index",
            target_id = id.from(_N, "Index"),
            target = M.Index,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.VectorData = schema.new({
    id = id.from(_N, "VectorData"),
    type = "union",
    members = {
        float32 = schema.new({
            id = id.from(_N, "VectorData", "float32"),
            type = "list",
            name = "float32",
            target_id = prelude.Document.id,
            list_member = prelude.Float,
        }),
    },
})

M.GetOutputVector = schema.new({
    id = id.from(_N, "GetOutputVector"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "GetOutputVector", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        data = schema.new({
            id = id.from(_N, "GetOutputVector", "data"),
            type = "union",
            name = "data",
            target_id = id.from(_N, "VectorData"),
            target = M.VectorData,
        }),
        metadata = schema.new({
            id = id.from(_N, "GetOutputVector", "metadata"),
            type = "document",
            name = "metadata",
            target_id = prelude.Document.id,
        }),
    },
})

M.GetVectorBucketInput = schema.new({
    id = id.from(_N, "GetVectorBucketInput"),
    type = "structure",
    members = {
        vectorBucketName = schema.new({
            id = id.from(_N, "GetVectorBucketInput", "vectorBucketName"),
            type = "string",
            name = "vectorBucketName",
            target_id = prelude.String.id,
        }),
        vectorBucketArn = schema.new({
            id = id.from(_N, "GetVectorBucketInput", "vectorBucketArn"),
            type = "string",
            name = "vectorBucketArn",
            target_id = prelude.String.id,
        }),
    },
})

M.VectorBucket = schema.new({
    id = id.from(_N, "VectorBucket"),
    type = "structure",
    members = {
        vectorBucketName = schema.new({
            id = id.from(_N, "VectorBucket", "vectorBucketName"),
            type = "string",
            name = "vectorBucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        vectorBucketArn = schema.new({
            id = id.from(_N, "VectorBucket", "vectorBucketArn"),
            type = "string",
            name = "vectorBucketArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTime = schema.new({
            id = id.from(_N, "VectorBucket", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        encryptionConfiguration = schema.new({
            id = id.from(_N, "VectorBucket", "encryptionConfiguration"),
            type = "structure",
            name = "encryptionConfiguration",
            target_id = id.from(_N, "EncryptionConfiguration"),
            target = M.EncryptionConfiguration,
        }),
    },
})

M.GetVectorBucketOutput = schema.new({
    id = id.from(_N, "GetVectorBucketOutput"),
    type = "structure",
    members = {
        vectorBucket = schema.new({
            id = id.from(_N, "GetVectorBucketOutput", "vectorBucket"),
            type = "structure",
            name = "vectorBucket",
            target_id = id.from(_N, "VectorBucket"),
            target = M.VectorBucket,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetVectorBucketPolicyInput = schema.new({
    id = id.from(_N, "GetVectorBucketPolicyInput"),
    type = "structure",
    members = {
        vectorBucketName = schema.new({
            id = id.from(_N, "GetVectorBucketPolicyInput", "vectorBucketName"),
            type = "string",
            name = "vectorBucketName",
            target_id = prelude.String.id,
        }),
        vectorBucketArn = schema.new({
            id = id.from(_N, "GetVectorBucketPolicyInput", "vectorBucketArn"),
            type = "string",
            name = "vectorBucketArn",
            target_id = prelude.String.id,
        }),
    },
})

M.GetVectorBucketPolicyOutput = schema.new({
    id = id.from(_N, "GetVectorBucketPolicyOutput"),
    type = "structure",
    members = {
        policy = schema.new({
            id = id.from(_N, "GetVectorBucketPolicyOutput", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
        }),
    },
})

M.GetVectorsInput = schema.new({
    id = id.from(_N, "GetVectorsInput"),
    type = "structure",
    members = {
        vectorBucketName = schema.new({
            id = id.from(_N, "GetVectorsInput", "vectorBucketName"),
            type = "string",
            name = "vectorBucketName",
            target_id = prelude.String.id,
        }),
        indexName = schema.new({
            id = id.from(_N, "GetVectorsInput", "indexName"),
            type = "string",
            name = "indexName",
            target_id = prelude.String.id,
        }),
        indexArn = schema.new({
            id = id.from(_N, "GetVectorsInput", "indexArn"),
            type = "string",
            name = "indexArn",
            target_id = prelude.String.id,
        }),
        keys = schema.new({
            id = id.from(_N, "GetVectorsInput", "keys"),
            type = "list",
            name = "keys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        returnData = schema.new({
            id = id.from(_N, "GetVectorsInput", "returnData"),
            type = "boolean",
            name = "returnData",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        returnMetadata = schema.new({
            id = id.from(_N, "GetVectorsInput", "returnMetadata"),
            type = "boolean",
            name = "returnMetadata",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.GetVectorsOutput = schema.new({
    id = id.from(_N, "GetVectorsOutput"),
    type = "structure",
    members = {
        vectors = schema.new({
            id = id.from(_N, "GetVectorsOutput", "vectors"),
            type = "list",
            name = "vectors",
            target_id = prelude.Document.id,
            list_member = M.GetOutputVector,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListIndexesInput = schema.new({
    id = id.from(_N, "ListIndexesInput"),
    type = "structure",
    members = {
        vectorBucketName = schema.new({
            id = id.from(_N, "ListIndexesInput", "vectorBucketName"),
            type = "string",
            name = "vectorBucketName",
            target_id = prelude.String.id,
        }),
        vectorBucketArn = schema.new({
            id = id.from(_N, "ListIndexesInput", "vectorBucketArn"),
            type = "string",
            name = "vectorBucketArn",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListIndexesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListIndexesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        prefix = schema.new({
            id = id.from(_N, "ListIndexesInput", "prefix"),
            type = "string",
            name = "prefix",
            target_id = prelude.String.id,
        }),
    },
})

M.IndexSummary = schema.new({
    id = id.from(_N, "IndexSummary"),
    type = "structure",
    members = {
        vectorBucketName = schema.new({
            id = id.from(_N, "IndexSummary", "vectorBucketName"),
            type = "string",
            name = "vectorBucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        indexName = schema.new({
            id = id.from(_N, "IndexSummary", "indexName"),
            type = "string",
            name = "indexName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        indexArn = schema.new({
            id = id.from(_N, "IndexSummary", "indexArn"),
            type = "string",
            name = "indexArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTime = schema.new({
            id = id.from(_N, "IndexSummary", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListIndexesOutput = schema.new({
    id = id.from(_N, "ListIndexesOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListIndexesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        indexes = schema.new({
            id = id.from(_N, "ListIndexesOutput", "indexes"),
            type = "list",
            name = "indexes",
            target_id = prelude.Document.id,
            list_member = M.IndexSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListVectorsInput = schema.new({
    id = id.from(_N, "ListVectorsInput"),
    type = "structure",
    members = {
        vectorBucketName = schema.new({
            id = id.from(_N, "ListVectorsInput", "vectorBucketName"),
            type = "string",
            name = "vectorBucketName",
            target_id = prelude.String.id,
        }),
        indexName = schema.new({
            id = id.from(_N, "ListVectorsInput", "indexName"),
            type = "string",
            name = "indexName",
            target_id = prelude.String.id,
        }),
        indexArn = schema.new({
            id = id.from(_N, "ListVectorsInput", "indexArn"),
            type = "string",
            name = "indexArn",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListVectorsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 500 },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListVectorsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        segmentCount = schema.new({
            id = id.from(_N, "ListVectorsInput", "segmentCount"),
            type = "integer",
            name = "segmentCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 1 },
            },
        }),
        segmentIndex = schema.new({
            id = id.from(_N, "ListVectorsInput", "segmentIndex"),
            type = "integer",
            name = "segmentIndex",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        returnData = schema.new({
            id = id.from(_N, "ListVectorsInput", "returnData"),
            type = "boolean",
            name = "returnData",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        returnMetadata = schema.new({
            id = id.from(_N, "ListVectorsInput", "returnMetadata"),
            type = "boolean",
            name = "returnMetadata",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.ListOutputVector = schema.new({
    id = id.from(_N, "ListOutputVector"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "ListOutputVector", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        data = schema.new({
            id = id.from(_N, "ListOutputVector", "data"),
            type = "union",
            name = "data",
            target_id = id.from(_N, "VectorData"),
            target = M.VectorData,
        }),
        metadata = schema.new({
            id = id.from(_N, "ListOutputVector", "metadata"),
            type = "document",
            name = "metadata",
            target_id = prelude.Document.id,
        }),
    },
})

M.ListVectorsOutput = schema.new({
    id = id.from(_N, "ListVectorsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListVectorsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        vectors = schema.new({
            id = id.from(_N, "ListVectorsOutput", "vectors"),
            type = "list",
            name = "vectors",
            target_id = prelude.Document.id,
            list_member = M.ListOutputVector,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutInputVector = schema.new({
    id = id.from(_N, "PutInputVector"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "PutInputVector", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        data = schema.new({
            id = id.from(_N, "PutInputVector", "data"),
            type = "union",
            name = "data",
            target_id = id.from(_N, "VectorData"),
            target = M.VectorData,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        metadata = schema.new({
            id = id.from(_N, "PutInputVector", "metadata"),
            type = "document",
            name = "metadata",
            target_id = prelude.Document.id,
            traits = {
                [traits.DEFAULT] = { value = {} },
            },
        }),
    },
})

M.PutVectorsInput = schema.new({
    id = id.from(_N, "PutVectorsInput"),
    type = "structure",
    members = {
        vectorBucketName = schema.new({
            id = id.from(_N, "PutVectorsInput", "vectorBucketName"),
            type = "string",
            name = "vectorBucketName",
            target_id = prelude.String.id,
        }),
        indexName = schema.new({
            id = id.from(_N, "PutVectorsInput", "indexName"),
            type = "string",
            name = "indexName",
            target_id = prelude.String.id,
        }),
        indexArn = schema.new({
            id = id.from(_N, "PutVectorsInput", "indexArn"),
            type = "string",
            name = "indexArn",
            target_id = prelude.String.id,
        }),
        vectors = schema.new({
            id = id.from(_N, "PutVectorsInput", "vectors"),
            type = "list",
            name = "vectors",
            target_id = prelude.Document.id,
            list_member = M.PutInputVector,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutVectorsOutput = schema.new({
    id = id.from(_N, "PutVectorsOutput"),
    type = "structure",
})

M.QueryVectorsInput = schema.new({
    id = id.from(_N, "QueryVectorsInput"),
    type = "structure",
    members = {
        vectorBucketName = schema.new({
            id = id.from(_N, "QueryVectorsInput", "vectorBucketName"),
            type = "string",
            name = "vectorBucketName",
            target_id = prelude.String.id,
        }),
        indexName = schema.new({
            id = id.from(_N, "QueryVectorsInput", "indexName"),
            type = "string",
            name = "indexName",
            target_id = prelude.String.id,
        }),
        indexArn = schema.new({
            id = id.from(_N, "QueryVectorsInput", "indexArn"),
            type = "string",
            name = "indexArn",
            target_id = prelude.String.id,
        }),
        topK = schema.new({
            id = id.from(_N, "QueryVectorsInput", "topK"),
            type = "integer",
            name = "topK",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        queryVector = schema.new({
            id = id.from(_N, "QueryVectorsInput", "queryVector"),
            type = "union",
            name = "queryVector",
            target_id = id.from(_N, "VectorData"),
            target = M.VectorData,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filter = schema.new({
            id = id.from(_N, "QueryVectorsInput", "filter"),
            type = "document",
            name = "filter",
            target_id = prelude.Document.id,
        }),
        returnMetadata = schema.new({
            id = id.from(_N, "QueryVectorsInput", "returnMetadata"),
            type = "boolean",
            name = "returnMetadata",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        returnDistance = schema.new({
            id = id.from(_N, "QueryVectorsInput", "returnDistance"),
            type = "boolean",
            name = "returnDistance",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.QueryOutputVector = schema.new({
    id = id.from(_N, "QueryOutputVector"),
    type = "structure",
    members = {
        distance = schema.new({
            id = id.from(_N, "QueryOutputVector", "distance"),
            type = "float",
            name = "distance",
            target_id = prelude.Float.id,
        }),
        key = schema.new({
            id = id.from(_N, "QueryOutputVector", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        metadata = schema.new({
            id = id.from(_N, "QueryOutputVector", "metadata"),
            type = "document",
            name = "metadata",
            target_id = prelude.Document.id,
        }),
    },
})

M.QueryVectorsOutput = schema.new({
    id = id.from(_N, "QueryVectorsOutput"),
    type = "structure",
    members = {
        vectors = schema.new({
            id = id.from(_N, "QueryVectorsOutput", "vectors"),
            type = "list",
            name = "vectors",
            target_id = prelude.Document.id,
            list_member = M.QueryOutputVector,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        distanceMetric = schema.new({
            id = id.from(_N, "QueryVectorsOutput", "distanceMetric"),
            type = "string",
            name = "distanceMetric",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
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
    id = id.from(_N, "ListTagsForResourceOutput"),
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

M.ListVectorBucketsInput = schema.new({
    id = id.from(_N, "ListVectorBucketsInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListVectorBucketsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListVectorBucketsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        prefix = schema.new({
            id = id.from(_N, "ListVectorBucketsInput", "prefix"),
            type = "string",
            name = "prefix",
            target_id = prelude.String.id,
        }),
    },
})

M.VectorBucketSummary = schema.new({
    id = id.from(_N, "VectorBucketSummary"),
    type = "structure",
    members = {
        vectorBucketName = schema.new({
            id = id.from(_N, "VectorBucketSummary", "vectorBucketName"),
            type = "string",
            name = "vectorBucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        vectorBucketArn = schema.new({
            id = id.from(_N, "VectorBucketSummary", "vectorBucketArn"),
            type = "string",
            name = "vectorBucketArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTime = schema.new({
            id = id.from(_N, "VectorBucketSummary", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListVectorBucketsOutput = schema.new({
    id = id.from(_N, "ListVectorBucketsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListVectorBucketsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        vectorBuckets = schema.new({
            id = id.from(_N, "ListVectorBucketsOutput", "vectorBuckets"),
            type = "list",
            name = "vectorBuckets",
            target_id = prelude.Document.id,
            list_member = M.VectorBucketSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutVectorBucketPolicyInput = schema.new({
    id = id.from(_N, "PutVectorBucketPolicyInput"),
    type = "structure",
    members = {
        vectorBucketName = schema.new({
            id = id.from(_N, "PutVectorBucketPolicyInput", "vectorBucketName"),
            type = "string",
            name = "vectorBucketName",
            target_id = prelude.String.id,
        }),
        vectorBucketArn = schema.new({
            id = id.from(_N, "PutVectorBucketPolicyInput", "vectorBucketArn"),
            type = "string",
            name = "vectorBucketArn",
            target_id = prelude.String.id,
        }),
        policy = schema.new({
            id = id.from(_N, "PutVectorBucketPolicyInput", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutVectorBucketPolicyOutput = schema.new({
    id = id.from(_N, "PutVectorBucketPolicyOutput"),
    type = "structure",
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
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
    id = id.from(_N, "TagResourceOutput"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
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
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

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
