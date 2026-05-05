local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("servicequotas.endpoint_rules")
local schemas = require("servicequotas.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ServiceQuotasV20190624"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
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
        input_schema = schemas.AssociateServiceQuotaTemplateInput,
        output_schema = schemas.AssociateServiceQuotaTemplateOutput,
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
        input_schema = schemas.CreateSupportCaseInput,
        output_schema = schemas.CreateSupportCaseOutput,
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
        input_schema = schemas.DeleteServiceQuotaIncreaseRequestFromTemplateInput,
        output_schema = schemas.DeleteServiceQuotaIncreaseRequestFromTemplateOutput,
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
        input_schema = schemas.DisassociateServiceQuotaTemplateInput,
        output_schema = schemas.DisassociateServiceQuotaTemplateOutput,
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
        input_schema = schemas.GetAssociationForServiceQuotaTemplateInput,
        output_schema = schemas.GetAssociationForServiceQuotaTemplateOutput,
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
        input_schema = schemas.GetAutoManagementConfigurationInput,
        output_schema = schemas.GetAutoManagementConfigurationOutput,
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
        input_schema = schemas.GetAWSDefaultServiceQuotaInput,
        output_schema = schemas.GetAWSDefaultServiceQuotaOutput,
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
        input_schema = schemas.GetQuotaUtilizationReportInput,
        output_schema = schemas.GetQuotaUtilizationReportOutput,
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
        input_schema = schemas.GetRequestedServiceQuotaChangeInput,
        output_schema = schemas.GetRequestedServiceQuotaChangeOutput,
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
        input_schema = schemas.GetServiceQuotaInput,
        output_schema = schemas.GetServiceQuotaOutput,
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
        input_schema = schemas.GetServiceQuotaIncreaseRequestFromTemplateInput,
        output_schema = schemas.GetServiceQuotaIncreaseRequestFromTemplateOutput,
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
        input_schema = schemas.ListAWSDefaultServiceQuotasInput,
        output_schema = schemas.ListAWSDefaultServiceQuotasOutput,
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
        input_schema = schemas.ListRequestedServiceQuotaChangeHistoryInput,
        output_schema = schemas.ListRequestedServiceQuotaChangeHistoryOutput,
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
        input_schema = schemas.ListRequestedServiceQuotaChangeHistoryByQuotaInput,
        output_schema = schemas.ListRequestedServiceQuotaChangeHistoryByQuotaOutput,
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
        input_schema = schemas.ListServiceQuotaIncreaseRequestsInTemplateInput,
        output_schema = schemas.ListServiceQuotaIncreaseRequestsInTemplateOutput,
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
        input_schema = schemas.ListServiceQuotasInput,
        output_schema = schemas.ListServiceQuotasOutput,
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
        input_schema = schemas.ListServicesInput,
        output_schema = schemas.ListServicesOutput,
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
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
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
        input_schema = schemas.PutServiceQuotaIncreaseRequestIntoTemplateInput,
        output_schema = schemas.PutServiceQuotaIncreaseRequestIntoTemplateOutput,
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
        input_schema = schemas.RequestServiceQuotaIncreaseInput,
        output_schema = schemas.RequestServiceQuotaIncreaseOutput,
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
        input_schema = schemas.StartAutoManagementInput,
        output_schema = schemas.StartAutoManagementOutput,
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
        input_schema = schemas.StartQuotaUtilizationReportInput,
        output_schema = schemas.StartQuotaUtilizationReportOutput,
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
        input_schema = schemas.StopAutoManagementInput,
        output_schema = schemas.StopAutoManagementOutput,
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
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
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
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
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
        input_schema = schemas.UpdateAutoManagementInput,
        output_schema = schemas.UpdateAutoManagementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
