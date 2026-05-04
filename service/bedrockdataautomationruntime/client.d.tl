local types = require("bedrockdataautomationruntime.types")

local record Client
    getDataAutomationStatus: function(Client, types.GetDataAutomationStatusInput): types.GetDataAutomationStatusOutput, table
    invokeDataAutomation: function(Client, types.InvokeDataAutomationInput): types.InvokeDataAutomationOutput, table
    invokeDataAutomationAsync: function(Client, types.InvokeDataAutomationAsyncInput): types.InvokeDataAutomationAsyncOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
end

local record M
    new: function(table): Client
end

return M
