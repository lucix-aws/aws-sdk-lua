local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listChangedBlocks.
function M.pages_list_changed_blocks(client, input)
    return paginator.pages(client, "listChangedBlocks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listSnapshotBlocks.
function M.pages_list_snapshot_blocks(client, input)
    return paginator.pages(client, "listSnapshotBlocks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
