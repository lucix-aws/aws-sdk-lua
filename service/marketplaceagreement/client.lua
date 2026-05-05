local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("marketplaceagreement.endpoint_rules")
local schemas = require("marketplaceagreement.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSMPCommerceService_v20200301"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
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

function Client:acceptAgreementCancellationRequest(input, options)
    return self:invokeOperation(input, {
        name = "AcceptAgreementCancellationRequest",
        input_schema = schemas.AcceptAgreementCancellationRequestInput,
        output_schema = schemas.AcceptAgreementCancellationRequestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:acceptAgreementPaymentRequest(input, options)
    return self:invokeOperation(input, {
        name = "AcceptAgreementPaymentRequest",
        input_schema = schemas.AcceptAgreementPaymentRequestInput,
        output_schema = schemas.AcceptAgreementPaymentRequestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:acceptAgreementRequest(input, options)
    return self:invokeOperation(input, {
        name = "AcceptAgreementRequest",
        input_schema = schemas.AcceptAgreementRequestInput,
        output_schema = schemas.AcceptAgreementRequestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchCreateBillingAdjustmentRequest(input, options)
    return self:invokeOperation(input, {
        name = "BatchCreateBillingAdjustmentRequest",
        input_schema = schemas.BatchCreateBillingAdjustmentRequestInput,
        output_schema = schemas.BatchCreateBillingAdjustmentRequestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelAgreement(input, options)
    return self:invokeOperation(input, {
        name = "CancelAgreement",
        input_schema = schemas.CancelAgreementInput,
        output_schema = schemas.CancelAgreementOutput,
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
        input_schema = schemas.CancelAgreementCancellationRequestInput,
        output_schema = schemas.CancelAgreementCancellationRequestOutput,
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
        input_schema = schemas.CancelAgreementPaymentRequestInput,
        output_schema = schemas.CancelAgreementPaymentRequestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAgreementRequest(input, options)
    return self:invokeOperation(input, {
        name = "CreateAgreementRequest",
        input_schema = schemas.CreateAgreementRequestInput,
        output_schema = schemas.CreateAgreementRequestOutput,
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
        input_schema = schemas.DescribeAgreementInput,
        output_schema = schemas.DescribeAgreementOutput,
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
        input_schema = schemas.GetAgreementCancellationRequestInput,
        output_schema = schemas.GetAgreementCancellationRequestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAgreementEntitlements(input, options)
    return self:invokeOperation(input, {
        name = "GetAgreementEntitlements",
        input_schema = schemas.GetAgreementEntitlementsInput,
        output_schema = schemas.GetAgreementEntitlementsOutput,
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
        input_schema = schemas.GetAgreementPaymentRequestInput,
        output_schema = schemas.GetAgreementPaymentRequestOutput,
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
        input_schema = schemas.GetAgreementTermsInput,
        output_schema = schemas.GetAgreementTermsOutput,
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
        input_schema = schemas.GetBillingAdjustmentRequestInput,
        output_schema = schemas.GetBillingAdjustmentRequestOutput,
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
        input_schema = schemas.ListAgreementCancellationRequestsInput,
        output_schema = schemas.ListAgreementCancellationRequestsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAgreementCharges(input, options)
    return self:invokeOperation(input, {
        name = "ListAgreementCharges",
        input_schema = schemas.ListAgreementChargesInput,
        output_schema = schemas.ListAgreementChargesOutput,
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
        input_schema = schemas.ListAgreementInvoiceLineItemsInput,
        output_schema = schemas.ListAgreementInvoiceLineItemsOutput,
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
        input_schema = schemas.ListAgreementPaymentRequestsInput,
        output_schema = schemas.ListAgreementPaymentRequestsOutput,
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
        input_schema = schemas.ListBillingAdjustmentRequestsInput,
        output_schema = schemas.ListBillingAdjustmentRequestsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectAgreementCancellationRequest(input, options)
    return self:invokeOperation(input, {
        name = "RejectAgreementCancellationRequest",
        input_schema = schemas.RejectAgreementCancellationRequestInput,
        output_schema = schemas.RejectAgreementCancellationRequestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectAgreementPaymentRequest(input, options)
    return self:invokeOperation(input, {
        name = "RejectAgreementPaymentRequest",
        input_schema = schemas.RejectAgreementPaymentRequestInput,
        output_schema = schemas.RejectAgreementPaymentRequestOutput,
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
        input_schema = schemas.SearchAgreementsInput,
        output_schema = schemas.SearchAgreementsOutput,
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
        input_schema = schemas.SendAgreementCancellationRequestInput,
        output_schema = schemas.SendAgreementCancellationRequestOutput,
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
        input_schema = schemas.SendAgreementPaymentRequestInput,
        output_schema = schemas.SendAgreementPaymentRequestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePurchaseOrders(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePurchaseOrders",
        input_schema = schemas.UpdatePurchaseOrdersInput,
        output_schema = schemas.UpdatePurchaseOrdersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
