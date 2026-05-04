local types = require("healthlake.types")

local record Client
    createFHIRDatastore: function(Client, types.CreateFHIRDatastoreInput): types.CreateFHIRDatastoreOutput, table
    deleteFHIRDatastore: function(Client, types.DeleteFHIRDatastoreInput): types.DeleteFHIRDatastoreOutput, table
    describeFHIRDatastore: function(Client, types.DescribeFHIRDatastoreInput): types.DescribeFHIRDatastoreOutput, table
    describeFHIRExportJob: function(Client, types.DescribeFHIRExportJobInput): types.DescribeFHIRExportJobOutput, table
    describeFHIRImportJob: function(Client, types.DescribeFHIRImportJobInput): types.DescribeFHIRImportJobOutput, table
    listFHIRDatastores: function(Client, types.ListFHIRDatastoresInput): types.ListFHIRDatastoresOutput, table
    listFHIRExportJobs: function(Client, types.ListFHIRExportJobsInput): types.ListFHIRExportJobsOutput, table
    listFHIRImportJobs: function(Client, types.ListFHIRImportJobsInput): types.ListFHIRImportJobsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    startFHIRExportJob: function(Client, types.StartFHIRExportJobInput): types.StartFHIRExportJobOutput, table
    startFHIRImportJob: function(Client, types.StartFHIRImportJobInput): types.StartFHIRImportJobOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
end

local record M
    new: function(table): Client
end

return M
