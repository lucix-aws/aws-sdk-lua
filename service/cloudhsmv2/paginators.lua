local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for describeBackups.
function M.pages_describe_backups(client, input)
    return paginator.pages(client, "describeBackups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for describeClusters.
function M.pages_describe_clusters(client, input)
    return paginator.pages(client, "describeClusters", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listTags.
function M.pages_list_tags(client, input)
    return paginator.pages(client, "listTags", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
