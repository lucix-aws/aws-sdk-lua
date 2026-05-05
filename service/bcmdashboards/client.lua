local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("bcmdashboards.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("bcmdashboards.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSBCMDashboardsService"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "bcm-dashboards", signing_region = cfg.region } }
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

function Client:createDashboard(input, options)
    return self:invokeOperation(input, {
        name = "CreateDashboard",
        input_schema = types.CreateDashboardInput,
        output_schema = types.CreateDashboardOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createScheduledReport(input, options)
    return self:invokeOperation(input, {
        name = "CreateScheduledReport",
        input_schema = types.CreateScheduledReportInput,
        output_schema = types.CreateScheduledReportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDashboard(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDashboard",
        input_schema = types.DeleteDashboardInput,
        output_schema = types.DeleteDashboardOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteScheduledReport(input, options)
    return self:invokeOperation(input, {
        name = "DeleteScheduledReport",
        input_schema = types.DeleteScheduledReportInput,
        output_schema = types.DeleteScheduledReportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:executeScheduledReport(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteScheduledReport",
        input_schema = types.ExecuteScheduledReportInput,
        output_schema = types.ExecuteScheduledReportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDashboard(input, options)
    return self:invokeOperation(input, {
        name = "GetDashboard",
        input_schema = types.GetDashboardInput,
        output_schema = types.GetDashboardOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = types.GetResourcePolicyInput,
        output_schema = types.GetResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getScheduledReport(input, options)
    return self:invokeOperation(input, {
        name = "GetScheduledReport",
        input_schema = types.GetScheduledReportInput,
        output_schema = types.GetScheduledReportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDashboards(input, options)
    return self:invokeOperation(input, {
        name = "ListDashboards",
        input_schema = types.ListDashboardsInput,
        output_schema = types.ListDashboardsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listScheduledReports(input, options)
    return self:invokeOperation(input, {
        name = "ListScheduledReports",
        input_schema = types.ListScheduledReportsInput,
        output_schema = types.ListScheduledReportsOutput,
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
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
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
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
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
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDashboard(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDashboard",
        input_schema = types.UpdateDashboardInput,
        output_schema = types.UpdateDashboardOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateScheduledReport(input, options)
    return self:invokeOperation(input, {
        name = "UpdateScheduledReport",
        input_schema = types.UpdateScheduledReportInput,
        output_schema = types.UpdateScheduledReportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
