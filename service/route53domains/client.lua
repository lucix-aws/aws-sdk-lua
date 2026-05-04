local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("route53domains.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("route53domains.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Route53Domains_v20140515"
    cfg.signing_name = "route53domains_v20140515"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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

function Client:acceptDomainTransferFromAnotherAwsAccount(input, options)
    return self:invokeOperation(input, {
        name = "AcceptDomainTransferFromAnotherAwsAccount",
        input_schema = types.AcceptDomainTransferFromAnotherAwsAccountInput,
        output_schema = types.AcceptDomainTransferFromAnotherAwsAccountOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:associateDelegationSignerToDomain(input, options)
    return self:invokeOperation(input, {
        name = "AssociateDelegationSignerToDomain",
        input_schema = types.AssociateDelegationSignerToDomainInput,
        output_schema = types.AssociateDelegationSignerToDomainOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:cancelDomainTransferToAnotherAwsAccount(input, options)
    return self:invokeOperation(input, {
        name = "CancelDomainTransferToAnotherAwsAccount",
        input_schema = types.CancelDomainTransferToAnotherAwsAccountInput,
        output_schema = types.CancelDomainTransferToAnotherAwsAccountOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:checkDomainAvailability(input, options)
    return self:invokeOperation(input, {
        name = "CheckDomainAvailability",
        input_schema = types.CheckDomainAvailabilityInput,
        output_schema = types.CheckDomainAvailabilityOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:checkDomainTransferability(input, options)
    return self:invokeOperation(input, {
        name = "CheckDomainTransferability",
        input_schema = types.CheckDomainTransferabilityInput,
        output_schema = types.CheckDomainTransferabilityOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDomain(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomain",
        input_schema = types.DeleteDomainInput,
        output_schema = types.DeleteDomainOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteTagsForDomain(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTagsForDomain",
        input_schema = types.DeleteTagsForDomainInput,
        output_schema = types.DeleteTagsForDomainOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disableDomainAutoRenew(input, options)
    return self:invokeOperation(input, {
        name = "DisableDomainAutoRenew",
        input_schema = types.DisableDomainAutoRenewInput,
        output_schema = types.DisableDomainAutoRenewOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disableDomainTransferLock(input, options)
    return self:invokeOperation(input, {
        name = "DisableDomainTransferLock",
        input_schema = types.DisableDomainTransferLockInput,
        output_schema = types.DisableDomainTransferLockOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateDelegationSignerFromDomain(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateDelegationSignerFromDomain",
        input_schema = types.DisassociateDelegationSignerFromDomainInput,
        output_schema = types.DisassociateDelegationSignerFromDomainOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:enableDomainAutoRenew(input, options)
    return self:invokeOperation(input, {
        name = "EnableDomainAutoRenew",
        input_schema = types.EnableDomainAutoRenewInput,
        output_schema = types.EnableDomainAutoRenewOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:enableDomainTransferLock(input, options)
    return self:invokeOperation(input, {
        name = "EnableDomainTransferLock",
        input_schema = types.EnableDomainTransferLockInput,
        output_schema = types.EnableDomainTransferLockOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getContactReachabilityStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetContactReachabilityStatus",
        input_schema = types.GetContactReachabilityStatusInput,
        output_schema = types.GetContactReachabilityStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDomainDetail(input, options)
    return self:invokeOperation(input, {
        name = "GetDomainDetail",
        input_schema = types.GetDomainDetailInput,
        output_schema = types.GetDomainDetailOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDomainSuggestions(input, options)
    return self:invokeOperation(input, {
        name = "GetDomainSuggestions",
        input_schema = types.GetDomainSuggestionsInput,
        output_schema = types.GetDomainSuggestionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getOperationDetail(input, options)
    return self:invokeOperation(input, {
        name = "GetOperationDetail",
        input_schema = types.GetOperationDetailInput,
        output_schema = types.GetOperationDetailOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDomains(input, options)
    return self:invokeOperation(input, {
        name = "ListDomains",
        input_schema = types.ListDomainsInput,
        output_schema = types.ListDomainsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listOperations(input, options)
    return self:invokeOperation(input, {
        name = "ListOperations",
        input_schema = types.ListOperationsInput,
        output_schema = types.ListOperationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listPrices(input, options)
    return self:invokeOperation(input, {
        name = "ListPrices",
        input_schema = types.ListPricesInput,
        output_schema = types.ListPricesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForDomain(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForDomain",
        input_schema = types.ListTagsForDomainInput,
        output_schema = types.ListTagsForDomainOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:pushDomain(input, options)
    return self:invokeOperation(input, {
        name = "PushDomain",
        input_schema = types.PushDomainInput,
        output_schema = types.PushDomainOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:registerDomain(input, options)
    return self:invokeOperation(input, {
        name = "RegisterDomain",
        input_schema = types.RegisterDomainInput,
        output_schema = types.RegisterDomainOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:rejectDomainTransferFromAnotherAwsAccount(input, options)
    return self:invokeOperation(input, {
        name = "RejectDomainTransferFromAnotherAwsAccount",
        input_schema = types.RejectDomainTransferFromAnotherAwsAccountInput,
        output_schema = types.RejectDomainTransferFromAnotherAwsAccountOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:renewDomain(input, options)
    return self:invokeOperation(input, {
        name = "RenewDomain",
        input_schema = types.RenewDomainInput,
        output_schema = types.RenewDomainOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:resendContactReachabilityEmail(input, options)
    return self:invokeOperation(input, {
        name = "ResendContactReachabilityEmail",
        input_schema = types.ResendContactReachabilityEmailInput,
        output_schema = types.ResendContactReachabilityEmailOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:resendOperationAuthorization(input, options)
    return self:invokeOperation(input, {
        name = "ResendOperationAuthorization",
        input_schema = types.ResendOperationAuthorizationInput,
        output_schema = types.ResendOperationAuthorizationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:retrieveDomainAuthCode(input, options)
    return self:invokeOperation(input, {
        name = "RetrieveDomainAuthCode",
        input_schema = types.RetrieveDomainAuthCodeInput,
        output_schema = types.RetrieveDomainAuthCodeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:transferDomain(input, options)
    return self:invokeOperation(input, {
        name = "TransferDomain",
        input_schema = types.TransferDomainInput,
        output_schema = types.TransferDomainOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:transferDomainToAnotherAwsAccount(input, options)
    return self:invokeOperation(input, {
        name = "TransferDomainToAnotherAwsAccount",
        input_schema = types.TransferDomainToAnotherAwsAccountInput,
        output_schema = types.TransferDomainToAnotherAwsAccountOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateDomainContact(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDomainContact",
        input_schema = types.UpdateDomainContactInput,
        output_schema = types.UpdateDomainContactOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateDomainContactPrivacy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDomainContactPrivacy",
        input_schema = types.UpdateDomainContactPrivacyInput,
        output_schema = types.UpdateDomainContactPrivacyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateDomainNameservers(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDomainNameservers",
        input_schema = types.UpdateDomainNameserversInput,
        output_schema = types.UpdateDomainNameserversOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateTagsForDomain(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTagsForDomain",
        input_schema = types.UpdateTagsForDomainInput,
        output_schema = types.UpdateTagsForDomainOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:viewBilling(input, options)
    return self:invokeOperation(input, {
        name = "ViewBilling",
        input_schema = types.ViewBillingInput,
        output_schema = types.ViewBillingOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
