local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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
    id = "ConflictException",
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

M.DataType = {
    FLOAT32 = "float32",
}

M.DistanceMetric = {
    EUCLIDEAN = "euclidean",
    COSINE = "cosine",
}

M.SseType = {
    AES256 = "AES256",
    AWS_KMS = "aws:kms",
}

M.EncryptionConfiguration = {
    type = "structure",
    id = "EncryptionConfiguration",
    members = {
        sseType = {
            type = "string",
            traits = {
                default = "AES256",
            },
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.MetadataConfiguration = {
    type = "structure",
    id = "MetadataConfiguration",
    members = {
        nonFilterableMetadataKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CreateIndexInput = {
    type = "structure",
    id = "CreateIndexInput",
    members = {
        vectorBucketName = {
            type = "string",
        },
        vectorBucketArn = {
            type = "string",
        },
        indexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dimension = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        distanceMetric = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metadataConfiguration = M.MetadataConfiguration,
        encryptionConfiguration = M.EncryptionConfiguration,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateIndexOutput = {
    type = "structure",
    id = "CreateIndexOutput",
    members = {
        indexArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
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

M.NotFoundException = {
    type = "structure",
    id = "NotFoundException",
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

M.RequestTimeoutException = {
    type = "structure",
    id = "RequestTimeoutException",
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
    id = "ServiceQuotaExceededException",
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

M.ServiceUnavailableException = {
    type = "structure",
    id = "ServiceUnavailableException",
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

M.TooManyRequestsException = {
    type = "structure",
    id = "TooManyRequestsException",
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

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
    members = {
        path = {
            type = "string",
            traits = {
                required = true,
            },
        },
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
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldList = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.CreateVectorBucketInput = {
    type = "structure",
    id = "CreateVectorBucketInput",
    members = {
        vectorBucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        encryptionConfiguration = M.EncryptionConfiguration,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateVectorBucketOutput = {
    type = "structure",
    id = "CreateVectorBucketOutput",
    members = {
        vectorBucketArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIndexInput = {
    type = "structure",
    id = "DeleteIndexInput",
    members = {
        vectorBucketName = {
            type = "string",
        },
        indexName = {
            type = "string",
        },
        indexArn = {
            type = "string",
        },
    },
}

M.DeleteIndexOutput = {
    type = "structure",
    id = "DeleteIndexOutput",
}

M.DeleteVectorBucketInput = {
    type = "structure",
    id = "DeleteVectorBucketInput",
    members = {
        vectorBucketName = {
            type = "string",
        },
        vectorBucketArn = {
            type = "string",
        },
    },
}

M.DeleteVectorBucketOutput = {
    type = "structure",
    id = "DeleteVectorBucketOutput",
}

M.DeleteVectorBucketPolicyInput = {
    type = "structure",
    id = "DeleteVectorBucketPolicyInput",
    members = {
        vectorBucketName = {
            type = "string",
        },
        vectorBucketArn = {
            type = "string",
        },
    },
}

M.DeleteVectorBucketPolicyOutput = {
    type = "structure",
    id = "DeleteVectorBucketPolicyOutput",
}

M.DeleteVectorsInput = {
    type = "structure",
    id = "DeleteVectorsInput",
    members = {
        vectorBucketName = {
            type = "string",
        },
        indexName = {
            type = "string",
        },
        indexArn = {
            type = "string",
        },
        keys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteVectorsOutput = {
    type = "structure",
    id = "DeleteVectorsOutput",
}

M.KmsDisabledException = {
    type = "structure",
    id = "KmsDisabledException",
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

M.KmsInvalidKeyUsageException = {
    type = "structure",
    id = "KmsInvalidKeyUsageException",
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

M.KmsInvalidStateException = {
    type = "structure",
    id = "KmsInvalidStateException",
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

M.KmsNotFoundException = {
    type = "structure",
    id = "KmsNotFoundException",
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

M.GetIndexInput = {
    type = "structure",
    id = "GetIndexInput",
    members = {
        vectorBucketName = {
            type = "string",
        },
        indexName = {
            type = "string",
        },
        indexArn = {
            type = "string",
        },
    },
}

M.Index = {
    type = "structure",
    id = "Index",
    members = {
        vectorBucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        indexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        indexArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        dataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dimension = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        distanceMetric = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metadataConfiguration = M.MetadataConfiguration,
        encryptionConfiguration = M.EncryptionConfiguration,
    },
}

M.GetIndexOutput = {
    type = "structure",
    id = "GetIndexOutput",
    members = {
        index = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Index }),
    },
}

M.VectorData = {
    type = "union",
    id = "VectorData",
    members = {
        float32 = {
            type = "list",
            member = { type = "float" },
        },
    },
}

M.GetOutputVector = {
    type = "structure",
    id = "GetOutputVector",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        data = M.VectorData,
        metadata = {
            type = "document",
        },
    },
}

M.GetVectorBucketInput = {
    type = "structure",
    id = "GetVectorBucketInput",
    members = {
        vectorBucketName = {
            type = "string",
        },
        vectorBucketArn = {
            type = "string",
        },
    },
}

M.VectorBucket = {
    type = "structure",
    id = "VectorBucket",
    members = {
        vectorBucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vectorBucketArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        encryptionConfiguration = M.EncryptionConfiguration,
    },
}

M.GetVectorBucketOutput = {
    type = "structure",
    id = "GetVectorBucketOutput",
    members = {
        vectorBucket = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VectorBucket }),
    },
}

M.GetVectorBucketPolicyInput = {
    type = "structure",
    id = "GetVectorBucketPolicyInput",
    members = {
        vectorBucketName = {
            type = "string",
        },
        vectorBucketArn = {
            type = "string",
        },
    },
}

M.GetVectorBucketPolicyOutput = {
    type = "structure",
    id = "GetVectorBucketPolicyOutput",
    members = {
        policy = {
            type = "string",
        },
    },
}

M.GetVectorsInput = {
    type = "structure",
    id = "GetVectorsInput",
    members = {
        vectorBucketName = {
            type = "string",
        },
        indexName = {
            type = "string",
        },
        indexArn = {
            type = "string",
        },
        keys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        returnData = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        returnMetadata = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.GetVectorsOutput = {
    type = "structure",
    id = "GetVectorsOutput",
    members = {
        vectors = {
            type = "list",
            member = M.GetOutputVector,
            traits = {
                required = true,
            },
        },
    },
}

M.ListIndexesInput = {
    type = "structure",
    id = "ListIndexesInput",
    members = {
        vectorBucketName = {
            type = "string",
        },
        vectorBucketArn = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        prefix = {
            type = "string",
        },
    },
}

M.IndexSummary = {
    type = "structure",
    id = "IndexSummary",
    members = {
        vectorBucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        indexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        indexArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListIndexesOutput = {
    type = "structure",
    id = "ListIndexesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        indexes = {
            type = "list",
            member = M.IndexSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListVectorsInput = {
    type = "structure",
    id = "ListVectorsInput",
    members = {
        vectorBucketName = {
            type = "string",
        },
        indexName = {
            type = "string",
        },
        indexArn = {
            type = "string",
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 500,
            },
        },
        nextToken = {
            type = "string",
        },
        segmentCount = {
            type = "integer",
            traits = {
                default = 1,
            },
        },
        segmentIndex = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        returnData = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        returnMetadata = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ListOutputVector = {
    type = "structure",
    id = "ListOutputVector",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        data = M.VectorData,
        metadata = {
            type = "document",
        },
    },
}

M.ListVectorsOutput = {
    type = "structure",
    id = "ListVectorsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        vectors = {
            type = "list",
            member = M.ListOutputVector,
            traits = {
                required = true,
            },
        },
    },
}

M.PutInputVector = {
    type = "structure",
    id = "PutInputVector",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        data = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VectorData }),
        metadata = {
            type = "document",
            traits = {
                default = {},
            },
        },
    },
}

M.PutVectorsInput = {
    type = "structure",
    id = "PutVectorsInput",
    members = {
        vectorBucketName = {
            type = "string",
        },
        indexName = {
            type = "string",
        },
        indexArn = {
            type = "string",
        },
        vectors = {
            type = "list",
            member = M.PutInputVector,
            traits = {
                required = true,
            },
        },
    },
}

M.PutVectorsOutput = {
    type = "structure",
    id = "PutVectorsOutput",
}

M.QueryVectorsInput = {
    type = "structure",
    id = "QueryVectorsInput",
    members = {
        vectorBucketName = {
            type = "string",
        },
        indexName = {
            type = "string",
        },
        indexArn = {
            type = "string",
        },
        topK = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        queryVector = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VectorData }),
        filter = {
            type = "document",
        },
        returnMetadata = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        returnDistance = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.QueryOutputVector = {
    type = "structure",
    id = "QueryOutputVector",
    members = {
        distance = {
            type = "float",
        },
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metadata = {
            type = "document",
        },
    },
}

M.QueryVectorsOutput = {
    type = "structure",
    id = "QueryVectorsOutput",
    members = {
        vectors = {
            type = "list",
            member = M.QueryOutputVector,
            traits = {
                required = true,
            },
        },
        distanceMetric = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
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

M.ListVectorBucketsInput = {
    type = "structure",
    id = "ListVectorBucketsInput",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        prefix = {
            type = "string",
        },
    },
}

M.VectorBucketSummary = {
    type = "structure",
    id = "VectorBucketSummary",
    members = {
        vectorBucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vectorBucketArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListVectorBucketsOutput = {
    type = "structure",
    id = "ListVectorBucketsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        vectorBuckets = {
            type = "list",
            member = M.VectorBucketSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.PutVectorBucketPolicyInput = {
    type = "structure",
    id = "PutVectorBucketPolicyInput",
    members = {
        vectorBucketName = {
            type = "string",
        },
        vectorBucketArn = {
            type = "string",
        },
        policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutVectorBucketPolicyOutput = {
    type = "structure",
    id = "PutVectorBucketPolicyOutput",
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

return M
