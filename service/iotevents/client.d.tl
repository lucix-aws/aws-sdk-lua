local types = require("iotevents.types")

local record Client
    createAlarmModel: function(Client, types.CreateAlarmModelInput): types.CreateAlarmModelOutput, table
    createDetectorModel: function(Client, types.CreateDetectorModelInput): types.CreateDetectorModelOutput, table
    createInput: function(Client, types.CreateInputInput): types.CreateInputOutput, table
    deleteAlarmModel: function(Client, types.DeleteAlarmModelInput): types.DeleteAlarmModelOutput, table
    deleteDetectorModel: function(Client, types.DeleteDetectorModelInput): types.DeleteDetectorModelOutput, table
    deleteInput: function(Client, types.DeleteInputInput): types.DeleteInputOutput, table
    describeAlarmModel: function(Client, types.DescribeAlarmModelInput): types.DescribeAlarmModelOutput, table
    describeDetectorModel: function(Client, types.DescribeDetectorModelInput): types.DescribeDetectorModelOutput, table
    describeDetectorModelAnalysis: function(Client, types.DescribeDetectorModelAnalysisInput): types.DescribeDetectorModelAnalysisOutput, table
    describeInput: function(Client, types.DescribeInputInput): types.DescribeInputOutput, table
    describeLoggingOptions: function(Client, types.DescribeLoggingOptionsInput): types.DescribeLoggingOptionsOutput, table
    getDetectorModelAnalysisResults: function(Client, types.GetDetectorModelAnalysisResultsInput): types.GetDetectorModelAnalysisResultsOutput, table
    listAlarmModels: function(Client, types.ListAlarmModelsInput): types.ListAlarmModelsOutput, table
    listAlarmModelVersions: function(Client, types.ListAlarmModelVersionsInput): types.ListAlarmModelVersionsOutput, table
    listDetectorModels: function(Client, types.ListDetectorModelsInput): types.ListDetectorModelsOutput, table
    listDetectorModelVersions: function(Client, types.ListDetectorModelVersionsInput): types.ListDetectorModelVersionsOutput, table
    listInputRoutings: function(Client, types.ListInputRoutingsInput): types.ListInputRoutingsOutput, table
    listInputs: function(Client, types.ListInputsInput): types.ListInputsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    putLoggingOptions: function(Client, types.PutLoggingOptionsInput): types.PutLoggingOptionsOutput, table
    startDetectorModelAnalysis: function(Client, types.StartDetectorModelAnalysisInput): types.StartDetectorModelAnalysisOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateAlarmModel: function(Client, types.UpdateAlarmModelInput): types.UpdateAlarmModelOutput, table
    updateDetectorModel: function(Client, types.UpdateDetectorModelInput): types.UpdateDetectorModelOutput, table
    updateInput: function(Client, types.UpdateInputInput): types.UpdateInputOutput, table
end

local record M
    new: function(table): Client
end

return M
