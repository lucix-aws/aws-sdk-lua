local types = require("translate.types")

local record Client
    createParallelData: function(Client, types.CreateParallelDataInput): types.CreateParallelDataOutput, table
    deleteParallelData: function(Client, types.DeleteParallelDataInput): types.DeleteParallelDataOutput, table
    deleteTerminology: function(Client, types.DeleteTerminologyInput): types.DeleteTerminologyOutput, table
    describeTextTranslationJob: function(Client, types.DescribeTextTranslationJobInput): types.DescribeTextTranslationJobOutput, table
    getParallelData: function(Client, types.GetParallelDataInput): types.GetParallelDataOutput, table
    getTerminology: function(Client, types.GetTerminologyInput): types.GetTerminologyOutput, table
    importTerminology: function(Client, types.ImportTerminologyInput): types.ImportTerminologyOutput, table
    listLanguages: function(Client, types.ListLanguagesInput): types.ListLanguagesOutput, table
    listParallelData: function(Client, types.ListParallelDataInput): types.ListParallelDataOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listTerminologies: function(Client, types.ListTerminologiesInput): types.ListTerminologiesOutput, table
    listTextTranslationJobs: function(Client, types.ListTextTranslationJobsInput): types.ListTextTranslationJobsOutput, table
    startTextTranslationJob: function(Client, types.StartTextTranslationJobInput): types.StartTextTranslationJobOutput, table
    stopTextTranslationJob: function(Client, types.StopTextTranslationJobInput): types.StopTextTranslationJobOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    translateDocument: function(Client, types.TranslateDocumentInput): types.TranslateDocumentOutput, table
    translateText: function(Client, types.TranslateTextInput): types.TranslateTextOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateParallelData: function(Client, types.UpdateParallelDataInput): types.UpdateParallelDataOutput, table
end

local record M
    new: function(table): Client
end

return M
