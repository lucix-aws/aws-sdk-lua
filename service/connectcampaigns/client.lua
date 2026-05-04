local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("connectcampaigns.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("connectcampaigns.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonConnectCampaignService"
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
        http_path = "/campaigns",
    }, options)
end

function Client:deleteCampaign(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCampaign",
        input_schema = types.DeleteCampaignInput,
        output_schema = types.DeleteCampaignOutput,
        http_method = "DELETE",
        http_path = "/campaigns/{id}",
    }, options)
end

function Client:deleteConnectInstanceConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnectInstanceConfig",
        input_schema = types.DeleteConnectInstanceConfigInput,
        output_schema = types.DeleteConnectInstanceConfigOutput,
        http_method = "DELETE",
        http_path = "/connect-instance/{connectInstanceId}/config",
    }, options)
end

function Client:deleteInstanceOnboardingJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInstanceOnboardingJob",
        input_schema = types.DeleteInstanceOnboardingJobInput,
        output_schema = types.DeleteInstanceOnboardingJobOutput,
        http_method = "DELETE",
        http_path = "/connect-instance/{connectInstanceId}/onboarding",
    }, options)
end

function Client:describeCampaign(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCampaign",
        input_schema = types.DescribeCampaignInput,
        output_schema = types.DescribeCampaignOutput,
        http_method = "GET",
        http_path = "/campaigns/{id}",
    }, options)
end

function Client:getCampaignState(input, options)
    return self:invokeOperation(input, {
        name = "GetCampaignState",
        input_schema = types.GetCampaignStateInput,
        output_schema = types.GetCampaignStateOutput,
        http_method = "GET",
        http_path = "/campaigns/{id}/state",
    }, options)
end

function Client:getCampaignStateBatch(input, options)
    return self:invokeOperation(input, {
        name = "GetCampaignStateBatch",
        input_schema = types.GetCampaignStateBatchInput,
        output_schema = types.GetCampaignStateBatchOutput,
        http_method = "POST",
        http_path = "/campaigns-state",
    }, options)
end

function Client:getConnectInstanceConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetConnectInstanceConfig",
        input_schema = types.GetConnectInstanceConfigInput,
        output_schema = types.GetConnectInstanceConfigOutput,
        http_method = "GET",
        http_path = "/connect-instance/{connectInstanceId}/config",
    }, options)
end

function Client:getInstanceOnboardingJobStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetInstanceOnboardingJobStatus",
        input_schema = types.GetInstanceOnboardingJobStatusInput,
        output_schema = types.GetInstanceOnboardingJobStatusOutput,
        http_method = "GET",
        http_path = "/connect-instance/{connectInstanceId}/onboarding",
    }, options)
end

function Client:listCampaigns(input, options)
    return self:invokeOperation(input, {
        name = "ListCampaigns",
        input_schema = types.ListCampaignsInput,
        output_schema = types.ListCampaignsOutput,
        http_method = "POST",
        http_path = "/campaigns-summary",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{arn}",
    }, options)
end

function Client:pauseCampaign(input, options)
    return self:invokeOperation(input, {
        name = "PauseCampaign",
        input_schema = types.PauseCampaignInput,
        output_schema = types.PauseCampaignOutput,
        http_method = "POST",
        http_path = "/campaigns/{id}/pause",
    }, options)
end

function Client:putDialRequestBatch(input, options)
    return self:invokeOperation(input, {
        name = "PutDialRequestBatch",
        input_schema = types.PutDialRequestBatchInput,
        output_schema = types.PutDialRequestBatchOutput,
        http_method = "PUT",
        http_path = "/campaigns/{id}/dial-requests",
    }, options)
end

function Client:resumeCampaign(input, options)
    return self:invokeOperation(input, {
        name = "ResumeCampaign",
        input_schema = types.ResumeCampaignInput,
        output_schema = types.ResumeCampaignOutput,
        http_method = "POST",
        http_path = "/campaigns/{id}/resume",
    }, options)
end

function Client:startCampaign(input, options)
    return self:invokeOperation(input, {
        name = "StartCampaign",
        input_schema = types.StartCampaignInput,
        output_schema = types.StartCampaignOutput,
        http_method = "POST",
        http_path = "/campaigns/{id}/start",
    }, options)
end

function Client:startInstanceOnboardingJob(input, options)
    return self:invokeOperation(input, {
        name = "StartInstanceOnboardingJob",
        input_schema = types.StartInstanceOnboardingJobInput,
        output_schema = types.StartInstanceOnboardingJobOutput,
        http_method = "PUT",
        http_path = "/connect-instance/{connectInstanceId}/onboarding",
    }, options)
end

function Client:stopCampaign(input, options)
    return self:invokeOperation(input, {
        name = "StopCampaign",
        input_schema = types.StopCampaignInput,
        output_schema = types.StopCampaignOutput,
        http_method = "POST",
        http_path = "/campaigns/{id}/stop",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{arn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{arn}",
    }, options)
end

function Client:updateCampaignDialerConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCampaignDialerConfig",
        input_schema = types.UpdateCampaignDialerConfigInput,
        output_schema = types.UpdateCampaignDialerConfigOutput,
        http_method = "POST",
        http_path = "/campaigns/{id}/dialer-config",
    }, options)
end

function Client:updateCampaignName(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCampaignName",
        input_schema = types.UpdateCampaignNameInput,
        output_schema = types.UpdateCampaignNameOutput,
        http_method = "POST",
        http_path = "/campaigns/{id}/name",
    }, options)
end

function Client:updateCampaignOutboundCallConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCampaignOutboundCallConfig",
        input_schema = types.UpdateCampaignOutboundCallConfigInput,
        output_schema = types.UpdateCampaignOutboundCallConfigOutput,
        http_method = "POST",
        http_path = "/campaigns/{id}/outbound-call-config",
    }, options)
end

return M
