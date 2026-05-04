local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("ivsrealtime.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("ivsrealtime.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonInteractiveVideoServiceRealTime"
    cfg.signing_name = "amazoninteractivevideoservicerealtime"
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

function Client:createEncoderConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateEncoderConfiguration",
        input_schema = types.CreateEncoderConfigurationInput,
        output_schema = types.CreateEncoderConfigurationOutput,
        http_method = "POST",
        http_path = "/CreateEncoderConfiguration",
    }, options)
end

function Client:createIngestConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateIngestConfiguration",
        input_schema = types.CreateIngestConfigurationInput,
        output_schema = types.CreateIngestConfigurationOutput,
        http_method = "POST",
        http_path = "/CreateIngestConfiguration",
    }, options)
end

function Client:createParticipantToken(input, options)
    return self:invokeOperation(input, {
        name = "CreateParticipantToken",
        input_schema = types.CreateParticipantTokenInput,
        output_schema = types.CreateParticipantTokenOutput,
        http_method = "POST",
        http_path = "/CreateParticipantToken",
    }, options)
end

function Client:createStage(input, options)
    return self:invokeOperation(input, {
        name = "CreateStage",
        input_schema = types.CreateStageInput,
        output_schema = types.CreateStageOutput,
        http_method = "POST",
        http_path = "/CreateStage",
    }, options)
end

function Client:createStorageConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateStorageConfiguration",
        input_schema = types.CreateStorageConfigurationInput,
        output_schema = types.CreateStorageConfigurationOutput,
        http_method = "POST",
        http_path = "/CreateStorageConfiguration",
    }, options)
end

function Client:deleteEncoderConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEncoderConfiguration",
        input_schema = types.DeleteEncoderConfigurationInput,
        output_schema = types.DeleteEncoderConfigurationOutput,
        http_method = "POST",
        http_path = "/DeleteEncoderConfiguration",
    }, options)
end

function Client:deleteIngestConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIngestConfiguration",
        input_schema = types.DeleteIngestConfigurationInput,
        output_schema = types.DeleteIngestConfigurationOutput,
        http_method = "POST",
        http_path = "/DeleteIngestConfiguration",
    }, options)
end

function Client:deletePublicKey(input, options)
    return self:invokeOperation(input, {
        name = "DeletePublicKey",
        input_schema = types.DeletePublicKeyInput,
        output_schema = types.DeletePublicKeyOutput,
        http_method = "POST",
        http_path = "/DeletePublicKey",
    }, options)
end

function Client:deleteStage(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStage",
        input_schema = types.DeleteStageInput,
        output_schema = types.DeleteStageOutput,
        http_method = "POST",
        http_path = "/DeleteStage",
    }, options)
end

function Client:deleteStorageConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStorageConfiguration",
        input_schema = types.DeleteStorageConfigurationInput,
        output_schema = types.DeleteStorageConfigurationOutput,
        http_method = "POST",
        http_path = "/DeleteStorageConfiguration",
    }, options)
end

function Client:disconnectParticipant(input, options)
    return self:invokeOperation(input, {
        name = "DisconnectParticipant",
        input_schema = types.DisconnectParticipantInput,
        output_schema = types.DisconnectParticipantOutput,
        http_method = "POST",
        http_path = "/DisconnectParticipant",
    }, options)
end

function Client:getComposition(input, options)
    return self:invokeOperation(input, {
        name = "GetComposition",
        input_schema = types.GetCompositionInput,
        output_schema = types.GetCompositionOutput,
        http_method = "POST",
        http_path = "/GetComposition",
    }, options)
end

function Client:getEncoderConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetEncoderConfiguration",
        input_schema = types.GetEncoderConfigurationInput,
        output_schema = types.GetEncoderConfigurationOutput,
        http_method = "POST",
        http_path = "/GetEncoderConfiguration",
    }, options)
end

function Client:getIngestConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetIngestConfiguration",
        input_schema = types.GetIngestConfigurationInput,
        output_schema = types.GetIngestConfigurationOutput,
        http_method = "POST",
        http_path = "/GetIngestConfiguration",
    }, options)
end

function Client:getParticipant(input, options)
    return self:invokeOperation(input, {
        name = "GetParticipant",
        input_schema = types.GetParticipantInput,
        output_schema = types.GetParticipantOutput,
        http_method = "POST",
        http_path = "/GetParticipant",
    }, options)
end

function Client:getPublicKey(input, options)
    return self:invokeOperation(input, {
        name = "GetPublicKey",
        input_schema = types.GetPublicKeyInput,
        output_schema = types.GetPublicKeyOutput,
        http_method = "POST",
        http_path = "/GetPublicKey",
    }, options)
end

function Client:getStage(input, options)
    return self:invokeOperation(input, {
        name = "GetStage",
        input_schema = types.GetStageInput,
        output_schema = types.GetStageOutput,
        http_method = "POST",
        http_path = "/GetStage",
    }, options)
end

function Client:getStageSession(input, options)
    return self:invokeOperation(input, {
        name = "GetStageSession",
        input_schema = types.GetStageSessionInput,
        output_schema = types.GetStageSessionOutput,
        http_method = "POST",
        http_path = "/GetStageSession",
    }, options)
