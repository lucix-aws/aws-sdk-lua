local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("ssmcontacts.endpoint_rules")
local schemas = require("ssmcontacts.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "SSMContacts"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ssm-contacts", signing_region = cfg.region } }
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

function Client:acceptPage(input, options)
    return self:invokeOperation(input, {
        name = "AcceptPage",
        input_schema = schemas.AcceptPageInput,
        output_schema = schemas.AcceptPageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:activateContactChannel(input, options)
    return self:invokeOperation(input, {
        name = "ActivateContactChannel",
        input_schema = schemas.ActivateContactChannelInput,
        output_schema = schemas.ActivateContactChannelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createContact(input, options)
    return self:invokeOperation(input, {
        name = "CreateContact",
        input_schema = schemas.CreateContactInput,
        output_schema = schemas.CreateContactOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createContactChannel(input, options)
    return self:invokeOperation(input, {
        name = "CreateContactChannel",
        input_schema = schemas.CreateContactChannelInput,
        output_schema = schemas.CreateContactChannelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRotation(input, options)
    return self:invokeOperation(input, {
        name = "CreateRotation",
        input_schema = schemas.CreateRotationInput,
        output_schema = schemas.CreateRotationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRotationOverride(input, options)
    return self:invokeOperation(input, {
        name = "CreateRotationOverride",
        input_schema = schemas.CreateRotationOverrideInput,
        output_schema = schemas.CreateRotationOverrideOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deactivateContactChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeactivateContactChannel",
        input_schema = schemas.DeactivateContactChannelInput,
        output_schema = schemas.DeactivateContactChannelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteContact(input, options)
    return self:invokeOperation(input, {
        name = "DeleteContact",
        input_schema = schemas.DeleteContactInput,
        output_schema = schemas.DeleteContactOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteContactChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteContactChannel",
        input_schema = schemas.DeleteContactChannelInput,
        output_schema = schemas.DeleteContactChannelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRotation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRotation",
        input_schema = schemas.DeleteRotationInput,
        output_schema = schemas.DeleteRotationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRotationOverride(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRotationOverride",
        input_schema = schemas.DeleteRotationOverrideInput,
        output_schema = schemas.DeleteRotationOverrideOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEngagement(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEngagement",
        input_schema = schemas.DescribeEngagementInput,
        output_schema = schemas.DescribeEngagementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePage(input, options)
    return self:invokeOperation(input, {
        name = "DescribePage",
        input_schema = schemas.DescribePageInput,
        output_schema = schemas.DescribePageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getContact(input, options)
    return self:invokeOperation(input, {
        name = "GetContact",
        input_schema = schemas.GetContactInput,
        output_schema = schemas.GetContactOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getContactChannel(input, options)
    return self:invokeOperation(input, {
        name = "GetContactChannel",
        input_schema = schemas.GetContactChannelInput,
        output_schema = schemas.GetContactChannelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getContactPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetContactPolicy",
        input_schema = schemas.GetContactPolicyInput,
        output_schema = schemas.GetContactPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRotation(input, options)
    return self:invokeOperation(input, {
        name = "GetRotation",
        input_schema = schemas.GetRotationInput,
        output_schema = schemas.GetRotationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRotationOverride(input, options)
    return self:invokeOperation(input, {
        name = "GetRotationOverride",
        input_schema = schemas.GetRotationOverrideInput,
        output_schema = schemas.GetRotationOverrideOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listContactChannels(input, options)
    return self:invokeOperation(input, {
        name = "ListContactChannels",
        input_schema = schemas.ListContactChannelsInput,
        output_schema = schemas.ListContactChannelsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listContacts(input, options)
    return self:invokeOperation(input, {
        name = "ListContacts",
        input_schema = schemas.ListContactsInput,
        output_schema = schemas.ListContactsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEngagements(input, options)
    return self:invokeOperation(input, {
        name = "ListEngagements",
        input_schema = schemas.ListEngagementsInput,
        output_schema = schemas.ListEngagementsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPageReceipts(input, options)
    return self:invokeOperation(input, {
        name = "ListPageReceipts",
        input_schema = schemas.ListPageReceiptsInput,
        output_schema = schemas.ListPageReceiptsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPageResolutions(input, options)
    return self:invokeOperation(input, {
        name = "ListPageResolutions",
        input_schema = schemas.ListPageResolutionsInput,
        output_schema = schemas.ListPageResolutionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPagesByContact(input, options)
    return self:invokeOperation(input, {
        name = "ListPagesByContact",
        input_schema = schemas.ListPagesByContactInput,
        output_schema = schemas.ListPagesByContactOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPagesByEngagement(input, options)
    return self:invokeOperation(input, {
        name = "ListPagesByEngagement",
        input_schema = schemas.ListPagesByEngagementInput,
        output_schema = schemas.ListPagesByEngagementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPreviewRotationShifts(input, options)
    return self:invokeOperation(input, {
        name = "ListPreviewRotationShifts",
        input_schema = schemas.ListPreviewRotationShiftsInput,
        output_schema = schemas.ListPreviewRotationShiftsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRotationOverrides(input, options)
    return self:invokeOperation(input, {
        name = "ListRotationOverrides",
        input_schema = schemas.ListRotationOverridesInput,
        output_schema = schemas.ListRotationOverridesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRotations(input, options)
    return self:invokeOperation(input, {
        name = "ListRotations",
        input_schema = schemas.ListRotationsInput,
        output_schema = schemas.ListRotationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRotationShifts(input, options)
    return self:invokeOperation(input, {
        name = "ListRotationShifts",
        input_schema = schemas.ListRotationShiftsInput,
        output_schema = schemas.ListRotationShiftsOutput,
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

function Client:putContactPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutContactPolicy",
        input_schema = schemas.PutContactPolicyInput,
        output_schema = schemas.PutContactPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendActivationCode(input, options)
    return self:invokeOperation(input, {
        name = "SendActivationCode",
        input_schema = schemas.SendActivationCodeInput,
        output_schema = schemas.SendActivationCodeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startEngagement(input, options)
    return self:invokeOperation(input, {
        name = "StartEngagement",
        input_schema = schemas.StartEngagementInput,
        output_schema = schemas.StartEngagementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopEngagement(input, options)
    return self:invokeOperation(input, {
        name = "StopEngagement",
        input_schema = schemas.StopEngagementInput,
        output_schema = schemas.StopEngagementOutput,
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

function Client:updateContact(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContact",
        input_schema = schemas.UpdateContactInput,
        output_schema = schemas.UpdateContactOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateContactChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContactChannel",
        input_schema = schemas.UpdateContactChannelInput,
        output_schema = schemas.UpdateContactChannelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRotation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRotation",
        input_schema = schemas.UpdateRotationInput,
        output_schema = schemas.UpdateRotationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
