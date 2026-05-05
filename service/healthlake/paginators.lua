local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listFHIRDatastores.
function M.pages_list_f_h_i_r_datastores(client, input)
    return paginator.pages(client, "listFHIRDatastores", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listFHIRExportJobs.
function M.pages_list_f_h_i_r_export_jobs(client, input)
    return paginator.pages(client, "listFHIRExportJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listFHIRImportJobs.
function M.pages_list_f_h_i_r_import_jobs(client, input)
    return paginator.pages(client, "listFHIRImportJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
