local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("b2bi.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("b2bi.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "B2BI"
    cfg.signing_name = "b2bi"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.0")
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

function Client:createCapability(input, options)
    return self:invokeOperation(input, {
        name = "CreateCapability",
        input_schema = types.CreateCapabilityInput,
        output_schema = types.CreateCapabilityOutput,
        http_method = "POST",
        http_path = "/capabilities",
    }, options)
end

function Client:createPartnership(input, options)
    return self:invokeOperation(input, {
        name = "CreatePartnership",
        input_schema = types.CreatePartnershipInput,
        output_schema = types.CreatePartnershipOutput,
        http_method = "POST",
        http_path = "/partnerships",
    }, options)
end

function Client:createProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateProfile",
        input_schema = types.CreateProfileInput,
        output_schema = types.CreateProfileOutput,
        http_method = "POST",
        http_path = "/profiles",
    }, options)
end

function Client:createStarterMappingTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateStarterMappingTemplate",
        input_schema = types.CreateStarterMappingTemplateInput,
        output_schema = types.CreateStarterMappingTemplateOutput,
        http_method = "POST",
        http_path = "/createmappingstarttemplate",
    }, options)
end

function Client:createTransformer(input, options)
    return self:invokeOperation(input, {
        name = "CreateTransformer",
        input_schema = types.CreateTransformerInput,
        output_schema = types.CreateTransformerOutput,
        http_method = "POST",
        http_path = "/transformers",
    }, options)
end

function Client:deleteCapability(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCapability",
        input_schema = types.DeleteCapabilityInput,
        output_schema = types.DeleteCapabilityOutput,
        http_method = "DELETE",
        http_path = "/capabilities/{capabilityId}",
    }, options)
end

function Client:deletePartnership(input, options)
    return self:invokeOperation(input, {
        name = "DeletePartnership",
        input_schema = types.DeletePartnershipInput,
        output_schema = types.DeletePartnershipOutput,
        http_method = "DELETE",
        http_path = "/partnerships/{partnershipId}",
    }, options)
end

function Client:deleteProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProfile",
        input_schema = types.DeleteProfileInput,
        output_schema = types.DeleteProfileOutput,
        http_method = "DELETE",
        http_path = "/profiles/{profileId}",
    }, options)
end

function Client:deleteTransformer(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTransformer",
        input_schema = types.DeleteTransformerInput,
        output_schema = types.DeleteTransformerOutput,
        http_method = "DELETE",
        http_path = "/transformers/{transformerId}",
    }, options)
end

function Client:generateMapping(input, options)
    return self:invokeOperation(input, {
        name = "GenerateMapping",
        input_schema = types.GenerateMappingInput,
        output_schema = types.GenerateMappingOutput,
        http_method = "POST",
        http_path = "/generate-mapping",
    }, options)
end

function Client:getCapability(input, options)
    return self:invokeOperation(input, {
        name = "GetCapability",
        input_schema = types.GetCapabilityInput,
        output_schema = types.GetCapabilityOutput,
        http_method = "GET",
        http_path = "/capabilities/{capabilityId}",
    }, options)
end

function Client:getPartnership(input, options)
    return self:invokeOperation(input, {
        name = "GetPartnership",
        input_schema = types.GetPartnershipInput,
        output_schema = types.GetPartnershipOutput,
        http_method = "GET",
        http_path = "/partnerships/{partnershipId}",
    }, options)
end

function Client:getProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetProfile",
        input_schema = types.GetProfileInput,
        output_schema = types.GetProfileOutput,
        http_method = "GET",
        http_path = "/profiles/{profileId}",
    }, options)
end

function Client:getTransformer(input, options)
    return self:invokeOperation(input, {
        name = "GetTransformer",
        input_schema = types.GetTransformerInput,
        output_schema = types.GetTransformerOutput,
        http_method = "GET",
        http_path = "/transformers/{transformerId}",
    }, options)
end

function Client:getTransformerJob(input, options)
    return self:invokeOperation(input, {
        name = "GetTransformerJob",
        input_schema = types.GetTransformerJobInput,
        output_schema = types.GetTransformerJobOutput,
        http_method = "GET",
        http_path = "/transformer-jobs/{transformerJobId}",
    }, options)
end

function Client:listCapabilities(input, options)
    return self:invokeOperation(input, {
        name = "ListCapabilities",
        input_schema = types.ListCapabilitiesInput,
        output_schema = types.ListCapabilitiesOutput,
        http_method = "GET",
        http_path = "/capabilities",
    }, options)
end

function Client:listPartnerships(input, options)
    return self:invokeOperation(input, {
        name = "ListPartnerships",
        input_schema = types.ListPartnershipsInput,
        output_schema = types.ListPartnershipsOutput,
        http_method = "GET",
        http_path = "/partnerships",
    }, options)
end

function Client:listProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListProfiles",
        input_schema = types.ListProfilesInput,
        output_schema = types.ListProfilesOutput,
        http_method = "GET",
        http_path = "/profiles",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{ResourceARN}",
    }, options)
end

function Client:listTransformers(input, options)
    return self:invokeOperation(input, {
        name = "ListTransformers",
        input_schema = types.ListTransformersInput,
        output_schema = types.ListTransformersOutput,
        http_method = "GET",
        http_path = "/transformers",
    }, options)
end

function Client:startTransformerJob(input, options)
    return self:invokeOperation(input, {
        name = "StartTransformerJob",
        input_schema = types.StartTransformerJobInput,
        output_schema = types.StartTransformerJobOutput,
        http_method = "POST",
        http_path = "/transformer-jobs",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{ResourceARN}",
    }, options)
end

function Client:testConversion(input, options)
    return self:invokeOperation(input, {
        name = "TestConversion",
        input_schema = types.TestConversionInput,
        output_schema = types.TestConversionOutput,
        http_method = "POST",
        http_path = "/testconversion",
    }, options)
end

function Client:testMapping(input, options)
    return self:invokeOperation(input, {
        name = "TestMapping",
        input_schema = types.TestMappingInput,
        output_schema = types.TestMappingOutput,
        http_method = "POST",
        http_path = "/testmapping",
    }, options)
end

function Client:testParsing(input, options)
    return self:invokeOperation(input, {
        name = "TestParsing",
        input_schema = types.TestParsingInput,
        output_schema = types.TestParsingOutput,
        http_method = "POST",
        http_path = "/testparsing",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{ResourceARN}",
    }, options)
end

function Client:updateCapability(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCapability",
        input_schema = types.UpdateCapabilityInput,
        output_schema = types.UpdateCapabilityOutput,
        http_method = "PATCH",
        http_path = "/capabilities/{capabilityId}",
    }, options)
end

function Client:updatePartnership(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePartnership",
        input_schema = types.UpdatePartnershipInput,
        output_schema = types.UpdatePartnershipOutput,
        http_method = "PATCH",
        http_path = "/partnerships/{partnershipId}",
    }, options)
end

function Client:updateProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProfile",
        input_schema = types.UpdateProfileInput,
        output_schema = types.UpdateProfileOutput,
        http_method = "PATCH",
        http_path = "/profiles/{profileId}",
    }, options)
end

function Client:updateTransformer(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTransformer",
        input_schema = types.UpdateTransformerInput,
        output_schema = types.UpdateTransformerOutput,
        http_method = "PATCH",
        http_path = "/transformers/{transformerId}",
    }, options)
end

return M
