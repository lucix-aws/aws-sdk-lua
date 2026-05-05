local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("mediatailor.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("mediatailor.schemas")
local sdk_defaults = require("sdk_defaults")

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
        input_schema = schemas.ConfigureLogsForChannelInput,
        output_schema = schemas.ConfigureLogsForChannelOutput,
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
        input_schema = schemas.ConfigureLogsForPlaybackConfigurationInput,
        output_schema = schemas.ConfigureLogsForPlaybackConfigurationOutput,
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
        input_schema = schemas.CreateChannelInput,
        output_schema = schemas.CreateChannelOutput,
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
        input_schema = schemas.CreateLiveSourceInput,
        output_schema = schemas.CreateLiveSourceOutput,
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
        input_schema = schemas.CreatePrefetchScheduleInput,
        output_schema = schemas.CreatePrefetchScheduleOutput,
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
        input_schema = schemas.CreateProgramInput,
        output_schema = schemas.CreateProgramOutput,
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
        input_schema = schemas.CreateSourceLocationInput,
        output_schema = schemas.CreateSourceLocationOutput,
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
        input_schema = schemas.CreateVodSourceInput,
        output_schema = schemas.CreateVodSourceOutput,
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
        input_schema = schemas.DeleteChannelInput,
        output_schema = schemas.DeleteChannelOutput,
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
        input_schema = schemas.DeleteChannelPolicyInput,
        output_schema = schemas.DeleteChannelPolicyOutput,
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
        input_schema = schemas.DeleteLiveSourceInput,
        output_schema = schemas.DeleteLiveSourceOutput,
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
        input_schema = schemas.DeletePlaybackConfigurationInput,
        output_schema = schemas.DeletePlaybackConfigurationOutput,
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
        input_schema = schemas.DeletePrefetchScheduleInput,
        output_schema = schemas.DeletePrefetchScheduleOutput,
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
        input_schema = schemas.DeleteProgramInput,
        output_schema = schemas.DeleteProgramOutput,
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
        input_schema = schemas.DeleteSourceLocationInput,
        output_schema = schemas.DeleteSourceLocationOutput,
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
        input_schema = schemas.DeleteVodSourceInput,
        output_schema = schemas.DeleteVodSourceOutput,
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
        input_schema = schemas.DescribeChannelInput,
        output_schema = schemas.DescribeChannelOutput,
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
        input_schema = schemas.DescribeLiveSourceInput,
        output_schema = schemas.DescribeLiveSourceOutput,
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
        input_schema = schemas.DescribeProgramInput,
        output_schema = schemas.DescribeProgramOutput,
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
        input_schema = schemas.DescribeSourceLocationInput,
        output_schema = schemas.DescribeSourceLocationOutput,
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
        input_schema = schemas.DescribeVodSourceInput,
        output_schema = schemas.DescribeVodSourceOutput,
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
        input_schema = schemas.GetChannelPolicyInput,
        output_schema = schemas.GetChannelPolicyOutput,
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
        input_schema = schemas.GetChannelScheduleInput,
        output_schema = schemas.GetChannelScheduleOutput,
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
        input_schema = schemas.GetPlaybackConfigurationInput,
        output_schema = schemas.GetPlaybackConfigurationOutput,
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
        input_schema = schemas.GetPrefetchScheduleInput,
        output_schema = schemas.GetPrefetchScheduleOutput,
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
        input_schema = schemas.ListAlertsInput,
        output_schema = schemas.ListAlertsOutput,
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
        input_schema = schemas.ListChannelsInput,
        output_schema = schemas.ListChannelsOutput,
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
        input_schema = schemas.ListLiveSourcesInput,
        output_schema = schemas.ListLiveSourcesOutput,
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
        input_schema = schemas.ListPlaybackConfigurationsInput,
        output_schema = schemas.ListPlaybackConfigurationsOutput,
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
        input_schema = schemas.ListPrefetchSchedulesInput,
        output_schema = schemas.ListPrefetchSchedulesOutput,
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
        input_schema = schemas.ListSourceLocationsInput,
        output_schema = schemas.ListSourceLocationsOutput,
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
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
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
        input_schema = schemas.ListVodSourcesInput,
        output_schema = schemas.ListVodSourcesOutput,
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
        input_schema = schemas.PutChannelPolicyInput,
        output_schema = schemas.PutChannelPolicyOutput,
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
        input_schema = schemas.PutPlaybackConfigurationInput,
        output_schema = schemas.PutPlaybackConfigurationOutput,
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
        input_schema = schemas.StartChannelInput,
        output_schema = schemas.StartChannelOutput,
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
        input_schema = schemas.StopChannelInput,
        output_schema = schemas.StopChannelOutput,
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

function Client:updateChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateChannel",
        input_schema = schemas.UpdateChannelInput,
        output_schema = schemas.UpdateChannelOutput,
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
        input_schema = schemas.UpdateLiveSourceInput,
        output_schema = schemas.UpdateLiveSourceOutput,
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
        input_schema = schemas.UpdateProgramInput,
        output_schema = schemas.UpdateProgramOutput,
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
        input_schema = schemas.UpdateSourceLocationInput,
        output_schema = schemas.UpdateSourceLocationOutput,
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
        input_schema = schemas.UpdateVodSourceInput,
        output_schema = schemas.UpdateVodSourceOutput,
        http_method = "PUT",
        http_path = "/sourceLocation/{SourceLocationName}/vodSource/{VodSourceName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
