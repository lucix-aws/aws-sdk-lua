local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("mediatailor.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("mediatailor.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "MediaTailor"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "mediatailor", signing_region = cfg.region } }
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

function Client:configureLogsForChannel(input, options)
    return self:invokeOperation(input, {
        name = "ConfigureLogsForChannel",
        input_schema = types.ConfigureLogsForChannelInput,
        output_schema = types.ConfigureLogsForChannelOutput,
        http_method = "PUT",
        http_path = "/configureLogs/channel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:configureLogsForPlaybackConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "ConfigureLogsForPlaybackConfiguration",
        input_schema = types.ConfigureLogsForPlaybackConfigurationInput,
        output_schema = types.ConfigureLogsForPlaybackConfigurationOutput,
        http_method = "PUT",
        http_path = "/configureLogs/playbackConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createChannel(input, options)
    return self:invokeOperation(input, {
        name = "CreateChannel",
        input_schema = types.CreateChannelInput,
        output_schema = types.CreateChannelOutput,
        http_method = "POST",
        http_path = "/channel/{ChannelName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLiveSource(input, options)
    return self:invokeOperation(input, {
        name = "CreateLiveSource",
        input_schema = types.CreateLiveSourceInput,
        output_schema = types.CreateLiveSourceOutput,
        http_method = "POST",
        http_path = "/sourceLocation/{SourceLocationName}/liveSource/{LiveSourceName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPrefetchSchedule(input, options)
    return self:invokeOperation(input, {
        name = "CreatePrefetchSchedule",
        input_schema = types.CreatePrefetchScheduleInput,
        output_schema = types.CreatePrefetchScheduleOutput,
        http_method = "POST",
        http_path = "/prefetchSchedule/{PlaybackConfigurationName}/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProgram(input, options)
    return self:invokeOperation(input, {
        name = "CreateProgram",
        input_schema = types.CreateProgramInput,
        output_schema = types.CreateProgramOutput,
        http_method = "POST",
        http_path = "/channel/{ChannelName}/program/{ProgramName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSourceLocation(input, options)
    return self:invokeOperation(input, {
        name = "CreateSourceLocation",
        input_schema = types.CreateSourceLocationInput,
        output_schema = types.CreateSourceLocationOutput,
        http_method = "POST",
        http_path = "/sourceLocation/{SourceLocationName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVodSource(input, options)
    return self:invokeOperation(input, {
        name = "CreateVodSource",
        input_schema = types.CreateVodSourceInput,
        output_schema = types.CreateVodSourceOutput,
        http_method = "POST",
        http_path = "/sourceLocation/{SourceLocationName}/vodSource/{VodSourceName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteChannel",
        input_schema = types.DeleteChannelInput,
        output_schema = types.DeleteChannelOutput,
        http_method = "DELETE",
        http_path = "/channel/{ChannelName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteChannelPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteChannelPolicy",
        input_schema = types.DeleteChannelPolicyInput,
        output_schema = types.DeleteChannelPolicyOutput,
        http_method = "DELETE",
        http_path = "/channel/{ChannelName}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLiveSource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLiveSource",
        input_schema = types.DeleteLiveSourceInput,
        output_schema = types.DeleteLiveSourceOutput,
        http_method = "DELETE",
        http_path = "/sourceLocation/{SourceLocationName}/liveSource/{LiveSourceName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePlaybackConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeletePlaybackConfiguration",
        input_schema = types.DeletePlaybackConfigurationInput,
        output_schema = types.DeletePlaybackConfigurationOutput,
        http_method = "DELETE",
        http_path = "/playbackConfiguration/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePrefetchSchedule(input, options)
    return self:invokeOperation(input, {
        name = "DeletePrefetchSchedule",
        input_schema = types.DeletePrefetchScheduleInput,
        output_schema = types.DeletePrefetchScheduleOutput,
        http_method = "DELETE",
        http_path = "/prefetchSchedule/{PlaybackConfigurationName}/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProgram(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProgram",
        input_schema = types.DeleteProgramInput,
        output_schema = types.DeleteProgramOutput,
        http_method = "DELETE",
        http_path = "/channel/{ChannelName}/program/{ProgramName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSourceLocation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSourceLocation",
        input_schema = types.DeleteSourceLocationInput,
        output_schema = types.DeleteSourceLocationOutput,
        http_method = "DELETE",
        http_path = "/sourceLocation/{SourceLocationName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVodSource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVodSource",
        input_schema = types.DeleteVodSourceInput,
        output_schema = types.DeleteVodSourceOutput,
        http_method = "DELETE",
        http_path = "/sourceLocation/{SourceLocationName}/vodSource/{VodSourceName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeChannel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeChannel",
        input_schema = types.DescribeChannelInput,
        output_schema = types.DescribeChannelOutput,
        http_method = "GET",
        http_path = "/channel/{ChannelName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLiveSource(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLiveSource",
        input_schema = types.DescribeLiveSourceInput,
        output_schema = types.DescribeLiveSourceOutput,
        http_method = "GET",
        http_path = "/sourceLocation/{SourceLocationName}/liveSource/{LiveSourceName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeProgram(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProgram",
        input_schema = types.DescribeProgramInput,
        output_schema = types.DescribeProgramOutput,
        http_method = "GET",
        http_path = "/channel/{ChannelName}/program/{ProgramName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSourceLocation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSourceLocation",
        input_schema = types.DescribeSourceLocationInput,
        output_schema = types.DescribeSourceLocationOutput,
        http_method = "GET",
        http_path = "/sourceLocation/{SourceLocationName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVodSource(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVodSource",
        input_schema = types.DescribeVodSourceInput,
        output_schema = types.DescribeVodSourceOutput,
        http_method = "GET",
        http_path = "/sourceLocation/{SourceLocationName}/vodSource/{VodSourceName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getChannelPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetChannelPolicy",
        input_schema = types.GetChannelPolicyInput,
        output_schema = types.GetChannelPolicyOutput,
        http_method = "GET",
        http_path = "/channel/{ChannelName}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getChannelSchedule(input, options)
    return self:invokeOperation(input, {
        name = "GetChannelSchedule",
        input_schema = types.GetChannelScheduleInput,
        output_schema = types.GetChannelScheduleOutput,
        http_method = "GET",
        http_path = "/channel/{ChannelName}/schedule",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPlaybackConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetPlaybackConfiguration",
        input_schema = types.GetPlaybackConfigurationInput,
        output_schema = types.GetPlaybackConfigurationOutput,
        http_method = "GET",
        http_path = "/playbackConfiguration/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPrefetchSchedule(input, options)
    return self:invokeOperation(input, {
        name = "GetPrefetchSchedule",
        input_schema = types.GetPrefetchScheduleInput,
        output_schema = types.GetPrefetchScheduleOutput,
        http_method = "GET",
        http_path = "/prefetchSchedule/{PlaybackConfigurationName}/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAlerts(input, options)
    return self:invokeOperation(input, {
        name = "ListAlerts",
        input_schema = types.ListAlertsInput,
        output_schema = types.ListAlertsOutput,
        http_method = "GET",
        http_path = "/alerts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listChannels(input, options)
    return self:invokeOperation(input, {
        name = "ListChannels",
        input_schema = types.ListChannelsInput,
        output_schema = types.ListChannelsOutput,
        http_method = "GET",
        http_path = "/channels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLiveSources(input, options)
    return self:invokeOperation(input, {
        name = "ListLiveSources",
        input_schema = types.ListLiveSourcesInput,
        output_schema = types.ListLiveSourcesOutput,
        http_method = "GET",
        http_path = "/sourceLocation/{SourceLocationName}/liveSources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPlaybackConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListPlaybackConfigurations",
        input_schema = types.ListPlaybackConfigurationsInput,
        output_schema = types.ListPlaybackConfigurationsOutput,
        http_method = "GET",
        http_path = "/playbackConfigurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPrefetchSchedules(input, options)
    return self:invokeOperation(input, {
        name = "ListPrefetchSchedules",
        input_schema = types.ListPrefetchSchedulesInput,
        output_schema = types.ListPrefetchSchedulesOutput,
        http_method = "POST",
        http_path = "/prefetchSchedule/{PlaybackConfigurationName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSourceLocations(input, options)
    return self:invokeOperation(input, {
        name = "ListSourceLocations",
        input_schema = types.ListSourceLocationsInput,
        output_schema = types.ListSourceLocationsOutput,
        http_method = "GET",
        http_path = "/sourceLocations",
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
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVodSources(input, options)
    return self:invokeOperation(input, {
        name = "ListVodSources",
        input_schema = types.ListVodSourcesInput,
        output_schema = types.ListVodSourcesOutput,
        http_method = "GET",
        http_path = "/sourceLocation/{SourceLocationName}/vodSources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putChannelPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutChannelPolicy",
        input_schema = types.PutChannelPolicyInput,
        output_schema = types.PutChannelPolicyOutput,
        http_method = "PUT",
        http_path = "/channel/{ChannelName}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putPlaybackConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutPlaybackConfiguration",
        input_schema = types.PutPlaybackConfigurationInput,
        output_schema = types.PutPlaybackConfigurationOutput,
        http_method = "PUT",
        http_path = "/playbackConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startChannel(input, options)
    return self:invokeOperation(input, {
        name = "StartChannel",
        input_schema = types.StartChannelInput,
        output_schema = types.StartChannelOutput,
        http_method = "PUT",
        http_path = "/channel/{ChannelName}/start",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopChannel(input, options)
    return self:invokeOperation(input, {
        name = "StopChannel",
        input_schema = types.StopChannelInput,
        output_schema = types.StopChannelOutput,
        http_method = "PUT",
        http_path = "/channel/{ChannelName}/stop",
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
        http_path = "/tags/{ResourceArn}",
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
        http_method = "DELETE",
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateChannel",
        input_schema = types.UpdateChannelInput,
        output_schema = types.UpdateChannelOutput,
        http_method = "PUT",
        http_path = "/channel/{ChannelName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLiveSource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLiveSource",
        input_schema = types.UpdateLiveSourceInput,
        output_schema = types.UpdateLiveSourceOutput,
        http_method = "PUT",
        http_path = "/sourceLocation/{SourceLocationName}/liveSource/{LiveSourceName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProgram(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProgram",
        input_schema = types.UpdateProgramInput,
        output_schema = types.UpdateProgramOutput,
        http_method = "PUT",
        http_path = "/channel/{ChannelName}/program/{ProgramName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSourceLocation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSourceLocation",
        input_schema = types.UpdateSourceLocationInput,
        output_schema = types.UpdateSourceLocationOutput,
        http_method = "PUT",
        http_path = "/sourceLocation/{SourceLocationName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateVodSource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVodSource",
        input_schema = types.UpdateVodSourceInput,
        output_schema = types.UpdateVodSourceOutput,
        http_method = "PUT",
        http_path = "/sourceLocation/{SourceLocationName}/vodSource/{VodSourceName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
