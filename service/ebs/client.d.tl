local types = require("ebs.types")

local record Client
    completeSnapshot: function(Client, types.CompleteSnapshotInput): types.CompleteSnapshotOutput, table
    getSnapshotBlock: function(Client, types.GetSnapshotBlockInput): types.GetSnapshotBlockOutput, table
    listChangedBlocks: function(Client, types.ListChangedBlocksInput): types.ListChangedBlocksOutput, table
    listSnapshotBlocks: function(Client, types.ListSnapshotBlocksInput): types.ListSnapshotBlocksOutput, table
    putSnapshotBlock: function(Client, types.PutSnapshotBlockInput): types.PutSnapshotBlockOutput, table
    startSnapshot: function(Client, types.StartSnapshotInput): types.StartSnapshotOutput, table
end

local record M
    new: function(table): Client
end

return M
