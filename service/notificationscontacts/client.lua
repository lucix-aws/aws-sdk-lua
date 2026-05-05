local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("notificationscontacts.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("notificationscontacts.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "NotificationsContacts"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "notifications-contacts", signing_region = cfg.region } }
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

function Client:activateEmailContact(input, options)
    return self:invokeOperation(input, {
        name = "ActivateEmailContact",
        input_schema = schemas.ActivateEmailContactInput,
        output_schema = schemas.ActivateEmailContactOutput,
        http_method = "PUT",
        http_path = "/emailcontacts/{arn}/activate/{code}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEmailContact(input, options)
    return self:invokeOperation(input, {
        name = "CreateEmailContact",
        input_schema = schemas.CreateEmailContactInput,
        output_schema = schemas.CreateEmailContactOutput,
        http_method = "POST",
        http_path = "/2022-09-19/emailcontacts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEmailContact(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEmailContact",
        input_schema = schemas.DeleteEmailContactInput,
        output_schema = schemas.DeleteEmailContactOutput,
        http_method = "DELETE",
        http_path = "/emailcontacts/{arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEmailContact(input, options)
    return self:invokeOperation(input, {
        name = "GetEmailContact",
        input_schema = schemas.GetEmailContactInput,
        output_schema = schemas.GetEmailContactOutput,
        http_method = "GET",
        http_path = "/emailcontacts/{arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEmailContacts(input, options)
    return self:invokeOperation(input, {
        name = "ListEmailContacts",
        input_schema = schemas.ListEmailContactsInput,
        output_schema = schemas.ListEmailContactsOutput,
        http_method = "GET",
        http_path = "/emailcontacts",
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
        http_method = "GET",
        http_path = "/tags/{arn}",
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
        http_path = "/2022-10-31/emailcontacts/{arn}/activate/send",
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
        http_path = "/tags/{arn}",
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
        http_method = "DELETE",
        http_path = "/tags/{arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
