local types = require("dsql.types")

local record Client
    createCluster: function(Client, types.CreateClusterInput): types.CreateClusterOutput, table
    deleteCluster: function(Client, types.DeleteClusterInput): types.DeleteClusterOutput, table
    deleteClusterPolicy: function(Client, types.DeleteClusterPolicyInput): types.DeleteClusterPolicyOutput, table
    getCluster: function(Client, types.GetClusterInput): types.GetClusterOutput, table
    getClusterPolicy: function(Client, types.GetClusterPolicyInput): types.GetClusterPolicyOutput, table
    getVpcEndpointServiceName: function(Client, types.GetVpcEndpointServiceNameInput): types.GetVpcEndpointServiceNameOutput, table
    listClusters: function(Client, types.ListClustersInput): types.ListClustersOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    putClusterPolicy: function(Client, types.PutClusterPolicyInput): types.PutClusterPolicyOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateCluster: function(Client, types.UpdateClusterInput): types.UpdateClusterOutput, table
end

local record M
    new: function(table): Client
end

return M
