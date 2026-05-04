local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("applicationinsights.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("applicationinsights.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "EC2WindowsBarleyService"
    cfg.signing_name = "applicationinsights"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
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

function Client:addWorkload(input, options)
    return self:invokeOperation(input, {
        name = "AddWorkload",
        input_schema = types.AddWorkloadInput,
        output_schema = types.AddWorkloadOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createApplication(input, options)
    return self:invokeOperation(input, {
        name = "CreateApplication",
        input_schema = types.CreateApplicationInput,
        output_schema = types.CreateApplicationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createComponent(input, options)
    return self:invokeOperation(input, {
        name = "CreateComponent",
        input_schema = types.CreateComponentInput,
        output_schema = types.CreateComponentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createLogPattern(input, options)
    return self:invokeOperation(input, {
        name = "CreateLogPattern",
        input_schema = types.CreateLogPatternInput,
        output_schema = types.CreateLogPatternOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteApplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplication",
        input_schema = types.DeleteApplicationInput,
        output_schema = types.DeleteApplicationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteComponent(input, options)
    return self:invokeOperation(input, {
        name = "DeleteComponent",
        input_schema = types.DeleteComponentInput,
        output_schema = types.DeleteComponentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteLogPattern(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLogPattern",
        input_schema = types.DeleteLogPatternInput,
        output_schema = types.DeleteLogPatternOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeApplication(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApplication",
        input_schema = types.DescribeApplicationInput,
        output_schema = types.DescribeApplicationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeComponent(input, options)
    return self:invokeOperation(input, {
        name = "DescribeComponent",
        input_schema = types.DescribeComponentInput,
        output_schema = types.DescribeComponentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeComponentConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeComponentConfiguration",
        input_schema = types.DescribeComponentConfigurationInput,
        output_schema = types.DescribeComponentConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeComponentConfigurationRecommendation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeComponentConfigurationRecommendation",
        input_schema = types.DescribeComponentConfigurationRecommendationInput,
        output_schema = types.DescribeComponentConfigurationRecommendationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeLogPattern(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLogPattern",
        input_schema = types.DescribeLogPatternInput,
        output_schema = types.DescribeLogPatternOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeObservation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeObservation",
        input_schema = types.DescribeObservationInput,
        output_schema = types.DescribeObservationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeProblem(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProblem",
        input_schema = types.DescribeProblemInput,
        output_schema = types.DescribeProblemOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeProblemObservations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProblemObservations",
        input_schema = types.DescribeProblemObservationsInput,
        output_schema = types.DescribeProblemObservationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeWorkload(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWorkload",
        input_schema = types.DescribeWorkloadInput,
        output_schema = types.DescribeWorkloadOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listApplications(input, options)
    return self:invokeOperation(input, {
        name = "ListApplications",
        input_schema = types.ListApplicationsInput,
        output_schema = types.ListApplicationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listComponents(input, options)
    return self:invokeOperation(input, {
        name = "ListComponents",
        input_schema = types.ListComponentsInput,
        output_schema = types.ListComponentsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listConfigurationHistory(input, options)
    return self:invokeOperation(input, {
        name = "ListConfigurationHistory",
        input_schema = types.ListConfigurationHistoryInput,
        output_schema = types.ListConfigurationHistoryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listLogPatterns(input, options)
    return self:invokeOperation(input, {
        name = "ListLogPatterns",
        input_schema = types.ListLogPatternsInput,
        output_schema = types.ListLogPatternsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listLogPatternSets(input, options)
    return self:invokeOperation(input, {
        name = "ListLogPatternSets",
        input_schema = types.ListLogPatternSetsInput,
        output_schema = types.ListLogPatternSetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listProblems(input, options)
    return self:invokeOperation(input, {
        name = "ListProblems",
        input_schema = types.ListProblemsInput,
        output_schema = types.ListProblemsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listWorkloads(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkloads",
        input_schema = types.ListWorkloadsInput,
        output_schema = types.ListWorkloadsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:removeWorkload(input, options)
    return self:invokeOperation(input, {
        name = "RemoveWorkload",
        input_schema = types.RemoveWorkloadInput,
        output_schema = types.RemoveWorkloadOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateApplication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplication",
        input_schema = types.UpdateApplicationInput,
        output_schema = types.UpdateApplicationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateComponent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateComponent",
        input_schema = types.UpdateComponentInput,
        output_schema = types.UpdateComponentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateComponentConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateComponentConfiguration",
        input_schema = types.UpdateComponentConfigurationInput,
        output_schema = types.UpdateComponentConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateLogPattern(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLogPattern",
        input_schema = types.UpdateLogPatternInput,
        output_schema = types.UpdateLogPatternOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateProblem(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProblem",
        input_schema = types.UpdateProblemInput,
        output_schema = types.UpdateProblemOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateWorkload(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkload",
        input_schema = types.UpdateWorkloadInput,
        output_schema = types.UpdateWorkloadOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
