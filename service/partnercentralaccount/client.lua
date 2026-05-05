local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("partnercentralaccount.endpoint_rules")
local schemas = require("partnercentralaccount.schemas")
local sdk_defaults = require("aws.sdk_defaults")

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
        input_schema = schemas.AcceptConnectionInvitationInput,
        output_schema = schemas.AcceptConnectionInvitationOutput,
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
        input_schema = schemas.AssociateAwsTrainingCertificationEmailDomainInput,
        output_schema = schemas.AssociateAwsTrainingCertificationEmailDomainOutput,
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
        input_schema = schemas.CancelConnectionInput,
        output_schema = schemas.CancelConnectionOutput,
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
        input_schema = schemas.CancelConnectionInvitationInput,
        output_schema = schemas.CancelConnectionInvitationOutput,
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
        input_schema = schemas.CancelProfileUpdateTaskInput,
        output_schema = schemas.CancelProfileUpdateTaskOutput,
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
        input_schema = schemas.CreateConnectionInvitationInput,
        output_schema = schemas.CreateConnectionInvitationOutput,
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
        input_schema = schemas.CreatePartnerInput,
        output_schema = schemas.CreatePartnerOutput,
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
        input_schema = schemas.DisassociateAwsTrainingCertificationEmailDomainInput,
        output_schema = schemas.DisassociateAwsTrainingCertificationEmailDomainOutput,
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
        input_schema = schemas.GetAllianceLeadContactInput,
        output_schema = schemas.GetAllianceLeadContactOutput,
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
        input_schema = schemas.GetConnectionInput,
        output_schema = schemas.GetConnectionOutput,
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
        input_schema = schemas.GetConnectionInvitationInput,
        output_schema = schemas.GetConnectionInvitationOutput,
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
        input_schema = schemas.GetConnectionPreferencesInput,
        output_schema = schemas.GetConnectionPreferencesOutput,
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
        input_schema = schemas.GetPartnerInput,
        output_schema = schemas.GetPartnerOutput,
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
        input_schema = schemas.GetProfileUpdateTaskInput,
        output_schema = schemas.GetProfileUpdateTaskOutput,
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
        input_schema = schemas.GetProfileVisibilityInput,
        output_schema = schemas.GetProfileVisibilityOutput,
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
        input_schema = schemas.GetVerificationInput,
        output_schema = schemas.GetVerificationOutput,
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
        input_schema = schemas.ListConnectionInvitationsInput,
        output_schema = schemas.ListConnectionInvitationsOutput,
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
        input_schema = schemas.ListConnectionsInput,
        output_schema = schemas.ListConnectionsOutput,
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
        input_schema = schemas.ListPartnersInput,
        output_schema = schemas.ListPartnersOutput,
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

function Client:putAllianceLeadContact(input, options)
    return self:invokeOperation(input, {
        name = "PutAllianceLeadContact",
        input_schema = schemas.PutAllianceLeadContactInput,
        output_schema = schemas.PutAllianceLeadContactOutput,
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
        input_schema = schemas.PutProfileVisibilityInput,
        output_schema = schemas.PutProfileVisibilityOutput,
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
        input_schema = schemas.RejectConnectionInvitationInput,
        output_schema = schemas.RejectConnectionInvitationOutput,
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
        input_schema = schemas.SendEmailVerificationCodeInput,
        output_schema = schemas.SendEmailVerificationCodeOutput,
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
        input_schema = schemas.StartProfileUpdateTaskInput,
        output_schema = schemas.StartProfileUpdateTaskOutput,
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
        input_schema = schemas.StartVerificationInput,
        output_schema = schemas.StartVerificationOutput,
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

function Client:updateConnectionPreferences(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnectionPreferences",
        input_schema = schemas.UpdateConnectionPreferencesInput,
        output_schema = schemas.UpdateConnectionPreferencesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
