local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("route53profiles.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("route53profiles.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Route53Profiles"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "route53profiles", signing_region = cfg.region } }
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

function Client:associateProfile(input, options)
    return self:invokeOperation(input, {
        name = "AssociateProfile",
        input_schema = types.AssociateProfileInput,
        output_schema = types.AssociateProfileOutput,
        http_method = "POST",
        http_path = "/profileassociation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateResourceToProfile(input, options)
    return self:invokeOperation(input, {
        name = "AssociateResourceToProfile",
        input_schema = types.AssociateResourceToProfileInput,
        output_schema = types.AssociateResourceToProfileOutput,
        http_method = "POST",
        http_path = "/profileresourceassociation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateProfile",
        input_schema = types.CreateProfileInput,
        output_schema = types.CreateProfileOutput,
        http_method = "POST",
        http_path = "/profile",
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
        http_path = "/profile/{ProfileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateProfile(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateProfile",
        input_schema = types.DisassociateProfileInput,
        output_schema = types.DisassociateProfileOutput,
        http_method = "DELETE",
        http_path = "/profileassociation/Profileid/{ProfileId}/resourceid/{ResourceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateResourceFromProfile(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateResourceFromProfile",
        input_schema = types.DisassociateResourceFromProfileInput,
        output_schema = types.DisassociateResourceFromProfileOutput,
        http_method = "DELETE",
        http_path = "/profileresourceassociation/profileid/{ProfileId}/resourcearn/{ResourceArn}",
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
        http_path = "/profile/{ProfileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getProfileAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetProfileAssociation",
        input_schema = types.GetProfileAssociationInput,
        output_schema = types.GetProfileAssociationOutput,
        http_method = "GET",
        http_path = "/profileassociation/{ProfileAssociationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getProfileResourceAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetProfileResourceAssociation",
        input_schema = types.GetProfileResourceAssociationInput,
        output_schema = types.GetProfileResourceAssociationOutput,
        http_method = "GET",
        http_path = "/profileresourceassociation/{ProfileResourceAssociationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProfileAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListProfileAssociations",
        input_schema = types.ListProfileAssociationsInput,
        output_schema = types.ListProfileAssociationsOutput,
        http_method = "GET",
        http_path = "/profileassociations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProfileResourceAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListProfileResourceAssociations",
        input_schema = types.ListProfileResourceAssociationsInput,
        output_schema = types.ListProfileResourceAssociationsOutput,
        http_method = "GET",
        http_path = "/profileresourceassociations/profileid/{ProfileId}",
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

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{ResourceArn}",
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
        http_path = "/tags/{ResourceArn}",
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
        http_method = "DELETE",
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProfileResourceAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProfileResourceAssociation",
        input_schema = types.UpdateProfileResourceAssociationInput,
        output_schema = types.UpdateProfileResourceAssociationOutput,
        http_method = "PATCH",
        http_path = "/profileresourceassociation/{ProfileResourceAssociationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
