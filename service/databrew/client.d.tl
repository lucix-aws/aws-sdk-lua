local types = require("databrew.types")

local record Client
    batchDeleteRecipeVersion: function(Client, types.BatchDeleteRecipeVersionInput): types.BatchDeleteRecipeVersionOutput, table
    createDataset: function(Client, types.CreateDatasetInput): types.CreateDatasetOutput, table
    createProfileJob: function(Client, types.CreateProfileJobInput): types.CreateProfileJobOutput, table
    createProject: function(Client, types.CreateProjectInput): types.CreateProjectOutput, table
    createRecipe: function(Client, types.CreateRecipeInput): types.CreateRecipeOutput, table
    createRecipeJob: function(Client, types.CreateRecipeJobInput): types.CreateRecipeJobOutput, table
    createRuleset: function(Client, types.CreateRulesetInput): types.CreateRulesetOutput, table
    createSchedule: function(Client, types.CreateScheduleInput): types.CreateScheduleOutput, table
    deleteDataset: function(Client, types.DeleteDatasetInput): types.DeleteDatasetOutput, table
    deleteJob: function(Client, types.DeleteJobInput): types.DeleteJobOutput, table
    deleteProject: function(Client, types.DeleteProjectInput): types.DeleteProjectOutput, table
    deleteRecipeVersion: function(Client, types.DeleteRecipeVersionInput): types.DeleteRecipeVersionOutput, table
    deleteRuleset: function(Client, types.DeleteRulesetInput): types.DeleteRulesetOutput, table
    deleteSchedule: function(Client, types.DeleteScheduleInput): types.DeleteScheduleOutput, table
    describeDataset: function(Client, types.DescribeDatasetInput): types.DescribeDatasetOutput, table
    describeJob: function(Client, types.DescribeJobInput): types.DescribeJobOutput, table
    describeJobRun: function(Client, types.DescribeJobRunInput): types.DescribeJobRunOutput, table
    describeProject: function(Client, types.DescribeProjectInput): types.DescribeProjectOutput, table
    describeRecipe: function(Client, types.DescribeRecipeInput): types.DescribeRecipeOutput, table
    describeRuleset: function(Client, types.DescribeRulesetInput): types.DescribeRulesetOutput, table
    describeSchedule: function(Client, types.DescribeScheduleInput): types.DescribeScheduleOutput, table
    listDatasets: function(Client, types.ListDatasetsInput): types.ListDatasetsOutput, table
    listJobRuns: function(Client, types.ListJobRunsInput): types.ListJobRunsOutput, table
    listJobs: function(Client, types.ListJobsInput): types.ListJobsOutput, table
    listProjects: function(Client, types.ListProjectsInput): types.ListProjectsOutput, table
    listRecipes: function(Client, types.ListRecipesInput): types.ListRecipesOutput, table
    listRecipeVersions: function(Client, types.ListRecipeVersionsInput): types.ListRecipeVersionsOutput, table
    listRulesets: function(Client, types.ListRulesetsInput): types.ListRulesetsOutput, table
    listSchedules: function(Client, types.ListSchedulesInput): types.ListSchedulesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    publishRecipe: function(Client, types.PublishRecipeInput): types.PublishRecipeOutput, table
    sendProjectSessionAction: function(Client, types.SendProjectSessionActionInput): types.SendProjectSessionActionOutput, table
    startJobRun: function(Client, types.StartJobRunInput): types.StartJobRunOutput, table
    startProjectSession: function(Client, types.StartProjectSessionInput): types.StartProjectSessionOutput, table
    stopJobRun: function(Client, types.StopJobRunInput): types.StopJobRunOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateDataset: function(Client, types.UpdateDatasetInput): types.UpdateDatasetOutput, table
    updateProfileJob: function(Client, types.UpdateProfileJobInput): types.UpdateProfileJobOutput, table
    updateProject: function(Client, types.UpdateProjectInput): types.UpdateProjectOutput, table
    updateRecipe: function(Client, types.UpdateRecipeInput): types.UpdateRecipeOutput, table
    updateRecipeJob: function(Client, types.UpdateRecipeJobInput): types.UpdateRecipeJobOutput, table
    updateRuleset: function(Client, types.UpdateRulesetInput): types.UpdateRulesetOutput, table
    updateSchedule: function(Client, types.UpdateScheduleInput): types.UpdateScheduleOutput, table
end

local record M
    new: function(table): Client
end

return M
