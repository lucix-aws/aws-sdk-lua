local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("pinpoint.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("pinpoint.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Pinpoint"
    cfg.signing_name = "mobiletargeting"
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

function Client:createApp(input, options)
    return self:invokeOperation(input, {
        name = "CreateApp",
        input_schema = types.CreateAppInput,
        output_schema = types.CreateAppOutput,
        http_method = "POST",
        http_path = "/v1/apps",
    }, options)
end

function Client:createCampaign(input, options)
    return self:invokeOperation(input, {
        name = "CreateCampaign",
        input_schema = types.CreateCampaignInput,
        output_schema = types.CreateCampaignOutput,
        http_method = "POST",
        http_path = "/v1/apps/{ApplicationId}/campaigns",
    }, options)
end

function Client:createEmailTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateEmailTemplate",
        input_schema = types.CreateEmailTemplateInput,
        output_schema = types.CreateEmailTemplateOutput,
        http_method = "POST",
        http_path = "/v1/templates/{TemplateName}/email",
    }, options)
end

function Client:createExportJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateExportJob",
        input_schema = types.CreateExportJobInput,
        output_schema = types.CreateExportJobOutput,
        http_method = "POST",
        http_path = "/v1/apps/{ApplicationId}/jobs/export",
    }, options)
end

function Client:createImportJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateImportJob",
        input_schema = types.CreateImportJobInput,
        output_schema = types.CreateImportJobOutput,
        http_method = "POST",
        http_path = "/v1/apps/{ApplicationId}/jobs/import",
    }, options)
end

function Client:createInAppTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateInAppTemplate",
        input_schema = types.CreateInAppTemplateInput,
        output_schema = types.CreateInAppTemplateOutput,
        http_method = "POST",
        http_path = "/v1/templates/{TemplateName}/inapp",
    }, options)
end

function Client:createJourney(input, options)
    return self:invokeOperation(input, {
        name = "CreateJourney",
        input_schema = types.CreateJourneyInput,
        output_schema = types.CreateJourneyOutput,
        http_method = "POST",
        http_path = "/v1/apps/{ApplicationId}/journeys",
    }, options)
end

function Client:createPushTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreatePushTemplate",
        input_schema = types.CreatePushTemplateInput,
        output_schema = types.CreatePushTemplateOutput,
        http_method = "POST",
        http_path = "/v1/templates/{TemplateName}/push",
    }, options)
end

function Client:createRecommenderConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateRecommenderConfiguration",
        input_schema = types.CreateRecommenderConfigurationInput,
        output_schema = types.CreateRecommenderConfigurationOutput,
        http_method = "POST",
        http_path = "/v1/recommenders",
    }, options)
end

function Client:createSegment(input, options)
    return self:invokeOperation(input, {
        name = "CreateSegment",
        input_schema = types.CreateSegmentInput,
        output_schema = types.CreateSegmentOutput,
        http_method = "POST",
        http_path = "/v1/apps/{ApplicationId}/segments",
    }, options)
end

function Client:createSmsTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateSmsTemplate",
        input_schema = types.CreateSmsTemplateInput,
        output_schema = types.CreateSmsTemplateOutput,
        http_method = "POST",
        http_path = "/v1/templates/{TemplateName}/sms",
    }, options)
end

function Client:createVoiceTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateVoiceTemplate",
        input_schema = types.CreateVoiceTemplateInput,
        output_schema = types.CreateVoiceTemplateOutput,
        http_method = "POST",
        http_path = "/v1/templates/{TemplateName}/voice",
    }, options)
end

function Client:deleteAdmChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAdmChannel",
        input_schema = types.DeleteAdmChannelInput,
        output_schema = types.DeleteAdmChannelOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/channels/adm",
    }, options)
end

function Client:deleteApnsChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApnsChannel",
        input_schema = types.DeleteApnsChannelInput,
        output_schema = types.DeleteApnsChannelOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/channels/apns",
    }, options)
end

