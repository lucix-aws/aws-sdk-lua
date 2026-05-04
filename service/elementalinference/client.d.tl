local types = require("elementalinference.types")

local record Client
    associateFeed: function(Client, types.AssociateFeedInput): types.AssociateFeedOutput, table
    createFeed: function(Client, types.CreateFeedInput): types.CreateFeedOutput, table
    deleteFeed: function(Client, types.DeleteFeedInput): types.DeleteFeedOutput, table
    disassociateFeed: function(Client, types.DisassociateFeedInput): types.DisassociateFeedOutput, table
    getFeed: function(Client, types.GetFeedInput): types.GetFeedOutput, table
    listFeeds: function(Client, types.ListFeedsInput): types.ListFeedsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateFeed: function(Client, types.UpdateFeedInput): types.UpdateFeedOutput, table
end

local record M
    new: function(table): Client
end

return M
