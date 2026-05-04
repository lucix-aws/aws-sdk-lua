local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("rolesanywhere.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("rolesanywhere.types")

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
        input_schema = types.CreateProfileInput,
        output_schema = types.CreateProfileOutput,
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
        input_schema = types.CreateTrustAnchorInput,
        output_schema = types.CreateTrustAnchorOutput,
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
        input_schema = types.DeleteAttributeMappingInput,
        output_schema = types.DeleteAttributeMappingOutput,
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
        input_schema = types.DeleteCrlInput,
        output_schema = types.DeleteCrlOutput,
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
        input_schema = types.DeleteProfileInput,
        output_schema = types.DeleteProfileOutput,
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
        input_schema = types.DeleteTrustAnchorInput,
        output_schema = types.DeleteTrustAnchorOutput,
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
        input_schema = types.DisableCrlInput,
        output_schema = types.DisableCrlOutput,
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
        input_schema = types.DisableProfileInput,
        output_schema = types.DisableProfileOutput,
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
        input_schema = types.DisableTrustAnchorInput,
        output_schema = types.DisableTrustAnchorOutput,
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
        input_schema = types.EnableCrlInput,
        output_schema = types.EnableCrlOutput,
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
        input_schema = types.EnableProfileInput,
        output_schema = types.EnableProfileOutput,
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
        input_schema = types.EnableTrustAnchorInput,
        output_schema = types.EnableTrustAnchorOutput,
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
        input_schema = types.GetCrlInput,
        output_schema = types.GetCrlOutput,
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
        input_schema = types.GetProfileInput,
        output_schema = types.GetProfileOutput,
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
        input_schema = types.GetSubjectInput,
        output_schema = types.GetSubjectOutput,
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
        input_schema = types.GetTrustAnchorInput,
        output_schema = types.GetTrustAnchorOutput,
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
        input_schema = types.ImportCrlInput,
        output_schema = types.ImportCrlOutput,
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
        input_schema = types.ListCrlsInput,
        output_schema = types.ListCrlsOutput,
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
        input_schema = types.ListProfilesInput,
        output_schema = types.ListProfilesOutput,
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
        input_schema = types.ListSubjectsInput,
        output_schema = types.ListSubjectsOutput,
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
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
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
        input_schema = types.ListTrustAnchorsInput,
        output_schema = types.ListTrustAnchorsOutput,
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
        input_schema = types.PutAttributeMappingInput,
        output_schema = types.PutAttributeMappingOutput,
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
        input_schema = types.PutNotificationSettingsInput,
        output_schema = types.PutNotificationSettingsOutput,
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
        input_schema = types.ResetNotificationSettingsInput,
        output_schema = types.ResetNotificationSettingsOutput,
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
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
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
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
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
        input_schema = types.UpdateCrlInput,
        output_schema = types.UpdateCrlOutput,
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
        input_schema = types.UpdateProfileInput,
        output_schema = types.UpdateProfileOutput,
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
        input_schema = types.UpdateTrustAnchorInput,
        output_schema = types.UpdateTrustAnchorOutput,
        http_method = "PATCH",
        http_path = "/trustanchor/{trustAnchorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
