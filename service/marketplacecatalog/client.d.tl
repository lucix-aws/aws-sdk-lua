local types = require("marketplacecatalog.types")

local record Client
    batchDescribeEntities: function(Client, types.BatchDescribeEntitiesInput): types.BatchDescribeEntitiesOutput, table
    cancelChangeSet: function(Client, types.CancelChangeSetInput): types.CancelChangeSetOutput, table
    deleteResourcePolicy: function(Client, types.DeleteResourcePolicyInput): types.DeleteResourcePolicyOutput, table
    describeChangeSet: function(Client, types.DescribeChangeSetInput): types.DescribeChangeSetOutput, table
    describeEntity: function(Client, types.DescribeEntityInput): types.DescribeEntityOutput, table
    getResourcePolicy: function(Client, types.GetResourcePolicyInput): types.GetResourcePolicyOutput, table
    listChangeSets: function(Client, types.ListChangeSetsInput): types.ListChangeSetsOutput, table
    listEntities: function(Client, types.ListEntitiesInput): types.ListEntitiesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    putResourcePolicy: function(Client, types.PutResourcePolicyInput): types.PutResourcePolicyOutput, table
    startChangeSet: function(Client, types.StartChangeSetInput): types.StartChangeSetOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
end

local record M
    new: function(table): Client
end

return M
