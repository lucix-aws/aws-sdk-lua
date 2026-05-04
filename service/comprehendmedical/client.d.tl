local types = require("comprehendmedical.types")

local record Client
    describeEntitiesDetectionV2Job: function(Client, types.DescribeEntitiesDetectionV2JobInput): types.DescribeEntitiesDetectionV2JobOutput, table
    describeICD10CMInferenceJob: function(Client, types.DescribeICD10CMInferenceJobInput): types.DescribeICD10CMInferenceJobOutput, table
    describePHIDetectionJob: function(Client, types.DescribePHIDetectionJobInput): types.DescribePHIDetectionJobOutput, table
    describeRxNormInferenceJob: function(Client, types.DescribeRxNormInferenceJobInput): types.DescribeRxNormInferenceJobOutput, table
    describeSNOMEDCTInferenceJob: function(Client, types.DescribeSNOMEDCTInferenceJobInput): types.DescribeSNOMEDCTInferenceJobOutput, table
    detectEntities: function(Client, types.DetectEntitiesInput): types.DetectEntitiesOutput, table
    detectEntitiesV2: function(Client, types.DetectEntitiesV2Input): types.DetectEntitiesV2Output, table
    detectPHI: function(Client, types.DetectPHIInput): types.DetectPHIOutput, table
    inferICD10CM: function(Client, types.InferICD10CMInput): types.InferICD10CMOutput, table
    inferRxNorm: function(Client, types.InferRxNormInput): types.InferRxNormOutput, table
    inferSNOMEDCT: function(Client, types.InferSNOMEDCTInput): types.InferSNOMEDCTOutput, table
    listEntitiesDetectionV2Jobs: function(Client, types.ListEntitiesDetectionV2JobsInput): types.ListEntitiesDetectionV2JobsOutput, table
    listICD10CMInferenceJobs: function(Client, types.ListICD10CMInferenceJobsInput): types.ListICD10CMInferenceJobsOutput, table
    listPHIDetectionJobs: function(Client, types.ListPHIDetectionJobsInput): types.ListPHIDetectionJobsOutput, table
    listRxNormInferenceJobs: function(Client, types.ListRxNormInferenceJobsInput): types.ListRxNormInferenceJobsOutput, table
    listSNOMEDCTInferenceJobs: function(Client, types.ListSNOMEDCTInferenceJobsInput): types.ListSNOMEDCTInferenceJobsOutput, table
    startEntitiesDetectionV2Job: function(Client, types.StartEntitiesDetectionV2JobInput): types.StartEntitiesDetectionV2JobOutput, table
    startICD10CMInferenceJob: function(Client, types.StartICD10CMInferenceJobInput): types.StartICD10CMInferenceJobOutput, table
    startPHIDetectionJob: function(Client, types.StartPHIDetectionJobInput): types.StartPHIDetectionJobOutput, table
    startRxNormInferenceJob: function(Client, types.StartRxNormInferenceJobInput): types.StartRxNormInferenceJobOutput, table
    startSNOMEDCTInferenceJob: function(Client, types.StartSNOMEDCTInferenceJobInput): types.StartSNOMEDCTInferenceJobOutput, table
    stopEntitiesDetectionV2Job: function(Client, types.StopEntitiesDetectionV2JobInput): types.StopEntitiesDetectionV2JobOutput, table
    stopICD10CMInferenceJob: function(Client, types.StopICD10CMInferenceJobInput): types.StopICD10CMInferenceJobOutput, table
    stopPHIDetectionJob: function(Client, types.StopPHIDetectionJobInput): types.StopPHIDetectionJobOutput, table
    stopRxNormInferenceJob: function(Client, types.StopRxNormInferenceJobInput): types.StopRxNormInferenceJobOutput, table
    stopSNOMEDCTInferenceJob: function(Client, types.StopSNOMEDCTInferenceJobInput): types.StopSNOMEDCTInferenceJobOutput, table
end

local record M
    new: function(table): Client
end

return M
