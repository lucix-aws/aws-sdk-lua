local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("chimesdkmediapipelines.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("chimesdkmediapipelines.types")

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
        input_schema = types.CreateMediaCapturePipelineInput,
        output_schema = types.CreateMediaCapturePipelineOutput,
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
        input_schema = types.CreateMediaConcatenationPipelineInput,
        output_schema = types.CreateMediaConcatenationPipelineOutput,
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
        input_schema = types.CreateMediaInsightsPipelineInput,
        output_schema = types.CreateMediaInsightsPipelineOutput,
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
        input_schema = types.CreateMediaInsightsPipelineConfigurationInput,
        output_schema = types.CreateMediaInsightsPipelineConfigurationOutput,
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
        input_schema = types.CreateMediaLiveConnectorPipelineInput,
        output_schema = types.CreateMediaLiveConnectorPipelineOutput,
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
        input_schema = types.CreateMediaPipelineKinesisVideoStreamPoolInput,
        output_schema = types.CreateMediaPipelineKinesisVideoStreamPoolOutput,
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
        input_schema = types.CreateMediaStreamPipelineInput,
        output_schema = types.CreateMediaStreamPipelineOutput,
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
        input_schema = types.DeleteMediaCapturePipelineInput,
        output_schema = types.DeleteMediaCapturePipelineOutput,
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
        input_schema = types.DeleteMediaInsightsPipelineConfigurationInput,
        output_schema = types.DeleteMediaInsightsPipelineConfigurationOutput,
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
        input_schema = types.DeleteMediaPipelineInput,
        output_schema = types.DeleteMediaPipelineOutput,
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
        input_schema = types.DeleteMediaPipelineKinesisVideoStreamPoolInput,
        output_schema = types.DeleteMediaPipelineKinesisVideoStreamPoolOutput,
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
        input_schema = types.GetMediaCapturePipelineInput,
        output_schema = types.GetMediaCapturePipelineOutput,
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
        input_schema = types.GetMediaInsightsPipelineConfigurationInput,
        output_schema = types.GetMediaInsightsPipelineConfigurationOutput,
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
        input_schema = types.GetMediaPipelineInput,
        output_schema = types.GetMediaPipelineOutput,
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
        input_schema = types.GetMediaPipelineKinesisVideoStreamPoolInput,
        output_schema = types.GetMediaPipelineKinesisVideoStreamPoolOutput,
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
        input_schema = types.GetSpeakerSearchTaskInput,
        output_schema = types.GetSpeakerSearchTaskOutput,
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
        input_schema = types.GetVoiceToneAnalysisTaskInput,
        output_schema = types.GetVoiceToneAnalysisTaskOutput,
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
        input_schema = types.ListMediaCapturePipelinesInput,
        output_schema = types.ListMediaCapturePipelinesOutput,
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
        input_schema = types.ListMediaInsightsPipelineConfigurationsInput,
        output_schema = types.ListMediaInsightsPipelineConfigurationsOutput,
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
        input_schema = types.ListMediaPipelineKinesisVideoStreamPoolsInput,
        output_schema = types.ListMediaPipelineKinesisVideoStreamPoolsOutput,
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
        input_schema = types.ListMediaPipelinesInput,
        output_schema = types.ListMediaPipelinesOutput,
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
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
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
        input_schema = types.StartSpeakerSearchTaskInput,
        output_schema = types.StartSpeakerSearchTaskOutput,
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
        input_schema = types.StartVoiceToneAnalysisTaskInput,
        output_schema = types.StartVoiceToneAnalysisTaskOutput,
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
        input_schema = types.StopSpeakerSearchTaskInput,
        output_schema = types.StopSpeakerSearchTaskOutput,
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
        input_schema = types.StopVoiceToneAnalysisTaskInput,
        output_schema = types.StopVoiceToneAnalysisTaskOutput,
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

function Client:updateMediaInsightsPipelineConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMediaInsightsPipelineConfiguration",
        input_schema = types.UpdateMediaInsightsPipelineConfigurationInput,
        output_schema = types.UpdateMediaInsightsPipelineConfigurationOutput,
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
        input_schema = types.UpdateMediaInsightsPipelineStatusInput,
        output_schema = types.UpdateMediaInsightsPipelineStatusOutput,
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
        input_schema = types.UpdateMediaPipelineKinesisVideoStreamPoolInput,
        output_schema = types.UpdateMediaPipelineKinesisVideoStreamPoolOutput,
        http_method = "PUT",
        http_path = "/media-pipeline-kinesis-video-stream-pools/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
