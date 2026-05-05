local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("b2bi.endpoint_rules")
local schemas = require("b2bi.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "B2BI"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "b2bi", signing_region = cfg.region } }
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

function Client:createCapability(input, options)
    return self:invokeOperation(input, {
        name = "CreateCapability",
        input_schema = schemas.CreateCapabilityInput,
        output_schema = schemas.CreateCapabilityOutput,
        http_method = "POST",
        http_path = "/capabilities",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPartnership(input, options)
    return self:invokeOperation(input, {
        name = "CreatePartnership",
        input_schema = schemas.CreatePartnershipInput,
        output_schema = schemas.CreatePartnershipOutput,
        http_method = "POST",
        http_path = "/partnerships",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
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

function Client:createStarterMappingTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateStarterMappingTemplate",
        input_schema = schemas.CreateStarterMappingTemplateInput,
        output_schema = schemas.CreateStarterMappingTemplateOutput,
        http_method = "POST",
        http_path = "/createmappingstarttemplate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTransformer(input, options)
    return self:invokeOperation(input, {
        name = "CreateTransformer",
        input_schema = schemas.CreateTransformerInput,
        output_schema = schemas.CreateTransformerOutput,
        http_method = "POST",
        http_path = "/transformers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCapability(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCapability",
        input_schema = schemas.DeleteCapabilityInput,
        output_schema = schemas.DeleteCapabilityOutput,
        http_method = "DELETE",
        http_path = "/capabilities/{capabilityId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePartnership(input, options)
    return self:invokeOperation(input, {
        name = "DeletePartnership",
        input_schema = schemas.DeletePartnershipInput,
        output_schema = schemas.DeletePartnershipOutput,
        http_method = "DELETE",
        http_path = "/partnerships/{partnershipId}",
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
        http_path = "/profiles/{profileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTransformer(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTransformer",
        input_schema = schemas.DeleteTransformerInput,
        output_schema = schemas.DeleteTransformerOutput,
        http_method = "DELETE",
        http_path = "/transformers/{transformerId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:generateMapping(input, options)
    return self:invokeOperation(input, {
        name = "GenerateMapping",
        input_schema = schemas.GenerateMappingInput,
        output_schema = schemas.GenerateMappingOutput,
        http_method = "POST",
        http_path = "/generate-mapping",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCapability(input, options)
    return self:invokeOperation(input, {
        name = "GetCapability",
        input_schema = schemas.GetCapabilityInput,
        output_schema = schemas.GetCapabilityOutput,
        http_method = "GET",
        http_path = "/capabilities/{capabilityId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPartnership(input, options)
    return self:invokeOperation(input, {
        name = "GetPartnership",
        input_schema = schemas.GetPartnershipInput,
        output_schema = schemas.GetPartnershipOutput,
        http_method = "GET",
        http_path = "/partnerships/{partnershipId}",
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
        http_path = "/profiles/{profileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTransformer(input, options)
    return self:invokeOperation(input, {
        name = "GetTransformer",
        input_schema = schemas.GetTransformerInput,
        output_schema = schemas.GetTransformerOutput,
        http_method = "GET",
        http_path = "/transformers/{transformerId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTransformerJob(input, options)
    return self:invokeOperation(input, {
        name = "GetTransformerJob",
        input_schema = schemas.GetTransformerJobInput,
        output_schema = schemas.GetTransformerJobOutput,
        http_method = "GET",
        http_path = "/transformer-jobs/{transformerJobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCapabilities(input, options)
    return self:invokeOperation(input, {
        name = "ListCapabilities",
        input_schema = schemas.ListCapabilitiesInput,
        output_schema = schemas.ListCapabilitiesOutput,
        http_method = "GET",
        http_path = "/capabilities",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPartnerships(input, options)
    return self:invokeOperation(input, {
        name = "ListPartnerships",
        input_schema = schemas.ListPartnershipsInput,
        output_schema = schemas.ListPartnershipsOutput,
        http_method = "GET",
        http_path = "/partnerships",
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

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{ResourceARN}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTransformers(input, options)
    return self:invokeOperation(input, {
        name = "ListTransformers",
        input_schema = schemas.ListTransformersInput,
        output_schema = schemas.ListTransformersOutput,
        http_method = "GET",
        http_path = "/transformers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startTransformerJob(input, options)
    return self:invokeOperation(input, {
        name = "StartTransformerJob",
        input_schema = schemas.StartTransformerJobInput,
        output_schema = schemas.StartTransformerJobOutput,
        http_method = "POST",
        http_path = "/transformer-jobs",
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
        http_path = "/tags/{ResourceARN}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:testConversion(input, options)
    return self:invokeOperation(input, {
        name = "TestConversion",
        input_schema = schemas.TestConversionInput,
        output_schema = schemas.TestConversionOutput,
        http_method = "POST",
        http_path = "/testconversion",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:testMapping(input, options)
    return self:invokeOperation(input, {
        name = "TestMapping",
        input_schema = schemas.TestMappingInput,
        output_schema = schemas.TestMappingOutput,
        http_method = "POST",
        http_path = "/testmapping",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:testParsing(input, options)
    return self:invokeOperation(input, {
        name = "TestParsing",
        input_schema = schemas.TestParsingInput,
        output_schema = schemas.TestParsingOutput,
        http_method = "POST",
        http_path = "/testparsing",
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
        http_path = "/tags/{ResourceARN}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCapability(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCapability",
        input_schema = schemas.UpdateCapabilityInput,
        output_schema = schemas.UpdateCapabilityOutput,
        http_method = "PATCH",
        http_path = "/capabilities/{capabilityId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePartnership(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePartnership",
        input_schema = schemas.UpdatePartnershipInput,
        output_schema = schemas.UpdatePartnershipOutput,
        http_method = "PATCH",
        http_path = "/partnerships/{partnershipId}",
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
        http_path = "/profiles/{profileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTransformer(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTransformer",
        input_schema = schemas.UpdateTransformerInput,
        output_schema = schemas.UpdateTransformerOutput,
        http_method = "PATCH",
        http_path = "/transformers/{transformerId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
