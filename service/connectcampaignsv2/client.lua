local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("connectcampaignsv2.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("connectcampaignsv2.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonConnectCampaignServiceV2"
    cfg.signing_name = "connect-campaigns"
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

function Client:createCampaign(input, options)
    return self:invokeOperation(input, {
        name = "CreateCampaign",
        input_schema = types.CreateCampaignInput,
        output_schema = types.CreateCampaignOutput,
        http_method = "PUT",
        http_path = "/v2/campaigns",
    }, options)
end

function Client:deleteCampaign(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCampaign",
        input_schema = types.DeleteCampaignInput,
        output_schema = types.DeleteCampaignOutput,
        http_method = "DELETE",
        http_path = "/v2/campaigns/{id}",
    }, options)
end

function Client:deleteCampaignChannelSubtypeConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCampaignChannelSubtypeConfig",
        input_schema = types.DeleteCampaignChannelSubtypeConfigInput,
        output_schema = types.DeleteCampaignChannelSubtypeConfigOutput,
        http_method = "DELETE",
        http_path = "/v2/campaigns/{id}/channel-subtype-config",
    }, options)
end

function Client:deleteCampaignCommunicationLimits(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCampaignCommunicationLimits",
        input_schema = types.DeleteCampaignCommunicationLimitsInput,
        output_schema = types.DeleteCampaignCommunicationLimitsOutput,
        http_method = "DELETE",
        http_path = "/v2/campaigns/{id}/communication-limits",
    }, options)
end

function Client:deleteCampaignCommunicationTime(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCampaignCommunicationTime",
        input_schema = types.DeleteCampaignCommunicationTimeInput,
        output_schema = types.DeleteCampaignCommunicationTimeOutput,
        http_method = "DELETE",
        http_path = "/v2/campaigns/{id}/communication-time",
    }, options)
end

function Client:deleteCampaignEntryLimits(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCampaignEntryLimits",
        input_schema = types.DeleteCampaignEntryLimitsInput,
        output_schema = types.DeleteCampaignEntryLimitsOutput,
        http_method = "DELETE",
        http_path = "/v2/campaigns/{id}/entry-limits",
    }, options)
end

function Client:deleteConnectInstanceConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnectInstanceConfig",
        input_schema = types.DeleteConnectInstanceConfigInput,
        output_schema = types.DeleteConnectInstanceConfigOutput,
        http_method = "DELETE",
        http_path = "/v2/connect-instance/{connectInstanceId}/config",
    }, options)
end

function Client:deleteConnectInstanceIntegration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnectInstanceIntegration",
        input_schema = types.DeleteConnectInstanceIntegrationInput,
        output_schema = types.DeleteConnectInstanceIntegrationOutput,
        http_method = "POST",
        http_path = "/v2/connect-instance/{connectInstanceId}/integrations/delete",
    }, options)
end

function Client:deleteInstanceOnboardingJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInstanceOnboardingJob",
        input_schema = types.DeleteInstanceOnboardingJobInput,
        output_schema = types.DeleteInstanceOnboardingJobOutput,
        http_method = "DELETE",
        http_path = "/v2/connect-instance/{connectInstanceId}/onboarding",
    }, options)
end

function Client:describeCampaign(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCampaign",
        input_schema = types.DescribeCampaignInput,
        output_schema = types.DescribeCampaignOutput,
        http_method = "GET",
        http_path = "/v2/campaigns/{id}",
    }, options)
end

function Client:getCampaignState(input, options)
    return self:invokeOperation(input, {
        name = "GetCampaignState",
        input_schema = types.GetCampaignStateInput,
        output_schema = types.GetCampaignStateOutput,
        http_method = "GET",
        http_path = "/v2/campaigns/{id}/state",
    }, options)
end

