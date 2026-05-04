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
    cfg.signing_name = "chimemeetingssdkservice"
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

function Client:batchCreateAttendee(input, options)
    return self:invokeOperation(input, {
        name = "BatchCreateAttendee",
        input_schema = types.BatchCreateAttendeeInput,
        output_schema = types.BatchCreateAttendeeOutput,
        http_method = "POST",
        http_path = "/meetings/{MeetingId}/attendees?operation=batch-create",
    }, options)
end

function Client:batchUpdateAttendeeCapabilitiesExcept(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateAttendeeCapabilitiesExcept",
        input_schema = types.BatchUpdateAttendeeCapabilitiesExceptInput,
        output_schema = types.BatchUpdateAttendeeCapabilitiesExceptOutput,
        http_method = "PUT",
        http_path = "/meetings/{MeetingId}/attendees/capabilities?operation=batch-update-except",
    }, options)
end

function Client:createAttendee(input, options)
    return self:invokeOperation(input, {
        name = "CreateAttendee",
        input_schema = types.CreateAttendeeInput,
        output_schema = types.CreateAttendeeOutput,
        http_method = "POST",
        http_path = "/meetings/{MeetingId}/attendees",
    }, options)
end

function Client:createMeeting(input, options)
    return self:invokeOperation(input, {
        name = "CreateMeeting",
        input_schema = types.CreateMeetingInput,
        output_schema = types.CreateMeetingOutput,
        http_method = "POST",
        http_path = "/meetings",
    }, options)
end

function Client:createMeetingWithAttendees(input, options)
    return self:invokeOperation(input, {
        name = "CreateMeetingWithAttendees",
        input_schema = types.CreateMeetingWithAttendeesInput,
        output_schema = types.CreateMeetingWithAttendeesOutput,
        http_method = "POST",
        http_path = "/meetings?operation=create-attendees",
    }, options)
end

function Client:deleteAttendee(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAttendee",
        input_schema = types.DeleteAttendeeInput,
        output_schema = types.DeleteAttendeeOutput,
        http_method = "DELETE",
        http_path = "/meetings/{MeetingId}/attendees/{AttendeeId}",
    }, options)
end

function Client:deleteMeeting(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMeeting",
        input_schema = types.DeleteMeetingInput,
        output_schema = types.DeleteMeetingOutput,
        http_method = "DELETE",
        http_path = "/meetings/{MeetingId}",
    }, options)
end

function Client:getAttendee(input, options)
    return self:invokeOperation(input, {
        name = "GetAttendee",
        input_schema = types.GetAttendeeInput,
        output_schema = types.GetAttendeeOutput,
        http_method = "GET",
        http_path = "/meetings/{MeetingId}/attendees/{AttendeeId}",
    }, options)
end

function Client:getMeeting(input, options)
    return self:invokeOperation(input, {
        name = "GetMeeting",
        input_schema = types.GetMeetingInput,
        output_schema = types.GetMeetingOutput,
        http_method = "GET",
        http_path = "/meetings/{MeetingId}",
    }, options)
end

function Client:listAttendees(input, options)
    return self:invokeOperation(input, {
        name = "ListAttendees",
        input_schema = types.ListAttendeesInput,
        output_schema = types.ListAttendeesOutput,
        http_method = "GET",
        http_path = "/meetings/{MeetingId}/attendees",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags",
    }, options)
end

function Client:startMeetingTranscription(input, options)
    return self:invokeOperation(input, {
        name = "StartMeetingTranscription",
        input_schema = types.StartMeetingTranscriptionInput,
        output_schema = types.StartMeetingTranscriptionOutput,
        http_method = "POST",
        http_path = "/meetings/{MeetingId}/transcription?operation=start",
    }, options)
end

function Client:stopMeetingTranscription(input, options)
    return self:invokeOperation(input, {
        name = "StopMeetingTranscription",
        input_schema = types.StopMeetingTranscriptionInput,
        output_schema = types.StopMeetingTranscriptionOutput,
        http_method = "POST",
        http_path = "/meetings/{MeetingId}/transcription?operation=stop",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags?operation=tag-resource",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/tags?operation=untag-resource",
    }, options)
end

function Client:updateAttendeeCapabilities(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAttendeeCapabilities",
        input_schema = types.UpdateAttendeeCapabilitiesInput,
        output_schema = types.UpdateAttendeeCapabilitiesOutput,
        http_method = "PUT",
        http_path = "/meetings/{MeetingId}/attendees/{AttendeeId}/capabilities",
    }, options)
end

return M
