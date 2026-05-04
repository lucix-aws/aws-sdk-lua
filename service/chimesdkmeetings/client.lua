local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("chimesdkmeetings.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("chimesdkmeetings.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ChimeMeetingsSDKService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "chime", signing_region = cfg.region } }
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

function Client:batchCreateAttendee(input, options)
    return self:invokeOperation(input, {
        name = "BatchCreateAttendee",
        input_schema = types.BatchCreateAttendeeInput,
        output_schema = types.BatchCreateAttendeeOutput,
        http_method = "POST",
        http_path = "/meetings/{MeetingId}/attendees?operation=batch-create",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchUpdateAttendeeCapabilitiesExcept(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateAttendeeCapabilitiesExcept",
        input_schema = types.BatchUpdateAttendeeCapabilitiesExceptInput,
        output_schema = types.BatchUpdateAttendeeCapabilitiesExceptOutput,
        http_method = "PUT",
        http_path = "/meetings/{MeetingId}/attendees/capabilities?operation=batch-update-except",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAttendee(input, options)
    return self:invokeOperation(input, {
        name = "CreateAttendee",
        input_schema = types.CreateAttendeeInput,
        output_schema = types.CreateAttendeeOutput,
        http_method = "POST",
        http_path = "/meetings/{MeetingId}/attendees",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMeeting(input, options)
    return self:invokeOperation(input, {
        name = "CreateMeeting",
        input_schema = types.CreateMeetingInput,
        output_schema = types.CreateMeetingOutput,
        http_method = "POST",
        http_path = "/meetings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMeetingWithAttendees(input, options)
    return self:invokeOperation(input, {
        name = "CreateMeetingWithAttendees",
        input_schema = types.CreateMeetingWithAttendeesInput,
        output_schema = types.CreateMeetingWithAttendeesOutput,
        http_method = "POST",
        http_path = "/meetings?operation=create-attendees",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAttendee(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAttendee",
        input_schema = types.DeleteAttendeeInput,
        output_schema = types.DeleteAttendeeOutput,
        http_method = "DELETE",
        http_path = "/meetings/{MeetingId}/attendees/{AttendeeId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMeeting(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMeeting",
        input_schema = types.DeleteMeetingInput,
        output_schema = types.DeleteMeetingOutput,
        http_method = "DELETE",
        http_path = "/meetings/{MeetingId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAttendee(input, options)
    return self:invokeOperation(input, {
        name = "GetAttendee",
        input_schema = types.GetAttendeeInput,
        output_schema = types.GetAttendeeOutput,
        http_method = "GET",
        http_path = "/meetings/{MeetingId}/attendees/{AttendeeId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMeeting(input, options)
    return self:invokeOperation(input, {
        name = "GetMeeting",
        input_schema = types.GetMeetingInput,
        output_schema = types.GetMeetingOutput,
        http_method = "GET",
        http_path = "/meetings/{MeetingId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAttendees(input, options)
    return self:invokeOperation(input, {
        name = "ListAttendees",
        input_schema = types.ListAttendeesInput,
        output_schema = types.ListAttendeesOutput,
        http_method = "GET",
        http_path = "/meetings/{MeetingId}/attendees",
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
        http_path = "/tags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startMeetingTranscription(input, options)
    return self:invokeOperation(input, {
        name = "StartMeetingTranscription",
        input_schema = types.StartMeetingTranscriptionInput,
        output_schema = types.StartMeetingTranscriptionOutput,
        http_method = "POST",
        http_path = "/meetings/{MeetingId}/transcription?operation=start",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopMeetingTranscription(input, options)
    return self:invokeOperation(input, {
        name = "StopMeetingTranscription",
        input_schema = types.StopMeetingTranscriptionInput,
        output_schema = types.StopMeetingTranscriptionOutput,
        http_method = "POST",
        http_path = "/meetings/{MeetingId}/transcription?operation=stop",
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
        http_path = "/tags?operation=tag-resource",
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
        http_path = "/tags?operation=untag-resource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAttendeeCapabilities(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAttendeeCapabilities",
        input_schema = types.UpdateAttendeeCapabilitiesInput,
        output_schema = types.UpdateAttendeeCapabilitiesOutput,
        http_method = "PUT",
        http_path = "/meetings/{MeetingId}/attendees/{AttendeeId}/capabilities",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
