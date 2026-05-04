local types = require("lookoutequipment.types")

local record Client
    createDataset: function(Client, types.CreateDatasetInput): types.CreateDatasetOutput, table
    createInferenceScheduler: function(Client, types.CreateInferenceSchedulerInput): types.CreateInferenceSchedulerOutput, table
    createLabel: function(Client, types.CreateLabelInput): types.CreateLabelOutput, table
    createLabelGroup: function(Client, types.CreateLabelGroupInput): types.CreateLabelGroupOutput, table
    createModel: function(Client, types.CreateModelInput): types.CreateModelOutput, table
    createRetrainingScheduler: function(Client, types.CreateRetrainingSchedulerInput): types.CreateRetrainingSchedulerOutput, table
    deleteDataset: function(Client, types.DeleteDatasetInput): types.DeleteDatasetOutput, table
    deleteInferenceScheduler: function(Client, types.DeleteInferenceSchedulerInput): types.DeleteInferenceSchedulerOutput, table
    deleteLabel: function(Client, types.DeleteLabelInput): types.DeleteLabelOutput, table
    deleteLabelGroup: function(Client, types.DeleteLabelGroupInput): types.DeleteLabelGroupOutput, table
    deleteModel: function(Client, types.DeleteModelInput): types.DeleteModelOutput, table
    deleteResourcePolicy: function(Client, types.DeleteResourcePolicyInput): types.DeleteResourcePolicyOutput, table
    deleteRetrainingScheduler: function(Client, types.DeleteRetrainingSchedulerInput): types.DeleteRetrainingSchedulerOutput, table
    describeDataIngestionJob: function(Client, types.DescribeDataIngestionJobInput): types.DescribeDataIngestionJobOutput, table
    describeDataset: function(Client, types.DescribeDatasetInput): types.DescribeDatasetOutput, table
    describeInferenceScheduler: function(Client, types.DescribeInferenceSchedulerInput): types.DescribeInferenceSchedulerOutput, table
    describeLabel: function(Client, types.DescribeLabelInput): types.DescribeLabelOutput, table
    describeLabelGroup: function(Client, types.DescribeLabelGroupInput): types.DescribeLabelGroupOutput, table
    describeModel: function(Client, types.DescribeModelInput): types.DescribeModelOutput, table
    describeModelVersion: function(Client, types.DescribeModelVersionInput): types.DescribeModelVersionOutput, table
    describeResourcePolicy: function(Client, types.DescribeResourcePolicyInput): types.DescribeResourcePolicyOutput, table
    describeRetrainingScheduler: function(Client, types.DescribeRetrainingSchedulerInput): types.DescribeRetrainingSchedulerOutput, table
    importDataset: function(Client, types.ImportDatasetInput): types.ImportDatasetOutput, table
    importModelVersion: function(Client, types.ImportModelVersionInput): types.ImportModelVersionOutput, table
    listDataIngestionJobs: function(Client, types.ListDataIngestionJobsInput): types.ListDataIngestionJobsOutput, table
    listDatasets: function(Client, types.ListDatasetsInput): types.ListDatasetsOutput, table
    listInferenceEvents: function(Client, types.ListInferenceEventsInput): types.ListInferenceEventsOutput, table
    listInferenceExecutions: function(Client, types.ListInferenceExecutionsInput): types.ListInferenceExecutionsOutput, table
    listInferenceSchedulers: function(Client, types.ListInferenceSchedulersInput): types.ListInferenceSchedulersOutput, table
    listLabelGroups: function(Client, types.ListLabelGroupsInput): types.ListLabelGroupsOutput, table
    listLabels: function(Client, types.ListLabelsInput): types.ListLabelsOutput, table
    listModels: function(Client, types.ListModelsInput): types.ListModelsOutput, table
    listModelVersions: function(Client, types.ListModelVersionsInput): types.ListModelVersionsOutput, table
    listRetrainingSchedulers: function(Client, types.ListRetrainingSchedulersInput): types.ListRetrainingSchedulersOutput, table
    listSensorStatistics: function(Client, types.ListSensorStatisticsInput): types.ListSensorStatisticsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    putResourcePolicy: function(Client, types.PutResourcePolicyInput): types.PutResourcePolicyOutput, table
    startDataIngestionJob: function(Client, types.StartDataIngestionJobInput): types.StartDataIngestionJobOutput, table
    startInferenceScheduler: function(Client, types.StartInferenceSchedulerInput): types.StartInferenceSchedulerOutput, table
    startRetrainingScheduler: function(Client, types.StartRetrainingSchedulerInput): types.StartRetrainingSchedulerOutput, table
    stopInferenceScheduler: function(Client, types.StopInferenceSchedulerInput): types.StopInferenceSchedulerOutput, table
    stopRetrainingScheduler: function(Client, types.StopRetrainingSchedulerInput): types.StopRetrainingSchedulerOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateActiveModelVersion: function(Client, types.UpdateActiveModelVersionInput): types.UpdateActiveModelVersionOutput, table
    updateInferenceScheduler: function(Client, types.UpdateInferenceSchedulerInput): types.UpdateInferenceSchedulerOutput, table
    updateLabelGroup: function(Client, types.UpdateLabelGroupInput): types.UpdateLabelGroupOutput, table
    updateModel: function(Client, types.UpdateModelInput): types.UpdateModelOutput, table
    updateRetrainingScheduler: function(Client, types.UpdateRetrainingSchedulerInput): types.UpdateRetrainingSchedulerOutput, table
end

local record M
    new: function(table): Client
end

return M