function Client:deleteApnsSandboxChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApnsSandboxChannel",
        input_schema = types.DeleteApnsSandboxChannelInput,
        output_schema = types.DeleteApnsSandboxChannelOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/channels/apns_sandbox",
    }, options)
end

function Client:deleteApnsVoipChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApnsVoipChannel",
        input_schema = types.DeleteApnsVoipChannelInput,
        output_schema = types.DeleteApnsVoipChannelOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/channels/apns_voip",
    }, options)
end

function Client:deleteApnsVoipSandboxChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApnsVoipSandboxChannel",
        input_schema = types.DeleteApnsVoipSandboxChannelInput,
        output_schema = types.DeleteApnsVoipSandboxChannelOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/channels/apns_voip_sandbox",
    }, options)
end

function Client:deleteApp(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApp",
        input_schema = types.DeleteAppInput,
        output_schema = types.DeleteAppOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}",
    }, options)
end

function Client:deleteBaiduChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBaiduChannel",
        input_schema = types.DeleteBaiduChannelInput,
        output_schema = types.DeleteBaiduChannelOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/channels/baidu",
    }, options)
end

function Client:deleteCampaign(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCampaign",
        input_schema = types.DeleteCampaignInput,
        output_schema = types.DeleteCampaignOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/campaigns/{CampaignId}",
    }, options)
end

function Client:deleteEmailChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEmailChannel",
        input_schema = types.DeleteEmailChannelInput,
        output_schema = types.DeleteEmailChannelOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/channels/email",
    }, options)
end

function Client:deleteEmailTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEmailTemplate",
        input_schema = types.DeleteEmailTemplateInput,
        output_schema = types.DeleteEmailTemplateOutput,
        http_method = "DELETE",
        http_path = "/v1/templates/{TemplateName}/email",
    }, options)
end

function Client:deleteEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEndpoint",
        input_schema = types.DeleteEndpointInput,
        output_schema = types.DeleteEndpointOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/endpoints/{EndpointId}",
    }, options)
end

function Client:deleteEventStream(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventStream",
        input_schema = types.DeleteEventStreamInput,
        output_schema = types.DeleteEventStreamOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/eventstream",
    }, options)
end

function Client:deleteGcmChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGcmChannel",
        input_schema = types.DeleteGcmChannelInput,
        output_schema = types.DeleteGcmChannelOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/channels/gcm",
    }, options)
end

function Client:deleteInAppTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInAppTemplate",
        input_schema = types.DeleteInAppTemplateInput,
        output_schema = types.DeleteInAppTemplateOutput,
        http_method = "DELETE",
        http_path = "/v1/templates/{TemplateName}/inapp",
    }, options)
end

function Client:deleteJourney(input, options)
    return self:invokeOperation(input, {
        name = "DeleteJourney",
        input_schema = types.DeleteJourneyInput,
        output_schema = types.DeleteJourneyOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/journeys/{JourneyId}",
    }, options)
end

function Client:deletePushTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeletePushTemplate",
        input_schema = types.DeletePushTemplateInput,
        output_schema = types.DeletePushTemplateOutput,
        http_method = "DELETE",
        http_path = "/v1/templates/{TemplateName}/push",
    }, options)
end

function Client:deleteRecommenderConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRecommenderConfiguration",
        input_schema = types.DeleteRecommenderConfigurationInput,
        output_schema = types.DeleteRecommenderConfigurationOutput,
        http_method = "DELETE",
        http_path = "/v1/recommenders/{RecommenderId}",
    }, options)
end

function Client:deleteSegment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSegment",
        input_schema = types.DeleteSegmentInput,
        output_schema = types.DeleteSegmentOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/segments/{SegmentId}",
    }, options)
end

function Client:deleteSmsChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSmsChannel",
        input_schema = types.DeleteSmsChannelInput,
        output_schema = types.DeleteSmsChannelOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/channels/sms",
    }, options)
end

