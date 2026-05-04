local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("codeguruprofiler.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("codeguruprofiler.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "CodeGuruProfiler"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "codeguru-profiler", signing_region = cfg.region } }
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

function Client:addNotificationChannels(input, options)
    return self:invokeOperation(input, {
        name = "AddNotificationChannels",
        input_schema = types.AddNotificationChannelsInput,
        output_schema = types.AddNotificationChannelsOutput,
        http_method = "POST",
        http_path = "/profilingGroups/{profilingGroupName}/notificationConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetFrameMetricData(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetFrameMetricData",
        input_schema = types.BatchGetFrameMetricDataInput,
        output_schema = types.BatchGetFrameMetricDataOutput,
        http_method = "POST",
        http_path = "/profilingGroups/{profilingGroupName}/frames/-/metrics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:configureAgent(input, options)
    return self:invokeOperation(input, {
        name = "ConfigureAgent",
        input_schema = types.ConfigureAgentInput,
        output_schema = types.ConfigureAgentOutput,
        http_method = "POST",
        http_path = "/profilingGroups/{profilingGroupName}/configureAgent",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProfilingGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateProfilingGroup",
        input_schema = types.CreateProfilingGroupInput,
        output_schema = types.CreateProfilingGroupOutput,
        http_method = "POST",
        http_path = "/profilingGroups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProfilingGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProfilingGroup",
        input_schema = types.DeleteProfilingGroupInput,
        output_schema = types.DeleteProfilingGroupOutput,
        http_method = "DELETE",
        http_path = "/profilingGroups/{profilingGroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeProfilingGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProfilingGroup",
        input_schema = types.DescribeProfilingGroupInput,
        output_schema = types.DescribeProfilingGroupOutput,
        http_method = "GET",
        http_path = "/profilingGroups/{profilingGroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFindingsReportAccountSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetFindingsReportAccountSummary",
        input_schema = types.GetFindingsReportAccountSummaryInput,
        output_schema = types.GetFindingsReportAccountSummaryOutput,
        http_method = "GET",
        http_path = "/internal/findingsReports",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getNotificationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetNotificationConfiguration",
        input_schema = types.GetNotificationConfigurationInput,
        output_schema = types.GetNotificationConfigurationOutput,
        http_method = "GET",
        http_path = "/profilingGroups/{profilingGroupName}/notificationConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetPolicy",
        input_schema = types.GetPolicyInput,
        output_schema = types.GetPolicyOutput,
        http_method = "GET",
        http_path = "/profilingGroups/{profilingGroupName}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetProfile",
        input_schema = types.GetProfileInput,
        output_schema = types.GetProfileOutput,
        http_method = "GET",
        http_path = "/profilingGroups/{profilingGroupName}/profile",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "GetRecommendations",
        input_schema = types.GetRecommendationsInput,
        output_schema = types.GetRecommendationsOutput,
        http_method = "GET",
        http_path = "/internal/profilingGroups/{profilingGroupName}/recommendations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFindingsReports(input, options)
    return self:invokeOperation(input, {
        name = "ListFindingsReports",
        input_schema = types.ListFindingsReportsInput,
        output_schema = types.ListFindingsReportsOutput,
        http_method = "GET",
        http_path = "/internal/profilingGroups/{profilingGroupName}/findingsReports",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProfileTimes(input, options)
    return self:invokeOperation(input, {
        name = "ListProfileTimes",
        input_schema = types.ListProfileTimesInput,
        output_schema = types.ListProfileTimesOutput,
        http_method = "GET",
        http_path = "/profilingGroups/{profilingGroupName}/profileTimes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProfilingGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListProfilingGroups",
        input_schema = types.ListProfilingGroupsInput,
        output_schema = types.ListProfilingGroupsOutput,
        http_method = "GET",
        http_path = "/profilingGroups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:postAgentProfile(input, options)
    return self:invokeOperation(input, {
        name = "PostAgentProfile",
        input_schema = types.PostAgentProfileInput,
        output_schema = types.PostAgentProfileOutput,
        http_method = "POST",
        http_path = "/profilingGroups/{profilingGroupName}/agentProfile",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putPermission(input, options)
    return self:invokeOperation(input, {
        name = "PutPermission",
        input_schema = types.PutPermissionInput,
        output_schema = types.PutPermissionOutput,
        http_method = "PUT",
        http_path = "/profilingGroups/{profilingGroupName}/policy/{actionGroup}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeNotificationChannel(input, options)
    return self:invokeOperation(input, {
        name = "RemoveNotificationChannel",
        input_schema = types.RemoveNotificationChannelInput,
        output_schema = types.RemoveNotificationChannelOutput,
        http_method = "DELETE",
        http_path = "/profilingGroups/{profilingGroupName}/notificationConfiguration/{channelId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removePermission(input, options)
    return self:invokeOperation(input, {
        name = "RemovePermission",
        input_schema = types.RemovePermissionInput,
        output_schema = types.RemovePermissionOutput,
        http_method = "DELETE",
        http_path = "/profilingGroups/{profilingGroupName}/policy/{actionGroup}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:submitFeedback(input, options)
    return self:invokeOperation(input, {
        name = "SubmitFeedback",
        input_schema = types.SubmitFeedbackInput,
        output_schema = types.SubmitFeedbackOutput,
        http_method = "POST",
        http_path = "/internal/profilingGroups/{profilingGroupName}/anomalies/{anomalyInstanceId}/feedback",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProfilingGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProfilingGroup",
        input_schema = types.UpdateProfilingGroupInput,
        output_schema = types.UpdateProfilingGroupOutput,
        http_method = "PUT",
        http_path = "/profilingGroups/{profilingGroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
