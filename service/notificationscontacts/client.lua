local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("notificationscontacts.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("notificationscontacts.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "NotificationsContacts"
    cfg.signing_name = "notifications-contacts"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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

function Client:activateEmailContact(input, options)
    return self:invokeOperation(input, {
        name = "ActivateEmailContact",
        input_schema = types.ActivateEmailContactInput,
        output_schema = types.ActivateEmailContactOutput,
        http_method = "PUT",
        http_path = "/emailcontacts/{arn}/activate/{code}",
    }, options)
end

function Client:createEmailContact(input, options)
    return self:invokeOperation(input, {
        name = "CreateEmailContact",
        input_schema = types.CreateEmailContactInput,
        output_schema = types.CreateEmailContactOutput,
        http_method = "POST",
        http_path = "/2022-09-19/emailcontacts",
    }, options)
end

function Client:deleteEmailContact(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEmailContact",
        input_schema = types.DeleteEmailContactInput,
        output_schema = types.DeleteEmailContactOutput,
        http_method = "DELETE",
        http_path = "/emailcontacts/{arn}",
    }, options)
end

function Client:getEmailContact(input, options)
    return self:invokeOperation(input, {
        name = "GetEmailContact",
        input_schema = types.GetEmailContactInput,
        output_schema = types.GetEmailContactOutput,
        http_method = "GET",
        http_path = "/emailcontacts/{arn}",
    }, options)
end

function Client:listEmailContacts(input, options)
    return self:invokeOperation(input, {
        name = "ListEmailContacts",
        input_schema = types.ListEmailContactsInput,
        output_schema = types.ListEmailContactsOutput,
        http_method = "GET",
        http_path = "/emailcontacts",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{arn}",
    }, options)
end

function Client:sendActivationCode(input, options)
    return self:invokeOperation(input, {
        name = "SendActivationCode",
        input_schema = types.SendActivationCodeInput,
        output_schema = types.SendActivationCodeOutput,
        http_method = "POST",
        http_path = "/2022-10-31/emailcontacts/{arn}/activate/send",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{arn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{arn}",
    }, options)
end

return M