function Client:deleteSmsTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSmsTemplate",
        input_schema = types.DeleteSmsTemplateInput,
        output_schema = types.DeleteSmsTemplateOutput,
        http_method = "DELETE",
        http_path = "/v1/templates/{TemplateName}/sms",
    }, options)
end

function Client:deleteUserEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUserEndpoints",
        input_schema = types.DeleteUserEndpointsInput,
        output_schema = types.DeleteUserEndpointsOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/users/{UserId}",
    }, options)
end

function Client:deleteVoiceChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVoiceChannel",
        input_schema = types.DeleteVoiceChannelInput,
        output_schema = types.DeleteVoiceChannelOutput,
        http_method = "DELETE",
        http_path = "/v1/apps/{ApplicationId}/channels/voice",
    }, options)
end

function Client:deleteVoiceTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVoiceTemplate",
        input_schema = types.DeleteVoiceTemplateInput,
        output_schema = types.DeleteVoiceTemplateOutput,
        http_method = "DELETE",
        http_path = "/v1/templates/{TemplateName}/voice",
    }, options)
end

function Client:getAdmChannel(input, options)
    return self:invokeOperation(input, {
        name = "GetAdmChannel",
        input_schema = types.GetAdmChannelInput,
        output_schema = types.GetAdmChannelOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/channels/adm",
    }, options)
end

function Client:getApnsChannel(input, options)
    return self:invokeOperation(input, {
        name = "GetApnsChannel",
        input_schema = types.GetApnsChannelInput,
        output_schema = types.GetApnsChannelOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/channels/apns",
    }, options)
end

function Client:getApnsSandboxChannel(input, options)
    return self:invokeOperation(input, {
        name = "GetApnsSandboxChannel",
        input_schema = types.GetApnsSandboxChannelInput,
        output_schema = types.GetApnsSandboxChannelOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/channels/apns_sandbox",
    }, options)
end

function Client:getApnsVoipChannel(input, options)
    return self:invokeOperation(input, {
        name = "GetApnsVoipChannel",
        input_schema = types.GetApnsVoipChannelInput,
        output_schema = types.GetApnsVoipChannelOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/channels/apns_voip",
    }, options)
end

function Client:getApnsVoipSandboxChannel(input, options)
    return self:invokeOperation(input, {
        name = "GetApnsVoipSandboxChannel",
        input_schema = types.GetApnsVoipSandboxChannelInput,
        output_schema = types.GetApnsVoipSandboxChannelOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/channels/apns_voip_sandbox",
    }, options)
end

function Client:getApp(input, options)
    return self:invokeOperation(input, {
        name = "GetApp",
        input_schema = types.GetAppInput,
        output_schema = types.GetAppOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}",
    }, options)
end

function Client:getApplicationDateRangeKpi(input, options)
    return self:invokeOperation(input, {
        name = "GetApplicationDateRangeKpi",
        input_schema = types.GetApplicationDateRangeKpiInput,
        output_schema = types.GetApplicationDateRangeKpiOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/kpis/daterange/{KpiName}",
    }, options)
end

function Client:getApplicationSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetApplicationSettings",
        input_schema = types.GetApplicationSettingsInput,
        output_schema = types.GetApplicationSettingsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/settings",
    }, options)
end

function Client:getApps(input, options)
    return self:invokeOperation(input, {
        name = "GetApps",
        input_schema = types.GetAppsInput,
        output_schema = types.GetAppsOutput,
        http_method = "GET",
        http_path = "/v1/apps",
    }, options)
end

function Client:getBaiduChannel(input, options)
    return self:invokeOperation(input, {
        name = "GetBaiduChannel",
        input_schema = types.GetBaiduChannelInput,
        output_schema = types.GetBaiduChannelOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/channels/baidu",
    }, options)
end

function Client:getCampaign(input, options)
    return self:invokeOperation(input, {
        name = "GetCampaign",
        input_schema = types.GetCampaignInput,
        output_schema = types.GetCampaignOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/campaigns/{CampaignId}",
    }, options)
