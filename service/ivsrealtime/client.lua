local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("ivsrealtime.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("ivsrealtime.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonInteractiveVideoServiceRealTime"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ivs", signing_region = cfg.region } }
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

function Client:createEncoderConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateEncoderConfiguration",
        input_schema = schemas.CreateEncoderConfigurationInput,
        output_schema = schemas.CreateEncoderConfigurationOutput,
        http_method = "POST",
        http_path = "/CreateEncoderConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIngestConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateIngestConfiguration",
        input_schema = schemas.CreateIngestConfigurationInput,
        output_schema = schemas.CreateIngestConfigurationOutput,
        http_method = "POST",
        http_path = "/CreateIngestConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createParticipantToken(input, options)
    return self:invokeOperation(input, {
        name = "CreateParticipantToken",
        input_schema = schemas.CreateParticipantTokenInput,
        output_schema = schemas.CreateParticipantTokenOutput,
        http_method = "POST",
        http_path = "/CreateParticipantToken",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createStage(input, options)
    return self:invokeOperation(input, {
        name = "CreateStage",
        input_schema = schemas.CreateStageInput,
        output_schema = schemas.CreateStageOutput,
        http_method = "POST",
        http_path = "/CreateStage",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createStorageConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateStorageConfiguration",
        input_schema = schemas.CreateStorageConfigurationInput,
        output_schema = schemas.CreateStorageConfigurationOutput,
        http_method = "POST",
        http_path = "/CreateStorageConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEncoderConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEncoderConfiguration",
        input_schema = schemas.DeleteEncoderConfigurationInput,
        output_schema = schemas.DeleteEncoderConfigurationOutput,
        http_method = "POST",
        http_path = "/DeleteEncoderConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIngestConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIngestConfiguration",
        input_schema = schemas.DeleteIngestConfigurationInput,
        output_schema = schemas.DeleteIngestConfigurationOutput,
        http_method = "POST",
        http_path = "/DeleteIngestConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePublicKey(input, options)
    return self:invokeOperation(input, {
        name = "DeletePublicKey",
        input_schema = schemas.DeletePublicKeyInput,
        output_schema = schemas.DeletePublicKeyOutput,
        http_method = "POST",
        http_path = "/DeletePublicKey",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteStage(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStage",
        input_schema = schemas.DeleteStageInput,
        output_schema = schemas.DeleteStageOutput,
        http_method = "POST",
        http_path = "/DeleteStage",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteStorageConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStorageConfiguration",
        input_schema = schemas.DeleteStorageConfigurationInput,
        output_schema = schemas.DeleteStorageConfigurationOutput,
        http_method = "POST",
        http_path = "/DeleteStorageConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disconnectParticipant(input, options)
    return self:invokeOperation(input, {
        name = "DisconnectParticipant",
        input_schema = schemas.DisconnectParticipantInput,
        output_schema = schemas.DisconnectParticipantOutput,
        http_method = "POST",
        http_path = "/DisconnectParticipant",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getComposition(input, options)
    return self:invokeOperation(input, {
        name = "GetComposition",
        input_schema = schemas.GetCompositionInput,
        output_schema = schemas.GetCompositionOutput,
        http_method = "POST",
        http_path = "/GetComposition",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEncoderConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetEncoderConfiguration",
        input_schema = schemas.GetEncoderConfigurationInput,
        output_schema = schemas.GetEncoderConfigurationOutput,
        http_method = "POST",
        http_path = "/GetEncoderConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIngestConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetIngestConfiguration",
        input_schema = schemas.GetIngestConfigurationInput,
        output_schema = schemas.GetIngestConfigurationOutput,
        http_method = "POST",
        http_path = "/GetIngestConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getParticipant(input, options)
    return self:invokeOperation(input, {
        name = "GetParticipant",
        input_schema = schemas.GetParticipantInput,
        output_schema = schemas.GetParticipantOutput,
        http_method = "POST",
        http_path = "/GetParticipant",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPublicKey(input, options)
    return self:invokeOperation(input, {
        name = "GetPublicKey",
        input_schema = schemas.GetPublicKeyInput,
        output_schema = schemas.GetPublicKeyOutput,
        http_method = "POST",
        http_path = "/GetPublicKey",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getStage(input, options)
    return self:invokeOperation(input, {
        name = "GetStage",
        input_schema = schemas.GetStageInput,
        output_schema = schemas.GetStageOutput,
        http_method = "POST",
        http_path = "/GetStage",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getStageSession(input, options)
    return self:invokeOperation(input, {
        name = "GetStageSession",
        input_schema = schemas.GetStageSessionInput,
        output_schema = schemas.GetStageSessionOutput,
        http_method = "POST",
        http_path = "/GetStageSession",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getStorageConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetStorageConfiguration",
        input_schema = schemas.GetStorageConfigurationInput,
        output_schema = schemas.GetStorageConfigurationOutput,
        http_method = "POST",
        http_path = "/GetStorageConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importPublicKey(input, options)
    return self:invokeOperation(input, {
        name = "ImportPublicKey",
        input_schema = schemas.ImportPublicKeyInput,
        output_schema = schemas.ImportPublicKeyOutput,
        http_method = "POST",
        http_path = "/ImportPublicKey",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCompositions(input, options)
    return self:invokeOperation(input, {
        name = "ListCompositions",
        input_schema = schemas.ListCompositionsInput,
        output_schema = schemas.ListCompositionsOutput,
        http_method = "POST",
        http_path = "/ListCompositions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEncoderConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListEncoderConfigurations",
        input_schema = schemas.ListEncoderConfigurationsInput,
        output_schema = schemas.ListEncoderConfigurationsOutput,
        http_method = "POST",
        http_path = "/ListEncoderConfigurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIngestConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListIngestConfigurations",
        input_schema = schemas.ListIngestConfigurationsInput,
        output_schema = schemas.ListIngestConfigurationsOutput,
        http_method = "POST",
        http_path = "/ListIngestConfigurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listParticipantEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListParticipantEvents",
        input_schema = schemas.ListParticipantEventsInput,
        output_schema = schemas.ListParticipantEventsOutput,
        http_method = "POST",
        http_path = "/ListParticipantEvents",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listParticipantReplicas(input, options)
    return self:invokeOperation(input, {
        name = "ListParticipantReplicas",
        input_schema = schemas.ListParticipantReplicasInput,
        output_schema = schemas.ListParticipantReplicasOutput,
        http_method = "POST",
        http_path = "/ListParticipantReplicas",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listParticipants(input, options)
    return self:invokeOperation(input, {
        name = "ListParticipants",
        input_schema = schemas.ListParticipantsInput,
        output_schema = schemas.ListParticipantsOutput,
        http_method = "POST",
        http_path = "/ListParticipants",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPublicKeys(input, options)
    return self:invokeOperation(input, {
        name = "ListPublicKeys",
        input_schema = schemas.ListPublicKeysInput,
        output_schema = schemas.ListPublicKeysOutput,
        http_method = "POST",
        http_path = "/ListPublicKeys",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStages(input, options)
    return self:invokeOperation(input, {
        name = "ListStages",
        input_schema = schemas.ListStagesInput,
        output_schema = schemas.ListStagesOutput,
        http_method = "POST",
        http_path = "/ListStages",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStageSessions(input, options)
    return self:invokeOperation(input, {
        name = "ListStageSessions",
        input_schema = schemas.ListStageSessionsInput,
        output_schema = schemas.ListStageSessionsOutput,
        http_method = "POST",
        http_path = "/ListStageSessions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStorageConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListStorageConfigurations",
        input_schema = schemas.ListStorageConfigurationsInput,
        output_schema = schemas.ListStorageConfigurationsOutput,
        http_method = "POST",
        http_path = "/ListStorageConfigurations",
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
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startComposition(input, options)
    return self:invokeOperation(input, {
        name = "StartComposition",
        input_schema = schemas.StartCompositionInput,
        output_schema = schemas.StartCompositionOutput,
        http_method = "POST",
        http_path = "/StartComposition",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startParticipantReplication(input, options)
    return self:invokeOperation(input, {
        name = "StartParticipantReplication",
        input_schema = schemas.StartParticipantReplicationInput,
        output_schema = schemas.StartParticipantReplicationOutput,
        http_method = "POST",
        http_path = "/StartParticipantReplication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopComposition(input, options)
    return self:invokeOperation(input, {
        name = "StopComposition",
        input_schema = schemas.StopCompositionInput,
        output_schema = schemas.StopCompositionOutput,
        http_method = "POST",
        http_path = "/StopComposition",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopParticipantReplication(input, options)
    return self:invokeOperation(input, {
        name = "StopParticipantReplication",
        input_schema = schemas.StopParticipantReplicationInput,
        output_schema = schemas.StopParticipantReplicationOutput,
        http_method = "POST",
        http_path = "/StopParticipantReplication",
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
        http_path = "/tags/{resourceArn}",
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
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateIngestConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIngestConfiguration",
        input_schema = schemas.UpdateIngestConfigurationInput,
        output_schema = schemas.UpdateIngestConfigurationOutput,
        http_method = "POST",
        http_path = "/UpdateIngestConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateStage(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStage",
        input_schema = schemas.UpdateStageInput,
        output_schema = schemas.UpdateStageOutput,
        http_method = "POST",
        http_path = "/UpdateStage",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
