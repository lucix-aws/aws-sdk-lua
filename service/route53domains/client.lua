local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("route53domains.endpoint_rules")
local schemas = require("route53domains.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Route53Domains_v20140515"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "route53domains", signing_region = cfg.region } }
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

function Client:acceptDomainTransferFromAnotherAwsAccount(input, options)
    return self:invokeOperation(input, {
        name = "AcceptDomainTransferFromAnotherAwsAccount",
        input_schema = schemas.AcceptDomainTransferFromAnotherAwsAccountInput,
        output_schema = schemas.AcceptDomainTransferFromAnotherAwsAccountOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateDelegationSignerToDomain(input, options)
    return self:invokeOperation(input, {
        name = "AssociateDelegationSignerToDomain",
        input_schema = schemas.AssociateDelegationSignerToDomainInput,
        output_schema = schemas.AssociateDelegationSignerToDomainOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelDomainTransferToAnotherAwsAccount(input, options)
    return self:invokeOperation(input, {
        name = "CancelDomainTransferToAnotherAwsAccount",
        input_schema = schemas.CancelDomainTransferToAnotherAwsAccountInput,
        output_schema = schemas.CancelDomainTransferToAnotherAwsAccountOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:checkDomainAvailability(input, options)
    return self:invokeOperation(input, {
        name = "CheckDomainAvailability",
        input_schema = schemas.CheckDomainAvailabilityInput,
        output_schema = schemas.CheckDomainAvailabilityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:checkDomainTransferability(input, options)
    return self:invokeOperation(input, {
        name = "CheckDomainTransferability",
        input_schema = schemas.CheckDomainTransferabilityInput,
        output_schema = schemas.CheckDomainTransferabilityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDomain(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomain",
        input_schema = schemas.DeleteDomainInput,
        output_schema = schemas.DeleteDomainOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTagsForDomain(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTagsForDomain",
        input_schema = schemas.DeleteTagsForDomainInput,
        output_schema = schemas.DeleteTagsForDomainOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableDomainAutoRenew(input, options)
    return self:invokeOperation(input, {
        name = "DisableDomainAutoRenew",
        input_schema = schemas.DisableDomainAutoRenewInput,
        output_schema = schemas.DisableDomainAutoRenewOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableDomainTransferLock(input, options)
    return self:invokeOperation(input, {
        name = "DisableDomainTransferLock",
        input_schema = schemas.DisableDomainTransferLockInput,
        output_schema = schemas.DisableDomainTransferLockOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateDelegationSignerFromDomain(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateDelegationSignerFromDomain",
        input_schema = schemas.DisassociateDelegationSignerFromDomainInput,
        output_schema = schemas.DisassociateDelegationSignerFromDomainOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableDomainAutoRenew(input, options)
    return self:invokeOperation(input, {
        name = "EnableDomainAutoRenew",
        input_schema = schemas.EnableDomainAutoRenewInput,
        output_schema = schemas.EnableDomainAutoRenewOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableDomainTransferLock(input, options)
    return self:invokeOperation(input, {
        name = "EnableDomainTransferLock",
        input_schema = schemas.EnableDomainTransferLockInput,
        output_schema = schemas.EnableDomainTransferLockOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getContactReachabilityStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetContactReachabilityStatus",
        input_schema = schemas.GetContactReachabilityStatusInput,
        output_schema = schemas.GetContactReachabilityStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDomainDetail(input, options)
    return self:invokeOperation(input, {
        name = "GetDomainDetail",
        input_schema = schemas.GetDomainDetailInput,
        output_schema = schemas.GetDomainDetailOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDomainSuggestions(input, options)
    return self:invokeOperation(input, {
        name = "GetDomainSuggestions",
        input_schema = schemas.GetDomainSuggestionsInput,
        output_schema = schemas.GetDomainSuggestionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOperationDetail(input, options)
    return self:invokeOperation(input, {
        name = "GetOperationDetail",
        input_schema = schemas.GetOperationDetailInput,
        output_schema = schemas.GetOperationDetailOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDomains(input, options)
    return self:invokeOperation(input, {
        name = "ListDomains",
        input_schema = schemas.ListDomainsInput,
        output_schema = schemas.ListDomainsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOperations(input, options)
    return self:invokeOperation(input, {
        name = "ListOperations",
        input_schema = schemas.ListOperationsInput,
        output_schema = schemas.ListOperationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPrices(input, options)
    return self:invokeOperation(input, {
        name = "ListPrices",
        input_schema = schemas.ListPricesInput,
        output_schema = schemas.ListPricesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForDomain(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForDomain",
        input_schema = schemas.ListTagsForDomainInput,
        output_schema = schemas.ListTagsForDomainOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:pushDomain(input, options)
    return self:invokeOperation(input, {
        name = "PushDomain",
        input_schema = schemas.PushDomainInput,
        output_schema = schemas.PushDomainOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerDomain(input, options)
    return self:invokeOperation(input, {
        name = "RegisterDomain",
        input_schema = schemas.RegisterDomainInput,
        output_schema = schemas.RegisterDomainOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectDomainTransferFromAnotherAwsAccount(input, options)
    return self:invokeOperation(input, {
        name = "RejectDomainTransferFromAnotherAwsAccount",
        input_schema = schemas.RejectDomainTransferFromAnotherAwsAccountInput,
        output_schema = schemas.RejectDomainTransferFromAnotherAwsAccountOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:renewDomain(input, options)
    return self:invokeOperation(input, {
        name = "RenewDomain",
        input_schema = schemas.RenewDomainInput,
        output_schema = schemas.RenewDomainOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resendContactReachabilityEmail(input, options)
    return self:invokeOperation(input, {
        name = "ResendContactReachabilityEmail",
        input_schema = schemas.ResendContactReachabilityEmailInput,
        output_schema = schemas.ResendContactReachabilityEmailOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resendOperationAuthorization(input, options)
    return self:invokeOperation(input, {
        name = "ResendOperationAuthorization",
        input_schema = schemas.ResendOperationAuthorizationInput,
        output_schema = schemas.ResendOperationAuthorizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:retrieveDomainAuthCode(input, options)
    return self:invokeOperation(input, {
        name = "RetrieveDomainAuthCode",
        input_schema = schemas.RetrieveDomainAuthCodeInput,
        output_schema = schemas.RetrieveDomainAuthCodeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:transferDomain(input, options)
    return self:invokeOperation(input, {
        name = "TransferDomain",
        input_schema = schemas.TransferDomainInput,
        output_schema = schemas.TransferDomainOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:transferDomainToAnotherAwsAccount(input, options)
    return self:invokeOperation(input, {
        name = "TransferDomainToAnotherAwsAccount",
        input_schema = schemas.TransferDomainToAnotherAwsAccountInput,
        output_schema = schemas.TransferDomainToAnotherAwsAccountOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDomainContact(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDomainContact",
        input_schema = schemas.UpdateDomainContactInput,
        output_schema = schemas.UpdateDomainContactOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDomainContactPrivacy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDomainContactPrivacy",
        input_schema = schemas.UpdateDomainContactPrivacyInput,
        output_schema = schemas.UpdateDomainContactPrivacyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDomainNameservers(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDomainNameservers",
        input_schema = schemas.UpdateDomainNameserversInput,
        output_schema = schemas.UpdateDomainNameserversOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTagsForDomain(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTagsForDomain",
        input_schema = schemas.UpdateTagsForDomainInput,
        output_schema = schemas.UpdateTagsForDomainOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:viewBilling(input, options)
    return self:invokeOperation(input, {
        name = "ViewBilling",
        input_schema = schemas.ViewBillingInput,
        output_schema = schemas.ViewBillingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
