local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listSigningJobs.
function M.pages_list_signing_jobs(client, input)
    return paginator.pages(client, "listSigningJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listSigningPlatforms.
function M.pages_list_signing_platforms(client, input)
    return paginator.pages(client, "listSigningPlatforms", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listSigningProfiles.
function M.pages_list_signing_profiles(client, input)
    return paginator.pages(client, "listSigningProfiles", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

return M
