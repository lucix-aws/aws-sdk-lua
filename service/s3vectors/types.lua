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
    members = {
        sseType = {
            type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.MetadataConfiguration = {
    type = "structure",
    members = {
        nonFilterableMetadataKeys = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateIndexInput = {
    type = "structure",
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
            type = "number",
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
        metadataConfiguration = {
            type = "structure",
        },
        encryptionConfiguration = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateIndexOutput = {
    type = "structure",
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

M.ServiceUnavailableException = {
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

M.TooManyRequestsException = {
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

M.ValidationExceptionField = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.CreateVectorBucketInput = {
    type = "structure",
    members = {
        vectorBucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        encryptionConfiguration = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateVectorBucketOutput = {
    type = "structure",
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
}

M.DeleteVectorBucketInput = {
    type = "structure",
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
}

M.DeleteVectorBucketPolicyInput = {
    type = "structure",
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
}

M.DeleteVectorsInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteVectorsOutput = {
    type = "structure",
}

M.KmsDisabledException = {
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

M.KmsInvalidKeyUsageException = {
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

M.KmsInvalidStateException = {
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

M.KmsNotFoundException = {
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

M.GetIndexInput = {
    type = "structure",
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
            type = "number",
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
        metadataConfiguration = {
            type = "structure",
        },
        encryptionConfiguration = {
            type = "structure",
        },
    },
}

M.GetIndexOutput = {
    type = "structure",
    members = {
        index = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.VectorData = {
    type = "union",
    members = {
        float32 = {
            type = "list",
            member_type = "number",
        },
    },
}

M.GetOutputVector = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        data = {
            type = "union",
        },
        metadata = {
            type = "document",
        },
    },
}

M.GetVectorBucketInput = {
    type = "structure",
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
        encryptionConfiguration = {
            type = "structure",
        },
    },
}

M.GetVectorBucketOutput = {
    type = "structure",
    members = {
        vectorBucket = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetVectorBucketPolicyInput = {
    type = "structure",
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
    members = {
        policy = {
            type = "string",
        },
    },
}

M.GetVectorsInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        returnData = {
            type = "boolean",
        },
        returnMetadata = {
            type = "boolean",
        },
    },
}

M.GetVectorsOutput = {
    type = "structure",
    members = {
        vectors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListIndexesInput = {
    type = "structure",
    members = {
        vectorBucketName = {
            type = "string",
        },
        vectorBucketArn = {
            type = "string",
        },
        maxResults = {
            type = "number",
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
    members = {
        nextToken = {
            type = "string",
        },
        indexes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListVectorsInput = {
    type = "structure",
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
            type = "number",
        },
        nextToken = {
            type = "string",
        },
        segmentCount = {
            type = "number",
        },
        segmentIndex = {
            type = "number",
        },
        returnData = {
            type = "boolean",
        },
        returnMetadata = {
            type = "boolean",
        },
    },
}

M.ListOutputVector = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        data = {
            type = "union",
        },
        metadata = {
            type = "document",
        },
    },
}

M.ListVectorsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        vectors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutInputVector = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        data = {
            type = "union",
            traits = {
                required = true,
            },
        },
        metadata = {
            type = "document",
        },
    },
}

M.PutVectorsInput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutVectorsOutput = {
    type = "structure",
}

M.QueryVectorsInput = {
    type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        queryVector = {
            type = "union",
            traits = {
                required = true,
            },
        },
        filter = {
            type = "document",
        },
        returnMetadata = {
            type = "boolean",
        },
        returnDistance = {
            type = "boolean",
        },
    },
}

M.QueryOutputVector = {
    type = "structure",
    members = {
        distance = {
            type = "number",
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
    members = {
        vectors = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListVectorBucketsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
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
    members = {
        nextToken = {
            type = "string",
        },
        vectorBuckets = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutVectorBucketPolicyInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
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

return M
