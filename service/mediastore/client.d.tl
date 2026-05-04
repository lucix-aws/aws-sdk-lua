local types = require("mediastore.types")

local record Client
    createContainer: function(Client, types.CreateContainerInput): types.CreateContainerOutput, table
    deleteContainer: function(Client, types.DeleteContainerInput): types.DeleteContainerOutput, table
    deleteContainerPolicy: function(Client, types.DeleteContainerPolicyInput): types.DeleteContainerPolicyOutput, table
    deleteCorsPolicy: function(Client, types.DeleteCorsPolicyInput): types.DeleteCorsPolicyOutput, table
    deleteLifecyclePolicy: function(Client, types.DeleteLifecyclePolicyInput): types.DeleteLifecyclePolicyOutput, table
    deleteMetricPolicy: function(Client, types.DeleteMetricPolicyInput): types.DeleteMetricPolicyOutput, table
    describeContainer: function(Client, types.DescribeContainerInput): types.DescribeContainerOutput, table
    getContainerPolicy: function(Client, types.GetContainerPolicyInput): types.GetContainerPolicyOutput, table
    getCorsPolicy: function(Client, types.GetCorsPolicyInput): types.GetCorsPolicyOutput, table
    getLifecyclePolicy: function(Client, types.GetLifecyclePolicyInput): types.GetLifecyclePolicyOutput, table
    getMetricPolicy: function(Client, types.GetMetricPolicyInput): types.GetMetricPolicyOutput, table
    listContainers: function(Client, types.ListContainersInput): types.ListContainersOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    putContainerPolicy: function(Client, types.PutContainerPolicyInput): types.PutContainerPolicyOutput, table
    putCorsPolicy: function(Client, types.PutCorsPolicyInput): types.PutCorsPolicyOutput, table
    putLifecyclePolicy: function(Client, types.PutLifecyclePolicyInput): types.PutLifecyclePolicyOutput, table
    putMetricPolicy: function(Client, types.PutMetricPolicyInput): types.PutMetricPolicyOutput, table
    startAccessLogging: function(Client, types.StartAccessLoggingInput): types.StartAccessLoggingOutput, table
    stopAccessLogging: function(Client, types.StopAccessLoggingInput): types.StopAccessLoggingOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
end

local record M
    new: function(table): Client
end

return M
