local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("rolesanywhere.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("rolesanywhere.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "RolesAnywhere"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "rolesanywhere", signing_region = cfg.region } }
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

function Client:createProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateProfile",
        input_schema = schemas.CreateProfileInput,
        output_schema = schemas.CreateProfileOutput,
        http_method = "POST",
        http_path = "/profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTrustAnchor(input, options)
    return self:invokeOperation(input, {
        name = "CreateTrustAnchor",
        input_schema = schemas.CreateTrustAnchorInput,
        output_schema = schemas.CreateTrustAnchorOutput,
        http_method = "POST",
        http_path = "/trustanchors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAttributeMapping(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAttributeMapping",
        input_schema = schemas.DeleteAttributeMappingInput,
        output_schema = schemas.DeleteAttributeMappingOutput,
        http_method = "DELETE",
        http_path = "/profiles/{profileId}/mappings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCrl(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCrl",
        input_schema = schemas.DeleteCrlInput,
        output_schema = schemas.DeleteCrlOutput,
        http_method = "DELETE",
        http_path = "/crl/{crlId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProfile",
        input_schema = schemas.DeleteProfileInput,
        output_schema = schemas.DeleteProfileOutput,
        http_method = "DELETE",
        http_path = "/profile/{profileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTrustAnchor(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTrustAnchor",
        input_schema = schemas.DeleteTrustAnchorInput,
        output_schema = schemas.DeleteTrustAnchorOutput,
        http_method = "DELETE",
        http_path = "/trustanchor/{trustAnchorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableCrl(input, options)
    return self:invokeOperation(input, {
        name = "DisableCrl",
        input_schema = schemas.DisableCrlInput,
        output_schema = schemas.DisableCrlOutput,
        http_method = "POST",
        http_path = "/crl/{crlId}/disable",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableProfile(input, options)
    return self:invokeOperation(input, {
        name = "DisableProfile",
        input_schema = schemas.DisableProfileInput,
        output_schema = schemas.DisableProfileOutput,
        http_method = "POST",
        http_path = "/profile/{profileId}/disable",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableTrustAnchor(input, options)
    return self:invokeOperation(input, {
        name = "DisableTrustAnchor",
        input_schema = schemas.DisableTrustAnchorInput,
        output_schema = schemas.DisableTrustAnchorOutput,
        http_method = "POST",
        http_path = "/trustanchor/{trustAnchorId}/disable",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableCrl(input, options)
    return self:invokeOperation(input, {
        name = "EnableCrl",
        input_schema = schemas.EnableCrlInput,
        output_schema = schemas.EnableCrlOutput,
        http_method = "POST",
        http_path = "/crl/{crlId}/enable",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableProfile(input, options)
    return self:invokeOperation(input, {
        name = "EnableProfile",
        input_schema = schemas.EnableProfileInput,
        output_schema = schemas.EnableProfileOutput,
        http_method = "POST",
        http_path = "/profile/{profileId}/enable",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableTrustAnchor(input, options)
    return self:invokeOperation(input, {
        name = "EnableTrustAnchor",
        input_schema = schemas.EnableTrustAnchorInput,
        output_schema = schemas.EnableTrustAnchorOutput,
        http_method = "POST",
        http_path = "/trustanchor/{trustAnchorId}/enable",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCrl(input, options)
    return self:invokeOperation(input, {
        name = "GetCrl",
        input_schema = schemas.GetCrlInput,
        output_schema = schemas.GetCrlOutput,
        http_method = "GET",
        http_path = "/crl/{crlId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetProfile",
        input_schema = schemas.GetProfileInput,
        output_schema = schemas.GetProfileOutput,
        http_method = "GET",
        http_path = "/profile/{profileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSubject(input, options)
    return self:invokeOperation(input, {
        name = "GetSubject",
        input_schema = schemas.GetSubjectInput,
        output_schema = schemas.GetSubjectOutput,
        http_method = "GET",
        http_path = "/subject/{subjectId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTrustAnchor(input, options)
    return self:invokeOperation(input, {
        name = "GetTrustAnchor",
        input_schema = schemas.GetTrustAnchorInput,
        output_schema = schemas.GetTrustAnchorOutput,
        http_method = "GET",
        http_path = "/trustanchor/{trustAnchorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importCrl(input, options)
    return self:invokeOperation(input, {
        name = "ImportCrl",
        input_schema = schemas.ImportCrlInput,
        output_schema = schemas.ImportCrlOutput,
        http_method = "POST",
        http_path = "/crls",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCrls(input, options)
    return self:invokeOperation(input, {
        name = "ListCrls",
        input_schema = schemas.ListCrlsInput,
        output_schema = schemas.ListCrlsOutput,
        http_method = "GET",
        http_path = "/crls",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListProfiles",
        input_schema = schemas.ListProfilesInput,
        output_schema = schemas.ListProfilesOutput,
        http_method = "GET",
        http_path = "/profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSubjects(input, options)
    return self:invokeOperation(input, {
        name = "ListSubjects",
        input_schema = schemas.ListSubjectsInput,
        output_schema = schemas.ListSubjectsOutput,
        http_method = "GET",
        http_path = "/subjects",
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
        http_path = "/ListTagsForResource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTrustAnchors(input, options)
    return self:invokeOperation(input, {
        name = "ListTrustAnchors",
        input_schema = schemas.ListTrustAnchorsInput,
        output_schema = schemas.ListTrustAnchorsOutput,
        http_method = "GET",
        http_path = "/trustanchors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putAttributeMapping(input, options)
    return self:invokeOperation(input, {
        name = "PutAttributeMapping",
        input_schema = schemas.PutAttributeMappingInput,
        output_schema = schemas.PutAttributeMappingOutput,
        http_method = "PUT",
        http_path = "/profiles/{profileId}/mappings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putNotificationSettings(input, options)
    return self:invokeOperation(input, {
        name = "PutNotificationSettings",
        input_schema = schemas.PutNotificationSettingsInput,
        output_schema = schemas.PutNotificationSettingsOutput,
        http_method = "PATCH",
        http_path = "/put-notifications-settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resetNotificationSettings(input, options)
    return self:invokeOperation(input, {
        name = "ResetNotificationSettings",
        input_schema = schemas.ResetNotificationSettingsInput,
        output_schema = schemas.ResetNotificationSettingsOutput,
        http_method = "PATCH",
        http_path = "/reset-notifications-settings",
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
        http_path = "/TagResource",
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
        http_path = "/UntagResource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCrl(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCrl",
        input_schema = schemas.UpdateCrlInput,
        output_schema = schemas.UpdateCrlOutput,
        http_method = "PATCH",
        http_path = "/crl/{crlId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProfile",
        input_schema = schemas.UpdateProfileInput,
        output_schema = schemas.UpdateProfileOutput,
        http_method = "PATCH",
        http_path = "/profile/{profileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTrustAnchor(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTrustAnchor",
        input_schema = schemas.UpdateTrustAnchorInput,
        output_schema = schemas.UpdateTrustAnchorOutput,
        http_method = "PATCH",
        http_path = "/trustanchor/{trustAnchorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
