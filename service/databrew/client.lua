local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("databrew.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("databrew.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSGlueDataBrew"
    cfg.signing_name = "databrew"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:batchDeleteRecipeVersion(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteRecipeVersion",
        input_schema = types.BatchDeleteRecipeVersionInput,
        output_schema = types.BatchDeleteRecipeVersionOutput,
        http_method = "POST",
        http_path = "/recipes/{Name}/batchDeleteRecipeVersion",
    }, options)
end

function Client:createDataset(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataset",
        input_schema = types.CreateDatasetInput,
        output_schema = types.CreateDatasetOutput,
        http_method = "POST",
        http_path = "/datasets",
    }, options)
end

function Client:createProfileJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateProfileJob",
        input_schema = types.CreateProfileJobInput,
        output_schema = types.CreateProfileJobOutput,
        http_method = "POST",
        http_path = "/profileJobs",
    }, options)
end

function Client:createProject(input, options)
    return self:invokeOperation(input, {
        name = "CreateProject",
        input_schema = types.CreateProjectInput,
        output_schema = types.CreateProjectOutput,
        http_method = "POST",
        http_path = "/projects",
    }, options)
end

function Client:createRecipe(input, options)
    return self:invokeOperation(input, {
        name = "CreateRecipe",
        input_schema = types.CreateRecipeInput,
        output_schema = types.CreateRecipeOutput,
        http_method = "POST",
        http_path = "/recipes",
    }, options)
end

function Client:createRecipeJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateRecipeJob",
        input_schema = types.CreateRecipeJobInput,
        output_schema = types.CreateRecipeJobOutput,
        http_method = "POST",
        http_path = "/recipeJobs",
    }, options)
end

function Client:createRuleset(input, options)
    return self:invokeOperation(input, {
        name = "CreateRuleset",
        input_schema = types.CreateRulesetInput,
        output_schema = types.CreateRulesetOutput,
        http_method = "POST",
        http_path = "/rulesets",
    }, options)
end

function Client:createSchedule(input, options)
    return self:invokeOperation(input, {
        name = "CreateSchedule",
        input_schema = types.CreateScheduleInput,
        output_schema = types.CreateScheduleOutput,
        http_method = "POST",
        http_path = "/schedules",
    }, options)
end

function Client:deleteDataset(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataset",
        input_schema = types.DeleteDatasetInput,
        output_schema = types.DeleteDatasetOutput,
        http_method = "DELETE",
        http_path = "/datasets/{Name}",
    }, options)
end

function Client:deleteJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteJob",
        input_schema = types.DeleteJobInput,
        output_schema = types.DeleteJobOutput,
        http_method = "DELETE",
        http_path = "/jobs/{Name}",
    }, options)
end

function Client:deleteProject(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProject",
        input_schema = types.DeleteProjectInput,
        output_schema = types.DeleteProjectOutput,
        http_method = "DELETE",
        http_path = "/projects/{Name}",
    }, options)
end

function Client:deleteRecipeVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRecipeVersion",
        input_schema = types.DeleteRecipeVersionInput,
        output_schema = types.DeleteRecipeVersionOutput,
        http_method = "DELETE",
        http_path = "/recipes/{Name}/recipeVersion/{RecipeVersion}",
    }, options)
end

function Client:deleteRuleset(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRuleset",
        input_schema = types.DeleteRulesetInput,
        output_schema = types.DeleteRulesetOutput,
        http_method = "DELETE",
        http_path = "/rulesets/{Name}",
    }, options)
end

function Client:deleteSchedule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSchedule",
        input_schema = types.DeleteScheduleInput,
        output_schema = types.DeleteScheduleOutput,
        http_method = "DELETE",
        http_path = "/schedules/{Name}",
    }, options)
end

function Client:describeDataset(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataset",
        input_schema = types.DescribeDatasetInput,
        output_schema = types.DescribeDatasetOutput,
        http_method = "GET",
        http_path = "/datasets/{Name}",
    }, options)
end

function Client:describeJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJob",
        input_schema = types.DescribeJobInput,
        output_schema = types.DescribeJobOutput,
        http_method = "GET",
        http_path = "/jobs/{Name}",
    }, options)
end

function Client:describeJobRun(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJobRun",
        input_schema = types.DescribeJobRunInput,
        output_schema = types.DescribeJobRunOutput,
        http_method = "GET",
        http_path = "/jobs/{Name}/jobRun/{RunId}",
    }, options)
end

function Client:describeProject(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProject",
        input_schema = types.DescribeProjectInput,
        output_schema = types.DescribeProjectOutput,
        http_method = "GET",
        http_path = "/projects/{Name}",
    }, options)
end

function Client:describeRecipe(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRecipe",
        input_schema = types.DescribeRecipeInput,
        output_schema = types.DescribeRecipeOutput,
        http_method = "GET",
        http_path = "/recipes/{Name}",
    }, options)
end

function Client:describeRuleset(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRuleset",
        input_schema = types.DescribeRulesetInput,
        output_schema = types.DescribeRulesetOutput,
        http_method = "GET",
        http_path = "/rulesets/{Name}",
    }, options)
end

function Client:describeSchedule(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSchedule",
        input_schema = types.DescribeScheduleInput,
        output_schema = types.DescribeScheduleOutput,
        http_method = "GET",
        http_path = "/schedules/{Name}",
    }, options)
end

