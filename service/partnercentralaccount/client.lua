local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("partnercentralaccount.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("partnercentralaccount.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "PartnerCentralAccount"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "partnercentral-account", signing_region = cfg.region } }
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

function Client:acceptConnectionInvitation(input, options)
    return self:invokeOperation(input, {
        name = "AcceptConnectionInvitation",
        input_schema = types.AcceptConnectionInvitationInput,
        output_schema = types.AcceptConnectionInvitationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateAwsTrainingCertificationEmailDomain(input, options)
    return self:invokeOperation(input, {
        name = "AssociateAwsTrainingCertificationEmailDomain",
        input_schema = types.AssociateAwsTrainingCertificationEmailDomainInput,
        output_schema = types.AssociateAwsTrainingCertificationEmailDomainOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelConnection(input, options)
    return self:invokeOperation(input, {
        name = "CancelConnection",
        input_schema = types.CancelConnectionInput,
        output_schema = types.CancelConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelConnectionInvitation(input, options)
    return self:invokeOperation(input, {
        name = "CancelConnectionInvitation",
        input_schema = types.CancelConnectionInvitationInput,
        output_schema = types.CancelConnectionInvitationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelProfileUpdateTask(input, options)
    return self:invokeOperation(input, {
        name = "CancelProfileUpdateTask",
        input_schema = types.CancelProfileUpdateTaskInput,
        output_schema = types.CancelProfileUpdateTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConnectionInvitation(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnectionInvitation",
        input_schema = types.CreateConnectionInvitationInput,
        output_schema = types.CreateConnectionInvitationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPartner(input, options)
    return self:invokeOperation(input, {
        name = "CreatePartner",
        input_schema = types.CreatePartnerInput,
        output_schema = types.CreatePartnerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateAwsTrainingCertificationEmailDomain(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateAwsTrainingCertificationEmailDomain",
        input_schema = types.DisassociateAwsTrainingCertificationEmailDomainInput,
        output_schema = types.DisassociateAwsTrainingCertificationEmailDomainOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAllianceLeadContact(input, options)
    return self:invokeOperation(input, {
        name = "GetAllianceLeadContact",
        input_schema = types.GetAllianceLeadContactInput,
        output_schema = types.GetAllianceLeadContactOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConnection(input, options)
    return self:invokeOperation(input, {
        name = "GetConnection",
        input_schema = types.GetConnectionInput,
        output_schema = types.GetConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConnectionInvitation(input, options)
    return self:invokeOperation(input, {
        name = "GetConnectionInvitation",
        input_schema = types.GetConnectionInvitationInput,
        output_schema = types.GetConnectionInvitationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConnectionPreferences(input, options)
    return self:invokeOperation(input, {
        name = "GetConnectionPreferences",
        input_schema = types.GetConnectionPreferencesInput,
        output_schema = types.GetConnectionPreferencesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPartner(input, options)
    return self:invokeOperation(input, {
        name = "GetPartner",
        input_schema = types.GetPartnerInput,
        output_schema = types.GetPartnerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getProfileUpdateTask(input, options)
    return self:invokeOperation(input, {
        name = "GetProfileUpdateTask",
        input_schema = types.GetProfileUpdateTaskInput,
        output_schema = types.GetProfileUpdateTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getProfileVisibility(input, options)
    return self:invokeOperation(input, {
        name = "GetProfileVisibility",
        input_schema = types.GetProfileVisibilityInput,
        output_schema = types.GetProfileVisibilityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVerification(input, options)
    return self:invokeOperation(input, {
        name = "GetVerification",
        input_schema = types.GetVerificationInput,
        output_schema = types.GetVerificationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConnectionInvitations(input, options)
    return self:invokeOperation(input, {
        name = "ListConnectionInvitations",
        input_schema = types.ListConnectionInvitationsInput,
        output_schema = types.ListConnectionInvitationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConnections(input, options)
    return self:invokeOperation(input, {
        name = "ListConnections",
        input_schema = types.ListConnectionsInput,
        output_schema = types.ListConnectionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPartners(input, options)
    return self:invokeOperation(input, {
        name = "ListPartners",
        input_schema = types.ListPartnersInput,
        output_schema = types.ListPartnersOutput,
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

function Client:putAllianceLeadContact(input, options)
    return self:invokeOperation(input, {
        name = "PutAllianceLeadContact",
        input_schema = types.PutAllianceLeadContactInput,
        output_schema = types.PutAllianceLeadContactOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putProfileVisibility(input, options)
    return self:invokeOperation(input, {
        name = "PutProfileVisibility",
        input_schema = types.PutProfileVisibilityInput,
        output_schema = types.PutProfileVisibilityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectConnectionInvitation(input, options)
    return self:invokeOperation(input, {
        name = "RejectConnectionInvitation",
        input_schema = types.RejectConnectionInvitationInput,
        output_schema = types.RejectConnectionInvitationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendEmailVerificationCode(input, options)
    return self:invokeOperation(input, {
        name = "SendEmailVerificationCode",
        input_schema = types.SendEmailVerificationCodeInput,
        output_schema = types.SendEmailVerificationCodeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startProfileUpdateTask(input, options)
    return self:invokeOperation(input, {
        name = "StartProfileUpdateTask",
        input_schema = types.StartProfileUpdateTaskInput,
        output_schema = types.StartProfileUpdateTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startVerification(input, options)
    return self:invokeOperation(input, {
        name = "StartVerification",
        input_schema = types.StartVerificationInput,
        output_schema = types.StartVerificationOutput,
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

function Client:updateConnectionPreferences(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnectionPreferences",
        input_schema = types.UpdateConnectionPreferencesInput,
        output_schema = types.UpdateConnectionPreferencesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