end

function Client:getCampaignActivities(input, options)
    return self:invokeOperation(input, {
        name = "GetCampaignActivities",
        input_schema = types.GetCampaignActivitiesInput,
        output_schema = types.GetCampaignActivitiesOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/campaigns/{CampaignId}/activities",
    }, options)
end

function Client:getCampaignDateRangeKpi(input, options)
    return self:invokeOperation(input, {
        name = "GetCampaignDateRangeKpi",
        input_schema = types.GetCampaignDateRangeKpiInput,
        output_schema = types.GetCampaignDateRangeKpiOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/campaigns/{CampaignId}/kpis/daterange/{KpiName}",
    }, options)
end

function Client:getCampaigns(input, options)
    return self:invokeOperation(input, {
        name = "GetCampaigns",
        input_schema = types.GetCampaignsInput,
        output_schema = types.GetCampaignsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/campaigns",
    }, options)
end

function Client:getCampaignVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetCampaignVersion",
        input_schema = types.GetCampaignVersionInput,
        output_schema = types.GetCampaignVersionOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/campaigns/{CampaignId}/versions/{Version}",
    }, options)
end

function Client:getCampaignVersions(input, options)
    return self:invokeOperation(input, {
        name = "GetCampaignVersions",
        input_schema = types.GetCampaignVersionsInput,
        output_schema = types.GetCampaignVersionsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/campaigns/{CampaignId}/versions",
    }, options)
end

function Client:getChannels(input, options)
    return self:invokeOperation(input, {
        name = "GetChannels",
        input_schema = types.GetChannelsInput,
        output_schema = types.GetChannelsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/channels",
    }, options)
end

function Client:getEmailChannel(input, options)
    return self:invokeOperation(input, {
        name = "GetEmailChannel",
        input_schema = types.GetEmailChannelInput,
        output_schema = types.GetEmailChannelOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/channels/email",
    }, options)
end

function Client:getEmailTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetEmailTemplate",
        input_schema = types.GetEmailTemplateInput,
        output_schema = types.GetEmailTemplateOutput,
        http_method = "GET",
        http_path = "/v1/templates/{TemplateName}/email",
    }, options)
end

function Client:getEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "GetEndpoint",
        input_schema = types.GetEndpointInput,
        output_schema = types.GetEndpointOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/endpoints/{EndpointId}",
    }, options)
end

function Client:getEventStream(input, options)
    return self:invokeOperation(input, {
        name = "GetEventStream",
        input_schema = types.GetEventStreamInput,
        output_schema = types.GetEventStreamOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/eventstream",
    }, options)
end

function Client:getExportJob(input, options)
    return self:invokeOperation(input, {
        name = "GetExportJob",
        input_schema = types.GetExportJobInput,
        output_schema = types.GetExportJobOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/jobs/export/{JobId}",
    }, options)
end

function Client:getExportJobs(input, options)
    return self:invokeOperation(input, {
        name = "GetExportJobs",
        input_schema = types.GetExportJobsInput,
        output_schema = types.GetExportJobsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/jobs/export",
    }, options)
end

function Client:getGcmChannel(input, options)
    return self:invokeOperation(input, {
        name = "GetGcmChannel",
        input_schema = types.GetGcmChannelInput,
        output_schema = types.GetGcmChannelOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/channels/gcm",
    }, options)
end

function Client:getImportJob(input, options)
    return self:invokeOperation(input, {
        name = "GetImportJob",
        input_schema = types.GetImportJobInput,
        output_schema = types.GetImportJobOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/jobs/import/{JobId}",
    }, options)
end

function Client:getImportJobs(input, options)
    return self:invokeOperation(input, {
        name = "GetImportJobs",
        input_schema = types.GetImportJobsInput,
        output_schema = types.GetImportJobsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/jobs/import",
    }, options)
end