function Client:listDatasets(input, options)
    return self:invokeOperation(input, {
        name = "ListDatasets",
        input_schema = types.ListDatasetsInput,
        output_schema = types.ListDatasetsOutput,
        http_method = "GET",
        http_path = "/datasets",
    }, options)
end

function Client:listJobRuns(input, options)
    return self:invokeOperation(input, {
        name = "ListJobRuns",
        input_schema = types.ListJobRunsInput,
        output_schema = types.ListJobRunsOutput,
        http_method = "GET",
        http_path = "/jobs/{Name}/jobRuns",
    }, options)
end

function Client:listJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListJobs",
        input_schema = types.ListJobsInput,
        output_schema = types.ListJobsOutput,
        http_method = "GET",
        http_path = "/jobs",
    }, options)
end

function Client:listProjects(input, options)
    return self:invokeOperation(input, {
        name = "ListProjects",
        input_schema = types.ListProjectsInput,
        output_schema = types.ListProjectsOutput,
        http_method = "GET",
        http_path = "/projects",
    }, options)
end

function Client:listRecipes(input, options)
    return self:invokeOperation(input, {
        name = "ListRecipes",
        input_schema = types.ListRecipesInput,
        output_schema = types.ListRecipesOutput,
        http_method = "GET",
        http_path = "/recipes",
    }, options)
end

function Client:listRecipeVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListRecipeVersions",
        input_schema = types.ListRecipeVersionsInput,
        output_schema = types.ListRecipeVersionsOutput,
        http_method = "GET",
        http_path = "/recipeVersions",
    }, options)
end

function Client:listRulesets(input, options)
    return self:invokeOperation(input, {
        name = "ListRulesets",
        input_schema = types.ListRulesetsInput,
        output_schema = types.ListRulesetsOutput,
        http_method = "GET",
        http_path = "/rulesets",
    }, options)
end

function Client:listSchedules(input, options)
    return self:invokeOperation(input, {
        name = "ListSchedules",
        input_schema = types.ListSchedulesInput,
        output_schema = types.ListSchedulesOutput,
        http_method = "GET",
        http_path = "/schedules",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:publishRecipe(input, options)
    return self:invokeOperation(input, {
        name = "PublishRecipe",
        input_schema = types.PublishRecipeInput,
        output_schema = types.PublishRecipeOutput,
        http_method = "POST",
        http_path = "/recipes/{Name}/publishRecipe",
    }, options)
end

function Client:sendProjectSessionAction(input, options)
    return self:invokeOperation(input, {
        name = "SendProjectSessionAction",
        input_schema = types.SendProjectSessionActionInput,
        output_schema = types.SendProjectSessionActionOutput,
        http_method = "PUT",
        http_path = "/projects/{Name}/sendProjectSessionAction",
    }, options)
end

function Client:startJobRun(input, options)
    return self:invokeOperation(input, {
        name = "StartJobRun",
        input_schema = types.StartJobRunInput,
        output_schema = types.StartJobRunOutput,
        http_method = "POST",
        http_path = "/jobs/{Name}/startJobRun",
    }, options)
end

function Client:startProjectSession(input, options)
    return self:invokeOperation(input, {
        name = "StartProjectSession",
        input_schema = types.StartProjectSessionInput,
        output_schema = types.StartProjectSessionOutput,
        http_method = "PUT",
        http_path = "/projects/{Name}/startProjectSession",
    }, options)
end

function Client:stopJobRun(input, options)
    return self:invokeOperation(input, {
        name = "StopJobRun",
        input_schema = types.StopJobRunInput,
        output_schema = types.StopJobRunOutput,
        http_method = "POST",
        http_path = "/jobs/{Name}/jobRun/{RunId}/stopJobRun",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:updateDataset(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataset",
        input_schema = types.UpdateDatasetInput,
        output_schema = types.UpdateDatasetOutput,
        http_method = "PUT",
        http_path = "/datasets/{Name}",
    }, options)
end

function Client:updateProfileJob(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProfileJob",
        input_schema = types.UpdateProfileJobInput,
        output_schema = types.UpdateProfileJobOutput,
        http_method = "PUT",
        http_path = "/profileJobs/{Name}",
    }, options)
end

function Client:updateProject(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProject",
        input_schema = types.UpdateProjectInput,
        output_schema = types.UpdateProjectOutput,
        http_method = "PUT",
        http_path = "/projects/{Name}",
    }, options)
end

function Client:updateRecipe(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRecipe",
        input_schema = types.UpdateRecipeInput,
        output_schema = types.UpdateRecipeOutput,
        http_method = "PUT",
        http_path = "/recipes/{Name}",
    }, options)
end

function Client:updateRecipeJob(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRecipeJob",
        input_schema = types.UpdateRecipeJobInput,
        output_schema = types.UpdateRecipeJobOutput,
        http_method = "PUT",
        http_path = "/recipeJobs/{Name}",
    }, options)
end

function Client:updateRuleset(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRuleset",
        input_schema = types.UpdateRulesetInput,
        output_schema = types.UpdateRulesetOutput,
        http_method = "PUT",
        http_path = "/rulesets/{Name}",
    }, options)
end

function Client:updateSchedule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSchedule",
        input_schema = types.UpdateScheduleInput,
        output_schema = types.UpdateScheduleOutput,
        http_method = "PUT",
        http_path = "/schedules/{Name}",
    }, options)
end

return M
