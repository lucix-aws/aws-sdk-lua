local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("databrew.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("databrew.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSGlueDataBrew"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    if not cfg.auth_scheme_resolver then
        cfg.auth_scheme_resolver = function(operation)
            local options = {}
            for _, scheme_id in ipairs(operation.effective_auth_schemes) do
                if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "databrew", signing_region = cfg.region } }
                else
                    options[#options + 1] = { scheme_id = scheme_id }
                end
            end
            return options
        end
    end
    defaults.resolve_auth_schemes(cfg)
    defaults.resolve_identity_resolvers(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:batchDeleteRecipeVersion(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteRecipeVersion",
        input_schema = schemas.BatchDeleteRecipeVersionInput,
        output_schema = schemas.BatchDeleteRecipeVersionOutput,
        http_method = "POST",
        http_path = "/recipes/{Name}/batchDeleteRecipeVersion",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataset(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataset",
        input_schema = schemas.CreateDatasetInput,
        output_schema = schemas.CreateDatasetOutput,
        http_method = "POST",
        http_path = "/datasets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProfileJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateProfileJob",
        input_schema = schemas.CreateProfileJobInput,
        output_schema = schemas.CreateProfileJobOutput,
        http_method = "POST",
        http_path = "/profileJobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProject(input, options)
    return self:invokeOperation(input, {
        name = "CreateProject",
        input_schema = schemas.CreateProjectInput,
        output_schema = schemas.CreateProjectOutput,
        http_method = "POST",
        http_path = "/projects",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRecipe(input, options)
    return self:invokeOperation(input, {
        name = "CreateRecipe",
        input_schema = schemas.CreateRecipeInput,
        output_schema = schemas.CreateRecipeOutput,
        http_method = "POST",
        http_path = "/recipes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRecipeJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateRecipeJob",
        input_schema = schemas.CreateRecipeJobInput,
        output_schema = schemas.CreateRecipeJobOutput,
        http_method = "POST",
        http_path = "/recipeJobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRuleset(input, options)
    return self:invokeOperation(input, {
        name = "CreateRuleset",
        input_schema = schemas.CreateRulesetInput,
        output_schema = schemas.CreateRulesetOutput,
        http_method = "POST",
        http_path = "/rulesets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSchedule(input, options)
    return self:invokeOperation(input, {
        name = "CreateSchedule",
        input_schema = schemas.CreateScheduleInput,
        output_schema = schemas.CreateScheduleOutput,
        http_method = "POST",
        http_path = "/schedules",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataset(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataset",
        input_schema = schemas.DeleteDatasetInput,
        output_schema = schemas.DeleteDatasetOutput,
        http_method = "DELETE",
        http_path = "/datasets/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteJob",
        input_schema = schemas.DeleteJobInput,
        output_schema = schemas.DeleteJobOutput,
        http_method = "DELETE",
        http_path = "/jobs/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProject(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProject",
        input_schema = schemas.DeleteProjectInput,
        output_schema = schemas.DeleteProjectOutput,
        http_method = "DELETE",
        http_path = "/projects/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRecipeVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRecipeVersion",
        input_schema = schemas.DeleteRecipeVersionInput,
        output_schema = schemas.DeleteRecipeVersionOutput,
        http_method = "DELETE",
        http_path = "/recipes/{Name}/recipeVersion/{RecipeVersion}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRuleset(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRuleset",
        input_schema = schemas.DeleteRulesetInput,
        output_schema = schemas.DeleteRulesetOutput,
        http_method = "DELETE",
        http_path = "/rulesets/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSchedule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSchedule",
        input_schema = schemas.DeleteScheduleInput,
        output_schema = schemas.DeleteScheduleOutput,
        http_method = "DELETE",
        http_path = "/schedules/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDataset(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataset",
        input_schema = schemas.DescribeDatasetInput,
        output_schema = schemas.DescribeDatasetOutput,
        http_method = "GET",
        http_path = "/datasets/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJob",
        input_schema = schemas.DescribeJobInput,
        output_schema = schemas.DescribeJobOutput,
        http_method = "GET",
        http_path = "/jobs/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeJobRun(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJobRun",
        input_schema = schemas.DescribeJobRunInput,
        output_schema = schemas.DescribeJobRunOutput,
        http_method = "GET",
        http_path = "/jobs/{Name}/jobRun/{RunId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeProject(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProject",
        input_schema = schemas.DescribeProjectInput,
        output_schema = schemas.DescribeProjectOutput,
        http_method = "GET",
        http_path = "/projects/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRecipe(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRecipe",
        input_schema = schemas.DescribeRecipeInput,
        output_schema = schemas.DescribeRecipeOutput,
        http_method = "GET",
        http_path = "/recipes/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRuleset(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRuleset",
        input_schema = schemas.DescribeRulesetInput,
        output_schema = schemas.DescribeRulesetOutput,
        http_method = "GET",
        http_path = "/rulesets/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSchedule(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSchedule",
        input_schema = schemas.DescribeScheduleInput,
        output_schema = schemas.DescribeScheduleOutput,
        http_method = "GET",
        http_path = "/schedules/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDatasets(input, options)
    return self:invokeOperation(input, {
        name = "ListDatasets",
        input_schema = schemas.ListDatasetsInput,
        output_schema = schemas.ListDatasetsOutput,
        http_method = "GET",
        http_path = "/datasets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listJobRuns(input, options)
    return self:invokeOperation(input, {
        name = "ListJobRuns",
        input_schema = schemas.ListJobRunsInput,
        output_schema = schemas.ListJobRunsOutput,
        http_method = "GET",
        http_path = "/jobs/{Name}/jobRuns",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListJobs",
        input_schema = schemas.ListJobsInput,
        output_schema = schemas.ListJobsOutput,
        http_method = "GET",
        http_path = "/jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProjects(input, options)
    return self:invokeOperation(input, {
        name = "ListProjects",
        input_schema = schemas.ListProjectsInput,
        output_schema = schemas.ListProjectsOutput,
        http_method = "GET",
        http_path = "/projects",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRecipes(input, options)
    return self:invokeOperation(input, {
        name = "ListRecipes",
        input_schema = schemas.ListRecipesInput,
        output_schema = schemas.ListRecipesOutput,
        http_method = "GET",
        http_path = "/recipes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRecipeVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListRecipeVersions",
        input_schema = schemas.ListRecipeVersionsInput,
        output_schema = schemas.ListRecipeVersionsOutput,
        http_method = "GET",
        http_path = "/recipeVersions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRulesets(input, options)
    return self:invokeOperation(input, {
        name = "ListRulesets",
        input_schema = schemas.ListRulesetsInput,
        output_schema = schemas.ListRulesetsOutput,
        http_method = "GET",
        http_path = "/rulesets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSchedules(input, options)
    return self:invokeOperation(input, {
        name = "ListSchedules",
        input_schema = schemas.ListSchedulesInput,
        output_schema = schemas.ListSchedulesOutput,
        http_method = "GET",
        http_path = "/schedules",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:publishRecipe(input, options)
    return self:invokeOperation(input, {
        name = "PublishRecipe",
        input_schema = schemas.PublishRecipeInput,
        output_schema = schemas.PublishRecipeOutput,
        http_method = "POST",
        http_path = "/recipes/{Name}/publishRecipe",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendProjectSessionAction(input, options)
    return self:invokeOperation(input, {
        name = "SendProjectSessionAction",
        input_schema = schemas.SendProjectSessionActionInput,
        output_schema = schemas.SendProjectSessionActionOutput,
        http_method = "PUT",
        http_path = "/projects/{Name}/sendProjectSessionAction",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startJobRun(input, options)
    return self:invokeOperation(input, {
        name = "StartJobRun",
        input_schema = schemas.StartJobRunInput,
        output_schema = schemas.StartJobRunOutput,
        http_method = "POST",
        http_path = "/jobs/{Name}/startJobRun",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startProjectSession(input, options)
    return self:invokeOperation(input, {
        name = "StartProjectSession",
        input_schema = schemas.StartProjectSessionInput,
        output_schema = schemas.StartProjectSessionOutput,
        http_method = "PUT",
        http_path = "/projects/{Name}/startProjectSession",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopJobRun(input, options)
    return self:invokeOperation(input, {
        name = "StopJobRun",
        input_schema = schemas.StopJobRunInput,
        output_schema = schemas.StopJobRunOutput,
        http_method = "POST",
        http_path = "/jobs/{Name}/jobRun/{RunId}/stopJobRun",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDataset(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataset",
        input_schema = schemas.UpdateDatasetInput,
        output_schema = schemas.UpdateDatasetOutput,
        http_method = "PUT",
        http_path = "/datasets/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProfileJob(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProfileJob",
        input_schema = schemas.UpdateProfileJobInput,
        output_schema = schemas.UpdateProfileJobOutput,
        http_method = "PUT",
        http_path = "/profileJobs/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProject(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProject",
        input_schema = schemas.UpdateProjectInput,
        output_schema = schemas.UpdateProjectOutput,
        http_method = "PUT",
        http_path = "/projects/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRecipe(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRecipe",
        input_schema = schemas.UpdateRecipeInput,
        output_schema = schemas.UpdateRecipeOutput,
        http_method = "PUT",
        http_path = "/recipes/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRecipeJob(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRecipeJob",
        input_schema = schemas.UpdateRecipeJobInput,
        output_schema = schemas.UpdateRecipeJobOutput,
        http_method = "PUT",
        http_path = "/recipeJobs/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRuleset(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRuleset",
        input_schema = schemas.UpdateRulesetInput,
        output_schema = schemas.UpdateRulesetOutput,
        http_method = "PUT",
        http_path = "/rulesets/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSchedule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSchedule",
        input_schema = schemas.UpdateScheduleInput,
        output_schema = schemas.UpdateScheduleOutput,
        http_method = "PUT",
        http_path = "/schedules/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
