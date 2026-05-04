local types = require("mediaconvert.types")

local record Client
    associateCertificate: function(Client, types.AssociateCertificateInput): types.AssociateCertificateOutput, table
    cancelJob: function(Client, types.CancelJobInput): types.CancelJobOutput, table
    createJob: function(Client, types.CreateJobInput): types.CreateJobOutput, table
    createJobTemplate: function(Client, types.CreateJobTemplateInput): types.CreateJobTemplateOutput, table
    createPreset: function(Client, types.CreatePresetInput): types.CreatePresetOutput, table
    createQueue: function(Client, types.CreateQueueInput): types.CreateQueueOutput, table
    createResourceShare: function(Client, types.CreateResourceShareInput): types.CreateResourceShareOutput, table
    deleteJobTemplate: function(Client, types.DeleteJobTemplateInput): types.DeleteJobTemplateOutput, table
    deletePolicy: function(Client, types.DeletePolicyInput): types.DeletePolicyOutput, table
    deletePreset: function(Client, types.DeletePresetInput): types.DeletePresetOutput, table
    deleteQueue: function(Client, types.DeleteQueueInput): types.DeleteQueueOutput, table
    describeEndpoints: function(Client, types.DescribeEndpointsInput): types.DescribeEndpointsOutput, table
    disassociateCertificate: function(Client, types.DisassociateCertificateInput): types.DisassociateCertificateOutput, table
    getJob: function(Client, types.GetJobInput): types.GetJobOutput, table
    getJobsQueryResults: function(Client, types.GetJobsQueryResultsInput): types.GetJobsQueryResultsOutput, table
    getJobTemplate: function(Client, types.GetJobTemplateInput): types.GetJobTemplateOutput, table
    getPolicy: function(Client, types.GetPolicyInput): types.GetPolicyOutput, table
    getPreset: function(Client, types.GetPresetInput): types.GetPresetOutput, table
    getQueue: function(Client, types.GetQueueInput): types.GetQueueOutput, table
    listJobs: function(Client, types.ListJobsInput): types.ListJobsOutput, table
    listJobTemplates: function(Client, types.ListJobTemplatesInput): types.ListJobTemplatesOutput, table
    listPresets: function(Client, types.ListPresetsInput): types.ListPresetsOutput, table
    listQueues: function(Client, types.ListQueuesInput): types.ListQueuesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listVersions: function(Client, types.ListVersionsInput): types.ListVersionsOutput, table
    probe: function(Client, types.ProbeInput): types.ProbeOutput, table
    putPolicy: function(Client, types.PutPolicyInput): types.PutPolicyOutput, table
    searchJobs: function(Client, types.SearchJobsInput): types.SearchJobsOutput, table
    startJobsQuery: function(Client, types.StartJobsQueryInput): types.StartJobsQueryOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateJobTemplate: function(Client, types.UpdateJobTemplateInput): types.UpdateJobTemplateOutput, table
    updatePreset: function(Client, types.UpdatePresetInput): types.UpdatePresetOutput, table
    updateQueue: function(Client, types.UpdateQueueInput): types.UpdateQueueOutput, table
end

local record M
    new: function(table): Client
end

return M