function Client:getInAppMessages(input, options)
    return self:invokeOperation(input, {
        name = "GetInAppMessages",
        input_schema = types.GetInAppMessagesInput,
        output_schema = types.GetInAppMessagesOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/endpoints/{EndpointId}/inappmessages",
    }, options)
end

function Client:getInAppTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetInAppTemplate",
        input_schema = types.GetInAppTemplateInput,
        output_schema = types.GetInAppTemplateOutput,
        http_method = "GET",
        http_path = "/v1/templates/{TemplateName}/inapp",
    }, options)
end

function Client:getJourney(input, options)
    return self:invokeOperation(input, {
        name = "GetJourney",
        input_schema = types.GetJourneyInput,
        output_schema = types.GetJourneyOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/journeys/{JourneyId}",
    }, options)
end

function Client:getJourneyDateRangeKpi(input, options)
    return self:invokeOperation(input, {
        name = "GetJourneyDateRangeKpi",
        input_schema = types.GetJourneyDateRangeKpiInput,
        output_schema = types.GetJourneyDateRangeKpiOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/journeys/{JourneyId}/kpis/daterange/{KpiName}",
    }, options)
end

function Client:getJourneyExecutionActivityMetrics(input, options)
    return self:invokeOperation(input, {
        name = "GetJourneyExecutionActivityMetrics",
        input_schema = types.GetJourneyExecutionActivityMetricsInput,
        output_schema = types.GetJourneyExecutionActivityMetricsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/journeys/{JourneyId}/activities/{JourneyActivityId}/execution-metrics",
    }, options)
end

function Client:getJourneyExecutionMetrics(input, options)
    return self:invokeOperation(input, {
        name = "GetJourneyExecutionMetrics",
        input_schema = types.GetJourneyExecutionMetricsInput,
        output_schema = types.GetJourneyExecutionMetricsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/journeys/{JourneyId}/execution-metrics",
    }, options)
end

function Client:getJourneyRunExecutionActivityMetrics(input, options)
    return self:invokeOperation(input, {
        name = "GetJourneyRunExecutionActivityMetrics",
        input_schema = types.GetJourneyRunExecutionActivityMetricsInput,
        output_schema = types.GetJourneyRunExecutionActivityMetricsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/journeys/{JourneyId}/runs/{RunId}/activities/{JourneyActivityId}/execution-metrics",
    }, options)
end

function Client:getJourneyRunExecutionMetrics(input, options)
    return self:invokeOperation(input, {
        name = "GetJourneyRunExecutionMetrics",
        input_schema = types.GetJourneyRunExecutionMetricsInput,
        output_schema = types.GetJourneyRunExecutionMetricsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/journeys/{JourneyId}/runs/{RunId}/execution-metrics",
    }, options)
end

function Client:getJourneyRuns(input, options)
    return self:invokeOperation(input, {
        name = "GetJourneyRuns",
        input_schema = types.GetJourneyRunsInput,
        output_schema = types.GetJourneyRunsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/journeys/{JourneyId}/runs",
    }, options)
end

function Client:getPushTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetPushTemplate",
        input_schema = types.GetPushTemplateInput,
        output_schema = types.GetPushTemplateOutput,
        http_method = "GET",
        http_path = "/v1/templates/{TemplateName}/push",
    }, options)
end

function Client:getRecommenderConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetRecommenderConfiguration",
        input_schema = types.GetRecommenderConfigurationInput,
        output_schema = types.GetRecommenderConfigurationOutput,
        http_method = "GET",
        http_path = "/v1/recommenders/{RecommenderId}",
    }, options)
end

function Client:getRecommenderConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "GetRecommenderConfigurations",
        input_schema = types.GetRecommenderConfigurationsInput,
        output_schema = types.GetRecommenderConfigurationsOutput,
        http_method = "GET",
        http_path = "/v1/recommenders",
    }, options)
end

function Client:getSegment(input, options)
    return self:invokeOperation(input, {
        name = "GetSegment",
        input_schema = types.GetSegmentInput,
        output_schema = types.GetSegmentOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/segments/{SegmentId}",
    }, options)