function Client:getCampaignStateBatch(input, options)
    return self:invokeOperation(input, {
        name = "GetCampaignStateBatch",
        input_schema = types.GetCampaignStateBatchInput,
        output_schema = types.GetCampaignStateBatchOutput,
        http_method = "POST",
        http_path = "/v2/campaigns-state",
    }, options)
end

function Client:getConnectInstanceConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetConnectInstanceConfig",
        input_schema = types.GetConnectInstanceConfigInput,
        output_schema = types.GetConnectInstanceConfigOutput,
        http_method = "GET",
        http_path = "/v2/connect-instance/{connectInstanceId}/config",
    }, options)
end

function Client:getInstanceCommunicationLimits(input, options)
    return self:invokeOperation(input, {
        name = "GetInstanceCommunicationLimits",
        input_schema = types.GetInstanceCommunicationLimitsInput,
        output_schema = types.GetInstanceCommunicationLimitsOutput,
        http_method = "GET",
        http_path = "/v2/connect-instance/{connectInstanceId}/communication-limits",
    }, options)
end

function Client:getInstanceOnboardingJobStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetInstanceOnboardingJobStatus",
        input_schema = types.GetInstanceOnboardingJobStatusInput,
        output_schema = types.GetInstanceOnboardingJobStatusOutput,
        http_method = "GET",
        http_path = "/v2/connect-instance/{connectInstanceId}/onboarding",
    }, options)
end

function Client:listCampaigns(input, options)
    return self:invokeOperation(input, {
        name = "ListCampaigns",
        input_schema = types.ListCampaignsInput,
        output_schema = types.ListCampaignsOutput,
        http_method = "POST",
        http_path = "/v2/campaigns-summary",
    }, options)
end

function Client:listConnectInstanceIntegrations(input, options)
    return self:invokeOperation(input, {
        name = "ListConnectInstanceIntegrations",
        input_schema = types.ListConnectInstanceIntegrationsInput,
        output_schema = types.ListConnectInstanceIntegrationsOutput,
        http_method = "GET",
        http_path = "/v2/connect-instance/{connectInstanceId}/integrations",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/v2/tags/{arn}",
    }, options)
end

function Client:pauseCampaign(input, options)
    return self:invokeOperation(input, {
        name = "PauseCampaign",
        input_schema = types.PauseCampaignInput,
        output_schema = types.PauseCampaignOutput,
        http_method = "POST",
        http_path = "/v2/campaigns/{id}/pause",
    }, options)
end

function Client:putConnectInstanceIntegration(input, options)
    return self:invokeOperation(input, {
        name = "PutConnectInstanceIntegration",
        input_schema = types.PutConnectInstanceIntegrationInput,
        output_schema = types.PutConnectInstanceIntegrationOutput,
        http_method = "PUT",
        http_path = "/v2/connect-instance/{connectInstanceId}/integrations",
    }, options)
end

function Client:putInstanceCommunicationLimits(input, options)
    return self:invokeOperation(input, {
        name = "PutInstanceCommunicationLimits",
        input_schema = types.PutInstanceCommunicationLimitsInput,
        output_schema = types.PutInstanceCommunicationLimitsOutput,
        http_method = "PUT",
        http_path = "/v2/connect-instance/{connectInstanceId}/communication-limits",
    }, options)
end

function Client:putOutboundRequestBatch(input, options)
    return self:invokeOperation(input, {
        name = "PutOutboundRequestBatch",
        input_schema = types.PutOutboundRequestBatchInput,
        output_schema = types.PutOutboundRequestBatchOutput,
        http_method = "PUT",
        http_path = "/v2/campaigns/{id}/outbound-requests",
    }, options)
end

function Client:putProfileOutboundRequestBatch(input, options)
    return self:invokeOperation(input, {
        name = "PutProfileOutboundRequestBatch",
        input_schema = types.PutProfileOutboundRequestBatchInput,
        output_schema = types.PutProfileOutboundRequestBatchOutput,
        http_method = "PUT",
        http_path = "/v2/campaigns/{id}/profile-outbound-requests",
    }, options)
