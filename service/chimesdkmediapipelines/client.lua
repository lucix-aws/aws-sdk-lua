local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("chimesdkmediapipelines.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("chimesdkmediapipelines.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ChimeSDKMediaPipelinesService"
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

function Client:createMediaCapturePipeline(input, options)
    return self:invokeOperation(input, {
        name = "CreateMediaCapturePipeline",
        input_schema = schemas.CreateMediaCapturePipelineInput,
        output_schema = schemas.CreateMediaCapturePipelineOutput,
        http_method = "POST",
        http_path = "/sdk-media-capture-pipelines",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMediaConcatenationPipeline(input, options)
    return self:invokeOperation(input, {
        name = "CreateMediaConcatenationPipeline",
        input_schema = schemas.CreateMediaConcatenationPipelineInput,
        output_schema = schemas.CreateMediaConcatenationPipelineOutput,
        http_method = "POST",
        http_path = "/sdk-media-concatenation-pipelines",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMediaInsightsPipeline(input, options)
    return self:invokeOperation(input, {
        name = "CreateMediaInsightsPipeline",
        input_schema = schemas.CreateMediaInsightsPipelineInput,
        output_schema = schemas.CreateMediaInsightsPipelineOutput,
        http_method = "POST",
        http_path = "/media-insights-pipelines",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMediaInsightsPipelineConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateMediaInsightsPipelineConfiguration",
        input_schema = schemas.CreateMediaInsightsPipelineConfigurationInput,
        output_schema = schemas.CreateMediaInsightsPipelineConfigurationOutput,
        http_method = "POST",
        http_path = "/media-insights-pipeline-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMediaLiveConnectorPipeline(input, options)
    return self:invokeOperation(input, {
        name = "CreateMediaLiveConnectorPipeline",
        input_schema = schemas.CreateMediaLiveConnectorPipelineInput,
        output_schema = schemas.CreateMediaLiveConnectorPipelineOutput,
        http_method = "POST",
        http_path = "/sdk-media-live-connector-pipelines",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMediaPipelineKinesisVideoStreamPool(input, options)
    return self:invokeOperation(input, {
        name = "CreateMediaPipelineKinesisVideoStreamPool",
        input_schema = schemas.CreateMediaPipelineKinesisVideoStreamPoolInput,
        output_schema = schemas.CreateMediaPipelineKinesisVideoStreamPoolOutput,
        http_method = "POST",
        http_path = "/media-pipeline-kinesis-video-stream-pools",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMediaStreamPipeline(input, options)
    return self:invokeOperation(input, {
        name = "CreateMediaStreamPipeline",
        input_schema = schemas.CreateMediaStreamPipelineInput,
        output_schema = schemas.CreateMediaStreamPipelineOutput,
        http_method = "POST",
        http_path = "/sdk-media-stream-pipelines",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMediaCapturePipeline(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMediaCapturePipeline",
        input_schema = schemas.DeleteMediaCapturePipelineInput,
        output_schema = schemas.DeleteMediaCapturePipelineOutput,
        http_method = "DELETE",
        http_path = "/sdk-media-capture-pipelines/{MediaPipelineId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMediaInsightsPipelineConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMediaInsightsPipelineConfiguration",
        input_schema = schemas.DeleteMediaInsightsPipelineConfigurationInput,
        output_schema = schemas.DeleteMediaInsightsPipelineConfigurationOutput,
        http_method = "DELETE",
        http_path = "/media-insights-pipeline-configurations/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMediaPipeline(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMediaPipeline",
        input_schema = schemas.DeleteMediaPipelineInput,
        output_schema = schemas.DeleteMediaPipelineOutput,
        http_method = "DELETE",
        http_path = "/sdk-media-pipelines/{MediaPipelineId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMediaPipelineKinesisVideoStreamPool(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMediaPipelineKinesisVideoStreamPool",
        input_schema = schemas.DeleteMediaPipelineKinesisVideoStreamPoolInput,
        output_schema = schemas.DeleteMediaPipelineKinesisVideoStreamPoolOutput,
        http_method = "DELETE",
        http_path = "/media-pipeline-kinesis-video-stream-pools/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMediaCapturePipeline(input, options)
    return self:invokeOperation(input, {
        name = "GetMediaCapturePipeline",
        input_schema = schemas.GetMediaCapturePipelineInput,
        output_schema = schemas.GetMediaCapturePipelineOutput,
        http_method = "GET",
        http_path = "/sdk-media-capture-pipelines/{MediaPipelineId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMediaInsightsPipelineConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetMediaInsightsPipelineConfiguration",
        input_schema = schemas.GetMediaInsightsPipelineConfigurationInput,
        output_schema = schemas.GetMediaInsightsPipelineConfigurationOutput,
        http_method = "GET",
        http_path = "/media-insights-pipeline-configurations/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMediaPipeline(input, options)
    return self:invokeOperation(input, {
        name = "GetMediaPipeline",
        input_schema = schemas.GetMediaPipelineInput,
        output_schema = schemas.GetMediaPipelineOutput,
        http_method = "GET",
        http_path = "/sdk-media-pipelines/{MediaPipelineId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMediaPipelineKinesisVideoStreamPool(input, options)
    return self:invokeOperation(input, {
        name = "GetMediaPipelineKinesisVideoStreamPool",
        input_schema = schemas.GetMediaPipelineKinesisVideoStreamPoolInput,
        output_schema = schemas.GetMediaPipelineKinesisVideoStreamPoolOutput,
        http_method = "GET",
        http_path = "/media-pipeline-kinesis-video-stream-pools/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSpeakerSearchTask(input, options)
    return self:invokeOperation(input, {
        name = "GetSpeakerSearchTask",
        input_schema = schemas.GetSpeakerSearchTaskInput,
        output_schema = schemas.GetSpeakerSearchTaskOutput,
        http_method = "GET",
        http_path = "/media-insights-pipelines/{Identifier}/speaker-search-tasks/{SpeakerSearchTaskId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVoiceToneAnalysisTask(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceToneAnalysisTask",
        input_schema = schemas.GetVoiceToneAnalysisTaskInput,
        output_schema = schemas.GetVoiceToneAnalysisTaskOutput,
        http_method = "GET",
        http_path = "/media-insights-pipelines/{Identifier}/voice-tone-analysis-tasks/{VoiceToneAnalysisTaskId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMediaCapturePipelines(input, options)
    return self:invokeOperation(input, {
        name = "ListMediaCapturePipelines",
        input_schema = schemas.ListMediaCapturePipelinesInput,
        output_schema = schemas.ListMediaCapturePipelinesOutput,
        http_method = "GET",
        http_path = "/sdk-media-capture-pipelines",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMediaInsightsPipelineConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListMediaInsightsPipelineConfigurations",
        input_schema = schemas.ListMediaInsightsPipelineConfigurationsInput,
        output_schema = schemas.ListMediaInsightsPipelineConfigurationsOutput,
        http_method = "GET",
        http_path = "/media-insights-pipeline-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMediaPipelineKinesisVideoStreamPools(input, options)
    return self:invokeOperation(input, {
        name = "ListMediaPipelineKinesisVideoStreamPools",
        input_schema = schemas.ListMediaPipelineKinesisVideoStreamPoolsInput,
        output_schema = schemas.ListMediaPipelineKinesisVideoStreamPoolsOutput,
        http_method = "GET",
        http_path = "/media-pipeline-kinesis-video-stream-pools",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMediaPipelines(input, options)
    return self:invokeOperation(input, {
        name = "ListMediaPipelines",
        input_schema = schemas.ListMediaPipelinesInput,
        output_schema = schemas.ListMediaPipelinesOutput,
        http_method = "GET",
        http_path = "/sdk-media-pipelines",
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
        http_path = "/tags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startSpeakerSearchTask(input, options)
    return self:invokeOperation(input, {
        name = "StartSpeakerSearchTask",
        input_schema = schemas.StartSpeakerSearchTaskInput,
        output_schema = schemas.StartSpeakerSearchTaskOutput,
        http_method = "POST",
        http_path = "/media-insights-pipelines/{Identifier}/speaker-search-tasks?operation=start",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startVoiceToneAnalysisTask(input, options)
    return self:invokeOperation(input, {
        name = "StartVoiceToneAnalysisTask",
        input_schema = schemas.StartVoiceToneAnalysisTaskInput,
        output_schema = schemas.StartVoiceToneAnalysisTaskOutput,
        http_method = "POST",
        http_path = "/media-insights-pipelines/{Identifier}/voice-tone-analysis-tasks?operation=start",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopSpeakerSearchTask(input, options)
    return self:invokeOperation(input, {
        name = "StopSpeakerSearchTask",
        input_schema = schemas.StopSpeakerSearchTaskInput,
        output_schema = schemas.StopSpeakerSearchTaskOutput,
        http_method = "POST",
        http_path = "/media-insights-pipelines/{Identifier}/speaker-search-tasks/{SpeakerSearchTaskId}?operation=stop",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopVoiceToneAnalysisTask(input, options)
    return self:invokeOperation(input, {
        name = "StopVoiceToneAnalysisTask",
        input_schema = schemas.StopVoiceToneAnalysisTaskInput,
        output_schema = schemas.StopVoiceToneAnalysisTaskOutput,
        http_method = "POST",
        http_path = "/media-insights-pipelines/{Identifier}/voice-tone-analysis-tasks/{VoiceToneAnalysisTaskId}?operation=stop",
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
        http_path = "/tags?operation=tag-resource",
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
        http_path = "/tags?operation=untag-resource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMediaInsightsPipelineConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMediaInsightsPipelineConfiguration",
        input_schema = schemas.UpdateMediaInsightsPipelineConfigurationInput,
        output_schema = schemas.UpdateMediaInsightsPipelineConfigurationOutput,
        http_method = "PUT",
        http_path = "/media-insights-pipeline-configurations/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMediaInsightsPipelineStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMediaInsightsPipelineStatus",
        input_schema = schemas.UpdateMediaInsightsPipelineStatusInput,
        output_schema = schemas.UpdateMediaInsightsPipelineStatusOutput,
        http_method = "PUT",
        http_path = "/media-insights-pipeline-status/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMediaPipelineKinesisVideoStreamPool(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMediaPipelineKinesisVideoStreamPool",
        input_schema = schemas.UpdateMediaPipelineKinesisVideoStreamPoolInput,
        output_schema = schemas.UpdateMediaPipelineKinesisVideoStreamPoolOutput,
        http_method = "PUT",
        http_path = "/media-pipeline-kinesis-video-stream-pools/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
