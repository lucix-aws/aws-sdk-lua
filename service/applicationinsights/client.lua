local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("applicationinsights.endpoint_rules")
local schemas = require("applicationinsights.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "EC2WindowsBarleyService"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "applicationinsights", signing_region = cfg.region } }
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

function Client:addWorkload(input, options)
    return self:invokeOperation(input, {
        name = "AddWorkload",
        input_schema = schemas.AddWorkloadInput,
        output_schema = schemas.AddWorkloadOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createApplication(input, options)
    return self:invokeOperation(input, {
        name = "CreateApplication",
        input_schema = schemas.CreateApplicationInput,
        output_schema = schemas.CreateApplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createComponent(input, options)
    return self:invokeOperation(input, {
        name = "CreateComponent",
        input_schema = schemas.CreateComponentInput,
        output_schema = schemas.CreateComponentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLogPattern(input, options)
    return self:invokeOperation(input, {
        name = "CreateLogPattern",
        input_schema = schemas.CreateLogPatternInput,
        output_schema = schemas.CreateLogPatternOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplication",
        input_schema = schemas.DeleteApplicationInput,
        output_schema = schemas.DeleteApplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteComponent(input, options)
    return self:invokeOperation(input, {
        name = "DeleteComponent",
        input_schema = schemas.DeleteComponentInput,
        output_schema = schemas.DeleteComponentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLogPattern(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLogPattern",
        input_schema = schemas.DeleteLogPatternInput,
        output_schema = schemas.DeleteLogPatternOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeApplication(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApplication",
        input_schema = schemas.DescribeApplicationInput,
        output_schema = schemas.DescribeApplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeComponent(input, options)
    return self:invokeOperation(input, {
        name = "DescribeComponent",
        input_schema = schemas.DescribeComponentInput,
        output_schema = schemas.DescribeComponentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeComponentConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeComponentConfiguration",
        input_schema = schemas.DescribeComponentConfigurationInput,
        output_schema = schemas.DescribeComponentConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeComponentConfigurationRecommendation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeComponentConfigurationRecommendation",
        input_schema = schemas.DescribeComponentConfigurationRecommendationInput,
        output_schema = schemas.DescribeComponentConfigurationRecommendationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLogPattern(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLogPattern",
        input_schema = schemas.DescribeLogPatternInput,
        output_schema = schemas.DescribeLogPatternOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeObservation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeObservation",
        input_schema = schemas.DescribeObservationInput,
        output_schema = schemas.DescribeObservationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeProblem(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProblem",
        input_schema = schemas.DescribeProblemInput,
        output_schema = schemas.DescribeProblemOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeProblemObservations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProblemObservations",
        input_schema = schemas.DescribeProblemObservationsInput,
        output_schema = schemas.DescribeProblemObservationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeWorkload(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWorkload",
        input_schema = schemas.DescribeWorkloadInput,
        output_schema = schemas.DescribeWorkloadOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApplications(input, options)
    return self:invokeOperation(input, {
        name = "ListApplications",
        input_schema = schemas.ListApplicationsInput,
        output_schema = schemas.ListApplicationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listComponents(input, options)
    return self:invokeOperation(input, {
        name = "ListComponents",
        input_schema = schemas.ListComponentsInput,
        output_schema = schemas.ListComponentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConfigurationHistory(input, options)
    return self:invokeOperation(input, {
        name = "ListConfigurationHistory",
        input_schema = schemas.ListConfigurationHistoryInput,
        output_schema = schemas.ListConfigurationHistoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLogPatterns(input, options)
    return self:invokeOperation(input, {
        name = "ListLogPatterns",
        input_schema = schemas.ListLogPatternsInput,
        output_schema = schemas.ListLogPatternsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLogPatternSets(input, options)
    return self:invokeOperation(input, {
        name = "ListLogPatternSets",
        input_schema = schemas.ListLogPatternSetsInput,
        output_schema = schemas.ListLogPatternSetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProblems(input, options)
    return self:invokeOperation(input, {
        name = "ListProblems",
        input_schema = schemas.ListProblemsInput,
        output_schema = schemas.ListProblemsOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkloads(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkloads",
        input_schema = schemas.ListWorkloadsInput,
        output_schema = schemas.ListWorkloadsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeWorkload(input, options)
    return self:invokeOperation(input, {
        name = "RemoveWorkload",
        input_schema = schemas.RemoveWorkloadInput,
        output_schema = schemas.RemoveWorkloadOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApplication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplication",
        input_schema = schemas.UpdateApplicationInput,
        output_schema = schemas.UpdateApplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateComponent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateComponent",
        input_schema = schemas.UpdateComponentInput,
        output_schema = schemas.UpdateComponentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateComponentConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateComponentConfiguration",
        input_schema = schemas.UpdateComponentConfigurationInput,
        output_schema = schemas.UpdateComponentConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLogPattern(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLogPattern",
        input_schema = schemas.UpdateLogPatternInput,
        output_schema = schemas.UpdateLogPatternOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProblem(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProblem",
        input_schema = schemas.UpdateProblemInput,
        output_schema = schemas.UpdateProblemOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWorkload(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkload",
        input_schema = schemas.UpdateWorkloadInput,
        output_schema = schemas.UpdateWorkloadOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