end

function Client:getSegmentExportJobs(input, options)
    return self:invokeOperation(input, {
        name = "GetSegmentExportJobs",
        input_schema = types.GetSegmentExportJobsInput,
        output_schema = types.GetSegmentExportJobsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/segments/{SegmentId}/jobs/export",
    }, options)
end

function Client:getSegmentImportJobs(input, options)
    return self:invokeOperation(input, {
        name = "GetSegmentImportJobs",
        input_schema = types.GetSegmentImportJobsInput,
        output_schema = types.GetSegmentImportJobsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/segments/{SegmentId}/jobs/import",
    }, options)
end

function Client:getSegments(input, options)
    return self:invokeOperation(input, {
        name = "GetSegments",
        input_schema = types.GetSegmentsInput,
        output_schema = types.GetSegmentsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/segments",
    }, options)
end

function Client:getSegmentVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetSegmentVersion",
        input_schema = types.GetSegmentVersionInput,
        output_schema = types.GetSegmentVersionOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/segments/{SegmentId}/versions/{Version}",
    }, options)
end

function Client:getSegmentVersions(input, options)
    return self:invokeOperation(input, {
        name = "GetSegmentVersions",
        input_schema = types.GetSegmentVersionsInput,
        output_schema = types.GetSegmentVersionsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/segments/{SegmentId}/versions",
    }, options)
end

function Client:getSmsChannel(input, options)
    return self:invokeOperation(input, {
        name = "GetSmsChannel",
        input_schema = types.GetSmsChannelInput,
        output_schema = types.GetSmsChannelOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/channels/sms",
    }, options)
end

function Client:getSmsTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetSmsTemplate",
        input_schema = types.GetSmsTemplateInput,
        output_schema = types.GetSmsTemplateOutput,
        http_method = "GET",
        http_path = "/v1/templates/{TemplateName}/sms",
    }, options)
end

function Client:getUserEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "GetUserEndpoints",
        input_schema = types.GetUserEndpointsInput,
        output_schema = types.GetUserEndpointsOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/users/{UserId}",
    }, options)
end

function Client:getVoiceChannel(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceChannel",
        input_schema = types.GetVoiceChannelInput,
        output_schema = types.GetVoiceChannelOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/channels/voice",
    }, options)
end

function Client:getVoiceTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceTemplate",
        input_schema = types.GetVoiceTemplateInput,
        output_schema = types.GetVoiceTemplateOutput,
        http_method = "GET",
        http_path = "/v1/templates/{TemplateName}/voice",
    }, options)
end

function Client:listJourneys(input, options)
    return self:invokeOperation(input, {
        name = "ListJourneys",
        input_schema = types.ListJourneysInput,
        output_schema = types.ListJourneysOutput,
        http_method = "GET",
        http_path = "/v1/apps/{ApplicationId}/journeys",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/v1/tags/{ResourceArn}",
    }, options)
end

function Client:listTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListTemplates",
        input_schema = types.ListTemplatesInput,
        output_schema = types.ListTemplatesOutput,
        http_method = "GET",
        http_path = "/v1/templates",
    }, options)
end

function Client:listTemplateVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListTemplateVersions",
        input_schema = types.ListTemplateVersionsInput,
        output_schema = types.ListTemplateVersionsOutput,
        http_method = "GET",
        http_path = "/v1/templates/{TemplateName}/{TemplateType}/versions",
    }, options)
end

function Client:phoneNumberValidate(input, options)
    return self:invokeOperation(input, {
        name = "PhoneNumberValidate",
        input_schema = types.PhoneNumberValidateInput,
        output_schema = types.PhoneNumberValidateOutput,
        http_method = "POST",
        http_path = "/v1/phone/number/validate",
    }, options)
end

function Client:putEvents(input, options)
    return self:invokeOperation(input, {
        name = "PutEvents",
        input_schema = types.PutEventsInput,
        output_schema = types.PutEventsOutput,
        http_method = "POST",
        http_path = "/v1/apps/{ApplicationId}/events",
    }, options)
