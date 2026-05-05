local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("connectcampaignsv2.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("connectcampaignsv2.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonConnectCampaignServiceV2"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "connect-campaigns", signing_region = cfg.region } }
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

function Client:createCampaign(input, options)
    return self:invokeOperation(input, {
        name = "CreateCampaign",
        input_schema = schemas.CreateCampaignInput,
        output_schema = schemas.CreateCampaignOutput,
        http_method = "PUT",
        http_path = "/v2/campaigns",
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
        http_path = "/v2/campaigns/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCampaignChannelSubtypeConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCampaignChannelSubtypeConfig",
        input_schema = schemas.DeleteCampaignChannelSubtypeConfigInput,
        output_schema = schemas.DeleteCampaignChannelSubtypeConfigOutput,
        http_method = "DELETE",
        http_path = "/v2/campaigns/{id}/channel-subtype-config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCampaignCommunicationLimits(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCampaignCommunicationLimits",
        input_schema = schemas.DeleteCampaignCommunicationLimitsInput,
        output_schema = schemas.DeleteCampaignCommunicationLimitsOutput,
        http_method = "DELETE",
        http_path = "/v2/campaigns/{id}/communication-limits",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCampaignCommunicationTime(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCampaignCommunicationTime",
        input_schema = schemas.DeleteCampaignCommunicationTimeInput,
        output_schema = schemas.DeleteCampaignCommunicationTimeOutput,
        http_method = "DELETE",
        http_path = "/v2/campaigns/{id}/communication-time",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCampaignEntryLimits(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCampaignEntryLimits",
        input_schema = schemas.DeleteCampaignEntryLimitsInput,
        output_schema = schemas.DeleteCampaignEntryLimitsOutput,
        http_method = "DELETE",
        http_path = "/v2/campaigns/{id}/entry-limits",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConnectInstanceConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnectInstanceConfig",
        input_schema = schemas.DeleteConnectInstanceConfigInput,
        output_schema = schemas.DeleteConnectInstanceConfigOutput,
        http_method = "DELETE",
        http_path = "/v2/connect-instance/{connectInstanceId}/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConnectInstanceIntegration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnectInstanceIntegration",
        input_schema = schemas.DeleteConnectInstanceIntegrationInput,
        output_schema = schemas.DeleteConnectInstanceIntegrationOutput,
        http_method = "POST",
        http_path = "/v2/connect-instance/{connectInstanceId}/integrations/delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInstanceOnboardingJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInstanceOnboardingJob",
        input_schema = schemas.DeleteInstanceOnboardingJobInput,
        output_schema = schemas.DeleteInstanceOnboardingJobOutput,
        http_method = "DELETE",
        http_path = "/v2/connect-instance/{connectInstanceId}/onboarding",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCampaign(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCampaign",
        input_schema = schemas.DescribeCampaignInput,
        output_schema = schemas.DescribeCampaignOutput,
        http_method = "GET",
        http_path = "/v2/campaigns/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCampaignState(input, options)
    return self:invokeOperation(input, {
        name = "GetCampaignState",
        input_schema = schemas.GetCampaignStateInput,
        output_schema = schemas.GetCampaignStateOutput,
        http_method = "GET",
        http_path = "/v2/campaigns/{id}/state",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCampaignStateBatch(input, options)
    return self:invokeOperation(input, {
        name = "GetCampaignStateBatch",
        input_schema = schemas.GetCampaignStateBatchInput,
        output_schema = schemas.GetCampaignStateBatchOutput,
        http_method = "POST",
        http_path = "/v2/campaigns-state",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConnectInstanceConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetConnectInstanceConfig",
        input_schema = schemas.GetConnectInstanceConfigInput,
        output_schema = schemas.GetConnectInstanceConfigOutput,
        http_method = "GET",
        http_path = "/v2/connect-instance/{connectInstanceId}/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInstanceCommunicationLimits(input, options)
    return self:invokeOperation(input, {
        name = "GetInstanceCommunicationLimits",
        input_schema = schemas.GetInstanceCommunicationLimitsInput,
        output_schema = schemas.GetInstanceCommunicationLimitsOutput,
        http_method = "GET",
        http_path = "/v2/connect-instance/{connectInstanceId}/communication-limits",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInstanceOnboardingJobStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetInstanceOnboardingJobStatus",
        input_schema = schemas.GetInstanceOnboardingJobStatusInput,
        output_schema = schemas.GetInstanceOnboardingJobStatusOutput,
        http_method = "GET",
        http_path = "/v2/connect-instance/{connectInstanceId}/onboarding",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCampaigns(input, options)
    return self:invokeOperation(input, {
        name = "ListCampaigns",
        input_schema = schemas.ListCampaignsInput,
        output_schema = schemas.ListCampaignsOutput,
        http_method = "POST",
        http_path = "/v2/campaigns-summary",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConnectInstanceIntegrations(input, options)
    return self:invokeOperation(input, {
        name = "ListConnectInstanceIntegrations",
        input_schema = schemas.ListConnectInstanceIntegrationsInput,
        output_schema = schemas.ListConnectInstanceIntegrationsOutput,
        http_method = "GET",
        http_path = "/v2/connect-instance/{connectInstanceId}/integrations",
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
        http_path = "/v2/tags/{arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:pauseCampaign(input, options)
    return self:invokeOperation(input, {
        name = "PauseCampaign",
        input_schema = schemas.PauseCampaignInput,
        output_schema = schemas.PauseCampaignOutput,
        http_method = "POST",
        http_path = "/v2/campaigns/{id}/pause",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putConnectInstanceIntegration(input, options)
    return self:invokeOperation(input, {
        name = "PutConnectInstanceIntegration",
        input_schema = schemas.PutConnectInstanceIntegrationInput,
        output_schema = schemas.PutConnectInstanceIntegrationOutput,
        http_method = "PUT",
        http_path = "/v2/connect-instance/{connectInstanceId}/integrations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putInstanceCommunicationLimits(input, options)
    return self:invokeOperation(input, {
        name = "PutInstanceCommunicationLimits",
        input_schema = schemas.PutInstanceCommunicationLimitsInput,
        output_schema = schemas.PutInstanceCommunicationLimitsOutput,
        http_method = "PUT",
        http_path = "/v2/connect-instance/{connectInstanceId}/communication-limits",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putOutboundRequestBatch(input, options)
    return self:invokeOperation(input, {
        name = "PutOutboundRequestBatch",
        input_schema = schemas.PutOutboundRequestBatchInput,
        output_schema = schemas.PutOutboundRequestBatchOutput,
        http_method = "PUT",
        http_path = "/v2/campaigns/{id}/outbound-requests",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putProfileOutboundRequestBatch(input, options)
    return self:invokeOperation(input, {
        name = "PutProfileOutboundRequestBatch",
        input_schema = schemas.PutProfileOutboundRequestBatchInput,
        output_schema = schemas.PutProfileOutboundRequestBatchOutput,
        http_method = "PUT",
        http_path = "/v2/campaigns/{id}/profile-outbound-requests",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resumeCampaign(input, options)
    return self:invokeOperation(input, {
        name = "ResumeCampaign",
        input_schema = schemas.ResumeCampaignInput,
        output_schema = schemas.ResumeCampaignOutput,
        http_method = "POST",
        http_path = "/v2/campaigns/{id}/resume",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startCampaign(input, options)
    return self:invokeOperation(input, {
        name = "StartCampaign",
        input_schema = schemas.StartCampaignInput,
        output_schema = schemas.StartCampaignOutput,
        http_method = "POST",
        http_path = "/v2/campaigns/{id}/start",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startInstanceOnboardingJob(input, options)
    return self:invokeOperation(input, {
        name = "StartInstanceOnboardingJob",
        input_schema = schemas.StartInstanceOnboardingJobInput,
        output_schema = schemas.StartInstanceOnboardingJobOutput,
        http_method = "PUT",
        http_path = "/v2/connect-instance/{connectInstanceId}/onboarding",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopCampaign(input, options)
    return self:invokeOperation(input, {
        name = "StopCampaign",
        input_schema = schemas.StopCampaignInput,
        output_schema = schemas.StopCampaignOutput,
        http_method = "POST",
        http_path = "/v2/campaigns/{id}/stop",
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
        http_path = "/v2/tags/{arn}",
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
        http_path = "/v2/tags/{arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCampaignChannelSubtypeConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCampaignChannelSubtypeConfig",
        input_schema = schemas.UpdateCampaignChannelSubtypeConfigInput,
        output_schema = schemas.UpdateCampaignChannelSubtypeConfigOutput,
        http_method = "POST",
        http_path = "/v2/campaigns/{id}/channel-subtype-config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCampaignCommunicationLimits(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCampaignCommunicationLimits",
        input_schema = schemas.UpdateCampaignCommunicationLimitsInput,
        output_schema = schemas.UpdateCampaignCommunicationLimitsOutput,
        http_method = "POST",
        http_path = "/v2/campaigns/{id}/communication-limits",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCampaignCommunicationTime(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCampaignCommunicationTime",
        input_schema = schemas.UpdateCampaignCommunicationTimeInput,
        output_schema = schemas.UpdateCampaignCommunicationTimeOutput,
        http_method = "POST",
        http_path = "/v2/campaigns/{id}/communication-time",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCampaignEntryLimits(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCampaignEntryLimits",
        input_schema = schemas.UpdateCampaignEntryLimitsInput,
        output_schema = schemas.UpdateCampaignEntryLimitsOutput,
        http_method = "POST",
        http_path = "/v2/campaigns/{id}/entry-limits",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCampaignFlowAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCampaignFlowAssociation",
        input_schema = schemas.UpdateCampaignFlowAssociationInput,
        output_schema = schemas.UpdateCampaignFlowAssociationOutput,
        http_method = "POST",
        http_path = "/v2/campaigns/{id}/flow",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCampaignName(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCampaignName",
        input_schema = schemas.UpdateCampaignNameInput,
        output_schema = schemas.UpdateCampaignNameOutput,
        http_method = "POST",
        http_path = "/v2/campaigns/{id}/name",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCampaignSchedule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCampaignSchedule",
        input_schema = schemas.UpdateCampaignScheduleInput,
        output_schema = schemas.UpdateCampaignScheduleOutput,
        http_method = "POST",
        http_path = "/v2/campaigns/{id}/schedule",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCampaignSource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCampaignSource",
        input_schema = schemas.UpdateCampaignSourceInput,
        output_schema = schemas.UpdateCampaignSourceOutput,
        http_method = "POST",
        http_path = "/v2/campaigns/{id}/source",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
