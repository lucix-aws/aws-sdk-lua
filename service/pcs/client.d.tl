local types = require("pcs.types")

local record Client
    createCluster: function(Client, types.CreateClusterInput): types.CreateClusterOutput, table
    createComputeNodeGroup: function(Client, types.CreateComputeNodeGroupInput): types.CreateComputeNodeGroupOutput, table
    createQueue: function(Client, types.CreateQueueInput): types.CreateQueueOutput, table
    deleteCluster: function(Client, types.DeleteClusterInput): types.DeleteClusterOutput, table
    deleteComputeNodeGroup: function(Client, types.DeleteComputeNodeGroupInput): types.DeleteComputeNodeGroupOutput, table
    deleteQueue: function(Client, types.DeleteQueueInput): types.DeleteQueueOutput, table
    getCluster: function(Client, types.GetClusterInput): types.GetClusterOutput, table
    getComputeNodeGroup: function(Client, types.GetComputeNodeGroupInput): types.GetComputeNodeGroupOutput, table
    getQueue: function(Client, types.GetQueueInput): types.GetQueueOutput, table
    listClusters: function(Client, types.ListClustersInput): types.ListClustersOutput, table
    listComputeNodeGroups: function(Client, types.ListComputeNodeGroupsInput): types.ListComputeNodeGroupsOutput, table
    listQueues: function(Client, types.ListQueuesInput): types.ListQueuesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    registerComputeNodeGroupInstance: function(Client, types.RegisterComputeNodeGroupInstanceInput): types.RegisterComputeNodeGroupInstanceOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateCluster: function(Client, types.UpdateClusterInput): types.UpdateClusterOutput, table
    updateComputeNodeGroup: function(Client, types.UpdateComputeNodeGroupInput): types.UpdateComputeNodeGroupOutput, table
    updateQueue: function(Client, types.UpdateQueueInput): types.UpdateQueueOutput, table
end

local record M
    new: function(table): Client
end

return M
