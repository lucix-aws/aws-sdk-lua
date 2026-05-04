local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("servicequotas.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("servicequotas.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ServiceQuotasV20190624"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "servicequotas", signing_region = cfg.region } }
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

function Client:associateServiceQuotaTemplate(input, options)
    return self:invokeOperation(input, {
        name = "AssociateServiceQuotaTemplate",
        input_schema = types.AssociateServiceQuotaTemplateInput,
        output_schema = types.AssociateServiceQuotaTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSupportCase(input, options)
    return self:invokeOperation(input, {
        name = "CreateSupportCase",
        input_schema = types.CreateSupportCaseInput,
        output_schema = types.CreateSupportCaseOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteServiceQuotaIncreaseRequestFromTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServiceQuotaIncreaseRequestFromTemplate",
        input_schema = types.DeleteServiceQuotaIncreaseRequestFromTemplateInput,
        output_schema = types.DeleteServiceQuotaIncreaseRequestFromTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateServiceQuotaTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateServiceQuotaTemplate",
        input_schema = types.DisassociateServiceQuotaTemplateInput,
        output_schema = types.DisassociateServiceQuotaTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAssociationForServiceQuotaTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetAssociationForServiceQuotaTemplate",
        input_schema = types.GetAssociationForServiceQuotaTemplateInput,
        output_schema = types.GetAssociationForServiceQuotaTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAutoManagementConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetAutoManagementConfiguration",
        input_schema = types.GetAutoManagementConfigurationInput,
        output_schema = types.GetAutoManagementConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAWSDefaultServiceQuota(input, options)
    return self:invokeOperation(input, {
        name = "GetAWSDefaultServiceQuota",
        input_schema = types.GetAWSDefaultServiceQuotaInput,
        output_schema = types.GetAWSDefaultServiceQuotaOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getQuotaUtilizationReport(input, options)
    return self:invokeOperation(input, {
        name = "GetQuotaUtilizationReport",
        input_schema = types.GetQuotaUtilizationReportInput,
        output_schema = types.GetQuotaUtilizationReportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRequestedServiceQuotaChange(input, options)
    return self:invokeOperation(input, {
        name = "GetRequestedServiceQuotaChange",
        input_schema = types.GetRequestedServiceQuotaChangeInput,
        output_schema = types.GetRequestedServiceQuotaChangeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getServiceQuota(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceQuota",
        input_schema = types.GetServiceQuotaInput,
        output_schema = types.GetServiceQuotaOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getServiceQuotaIncreaseRequestFromTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceQuotaIncreaseRequestFromTemplate",
        input_schema = types.GetServiceQuotaIncreaseRequestFromTemplateInput,
        output_schema = types.GetServiceQuotaIncreaseRequestFromTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAWSDefaultServiceQuotas(input, options)
    return self:invokeOperation(input, {
        name = "ListAWSDefaultServiceQuotas",
        input_schema = types.ListAWSDefaultServiceQuotasInput,
        output_schema = types.ListAWSDefaultServiceQuotasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRequestedServiceQuotaChangeHistory(input, options)
    return self:invokeOperation(input, {
        name = "ListRequestedServiceQuotaChangeHistory",
        input_schema = types.ListRequestedServiceQuotaChangeHistoryInput,
        output_schema = types.ListRequestedServiceQuotaChangeHistoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRequestedServiceQuotaChangeHistoryByQuota(input, options)
    return self:invokeOperation(input, {
        name = "ListRequestedServiceQuotaChangeHistoryByQuota",
        input_schema = types.ListRequestedServiceQuotaChangeHistoryByQuotaInput,
        output_schema = types.ListRequestedServiceQuotaChangeHistoryByQuotaOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServiceQuotaIncreaseRequestsInTemplate(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceQuotaIncreaseRequestsInTemplate",
        input_schema = types.ListServiceQuotaIncreaseRequestsInTemplateInput,
        output_schema = types.ListServiceQuotaIncreaseRequestsInTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServiceQuotas(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceQuotas",
        input_schema = types.ListServiceQuotasInput,
        output_schema = types.ListServiceQuotasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServices(input, options)
    return self:invokeOperation(input, {
        name = "ListServices",
        input_schema = types.ListServicesInput,
        output_schema = types.ListServicesOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putServiceQuotaIncreaseRequestIntoTemplate(input, options)
    return self:invokeOperation(input, {
        name = "PutServiceQuotaIncreaseRequestIntoTemplate",
        input_schema = types.PutServiceQuotaIncreaseRequestIntoTemplateInput,
        output_schema = types.PutServiceQuotaIncreaseRequestIntoTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:requestServiceQuotaIncrease(input, options)
    return self:invokeOperation(input, {
        name = "RequestServiceQuotaIncrease",
        input_schema = types.RequestServiceQuotaIncreaseInput,
        output_schema = types.RequestServiceQuotaIncreaseOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startAutoManagement(input, options)
    return self:invokeOperation(input, {
        name = "StartAutoManagement",
        input_schema = types.StartAutoManagementInput,
        output_schema = types.StartAutoManagementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startQuotaUtilizationReport(input, options)
    return self:invokeOperation(input, {
        name = "StartQuotaUtilizationReport",
        input_schema = types.StartQuotaUtilizationReportInput,
        output_schema = types.StartQuotaUtilizationReportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopAutoManagement(input, options)
    return self:invokeOperation(input, {
        name = "StopAutoManagement",
        input_schema = types.StopAutoManagementInput,
        output_schema = types.StopAutoManagementOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
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
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAutoManagement(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAutoManagement",
        input_schema = types.UpdateAutoManagementInput,
        output_schema = types.UpdateAutoManagementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