end

function Client:putEventStream(input, options)
    return self:invokeOperation(input, {
        name = "PutEventStream",
        input_schema = types.PutEventStreamInput,
        output_schema = types.PutEventStreamOutput,
        http_method = "POST",
        http_path = "/v1/apps/{ApplicationId}/eventstream",
    }, options)
end

function Client:removeAttributes(input, options)
    return self:invokeOperation(input, {
        name = "RemoveAttributes",
        input_schema = types.RemoveAttributesInput,
        output_schema = types.RemoveAttributesOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/attributes/{AttributeType}",
    }, options)
end

function Client:sendMessages(input, options)
    return self:invokeOperation(input, {
        name = "SendMessages",
        input_schema = types.SendMessagesInput,
        output_schema = types.SendMessagesOutput,
        http_method = "POST",
        http_path = "/v1/apps/{ApplicationId}/messages",
    }, options)
end

function Client:sendOTPMessage(input, options)
    return self:invokeOperation(input, {
        name = "SendOTPMessage",
        input_schema = types.SendOTPMessageInput,
        output_schema = types.SendOTPMessageOutput,
        http_method = "POST",
        http_path = "/v1/apps/{ApplicationId}/otp",
    }, options)
end

function Client:sendUsersMessages(input, options)
    return self:invokeOperation(input, {
        name = "SendUsersMessages",
        input_schema = types.SendUsersMessagesInput,
        output_schema = types.SendUsersMessagesOutput,
        http_method = "POST",
        http_path = "/v1/apps/{ApplicationId}/users-messages",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/v1/tags/{ResourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/v1/tags/{ResourceArn}",
    }, options)
end

function Client:updateAdmChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAdmChannel",
        input_schema = types.UpdateAdmChannelInput,
        output_schema = types.UpdateAdmChannelOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/channels/adm",
    }, options)
end

function Client:updateApnsChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApnsChannel",
        input_schema = types.UpdateApnsChannelInput,
        output_schema = types.UpdateApnsChannelOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/channels/apns",
    }, options)
end

function Client:updateApnsSandboxChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApnsSandboxChannel",
        input_schema = types.UpdateApnsSandboxChannelInput,
        output_schema = types.UpdateApnsSandboxChannelOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/channels/apns_sandbox",
    }, options)
end

function Client:updateApnsVoipChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApnsVoipChannel",
        input_schema = types.UpdateApnsVoipChannelInput,
        output_schema = types.UpdateApnsVoipChannelOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/channels/apns_voip",
    }, options)
end

function Client:updateApnsVoipSandboxChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApnsVoipSandboxChannel",
        input_schema = types.UpdateApnsVoipSandboxChannelInput,
        output_schema = types.UpdateApnsVoipSandboxChannelOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/channels/apns_voip_sandbox",
    }, options)
end

function Client:updateApplicationSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplicationSettings",
        input_schema = types.UpdateApplicationSettingsInput,
        output_schema = types.UpdateApplicationSettingsOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/settings",
    }, options)
end

function Client:updateBaiduChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBaiduChannel",
        input_schema = types.UpdateBaiduChannelInput,
        output_schema = types.UpdateBaiduChannelOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/channels/baidu",
    }, options)
end

function Client:updateCampaign(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCampaign",
        input_schema = types.UpdateCampaignInput,
        output_schema = types.UpdateCampaignOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/campaigns/{CampaignId}",
    }, options)
end

function Client:updateEmailChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEmailChannel",
        input_schema = types.UpdateEmailChannelInput,
        output_schema = types.UpdateEmailChannelOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/channels/email",
    }, options)
end

function Client:updateEmailTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEmailTemplate",
        input_schema = types.UpdateEmailTemplateInput,
        output_schema = types.UpdateEmailTemplateOutput,
        http_method = "PUT",
        http_path = "/v1/templates/{TemplateName}/email",
    }, options)
end

