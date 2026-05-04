local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("socialmessaging.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("socialmessaging.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "SocialMessaging"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "social-messaging", signing_region = cfg.region } }
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

function Client:associateWhatsAppBusinessAccount(input, options)
    return self:invokeOperation(input, {
        name = "AssociateWhatsAppBusinessAccount",
        input_schema = types.AssociateWhatsAppBusinessAccountInput,
        output_schema = types.AssociateWhatsAppBusinessAccountOutput,
        http_method = "POST",
        http_path = "/v1/whatsapp/signup",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWhatsAppMessageTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateWhatsAppMessageTemplate",
        input_schema = types.CreateWhatsAppMessageTemplateInput,
        output_schema = types.CreateWhatsAppMessageTemplateOutput,
        http_method = "POST",
        http_path = "/v1/whatsapp/template/put",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWhatsAppMessageTemplateFromLibrary(input, options)
    return self:invokeOperation(input, {
        name = "CreateWhatsAppMessageTemplateFromLibrary",
        input_schema = types.CreateWhatsAppMessageTemplateFromLibraryInput,
        output_schema = types.CreateWhatsAppMessageTemplateFromLibraryOutput,
        http_method = "POST",
        http_path = "/v1/whatsapp/template/create",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWhatsAppMessageTemplateMedia(input, options)
    return self:invokeOperation(input, {
        name = "CreateWhatsAppMessageTemplateMedia",
        input_schema = types.CreateWhatsAppMessageTemplateMediaInput,
        output_schema = types.CreateWhatsAppMessageTemplateMediaOutput,
        http_method = "POST",
        http_path = "/v1/whatsapp/template/media",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWhatsAppMessageMedia(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWhatsAppMessageMedia",
        input_schema = types.DeleteWhatsAppMessageMediaInput,
        output_schema = types.DeleteWhatsAppMessageMediaOutput,
        http_method = "DELETE",
        http_path = "/v1/whatsapp/media",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWhatsAppMessageTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWhatsAppMessageTemplate",
        input_schema = types.DeleteWhatsAppMessageTemplateInput,
        output_schema = types.DeleteWhatsAppMessageTemplateOutput,
        http_method = "DELETE",
        http_path = "/v1/whatsapp/template",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateWhatsAppBusinessAccount(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateWhatsAppBusinessAccount",
        input_schema = types.DisassociateWhatsAppBusinessAccountInput,
        output_schema = types.DisassociateWhatsAppBusinessAccountOutput,
        http_method = "DELETE",
        http_path = "/v1/whatsapp/waba/disassociate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLinkedWhatsAppBusinessAccount(input, options)
    return self:invokeOperation(input, {
        name = "GetLinkedWhatsAppBusinessAccount",
        input_schema = types.GetLinkedWhatsAppBusinessAccountInput,
        output_schema = types.GetLinkedWhatsAppBusinessAccountOutput,
        http_method = "GET",
        http_path = "/v1/whatsapp/waba/details",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLinkedWhatsAppBusinessAccountPhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "GetLinkedWhatsAppBusinessAccountPhoneNumber",
        input_schema = types.GetLinkedWhatsAppBusinessAccountPhoneNumberInput,
        output_schema = types.GetLinkedWhatsAppBusinessAccountPhoneNumberOutput,
        http_method = "GET",
        http_path = "/v1/whatsapp/waba/phone/details",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWhatsAppMessageMedia(input, options)
    return self:invokeOperation(input, {
        name = "GetWhatsAppMessageMedia",
        input_schema = types.GetWhatsAppMessageMediaInput,
        output_schema = types.GetWhatsAppMessageMediaOutput,
        http_method = "POST",
        http_path = "/v1/whatsapp/media/get",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWhatsAppMessageTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetWhatsAppMessageTemplate",
        input_schema = types.GetWhatsAppMessageTemplateInput,
        output_schema = types.GetWhatsAppMessageTemplateOutput,
        http_method = "GET",
        http_path = "/v1/whatsapp/template",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLinkedWhatsAppBusinessAccounts(input, options)
    return self:invokeOperation(input, {
        name = "ListLinkedWhatsAppBusinessAccounts",
        input_schema = types.ListLinkedWhatsAppBusinessAccountsInput,
        output_schema = types.ListLinkedWhatsAppBusinessAccountsOutput,
        http_method = "GET",
        http_path = "/v1/whatsapp/waba/list",
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
        http_method = "GET",
        http_path = "/v1/tags/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWhatsAppMessageTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListWhatsAppMessageTemplates",
        input_schema = types.ListWhatsAppMessageTemplatesInput,
        output_schema = types.ListWhatsAppMessageTemplatesOutput,
        http_method = "GET",
        http_path = "/v1/whatsapp/template/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWhatsAppTemplateLibrary(input, options)
    return self:invokeOperation(input, {
        name = "ListWhatsAppTemplateLibrary",
        input_schema = types.ListWhatsAppTemplateLibraryInput,
        output_schema = types.ListWhatsAppTemplateLibraryOutput,
        http_method = "POST",
        http_path = "/v1/whatsapp/template/library",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:postWhatsAppMessageMedia(input, options)
    return self:invokeOperation(input, {
        name = "PostWhatsAppMessageMedia",
        input_schema = types.PostWhatsAppMessageMediaInput,
        output_schema = types.PostWhatsAppMessageMediaOutput,
        http_method = "POST",
        http_path = "/v1/whatsapp/media",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putWhatsAppBusinessAccountEventDestinations(input, options)
    return self:invokeOperation(input, {
        name = "PutWhatsAppBusinessAccountEventDestinations",
        input_schema = types.PutWhatsAppBusinessAccountEventDestinationsInput,
        output_schema = types.PutWhatsAppBusinessAccountEventDestinationsOutput,
        http_method = "PUT",
        http_path = "/v1/whatsapp/waba/eventdestinations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendWhatsAppMessage(input, options)
    return self:invokeOperation(input, {
        name = "SendWhatsAppMessage",
        input_schema = types.SendWhatsAppMessageInput,
        output_schema = types.SendWhatsAppMessageOutput,
        http_method = "POST",
        http_path = "/v1/whatsapp/send",
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
        http_path = "/v1/tags/tag-resource",
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
        http_path = "/v1/tags/untag-resource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWhatsAppMessageTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWhatsAppMessageTemplate",
        input_schema = types.UpdateWhatsAppMessageTemplateInput,
        output_schema = types.UpdateWhatsAppMessageTemplateOutput,
        http_method = "POST",
        http_path = "/v1/whatsapp/template",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
