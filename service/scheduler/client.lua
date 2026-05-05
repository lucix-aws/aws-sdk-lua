local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("scheduler.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("scheduler.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSChronosService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "scheduler", signing_region = cfg.region } }
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

function Client:createSchedule(input, options)
    return self:invokeOperation(input, {
        name = "CreateSchedule",
        input_schema = schemas.CreateScheduleInput,
        output_schema = schemas.CreateScheduleOutput,
        http_method = "POST",
        http_path = "/schedules/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createScheduleGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateScheduleGroup",
        input_schema = schemas.CreateScheduleGroupInput,
        output_schema = schemas.CreateScheduleGroupOutput,
        http_method = "POST",
        http_path = "/schedule-groups/{Name}",
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

function Client:deleteScheduleGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteScheduleGroup",
        input_schema = schemas.DeleteScheduleGroupInput,
        output_schema = schemas.DeleteScheduleGroupOutput,
        http_method = "DELETE",
        http_path = "/schedule-groups/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSchedule(input, options)
    return self:invokeOperation(input, {
        name = "GetSchedule",
        input_schema = schemas.GetScheduleInput,
        output_schema = schemas.GetScheduleOutput,
        http_method = "GET",
        http_path = "/schedules/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getScheduleGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetScheduleGroup",
        input_schema = schemas.GetScheduleGroupInput,
        output_schema = schemas.GetScheduleGroupOutput,
        http_method = "GET",
        http_path = "/schedule-groups/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listScheduleGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListScheduleGroups",
        input_schema = schemas.ListScheduleGroupsInput,
        output_schema = schemas.ListScheduleGroupsOutput,
        http_method = "GET",
        http_path = "/schedule-groups",
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
