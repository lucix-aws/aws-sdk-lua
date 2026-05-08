



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("pinpoint.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("pinpoint.schemas")
local traits = require("smithy.traits")
local types = require("pinpoint.types")
local sdk_defaults = require("aws.sdk_defaults")
































































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "Pinpoint"
   if not c.protocol then c.protocol = restjson_protocol.new() end
   if not c.endpoint_provider then
      c.endpoint_provider = function(params)
         return endpoint.resolve(endpoint_rules, params)
      end
   end
   if not c.auth_scheme_resolver then
      c.auth_scheme_resolver = function(_service, operation)
         local auth_trait = operation:trait(traits.AUTH) or _service:trait(traits.AUTH)
         local options = {}
         for _, scheme in ipairs(auth_trait or {}) do
            local scheme_id = scheme.scheme_id or scheme
            if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "mobiletargeting", signing_region = c.region } }
            else
               options[#options + 1] = { scheme_id = scheme_id }
            end
         end
         return options
      end
   end
   defaults.resolve_auth_schemes(c)
   defaults.resolve_identity_resolvers(c)
   defaults.resolve_http_client(c)
   defaults.resolve_retry_strategy(c)
   sdk_defaults.resolve_identity_resolver(c)
   local self = setmetatable(base_client.new(c), Client_mt)
   return self
end

function C:createApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApp, input, options)
end

function C:createCampaign(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCampaign, input, options)
end

function C:createEmailTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEmailTemplate, input, options)
end

function C:createExportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateExportJob, input, options)
end

function C:createImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateImportJob, input, options)
end

function C:createInAppTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInAppTemplate, input, options)
end

function C:createJourney(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateJourney, input, options)
end

function C:createPushTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePushTemplate, input, options)
end

function C:createRecommenderConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRecommenderConfiguration, input, options)
end

function C:createSegment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSegment, input, options)
end

function C:createSmsTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSmsTemplate, input, options)
end

function C:createVoiceTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVoiceTemplate, input, options)
end

function C:deleteAdmChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAdmChannel, input, options)
end

function C:deleteApnsChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApnsChannel, input, options)
end

function C:deleteApnsSandboxChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApnsSandboxChannel, input, options)
end

function C:deleteApnsVoipChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApnsVoipChannel, input, options)
end

function C:deleteApnsVoipSandboxChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApnsVoipSandboxChannel, input, options)
end

function C:deleteApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApp, input, options)
end

function C:deleteBaiduChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBaiduChannel, input, options)
end

function C:deleteCampaign(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCampaign, input, options)
end

function C:deleteEmailChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEmailChannel, input, options)
end

function C:deleteEmailTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEmailTemplate, input, options)
end

function C:deleteEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEndpoint, input, options)
end

function C:deleteEventStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEventStream, input, options)
end

function C:deleteGcmChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGcmChannel, input, options)
end

function C:deleteInAppTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInAppTemplate, input, options)
end

function C:deleteJourney(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteJourney, input, options)
end

function C:deletePushTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePushTemplate, input, options)
end

function C:deleteRecommenderConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRecommenderConfiguration, input, options)
end

function C:deleteSegment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSegment, input, options)
end

function C:deleteSmsChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSmsChannel, input, options)
end

function C:deleteSmsTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSmsTemplate, input, options)
end

function C:deleteUserEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUserEndpoints, input, options)
end

function C:deleteVoiceChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVoiceChannel, input, options)
end

function C:deleteVoiceTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVoiceTemplate, input, options)
end

function C:getAdmChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAdmChannel, input, options)
end

function C:getApnsChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApnsChannel, input, options)
end

function C:getApnsSandboxChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApnsSandboxChannel, input, options)
end

function C:getApnsVoipChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApnsVoipChannel, input, options)
end

function C:getApnsVoipSandboxChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApnsVoipSandboxChannel, input, options)
end

function C:getApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApp, input, options)
end

function C:getApplicationDateRangeKpi(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApplicationDateRangeKpi, input, options)
end

function C:getApplicationSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApplicationSettings, input, options)
end

function C:getApps(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApps, input, options)
end

function C:getBaiduChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBaiduChannel, input, options)
end

function C:getCampaign(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCampaign, input, options)
end

function C:getCampaignActivities(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCampaignActivities, input, options)
end

function C:getCampaignDateRangeKpi(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCampaignDateRangeKpi, input, options)
end

function C:getCampaigns(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCampaigns, input, options)
end

function C:getCampaignVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCampaignVersion, input, options)
end

function C:getCampaignVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCampaignVersions, input, options)
end