end

function Client:resumeCampaign(input, options)
    return self:invokeOperation(input, {
        name = "ResumeCampaign",
        input_schema = types.ResumeCampaignInput,
        output_schema = types.ResumeCampaignOutput,
        http_method = "POST",
        http_path = "/v2/campaigns/{id}/resume",
    }, options)
end

function Client:startCampaign(input, options)
    return self:invokeOperation(input, {
        name = "StartCampaign",
        input_schema = types.StartCampaignInput,
        output_schema = types.StartCampaignOutput,
        http_method = "POST",
        http_path = "/v2/campaigns/{id}/start",
    }, options)
end

function Client:startInstanceOnboardingJob(input, options)
    return self:invokeOperation(input, {
        name = "StartInstanceOnboardingJob",
        input_schema = types.StartInstanceOnboardingJobInput,
        output_schema = types.StartInstanceOnboardingJobOutput,
        http_method = "PUT",
        http_path = "/v2/connect-instance/{connectInstanceId}/onboarding",
    }, options)
end

function Client:stopCampaign(input, options)
    return self:invokeOperation(input, {
        name = "StopCampaign",
        input_schema = types.StopCampaignInput,
        output_schema = types.StopCampaignOutput,
        http_method = "POST",
        http_path = "/v2/campaigns/{id}/stop",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/v2/tags/{arn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/v2/tags/{arn}",
    }, options)
end

function Client:updateCampaignChannelSubtypeConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCampaignChannelSubtypeConfig",
        input_schema = types.UpdateCampaignChannelSubtypeConfigInput,
        output_schema = types.UpdateCampaignChannelSubtypeConfigOutput,
        http_method = "POST",
        http_path = "/v2/campaigns/{id}/channel-subtype-config",
    }, options)
end

function Client:updateCampaignCommunicationLimits(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCampaignCommunicationLimits",
        input_schema = types.UpdateCampaignCommunicationLimitsInput,
        output_schema = types.UpdateCampaignCommunicationLimitsOutput,
        http_method = "POST",
        http_path = "/v2/campaigns/{id}/communication-limits",
    }, options)
end

function Client:updateCampaignCommunicationTime(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCampaignCommunicationTime",
        input_schema = types.UpdateCampaignCommunicationTimeInput,
        output_schema = types.UpdateCampaignCommunicationTimeOutput,
        http_method = "POST",
        http_path = "/v2/campaigns/{id}/communication-time",
    }, options)
end

function Client:updateCampaignEntryLimits(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCampaignEntryLimits",
        input_schema = types.UpdateCampaignEntryLimitsInput,
        output_schema = types.UpdateCampaignEntryLimitsOutput,
        http_method = "POST",
        http_path = "/v2/campaigns/{id}/entry-limits",
    }, options)
end

function Client:updateCampaignFlowAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCampaignFlowAssociation",
        input_schema = types.UpdateCampaignFlowAssociationInput,
        output_schema = types.UpdateCampaignFlowAssociationOutput,
        http_method = "POST",
        http_path = "/v2/campaigns/{id}/flow",
    }, options)
end

function Client:updateCampaignName(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCampaignName",
        input_schema = types.UpdateCampaignNameInput,
        output_schema = types.UpdateCampaignNameOutput,
        http_method = "POST",
        http_path = "/v2/campaigns/{id}/name",
    }, options)
end

function Client:updateCampaignSchedule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCampaignSchedule",
        input_schema = types.UpdateCampaignScheduleInput,
        output_schema = types.UpdateCampaignScheduleOutput,
        http_method = "POST",
        http_path = "/v2/campaigns/{id}/schedule",
    }, options)
end

function Client:updateCampaignSource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCampaignSource",
        input_schema = types.UpdateCampaignSourceInput,
        output_schema = types.UpdateCampaignSourceOutput,
        http_method = "POST",
        http_path = "/v2/campaigns/{id}/source",
    }, options)
end

return M
