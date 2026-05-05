local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("gameliftstreams.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("gameliftstreams.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "GameLiftStreams"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "gameliftstreams", signing_region = cfg.region } }
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

function Client:addStreamGroupLocations(input, options)
    return self:invokeOperation(input, {
        name = "AddStreamGroupLocations",
        input_schema = schemas.AddStreamGroupLocationsInput,
        output_schema = schemas.AddStreamGroupLocationsOutput,
        http_method = "POST",
        http_path = "/streamgroups/{Identifier}/locations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateApplications(input, options)
    return self:invokeOperation(input, {
        name = "AssociateApplications",
        input_schema = schemas.AssociateApplicationsInput,
        output_schema = schemas.AssociateApplicationsOutput,
        http_method = "POST",
        http_path = "/streamgroups/{Identifier}/associations",
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
        http_path = "/applications",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createStreamGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateStreamGroup",
        input_schema = schemas.CreateStreamGroupInput,
        output_schema = schemas.CreateStreamGroupOutput,
        http_method = "POST",
        http_path = "/streamgroups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createStreamSessionConnection(input, options)
    return self:invokeOperation(input, {
        name = "CreateStreamSessionConnection",
        input_schema = schemas.CreateStreamSessionConnectionInput,
        output_schema = schemas.CreateStreamSessionConnectionOutput,
        http_method = "POST",
        http_path = "/streamgroups/{Identifier}/streamsessions/{StreamSessionIdentifier}/connections",
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
        http_method = "DELETE",
        http_path = "/applications/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteStreamGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStreamGroup",
        input_schema = schemas.DeleteStreamGroupInput,
        output_schema = schemas.DeleteStreamGroupOutput,
        http_method = "DELETE",
        http_path = "/streamgroups/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateApplications(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateApplications",
        input_schema = schemas.DisassociateApplicationsInput,
        output_schema = schemas.DisassociateApplicationsOutput,
        http_method = "POST",
        http_path = "/streamgroups/{Identifier}/disassociations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:exportStreamSessionFiles(input, options)
    return self:invokeOperation(input, {
        name = "ExportStreamSessionFiles",
        input_schema = schemas.ExportStreamSessionFilesInput,
        output_schema = schemas.ExportStreamSessionFilesOutput,
        http_method = "PUT",
        http_path = "/streamgroups/{Identifier}/streamsessions/{StreamSessionIdentifier}/exportfiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApplication(input, options)
    return self:invokeOperation(input, {
        name = "GetApplication",
        input_schema = schemas.GetApplicationInput,
        output_schema = schemas.GetApplicationOutput,
        http_method = "GET",
        http_path = "/applications/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getStreamGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetStreamGroup",
        input_schema = schemas.GetStreamGroupInput,
        output_schema = schemas.GetStreamGroupOutput,
        http_method = "GET",
        http_path = "/streamgroups/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getStreamSession(input, options)
    return self:invokeOperation(input, {
        name = "GetStreamSession",
        input_schema = schemas.GetStreamSessionInput,
        output_schema = schemas.GetStreamSessionOutput,
        http_method = "GET",
        http_path = "/streamgroups/{Identifier}/streamsessions/{StreamSessionIdentifier}",
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
        http_method = "GET",
        http_path = "/applications",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStreamGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListStreamGroups",
        input_schema = schemas.ListStreamGroupsInput,
        output_schema = schemas.ListStreamGroupsOutput,
        http_method = "GET",
        http_path = "/streamgroups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStreamSessions(input, options)
    return self:invokeOperation(input, {
        name = "ListStreamSessions",
        input_schema = schemas.ListStreamSessionsInput,
        output_schema = schemas.ListStreamSessionsOutput,
        http_method = "GET",
        http_path = "/streamgroups/{Identifier}/streamsessions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStreamSessionsByAccount(input, options)
    return self:invokeOperation(input, {
        name = "ListStreamSessionsByAccount",
        input_schema = schemas.ListStreamSessionsByAccountInput,
        output_schema = schemas.ListStreamSessionsByAccountOutput,
        http_method = "GET",
        http_path = "/streamsessions",
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

function Client:removeStreamGroupLocations(input, options)
    return self:invokeOperation(input, {
        name = "RemoveStreamGroupLocations",
        input_schema = schemas.RemoveStreamGroupLocationsInput,
        output_schema = schemas.RemoveStreamGroupLocationsOutput,
        http_method = "DELETE",
        http_path = "/streamgroups/{Identifier}/locations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startStreamSession(input, options)
    return self:invokeOperation(input, {
        name = "StartStreamSession",
        input_schema = schemas.StartStreamSessionInput,
        output_schema = schemas.StartStreamSessionOutput,
        http_method = "POST",
        http_path = "/streamgroups/{Identifier}/streamsessions",
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

function Client:terminateStreamSession(input, options)
    return self:invokeOperation(input, {
        name = "TerminateStreamSession",
        input_schema = schemas.TerminateStreamSessionInput,
        output_schema = schemas.TerminateStreamSessionOutput,
        http_method = "DELETE",
        http_path = "/streamgroups/{Identifier}/streamsessions/{StreamSessionIdentifier}",
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

function Client:updateApplication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplication",
        input_schema = schemas.UpdateApplicationInput,
        output_schema = schemas.UpdateApplicationOutput,
        http_method = "PATCH",
        http_path = "/applications/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateStreamGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStreamGroup",
        input_schema = schemas.UpdateStreamGroupInput,
        output_schema = schemas.UpdateStreamGroupOutput,
        http_method = "PATCH",
        http_path = "/streamgroups/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
