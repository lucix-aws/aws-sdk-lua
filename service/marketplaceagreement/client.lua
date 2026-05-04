local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("marketplaceagreement.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("marketplaceagreement.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSMPCommerceService_v20200301"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.0")
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "aws-marketplace", signing_region = cfg.region } }
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

function Client:batchCreateBillingAdjustmentRequest(input, options)
    return self:invokeOperation(input, {
        name = "BatchCreateBillingAdjustmentRequest",
        input_schema = types.BatchCreateBillingAdjustmentRequestInput,
        output_schema = types.BatchCreateBillingAdjustmentRequestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelAgreementCancellationRequest(input, options)
    return self:invokeOperation(input, {
        name = "CancelAgreementCancellationRequest",
        input_schema = types.CancelAgreementCancellationRequestInput,
        output_schema = types.CancelAgreementCancellationRequestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelAgreementPaymentRequest(input, options)
    return self:invokeOperation(input, {
        name = "CancelAgreementPaymentRequest",
        input_schema = types.CancelAgreementPaymentRequestInput,
        output_schema = types.CancelAgreementPaymentRequestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAgreement(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAgreement",
        input_schema = types.DescribeAgreementInput,
        output_schema = types.DescribeAgreementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAgreementCancellationRequest(input, options)
    return self:invokeOperation(input, {
        name = "GetAgreementCancellationRequest",
        input_schema = types.GetAgreementCancellationRequestInput,
        output_schema = types.GetAgreementCancellationRequestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAgreementPaymentRequest(input, options)
    return self:invokeOperation(input, {
        name = "GetAgreementPaymentRequest",
        input_schema = types.GetAgreementPaymentRequestInput,
        output_schema = types.GetAgreementPaymentRequestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAgreementTerms(input, options)
    return self:invokeOperation(input, {
        name = "GetAgreementTerms",
        input_schema = types.GetAgreementTermsInput,
        output_schema = types.GetAgreementTermsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBillingAdjustmentRequest(input, options)
    return self:invokeOperation(input, {
        name = "GetBillingAdjustmentRequest",
        input_schema = types.GetBillingAdjustmentRequestInput,
        output_schema = types.GetBillingAdjustmentRequestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAgreementCancellationRequests(input, options)
    return self:invokeOperation(input, {
        name = "ListAgreementCancellationRequests",
        input_schema = types.ListAgreementCancellationRequestsInput,
        output_schema = types.ListAgreementCancellationRequestsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAgreementInvoiceLineItems(input, options)
    return self:invokeOperation(input, {
        name = "ListAgreementInvoiceLineItems",
        input_schema = types.ListAgreementInvoiceLineItemsInput,
        output_schema = types.ListAgreementInvoiceLineItemsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAgreementPaymentRequests(input, options)
    return self:invokeOperation(input, {
        name = "ListAgreementPaymentRequests",
        input_schema = types.ListAgreementPaymentRequestsInput,
        output_schema = types.ListAgreementPaymentRequestsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBillingAdjustmentRequests(input, options)
    return self:invokeOperation(input, {
        name = "ListBillingAdjustmentRequests",
        input_schema = types.ListBillingAdjustmentRequestsInput,
        output_schema = types.ListBillingAdjustmentRequestsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchAgreements(input, options)
    return self:invokeOperation(input, {
        name = "SearchAgreements",
        input_schema = types.SearchAgreementsInput,
        output_schema = types.SearchAgreementsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendAgreementCancellationRequest(input, options)
    return self:invokeOperation(input, {
        name = "SendAgreementCancellationRequest",
        input_schema = types.SendAgreementCancellationRequestInput,
        output_schema = types.SendAgreementCancellationRequestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendAgreementPaymentRequest(input, options)
    return self:invokeOperation(input, {
        name = "SendAgreementPaymentRequest",
        input_schema = types.SendAgreementPaymentRequestInput,
        output_schema = types.SendAgreementPaymentRequestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