function C:getChannels(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetChannels, input, options)
end

function C:getEmailChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEmailChannel, input, options)
end

function C:getEmailTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEmailTemplate, input, options)
end

function C:getEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEndpoint, input, options)
end

function C:getEventStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEventStream, input, options)
end

function C:getExportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetExportJob, input, options)
end

function C:getExportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetExportJobs, input, options)
end

function C:getGcmChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGcmChannel, input, options)
end

function C:getImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetImportJob, input, options)
end

function C:getImportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetImportJobs, input, options)
end

function C:getInAppMessages(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInAppMessages, input, options)
end

function C:getInAppTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInAppTemplate, input, options)
end

function C:getJourney(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetJourney, input, options)
end

function C:getJourneyDateRangeKpi(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetJourneyDateRangeKpi, input, options)
end

function C:getJourneyExecutionActivityMetrics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetJourneyExecutionActivityMetrics, input, options)
end

function C:getJourneyExecutionMetrics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetJourneyExecutionMetrics, input, options)
end

function C:getJourneyRunExecutionActivityMetrics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetJourneyRunExecutionActivityMetrics, input, options)
end

function C:getJourneyRunExecutionMetrics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetJourneyRunExecutionMetrics, input, options)
end

function C:getJourneyRuns(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetJourneyRuns, input, options)
end

function C:getPushTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPushTemplate, input, options)
end

function C:getRecommenderConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRecommenderConfiguration, input, options)
end

function C:getRecommenderConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRecommenderConfigurations, input, options)
end

function C:getSegment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSegment, input, options)
end

function C:getSegmentExportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSegmentExportJobs, input, options)
end

function C:getSegmentImportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSegmentImportJobs, input, options)
end

function C:getSegments(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSegments, input, options)
end

function C:getSegmentVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSegmentVersion, input, options)
end

function C:getSegmentVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSegmentVersions, input, options)
end

function C:getSmsChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSmsChannel, input, options)
end

function C:getSmsTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSmsTemplate, input, options)
end

function C:getUserEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUserEndpoints, input, options)
end

function C:getVoiceChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVoiceChannel, input, options)
end

function C:getVoiceTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVoiceTemplate, input, options)
end

function C:listJourneys(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListJourneys, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTemplates, input, options)
end

function C:listTemplateVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTemplateVersions, input, options)
end

function C:phoneNumberValidate(input, options)
   return self:invokeOperation(schemas.Service, schemas.PhoneNumberValidate, input, options)
end

function C:putEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutEvents, input, options)
end

function C:putEventStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutEventStream, input, options)
end

function C:removeAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveAttributes, input, options)
end

function C:sendMessages(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendMessages, input, options)
end

function C:sendOTPMessage(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendOTPMessage, input, options)
end

function C:sendUsersMessages(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendUsersMessages, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAdmChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAdmChannel, input, options)
end

function C:updateApnsChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApnsChannel, input, options)
end

function C:updateApnsSandboxChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApnsSandboxChannel, input, options)
end

function C:updateApnsVoipChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApnsVoipChannel, input, options)
end

function C:updateApnsVoipSandboxChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApnsVoipSandboxChannel, input, options)
end

function C:updateApplicationSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApplicationSettings, input, options)
end

function C:updateBaiduChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBaiduChannel, input, options)
end

function C:updateCampaign(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCampaign, input, options)
end

function C:updateEmailChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEmailChannel, input, options)
end

function C:updateEmailTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEmailTemplate, input, options)
end

function C:updateEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEndpoint, input, options)
end

function C:updateEndpointsBatch(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEndpointsBatch, input, options)
end

function C:updateGcmChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGcmChannel, input, options)
end

function C:updateInAppTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateInAppTemplate, input, options)
end

function C:updateJourney(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateJourney, input, options)
end

function C:updateJourneyState(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateJourneyState, input, options)
end

function C:updatePushTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePushTemplate, input, options)
end

function C:updateRecommenderConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRecommenderConfiguration, input, options)
end

function C:updateSegment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSegment, input, options)
end

function C:updateSmsChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSmsChannel, input, options)
end

function C:updateSmsTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSmsTemplate, input, options)
end

function C:updateTemplateActiveVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTemplateActiveVersion, input, options)
end

function C:updateVoiceChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateVoiceChannel, input, options)
end

function C:updateVoiceTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateVoiceTemplate, input, options)
end

function C:verifyOTPMessage(input, options)
   return self:invokeOperation(schemas.Service, schemas.VerifyOTPMessage, input, options)
end

return M
