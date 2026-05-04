local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("gameliftstreams.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("gameliftstreams.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "GameLiftStreams"
    cfg.signing_name = "gameliftstreams"
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

function Client:addStreamGroupLocations(input, options)
    return self:invokeOperation(input, {
        name = "AddStreamGroupLocations",
        input_schema = types.AddStreamGroupLocationsInput,
        output_schema = types.AddStreamGroupLocationsOutput,
        http_method = "POST",
        http_path = "/streamgroups/{Identifier}/locations",
    }, options)
end

function Client:associateApplications(input, options)
    return self:invokeOperation(input, {
        name = "AssociateApplications",
        input_schema = types.AssociateApplicationsInput,
        output_schema = types.AssociateApplicationsOutput,
        http_method = "POST",
        http_path = "/streamgroups/{Identifier}/associations",
    }, options)
end

function Client:createApplication(input, options)
    return self:invokeOperation(input, {
        name = "CreateApplication",
        input_schema = types.CreateApplicationInput,
        output_schema = types.CreateApplicationOutput,
        http_method = "POST",
        http_path = "/applications",
    }, options)
end

function Client:createStreamGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateStreamGroup",
        input_schema = types.CreateStreamGroupInput,
        output_schema = types.CreateStreamGroupOutput,
        http_method = "POST",
        http_path = "/streamgroups",
    }, options)
end

function Client:createStreamSessionConnection(input, options)
    return self:invokeOperation(input, {
        name = "CreateStreamSessionConnection",
        input_schema = types.CreateStreamSessionConnectionInput,
        output_schema = types.CreateStreamSessionConnectionOutput,
        http_method = "POST",
        http_path = "/streamgroups/{Identifier}/streamsessions/{StreamSessionIdentifier}/connections",
    }, options)
end

function Client:deleteApplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplication",
        input_schema = types.DeleteApplicationInput,
        output_schema = types.DeleteApplicationOutput,
        http_method = "DELETE",
        http_path = "/applications/{Identifier}",
    }, options)
end

function Client:deleteStreamGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStreamGroup",
        input_schema = types.DeleteStreamGroupInput,
        output_schema = types.DeleteStreamGroupOutput,
        http_method = "DELETE",
        http_path = "/streamgroups/{Identifier}",
    }, options)
end

function Client:disassociateApplications(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateApplications",
        input_schema = types.DisassociateApplicationsInput,
        output_schema = types.DisassociateApplicationsOutput,
        http_method = "POST",
        http_path = "/streamgroups/{Identifier}/disassociations",
    }, options)
end

function Client:exportStreamSessionFiles(input, options)
    return self:invokeOperation(input, {
        name = "ExportStreamSessionFiles",
        input_schema = types.ExportStreamSessionFilesInput,
        output_schema = types.ExportStreamSessionFilesOutput,
        http_method = "PUT",
        http_path = "/streamgroups/{Identifier}/streamsessions/{StreamSessionIdentifier}/exportfiles",
    }, options)
end

function Client:getApplication(input, options)
    return self:invokeOperation(input, {
        name = "GetApplication",
        input_schema = types.GetApplicationInput,
        output_schema = types.GetApplicationOutput,
        http_method = "GET",
        http_path = "/applications/{Identifier}",
    }, options)
end

function Client:getStreamGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetStreamGroup",
        input_schema = types.GetStreamGroupInput,
        output_schema = types.GetStreamGroupOutput,
        http_method = "GET",
        http_path = "/streamgroups/{Identifier}",
    }, options)
end

function Client:getStreamSession(input, options)
    return self:invokeOperation(input, {
        name = "GetStreamSession",
        input_schema = types.GetStreamSessionInput,
        output_schema = types.GetStreamSessionOutput,
        http_method = "GET",
        http_path = "/streamgroups/{Identifier}/streamsessions/{StreamSessionIdentifier}",
    }, options)
end

function Client:listApplications(input, options)
    return self:invokeOperation(input, {
        name = "ListApplications",
        input_schema = types.ListApplicationsInput,
        output_schema = types.ListApplicationsOutput,
        http_method = "GET",
        http_path = "/applications",
    }, options)
end

function Client:listStreamGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListStreamGroups",
        input_schema = types.ListStreamGroupsInput,
        output_schema = types.ListStreamGroupsOutput,
        http_method = "GET",
        http_path = "/streamgroups",
    }, options)
end

function Client:listStreamSessions(input, options)
    return self:invokeOperation(input, {
        name = "ListStreamSessions",
        input_schema = types.ListStreamSessionsInput,
        output_schema = types.ListStreamSessionsOutput,
        http_method = "GET",
        http_path = "/streamgroups/{Identifier}/streamsessions",
    }, options)
end

function Client:listStreamSessionsByAccount(input, options)
    return self:invokeOperation(input, {
        name = "ListStreamSessionsByAccount",
        input_schema = types.ListStreamSessionsByAccountInput,
        output_schema = types.ListStreamSessionsByAccountOutput,
        http_method = "GET",
        http_path = "/streamsessions",
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

function Client:removeStreamGroupLocations(input, options)
    return self:invokeOperation(input, {
        name = "RemoveStreamGroupLocations",
        input_schema = types.RemoveStreamGroupLocationsInput,
        output_schema = types.RemoveStreamGroupLocationsOutput,
        http_method = "DELETE",
        http_path = "/streamgroups/{Identifier}/locations",
    }, options)
end

function Client:startStreamSession(input, options)
    return self:invokeOperation(input, {
        name = "StartStreamSession",
        input_schema = types.StartStreamSessionInput,
        output_schema = types.StartStreamSessionOutput,
        http_method = "POST",
        http_path = "/streamgroups/{Identifier}/streamsessions",
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

function Client:terminateStreamSession(input, options)
    return self:invokeOperation(input, {
        name = "TerminateStreamSession",
        input_schema = types.TerminateStreamSessionInput,
        output_schema = types.TerminateStreamSessionOutput,
        http_method = "DELETE",
        http_path = "/streamgroups/{Identifier}/streamsessions/{StreamSessionIdentifier}",
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

function Client:updateApplication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplication",
        input_schema = types.UpdateApplicationInput,
        output_schema = types.UpdateApplicationOutput,
        http_method = "PATCH",
        http_path = "/applications/{Identifier}",
    }, options)
end

function Client:updateStreamGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStreamGroup",
        input_schema = types.UpdateStreamGroupInput,
        output_schema = types.UpdateStreamGroupOutput,
        http_method = "PATCH",
        http_path = "/streamgroups/{Identifier}",
    }, options)
end

return M
