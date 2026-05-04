local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("ssmcontacts.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("ssmcontacts.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "SSMContacts"
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
        input_schema = types.AcceptPageInput,
        output_schema = types.AcceptPageOutput,
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
        input_schema = types.ActivateContactChannelInput,
        output_schema = types.ActivateContactChannelOutput,
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
        input_schema = types.CreateContactInput,
        output_schema = types.CreateContactOutput,
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
        input_schema = types.CreateContactChannelInput,
        output_schema = types.CreateContactChannelOutput,
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
        input_schema = types.CreateRotationInput,
        output_schema = types.CreateRotationOutput,
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
        input_schema = types.CreateRotationOverrideInput,
        output_schema = types.CreateRotationOverrideOutput,
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
        input_schema = types.DeactivateContactChannelInput,
        output_schema = types.DeactivateContactChannelOutput,
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
        input_schema = types.DeleteContactInput,
        output_schema = types.DeleteContactOutput,
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
        input_schema = types.DeleteContactChannelInput,
        output_schema = types.DeleteContactChannelOutput,
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
        input_schema = types.DeleteRotationInput,
        output_schema = types.DeleteRotationOutput,
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
        input_schema = types.DeleteRotationOverrideInput,
        output_schema = types.DeleteRotationOverrideOutput,
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
        input_schema = types.DescribeEngagementInput,
        output_schema = types.DescribeEngagementOutput,
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
        input_schema = types.DescribePageInput,
        output_schema = types.DescribePageOutput,
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
        input_schema = types.GetContactInput,
        output_schema = types.GetContactOutput,
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
        input_schema = types.GetContactChannelInput,
        output_schema = types.GetContactChannelOutput,
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
        input_schema = types.GetContactPolicyInput,
        output_schema = types.GetContactPolicyOutput,
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
        input_schema = types.GetRotationInput,
        output_schema = types.GetRotationOutput,
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
        input_schema = types.GetRotationOverrideInput,
        output_schema = types.GetRotationOverrideOutput,
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
        input_schema = types.ListContactChannelsInput,
        output_schema = types.ListContactChannelsOutput,
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
        input_schema = types.ListContactsInput,
        output_schema = types.ListContactsOutput,
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
        input_schema = types.ListEngagementsInput,
        output_schema = types.ListEngagementsOutput,
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
        input_schema = types.ListPageReceiptsInput,
        output_schema = types.ListPageReceiptsOutput,
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
        input_schema = types.ListPageResolutionsInput,
        output_schema = types.ListPageResolutionsOutput,
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
        input_schema = types.ListPagesByContactInput,
        output_schema = types.ListPagesByContactOutput,
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
        input_schema = types.ListPagesByEngagementInput,
        output_schema = types.ListPagesByEngagementOutput,
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
        input_schema = types.ListPreviewRotationShiftsInput,
        output_schema = types.ListPreviewRotationShiftsOutput,
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
        input_schema = types.ListRotationOverridesInput,
        output_schema = types.ListRotationOverridesOutput,
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
        input_schema = types.ListRotationsInput,
        output_schema = types.ListRotationsOutput,
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
        input_schema = types.ListRotationShiftsInput,
        output_schema = types.ListRotationShiftsOutput,
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

function Client:putContactPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutContactPolicy",
        input_schema = types.PutContactPolicyInput,
        output_schema = types.PutContactPolicyOutput,
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
        input_schema = types.SendActivationCodeInput,
        output_schema = types.SendActivationCodeOutput,
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
        input_schema = types.StartEngagementInput,
        output_schema = types.StartEngagementOutput,
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
        input_schema = types.StopEngagementInput,
        output_schema = types.StopEngagementOutput,
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

function Client:updateContact(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContact",
        input_schema = types.UpdateContactInput,
        output_schema = types.UpdateContactOutput,
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
        input_schema = types.UpdateContactChannelInput,
        output_schema = types.UpdateContactChannelOutput,
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
        input_schema = types.UpdateRotationInput,
        output_schema = types.UpdateRotationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
