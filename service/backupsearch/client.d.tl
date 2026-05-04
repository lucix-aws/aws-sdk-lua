local types = require("backupsearch.types")

local record Client
    getSearchJob: function(Client, types.GetSearchJobInput): types.GetSearchJobOutput, table
    getSearchResultExportJob: function(Client, types.GetSearchResultExportJobInput): types.GetSearchResultExportJobOutput, table
    listSearchJobBackups: function(Client, types.ListSearchJobBackupsInput): types.ListSearchJobBackupsOutput, table
    listSearchJobResults: function(Client, types.ListSearchJobResultsInput): types.ListSearchJobResultsOutput, table
    listSearchJobs: function(Client, types.ListSearchJobsInput): types.ListSearchJobsOutput, table
    listSearchResultExportJobs: function(Client, types.ListSearchResultExportJobsInput): types.ListSearchResultExportJobsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    startSearchJob: function(Client, types.StartSearchJobInput): types.StartSearchJobOutput, table
    startSearchResultExportJob: function(Client, types.StartSearchResultExportJobInput): types.StartSearchResultExportJobOutput, table
    stopSearchJob: function(Client, types.StopSearchJobInput): types.StopSearchJobOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
end

local record M
    new: function(table): Client
end

return M
