local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("pinpoint.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("pinpoint.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Pinpoint"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "mobiletargeting", signing_region = cfg.region } }
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

function Client:createApp(input, options)
    return self:invokeOperation(input, {
        name = "CreateApp",
        input_schema = schemas.CreateAppInput,
        output_schema = schemas.CreateAppOutput,
        http_method = "POST",
        http_path = "/v1/apps",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCampaign(input, options)
    return self:invokeOperation(input, {
        name = "CreateCampaign",
        input_schema = schemas.CreateCampaignInput,
        output_schema = schemas.CreateCampaignOutput,
        http_method = "POST",
        http_path = "/v1/apps/{ApplicationId}/campaigns",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEmailTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateEmailTemplate",
        input_schema = schemas.CreateEmailTemplateInput,
        output_schema = schemas.CreateEmailTemplateOutput,
        http_method = "POST",
        http_path = "/v1/templates/{TemplateName}/email",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createExportJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateExportJob",
        input_schema = schemas.CreateExportJobInput,
        output_schema = schemas.CreateExportJobOutput,
        http_method = "POST",
        http_path = "/v1/apps/{ApplicationId}/jobs/export",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createImportJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateImportJob",
        input_schema = schemas.CreateImportJobInput,
        output_schema = schemas.CreateImportJobOutput,
        http_method = "POST",
        http_path = "/v1/apps/{ApplicationId}/jobs/import",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createInAppTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateInAppTemplate",
        input_schema = schemas.CreateInAppTemplateInput,
        output_schema = schemas.CreateInAppTemplateOutput,
        http_method = "POST",
        http_path = "/v1/templates/{TemplateName}/inapp",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createJourney(input, options)
    return self:invokeOperation(input, {
        name = "CreateJourney",
        input_schema = schemas.CreateJourneyInput,
        output_schema = schemas.CreateJourneyOutput,
        http_method = "POST",
        http_path = "/v1/apps/{ApplicationId}/journeys",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPushTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreatePushTemplate",
        input_schema = schemas.CreatePushTemplateInput,
        output_schema = schemas.CreatePushTemplateOutput,
        http_method = "POST",
        http_path = "/v1/templates/{TemplateName}/push",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRecommenderConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateRecommenderConfiguration",
        input_schema = schemas.CreateRecommenderConfigurationInput,
        output_schema = schemas.CreateRecommenderConfigurationOutput,
        http_method = "POST",
        http_path = "/v1/recommenders",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSegment(input, options)
    return self:invokeOperation(input, {
        name = "CreateSegment",
        input_schema = schemas.CreateSegmentInput,
        output_schema = schemas.CreateSegmentOutput,
        http_method = "POST",
        http_path = "/v1/apps/{ApplicationId}/segments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSmsTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateSmsTemplate",
        input_schema = schemas.CreateSmsTemplateInput,
        output_schema = schemas.CreateSmsTemplateOutput,
        http_method = "POST",
        http_path = "/v1/templates/{TemplateName}/sms",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVoiceTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateVoiceTemplate",
        input_schema = schemas.CreateVoiceTemplateInput,
        output_schema = schemas.CreateVoiceTemplateOutput,
        http_method = "POST",
        http_path = "/v1/templates/{TemplateName}/voice",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAdmChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAdmChannel",
        input_schema = schemas.DeleteAdmChannelInput,
        output_schema = schemas.DeleteAdmChannelOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/channels/adm",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApnsChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApnsChannel",
        input_schema = schemas.DeleteApnsChannelInput,
        output_schema = schemas.DeleteApnsChannelOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/channels/apns",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApnsSandboxChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApnsSandboxChannel",
        input_schema = schemas.DeleteApnsSandboxChannelInput,
        output_schema = schemas.DeleteApnsSandboxChannelOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/channels/apns_sandbox",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApnsVoipChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApnsVoipChannel",
        input_schema = schemas.DeleteApnsVoipChannelInput,
        output_schema = schemas.DeleteApnsVoipChannelOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/channels/apns_voip",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApnsVoipSandboxChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApnsVoipSandboxChannel",
        input_schema = schemas.DeleteApnsVoipSandboxChannelInput,
        output_schema = schemas.DeleteApnsVoipSandboxChannelOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/channels/apns_voip_sandbox",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApp(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApp",
        input_schema = schemas.DeleteAppInput,
        output_schema = schemas.DeleteAppOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBaiduChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBaiduChannel",
        input_schema = schemas.DeleteBaiduChannelInput,
        output_schema = schemas.DeleteBaiduChannelOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/channels/baidu",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCampaign(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCampaign",
        input_schema = schemas.DeleteCampaignInput,
        output_schema = schemas.DeleteCampaignOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/campaigns/{CampaignId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEmailChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEmailChannel",
        input_schema = schemas.DeleteEmailChannelInput,
        output_schema = schemas.DeleteEmailChannelOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/channels/email",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEmailTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEmailTemplate",
        input_schema = schemas.DeleteEmailTemplateInput,
        output_schema = schemas.DeleteEmailTemplateOutput,
        http_method = "DELETE",
        http_path = "/v1/templates/{TemplateName}/email",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEndpoint",
        input_schema = schemas.DeleteEndpointInput,
        output_schema = schemas.DeleteEndpointOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/endpoints/{EndpointId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEventStream(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventStream",
        input_schema = schemas.DeleteEventStreamInput,
        output_schema = schemas.DeleteEventStreamOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/eventstream",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGcmChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGcmChannel",
        input_schema = schemas.DeleteGcmChannelInput,
        output_schema = schemas.DeleteGcmChannelOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/channels/gcm",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInAppTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInAppTemplate",
        input_schema = schemas.DeleteInAppTemplateInput,
        output_schema = schemas.DeleteInAppTemplateOutput,
        http_method = "DELETE",
        http_path = "/v1/templates/{TemplateName}/inapp",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteJourney(input, options)
    return self:invokeOperation(input, {
        name = "DeleteJourney",
        input_schema = schemas.DeleteJourneyInput,
        output_schema = schemas.DeleteJourneyOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/journeys/{JourneyId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePushTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeletePushTemplate",
        input_schema = schemas.DeletePushTemplateInput,
        output_schema = schemas.DeletePushTemplateOutput,
        http_method = "DELETE",
        http_path = "/v1/templates/{TemplateName}/push",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRecommenderConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRecommenderConfiguration",
        input_schema = schemas.DeleteRecommenderConfigurationInput,
        output_schema = schemas.DeleteRecommenderConfigurationOutput,
        http_method = "DELETE",
        http_path = "/v1/recommenders/{RecommenderId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSegment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSegment",
        input_schema = schemas.DeleteSegmentInput,
        output_schema = schemas.DeleteSegmentOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/segments/{SegmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSmsChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSmsChannel",
        input_schema = schemas.DeleteSmsChannelInput,
        output_schema = schemas.DeleteSmsChannelOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/channels/sms",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSmsTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSmsTemplate",
        input_schema = schemas.DeleteSmsTemplateInput,
        output_schema = schemas.DeleteSmsTemplateOutput,
        http_method = "DELETE",
        http_path = "/v1/templates/{TemplateName}/sms",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteUserEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUserEndpoints",
        input_schema = schemas.DeleteUserEndpointsInput,
        output_schema = schemas.DeleteUserEndpointsOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/users/{UserId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVoiceChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVoiceChannel",
        input_schema = schemas.DeleteVoiceChannelInput,
        output_schema = schemas.DeleteVoiceChannelOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/channels/voice",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVoiceTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVoiceTemplate",
        input_schema = schemas.DeleteVoiceTemplateInput,
        output_schema = schemas.DeleteVoiceTemplateOutput,
        http_method = "DELETE",
        http_path = "/v1/templates/{TemplateName}/voice",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAdmChannel(input, options)
    return self:invokeOperation(input, {
        name = "GetAdmChannel",
        input_schema = schemas.GetAdmChannelInput,
        output_schema = schemas.GetAdmChannelOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/channels/adm",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApnsChannel(input, options)
    return self:invokeOperation(input, {
        name = "GetApnsChannel",
        input_schema = schemas.GetApnsChannelInput,
        output_schema = schemas.GetApnsChannelOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/channels/apns",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApnsSandboxChannel(input, options)
    return self:invokeOperation(input, {
        name = "GetApnsSandboxChannel",
        input_schema = schemas.GetApnsSandboxChannelInput,
        output_schema = schemas.GetApnsSandboxChannelOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/channels/apns_sandbox",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApnsVoipChannel(input, options)
    return self:invokeOperation(input, {
        name = "GetApnsVoipChannel",
        input_schema = schemas.GetApnsVoipChannelInput,
        output_schema = schemas.GetApnsVoipChannelOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/channels/apns_voip",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApnsVoipSandboxChannel(input, options)
    return self:invokeOperation(input, {
        name = "GetApnsVoipSandboxChannel",
        input_schema = schemas.GetApnsVoipSandboxChannelInput,
        output_schema = schemas.GetApnsVoipSandboxChannelOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/channels/apns_voip_sandbox",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApp(input, options)
    return self:invokeOperation(input, {
        name = "GetApp",
        input_schema = schemas.GetAppInput,
        output_schema = schemas.GetAppOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApplicationDateRangeKpi(input, options)
    return self:invokeOperation(input, {
        name = "GetApplicationDateRangeKpi",
        input_schema = schemas.GetApplicationDateRangeKpiInput,
        output_schema = schemas.GetApplicationDateRangeKpiOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/kpis/daterange/{KpiName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApplicationSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetApplicationSettings",
        input_schema = schemas.GetApplicationSettingsInput,
        output_schema = schemas.GetApplicationSettingsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApps(input, options)
    return self:invokeOperation(input, {
        name = "GetApps",
        input_schema = schemas.GetAppsInput,
        output_schema = schemas.GetAppsOutput,
        http_method = "GET",
        http_path = "/v1/apps",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBaiduChannel(input, options)
    return self:invokeOperation(input, {
        name = "GetBaiduChannel",
        input_schema = schemas.GetBaiduChannelInput,
        output_schema = schemas.GetBaiduChannelOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/channels/baidu",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCampaign(input, options)
    return self:invokeOperation(input, {
        name = "GetCampaign",
        input_schema = schemas.GetCampaignInput,
        output_schema = schemas.GetCampaignOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/campaigns/{CampaignId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCampaignActivities(input, options)
    return self:invokeOperation(input, {
        name = "GetCampaignActivities",
        input_schema = schemas.GetCampaignActivitiesInput,
        output_schema = schemas.GetCampaignActivitiesOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/campaigns/{CampaignId}/activities",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCampaignDateRangeKpi(input, options)
    return self:invokeOperation(input, {
        name = "GetCampaignDateRangeKpi",
        input_schema = schemas.GetCampaignDateRangeKpiInput,
        output_schema = schemas.GetCampaignDateRangeKpiOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/campaigns/{CampaignId}/kpis/daterange/{KpiName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCampaigns(input, options)
    return self:invokeOperation(input, {
        name = "GetCampaigns",
        input_schema = schemas.GetCampaignsInput,
        output_schema = schemas.GetCampaignsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/campaigns",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCampaignVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetCampaignVersion",
        input_schema = schemas.GetCampaignVersionInput,
        output_schema = schemas.GetCampaignVersionOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/campaigns/{CampaignId}/versions/{Version}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCampaignVersions(input, options)
    return self:invokeOperation(input, {
        name = "GetCampaignVersions",
        input_schema = schemas.GetCampaignVersionsInput,
        output_schema = schemas.GetCampaignVersionsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/campaigns/{CampaignId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getChannels(input, options)
    return self:invokeOperation(input, {
        name = "GetChannels",
        input_schema = schemas.GetChannelsInput,
        output_schema = schemas.GetChannelsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/channels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEmailChannel(input, options)
    return self:invokeOperation(input, {
        name = "GetEmailChannel",
        input_schema = schemas.GetEmailChannelInput,
        output_schema = schemas.GetEmailChannelOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/channels/email",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEmailTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetEmailTemplate",
        input_schema = schemas.GetEmailTemplateInput,
        output_schema = schemas.GetEmailTemplateOutput,
        http_method = "GET",
        http_path = "/v1/templates/{TemplateName}/email",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "GetEndpoint",
        input_schema = schemas.GetEndpointInput,
        output_schema = schemas.GetEndpointOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/endpoints/{EndpointId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEventStream(input, options)
    return self:invokeOperation(input, {
        name = "GetEventStream",
        input_schema = schemas.GetEventStreamInput,
        output_schema = schemas.GetEventStreamOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/eventstream",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getExportJob(input, options)
    return self:invokeOperation(input, {
        name = "GetExportJob",
        input_schema = schemas.GetExportJobInput,
        output_schema = schemas.GetExportJobOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/jobs/export/{JobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getExportJobs(input, options)
    return self:invokeOperation(input, {
        name = "GetExportJobs",
        input_schema = schemas.GetExportJobsInput,
        output_schema = schemas.GetExportJobsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/jobs/export",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGcmChannel(input, options)
    return self:invokeOperation(input, {
        name = "GetGcmChannel",
        input_schema = schemas.GetGcmChannelInput,
        output_schema = schemas.GetGcmChannelOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/channels/gcm",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getImportJob(input, options)
    return self:invokeOperation(input, {
        name = "GetImportJob",
        input_schema = schemas.GetImportJobInput,
        output_schema = schemas.GetImportJobOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/jobs/import/{JobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getImportJobs(input, options)
    return self:invokeOperation(input, {
        name = "GetImportJobs",
        input_schema = schemas.GetImportJobsInput,
        output_schema = schemas.GetImportJobsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/jobs/import",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInAppMessages(input, options)
    return self:invokeOperation(input, {
        name = "GetInAppMessages",
        input_schema = schemas.GetInAppMessagesInput,
        output_schema = schemas.GetInAppMessagesOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/endpoints/{EndpointId}/inappmessages",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInAppTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetInAppTemplate",
        input_schema = schemas.GetInAppTemplateInput,
        output_schema = schemas.GetInAppTemplateOutput,
        http_method = "GET",
        http_path = "/v1/templates/{TemplateName}/inapp",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getJourney(input, options)
    return self:invokeOperation(input, {
        name = "GetJourney",
        input_schema = schemas.GetJourneyInput,
        output_schema = schemas.GetJourneyOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/journeys/{JourneyId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getJourneyDateRangeKpi(input, options)
    return self:invokeOperation(input, {
        name = "GetJourneyDateRangeKpi",
        input_schema = schemas.GetJourneyDateRangeKpiInput,
        output_schema = schemas.GetJourneyDateRangeKpiOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/journeys/{JourneyId}/kpis/daterange/{KpiName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getJourneyExecutionActivityMetrics(input, options)
    return self:invokeOperation(input, {
        name = "GetJourneyExecutionActivityMetrics",
        input_schema = schemas.GetJourneyExecutionActivityMetricsInput,
        output_schema = schemas.GetJourneyExecutionActivityMetricsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/journeys/{JourneyId}/activities/{JourneyActivityId}/execution-metrics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getJourneyExecutionMetrics(input, options)
    return self:invokeOperation(input, {
        name = "GetJourneyExecutionMetrics",
        input_schema = schemas.GetJourneyExecutionMetricsInput,
        output_schema = schemas.GetJourneyExecutionMetricsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/journeys/{JourneyId}/execution-metrics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getJourneyRunExecutionActivityMetrics(input, options)
    return self:invokeOperation(input, {
        name = "GetJourneyRunExecutionActivityMetrics",
        input_schema = schemas.GetJourneyRunExecutionActivityMetricsInput,
        output_schema = schemas.GetJourneyRunExecutionActivityMetricsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/journeys/{JourneyId}/runs/{RunId}/activities/{JourneyActivityId}/execution-metrics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getJourneyRunExecutionMetrics(input, options)
    return self:invokeOperation(input, {
        name = "GetJourneyRunExecutionMetrics",
        input_schema = schemas.GetJourneyRunExecutionMetricsInput,
        output_schema = schemas.GetJourneyRunExecutionMetricsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/journeys/{JourneyId}/runs/{RunId}/execution-metrics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getJourneyRuns(input, options)
    return self:invokeOperation(input, {
        name = "GetJourneyRuns",
        input_schema = schemas.GetJourneyRunsInput,
        output_schema = schemas.GetJourneyRunsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/journeys/{JourneyId}/runs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPushTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetPushTemplate",
        input_schema = schemas.GetPushTemplateInput,
        output_schema = schemas.GetPushTemplateOutput,
        http_method = "GET",
        http_path = "/v1/templates/{TemplateName}/push",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRecommenderConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetRecommenderConfiguration",
        input_schema = schemas.GetRecommenderConfigurationInput,
        output_schema = schemas.GetRecommenderConfigurationOutput,
        http_method = "GET",
        http_path = "/v1/recommenders/{RecommenderId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRecommenderConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "GetRecommenderConfigurations",
        input_schema = schemas.GetRecommenderConfigurationsInput,
        output_schema = schemas.GetRecommenderConfigurationsOutput,
        http_method = "GET",
        http_path = "/v1/recommenders",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSegment(input, options)
    return self:invokeOperation(input, {
        name = "GetSegment",
        input_schema = schemas.GetSegmentInput,
        output_schema = schemas.GetSegmentOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/segments/{SegmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSegmentExportJobs(input, options)
    return self:invokeOperation(input, {
        name = "GetSegmentExportJobs",
        input_schema = schemas.GetSegmentExportJobsInput,
        output_schema = schemas.GetSegmentExportJobsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/segments/{SegmentId}/jobs/export",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSegmentImportJobs(input, options)
    return self:invokeOperation(input, {
        name = "GetSegmentImportJobs",
        input_schema = schemas.GetSegmentImportJobsInput,
        output_schema = schemas.GetSegmentImportJobsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/segments/{SegmentId}/jobs/import",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSegments(input, options)
    return self:invokeOperation(input, {
        name = "GetSegments",
        input_schema = schemas.GetSegmentsInput,
        output_schema = schemas.GetSegmentsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/segments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSegmentVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetSegmentVersion",
        input_schema = schemas.GetSegmentVersionInput,
        output_schema = schemas.GetSegmentVersionOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/segments/{SegmentId}/versions/{Version}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSegmentVersions(input, options)
    return self:invokeOperation(input, {
        name = "GetSegmentVersions",
        input_schema = schemas.GetSegmentVersionsInput,
        output_schema = schemas.GetSegmentVersionsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/segments/{SegmentId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSmsChannel(input, options)
    return self:invokeOperation(input, {
        name = "GetSmsChannel",
        input_schema = schemas.GetSmsChannelInput,
        output_schema = schemas.GetSmsChannelOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/channels/sms",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSmsTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetSmsTemplate",
        input_schema = schemas.GetSmsTemplateInput,
        output_schema = schemas.GetSmsTemplateOutput,
        http_method = "GET",
        http_path = "/v1/templates/{TemplateName}/sms",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getUserEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "GetUserEndpoints",
        input_schema = schemas.GetUserEndpointsInput,
        output_schema = schemas.GetUserEndpointsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/users/{UserId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVoiceChannel(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceChannel",
        input_schema = schemas.GetVoiceChannelInput,
        output_schema = schemas.GetVoiceChannelOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/channels/voice",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVoiceTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceTemplate",
        input_schema = schemas.GetVoiceTemplateInput,
        output_schema = schemas.GetVoiceTemplateOutput,
        http_method = "GET",
        http_path = "/v1/templates/{TemplateName}/voice",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listJourneys(input, options)
    return self:invokeOperation(input, {
        name = "ListJourneys",
        input_schema = schemas.ListJourneysInput,
        output_schema = schemas.ListJourneysOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/journeys",
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
        http_path = "/v1/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListTemplates",
        input_schema = schemas.ListTemplatesInput,
        output_schema = schemas.ListTemplatesOutput,
        http_method = "GET",
        http_path = "/v1/templates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTemplateVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListTemplateVersions",
        input_schema = schemas.ListTemplateVersionsInput,
        output_schema = schemas.ListTemplateVersionsOutput,
        http_method = "GET",
        http_path = "/v1/templates/{TemplateName}/{TemplateType}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:phoneNumberValidate(input, options)
    return self:invokeOperation(input, {
        name = "PhoneNumberValidate",
        input_schema = schemas.PhoneNumberValidateInput,
        output_schema = schemas.PhoneNumberValidateOutput,
        http_method = "POST",
        http_path = "/v1/phone/number/validate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putEvents(input, options)
    return self:invokeOperation(input, {
        name = "PutEvents",
        input_schema = schemas.PutEventsInput,
        output_schema = schemas.PutEventsOutput,
        http_method = "POST",
        http_path = "/v1/apps/{ApplicationId}/events",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putEventStream(input, options)
    return self:invokeOperation(input, {
        name = "PutEventStream",
        input_schema = schemas.PutEventStreamInput,
        output_schema = schemas.PutEventStreamOutput,
        http_method = "POST",
        http_path = "/v1/apps/{ApplicationId}/eventstream",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeAttributes(input, options)
    return self:invokeOperation(input, {
        name = "RemoveAttributes",
        input_schema = schemas.RemoveAttributesInput,
        output_schema = schemas.RemoveAttributesOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/attributes/{AttributeType}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendMessages(input, options)
    return self:invokeOperation(input, {
        name = "SendMessages",
        input_schema = schemas.SendMessagesInput,
        output_schema = schemas.SendMessagesOutput,
        http_method = "POST",
        http_path = "/v1/apps/{ApplicationId}/messages",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendOTPMessage(input, options)
    return self:invokeOperation(input, {
        name = "SendOTPMessage",
        input_schema = schemas.SendOTPMessageInput,
        output_schema = schemas.SendOTPMessageOutput,
        http_method = "POST",
        http_path = "/v1/apps/{ApplicationId}/otp",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendUsersMessages(input, options)
    return self:invokeOperation(input, {
        name = "SendUsersMessages",
        input_schema = schemas.SendUsersMessagesInput,
        output_schema = schemas.SendUsersMessagesOutput,
        http_method = "POST",
        http_path = "/v1/apps/{ApplicationId}/users-messages",
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
        http_path = "/v1/tags/{ResourceArn}",
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
        http_path = "/v1/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAdmChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAdmChannel",
        input_schema = schemas.UpdateAdmChannelInput,
        output_schema = schemas.UpdateAdmChannelOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/channels/adm",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApnsChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApnsChannel",
        input_schema = schemas.UpdateApnsChannelInput,
        output_schema = schemas.UpdateApnsChannelOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/channels/apns",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApnsSandboxChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApnsSandboxChannel",
        input_schema = schemas.UpdateApnsSandboxChannelInput,
        output_schema = schemas.UpdateApnsSandboxChannelOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/channels/apns_sandbox",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApnsVoipChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApnsVoipChannel",
        input_schema = schemas.UpdateApnsVoipChannelInput,
        output_schema = schemas.UpdateApnsVoipChannelOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/channels/apns_voip",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApnsVoipSandboxChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApnsVoipSandboxChannel",
        input_schema = schemas.UpdateApnsVoipSandboxChannelInput,
        output_schema = schemas.UpdateApnsVoipSandboxChannelOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/channels/apns_voip_sandbox",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApplicationSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplicationSettings",
        input_schema = schemas.UpdateApplicationSettingsInput,
        output_schema = schemas.UpdateApplicationSettingsOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBaiduChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBaiduChannel",
        input_schema = schemas.UpdateBaiduChannelInput,
        output_schema = schemas.UpdateBaiduChannelOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/channels/baidu",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCampaign(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCampaign",
        input_schema = schemas.UpdateCampaignInput,
        output_schema = schemas.UpdateCampaignOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/campaigns/{CampaignId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEmailChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEmailChannel",
        input_schema = schemas.UpdateEmailChannelInput,
        output_schema = schemas.UpdateEmailChannelOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/channels/email",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEmailTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEmailTemplate",
        input_schema = schemas.UpdateEmailTemplateInput,
        output_schema = schemas.UpdateEmailTemplateOutput,
        http_method = "PUT",
        http_path = "/v1/templates/{TemplateName}/email",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEndpoint",
        input_schema = schemas.UpdateEndpointInput,
        output_schema = schemas.UpdateEndpointOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/endpoints/{EndpointId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEndpointsBatch(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEndpointsBatch",
        input_schema = schemas.UpdateEndpointsBatchInput,
        output_schema = schemas.UpdateEndpointsBatchOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/endpoints",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGcmChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGcmChannel",
        input_schema = schemas.UpdateGcmChannelInput,
        output_schema = schemas.UpdateGcmChannelOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/channels/gcm",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateInAppTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateInAppTemplate",
        input_schema = schemas.UpdateInAppTemplateInput,
        output_schema = schemas.UpdateInAppTemplateOutput,
        http_method = "PUT",
        http_path = "/v1/templates/{TemplateName}/inapp",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateJourney(input, options)
    return self:invokeOperation(input, {
        name = "UpdateJourney",
        input_schema = schemas.UpdateJourneyInput,
        output_schema = schemas.UpdateJourneyOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/journeys/{JourneyId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateJourneyState(input, options)
    return self:invokeOperation(input, {
        name = "UpdateJourneyState",
        input_schema = schemas.UpdateJourneyStateInput,
        output_schema = schemas.UpdateJourneyStateOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/journeys/{JourneyId}/state",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePushTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePushTemplate",
        input_schema = schemas.UpdatePushTemplateInput,
        output_schema = schemas.UpdatePushTemplateOutput,
        http_method = "PUT",
        http_path = "/v1/templates/{TemplateName}/push",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRecommenderConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRecommenderConfiguration",
        input_schema = schemas.UpdateRecommenderConfigurationInput,
        output_schema = schemas.UpdateRecommenderConfigurationOutput,
        http_method = "PUT",
        http_path = "/v1/recommenders/{RecommenderId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSegment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSegment",
        input_schema = schemas.UpdateSegmentInput,
        output_schema = schemas.UpdateSegmentOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/segments/{SegmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSmsChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSmsChannel",
        input_schema = schemas.UpdateSmsChannelInput,
        output_schema = schemas.UpdateSmsChannelOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/channels/sms",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSmsTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSmsTemplate",
        input_schema = schemas.UpdateSmsTemplateInput,
        output_schema = schemas.UpdateSmsTemplateOutput,
        http_method = "PUT",
        http_path = "/v1/templates/{TemplateName}/sms",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTemplateActiveVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTemplateActiveVersion",
        input_schema = schemas.UpdateTemplateActiveVersionInput,
        output_schema = schemas.UpdateTemplateActiveVersionOutput,
        http_method = "PUT",
        http_path = "/v1/templates/{TemplateName}/{TemplateType}/active-version",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateVoiceChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVoiceChannel",
        input_schema = schemas.UpdateVoiceChannelInput,
        output_schema = schemas.UpdateVoiceChannelOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/channels/voice",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateVoiceTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVoiceTemplate",
        input_schema = schemas.UpdateVoiceTemplateInput,
        output_schema = schemas.UpdateVoiceTemplateOutput,
        http_method = "PUT",
        http_path = "/v1/templates/{TemplateName}/voice",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:verifyOTPMessage(input, options)
    return self:invokeOperation(input, {
        name = "VerifyOTPMessage",
        input_schema = schemas.VerifyOTPMessageInput,
        output_schema = schemas.VerifyOTPMessageOutput,
        http_method = "POST",
        http_path = "/v1/apps/{ApplicationId}/verify-otp",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