function Client:updateEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEndpoint",
        input_schema = types.UpdateEndpointInput,
        output_schema = types.UpdateEndpointOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/endpoints/{EndpointId}",
    }, options)
end

function Client:updateEndpointsBatch(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEndpointsBatch",
        input_schema = types.UpdateEndpointsBatchInput,
        output_schema = types.UpdateEndpointsBatchOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/endpoints",
    }, options)
end

function Client:updateGcmChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGcmChannel",
        input_schema = types.UpdateGcmChannelInput,
        output_schema = types.UpdateGcmChannelOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/channels/gcm",
    }, options)
end

function Client:updateInAppTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateInAppTemplate",
        input_schema = types.UpdateInAppTemplateInput,
        output_schema = types.UpdateInAppTemplateOutput,
        http_method = "PUT",
        http_path = "/v1/templates/{TemplateName}/inapp",
    }, options)
end

function Client:updateJourney(input, options)
    return self:invokeOperation(input, {
        name = "UpdateJourney",
        input_schema = types.UpdateJourneyInput,
        output_schema = types.UpdateJourneyOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/journeys/{JourneyId}",
    }, options)
end

function Client:updateJourneyState(input, options)
    return self:invokeOperation(input, {
        name = "UpdateJourneyState",
        input_schema = types.UpdateJourneyStateInput,
        output_schema = types.UpdateJourneyStateOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/journeys/{JourneyId}/state",
    }, options)
end

function Client:updatePushTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePushTemplate",
        input_schema = types.UpdatePushTemplateInput,
        output_schema = types.UpdatePushTemplateOutput,
        http_method = "PUT",
        http_path = "/v1/templates/{TemplateName}/push",
    }, options)
end

function Client:updateRecommenderConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRecommenderConfiguration",
        input_schema = types.UpdateRecommenderConfigurationInput,
        output_schema = types.UpdateRecommenderConfigurationOutput,
        http_method = "PUT",
        http_path = "/v1/recommenders/{RecommenderId}",
    }, options)
end

function Client:updateSegment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSegment",
        input_schema = types.UpdateSegmentInput,
        output_schema = types.UpdateSegmentOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/segments/{SegmentId}",
    }, options)
end

function Client:updateSmsChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSmsChannel",
        input_schema = types.UpdateSmsChannelInput,
        output_schema = types.UpdateSmsChannelOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/channels/sms",
    }, options)
end

function Client:updateSmsTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSmsTemplate",
        input_schema = types.UpdateSmsTemplateInput,
        output_schema = types.UpdateSmsTemplateOutput,
        http_method = "PUT",
        http_path = "/v1/templates/{TemplateName}/sms",
    }, options)
end

function Client:updateTemplateActiveVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTemplateActiveVersion",
        input_schema = types.UpdateTemplateActiveVersionInput,
        output_schema = types.UpdateTemplateActiveVersionOutput,
        http_method = "PUT",
        http_path = "/v1/templates/{TemplateName}/{TemplateType}/active-version",
    }, options)
end

function Client:updateVoiceChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVoiceChannel",
        input_schema = types.UpdateVoiceChannelInput,
        output_schema = types.UpdateVoiceChannelOutput,
        http_method = "PUT",
        http_path = "/v1/apps/{ApplicationId}/channels/voice",
    }, options)
end

function Client:updateVoiceTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVoiceTemplate",
        input_schema = types.UpdateVoiceTemplateInput,
        output_schema = types.UpdateVoiceTemplateOutput,
        http_method = "PUT",
        http_path = "/v1/templates/{TemplateName}/voice",
    }, options)
end

function Client:verifyOTPMessage(input, options)
    return self:invokeOperation(input, {
        name = "VerifyOTPMessage",
        input_schema = types.VerifyOTPMessageInput,
        output_schema = types.VerifyOTPMessageOutput,
        http_method = "POST",
        http_path = "/v1/apps/{ApplicationId}/verify-otp",
    }, options)
end

return M
