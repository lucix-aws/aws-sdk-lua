local types = require("pipes.types")

local record Client
    createPipe: function(Client, types.CreatePipeInput): types.CreatePipeOutput, table
    deletePipe: function(Client, types.DeletePipeInput): types.DeletePipeOutput, table
    describePipe: function(Client, types.DescribePipeInput): types.DescribePipeOutput, table
    listPipes: function(Client, types.ListPipesInput): types.ListPipesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    startPipe: function(Client, types.StartPipeInput): types.StartPipeOutput, table
    stopPipe: function(Client, types.StopPipeInput): types.StopPipeOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updatePipe: function(Client, types.UpdatePipeInput): types.UpdatePipeOutput, table
end

local record M
    new: function(table): Client
end

return M
