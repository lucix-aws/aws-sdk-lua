local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("connectcampaigns.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("connectcampaigns.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonConnectCampaignService"
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
        http_path = "/campaigns",
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
        http_path = "/campaigns/{id}",
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
        http_path = "/connect-instance/{connectInstanceId}/config",
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
        http_path = "/connect-instance/{connectInstanceId}/onboarding",
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
        http_path = "/campaigns/{id}",
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
        http_path = "/campaigns/{id}/state",
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
        http_path = "/campaigns-state",
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
        http_path = "/connect-instance/{connectInstanceId}/config",
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
        http_path = "/connect-instance/{connectInstanceId}/onboarding",
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
        http_path = "/campaigns-summary",
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
        http_path = "/tags/{arn}",
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
        http_path = "/campaigns/{id}/pause",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putDialRequestBatch(input, options)
    return self:invokeOperation(input, {
        name = "PutDialRequestBatch",
        input_schema = schemas.PutDialRequestBatchInput,
        output_schema = schemas.PutDialRequestBatchOutput,
        http_method = "PUT",
        http_path = "/campaigns/{id}/dial-requests",
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
        http_path = "/campaigns/{id}/resume",
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
        http_path = "/campaigns/{id}/start",
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
        http_path = "/connect-instance/{connectInstanceId}/onboarding",
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
        http_path = "/campaigns/{id}/stop",
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
        http_path = "/tags/{arn}",
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
        http_path = "/tags/{arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCampaignDialerConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCampaignDialerConfig",
        input_schema = schemas.UpdateCampaignDialerConfigInput,
        output_schema = schemas.UpdateCampaignDialerConfigOutput,
        http_method = "POST",
        http_path = "/campaigns/{id}/dialer-config",
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
        http_path = "/campaigns/{id}/name",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCampaignOutboundCallConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCampaignOutboundCallConfig",
        input_schema = schemas.UpdateCampaignOutboundCallConfigInput,
        output_schema = schemas.UpdateCampaignOutboundCallConfigOutput,
        http_method = "POST",
        http_path = "/campaigns/{id}/outbound-call-config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