end

function Client:getStorageConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetStorageConfiguration",
        input_schema = types.GetStorageConfigurationInput,
        output_schema = types.GetStorageConfigurationOutput,
        http_method = "POST",
        http_path = "/GetStorageConfiguration",
    }, options)
end

function Client:importPublicKey(input, options)
    return self:invokeOperation(input, {
        name = "ImportPublicKey",
        input_schema = types.ImportPublicKeyInput,
        output_schema = types.ImportPublicKeyOutput,
        http_method = "POST",
        http_path = "/ImportPublicKey",
    }, options)
end

function Client:listCompositions(input, options)
    return self:invokeOperation(input, {
        name = "ListCompositions",
        input_schema = types.ListCompositionsInput,
        output_schema = types.ListCompositionsOutput,
        http_method = "POST",
        http_path = "/ListCompositions",
    }, options)
end

function Client:listEncoderConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListEncoderConfigurations",
        input_schema = types.ListEncoderConfigurationsInput,
        output_schema = types.ListEncoderConfigurationsOutput,
        http_method = "POST",
        http_path = "/ListEncoderConfigurations",
    }, options)
end

function Client:listIngestConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListIngestConfigurations",
        input_schema = types.ListIngestConfigurationsInput,
        output_schema = types.ListIngestConfigurationsOutput,
        http_method = "POST",
        http_path = "/ListIngestConfigurations",
    }, options)
end

function Client:listParticipantEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListParticipantEvents",
        input_schema = types.ListParticipantEventsInput,
        output_schema = types.ListParticipantEventsOutput,
        http_method = "POST",
        http_path = "/ListParticipantEvents",
    }, options)
end

function Client:listParticipantReplicas(input, options)
    return self:invokeOperation(input, {
        name = "ListParticipantReplicas",
        input_schema = types.ListParticipantReplicasInput,
        output_schema = types.ListParticipantReplicasOutput,
        http_method = "POST",
        http_path = "/ListParticipantReplicas",
    }, options)
end

function Client:listParticipants(input, options)
    return self:invokeOperation(input, {
        name = "ListParticipants",
        input_schema = types.ListParticipantsInput,
        output_schema = types.ListParticipantsOutput,
        http_method = "POST",
        http_path = "/ListParticipants",
    }, options)
end

function Client:listPublicKeys(input, options)
    return self:invokeOperation(input, {
        name = "ListPublicKeys",
        input_schema = types.ListPublicKeysInput,
        output_schema = types.ListPublicKeysOutput,
        http_method = "POST",
        http_path = "/ListPublicKeys",
    }, options)
end

function Client:listStages(input, options)
    return self:invokeOperation(input, {
        name = "ListStages",
        input_schema = types.ListStagesInput,
        output_schema = types.ListStagesOutput,
        http_method = "POST",
        http_path = "/ListStages",
    }, options)
end

function Client:listStageSessions(input, options)
    return self:invokeOperation(input, {
        name = "ListStageSessions",
        input_schema = types.ListStageSessionsInput,
        output_schema = types.ListStageSessionsOutput,
        http_method = "POST",
        http_path = "/ListStageSessions",
    }, options)
end

function Client:listStorageConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListStorageConfigurations",
        input_schema = types.ListStorageConfigurationsInput,
        output_schema = types.ListStorageConfigurationsOutput,
        http_method = "POST",
        http_path = "/ListStorageConfigurations",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:startComposition(input, options)
    return self:invokeOperation(input, {
        name = "StartComposition",
        input_schema = types.StartCompositionInput,
        output_schema = types.StartCompositionOutput,
        http_method = "POST",
        http_path = "/StartComposition",
    }, options)
end

function Client:startParticipantReplication(input, options)
    return self:invokeOperation(input, {
        name = "StartParticipantReplication",
        input_schema = types.StartParticipantReplicationInput,
        output_schema = types.StartParticipantReplicationOutput,
        http_method = "POST",
        http_path = "/StartParticipantReplication",
    }, options)
end

function Client:stopComposition(input, options)
    return self:invokeOperation(input, {
        name = "StopComposition",
        input_schema = types.StopCompositionInput,
        output_schema = types.StopCompositionOutput,
        http_method = "POST",
        http_path = "/StopComposition",
    }, options)
end

function Client:stopParticipantReplication(input, options)
    return self:invokeOperation(input, {
        name = "StopParticipantReplication",
        input_schema = types.StopParticipantReplicationInput,
        output_schema = types.StopParticipantReplicationOutput,
        http_method = "POST",
        http_path = "/StopParticipantReplication",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:updateIngestConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIngestConfiguration",
        input_schema = types.UpdateIngestConfigurationInput,
        output_schema = types.UpdateIngestConfigurationOutput,
        http_method = "POST",
        http_path = "/UpdateIngestConfiguration",
    }, options)
end

function Client:updateStage(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStage",
        input_schema = types.UpdateStageInput,
        output_schema = types.UpdateStageOutput,
        http_method = "POST",
        http_path = "/UpdateStage",
    }, options)
end

return M
