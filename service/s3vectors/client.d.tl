local types = require("s3vectors.types")

local record Client
    createIndex: function(Client, types.CreateIndexInput): types.CreateIndexOutput, table
    createVectorBucket: function(Client, types.CreateVectorBucketInput): types.CreateVectorBucketOutput, table
    deleteIndex: function(Client, types.DeleteIndexInput): types.DeleteIndexOutput, table
    deleteVectorBucket: function(Client, types.DeleteVectorBucketInput): types.DeleteVectorBucketOutput, table
    deleteVectorBucketPolicy: function(Client, types.DeleteVectorBucketPolicyInput): types.DeleteVectorBucketPolicyOutput, table
    deleteVectors: function(Client, types.DeleteVectorsInput): types.DeleteVectorsOutput, table
    getIndex: function(Client, types.GetIndexInput): types.GetIndexOutput, table
    getVectorBucket: function(Client, types.GetVectorBucketInput): types.GetVectorBucketOutput, table
    getVectorBucketPolicy: function(Client, types.GetVectorBucketPolicyInput): types.GetVectorBucketPolicyOutput, table
    getVectors: function(Client, types.GetVectorsInput): types.GetVectorsOutput, table
    listIndexes: function(Client, types.ListIndexesInput): types.ListIndexesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listVectorBuckets: function(Client, types.ListVectorBucketsInput): types.ListVectorBucketsOutput, table
    listVectors: function(Client, types.ListVectorsInput): types.ListVectorsOutput, table
    putVectorBucketPolicy: function(Client, types.PutVectorBucketPolicyInput): types.PutVectorBucketPolicyOutput, table
    putVectors: function(Client, types.PutVectorsInput): types.PutVectorsOutput, table
    queryVectors: function(Client, types.QueryVectorsInput): types.QueryVectorsOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
end

local record M
    new: function(table): Client
end

return M
