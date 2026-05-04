local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("partnercentralbenefits.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("partnercentralbenefits.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "PartnerCentralBenefitsService"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.0")
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "partnercentral-benefits", signing_region = cfg.region } }
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

function Client:amendBenefitApplication(input, options)
    return self:invokeOperation(input, {
        name = "AmendBenefitApplication",
        input_schema = types.AmendBenefitApplicationInput,
        output_schema = types.AmendBenefitApplicationOutput,
        http_method = "POST",
        http_path = "/AmendBenefitApplication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateBenefitApplicationResource(input, options)
    return self:invokeOperation(input, {
        name = "AssociateBenefitApplicationResource",
        input_schema = types.AssociateBenefitApplicationResourceInput,
        output_schema = types.AssociateBenefitApplicationResourceOutput,
        http_method = "POST",
        http_path = "/AssociateBenefitApplicationResource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelBenefitApplication(input, options)
    return self:invokeOperation(input, {
        name = "CancelBenefitApplication",
        input_schema = types.CancelBenefitApplicationInput,
        output_schema = types.CancelBenefitApplicationOutput,
        http_method = "POST",
        http_path = "/CancelBenefitApplication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBenefitApplication(input, options)
    return self:invokeOperation(input, {
        name = "CreateBenefitApplication",
        input_schema = types.CreateBenefitApplicationInput,
        output_schema = types.CreateBenefitApplicationOutput,
        http_method = "POST",
        http_path = "/CreateBenefitApplication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateBenefitApplicationResource(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateBenefitApplicationResource",
        input_schema = types.DisassociateBenefitApplicationResourceInput,
        output_schema = types.DisassociateBenefitApplicationResourceOutput,
        http_method = "POST",
        http_path = "/DisassociateBenefitApplicationResource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBenefit(input, options)
    return self:invokeOperation(input, {
        name = "GetBenefit",
        input_schema = types.GetBenefitInput,
        output_schema = types.GetBenefitOutput,
        http_method = "POST",
        http_path = "/GetBenefit",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBenefitAllocation(input, options)
    return self:invokeOperation(input, {
        name = "GetBenefitAllocation",
        input_schema = types.GetBenefitAllocationInput,
        output_schema = types.GetBenefitAllocationOutput,
        http_method = "POST",
        http_path = "/GetBenefitAllocation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBenefitApplication(input, options)
    return self:invokeOperation(input, {
        name = "GetBenefitApplication",
        input_schema = types.GetBenefitApplicationInput,
        output_schema = types.GetBenefitApplicationOutput,
        http_method = "POST",
        http_path = "/GetBenefitApplication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBenefitAllocations(input, options)
    return self:invokeOperation(input, {
        name = "ListBenefitAllocations",
        input_schema = types.ListBenefitAllocationsInput,
        output_schema = types.ListBenefitAllocationsOutput,
        http_method = "POST",
        http_path = "/ListBenefitAllocations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBenefitApplications(input, options)
    return self:invokeOperation(input, {
        name = "ListBenefitApplications",
        input_schema = types.ListBenefitApplicationsInput,
        output_schema = types.ListBenefitApplicationsOutput,
        http_method = "POST",
        http_path = "/ListBenefitApplications",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBenefits(input, options)
    return self:invokeOperation(input, {
        name = "ListBenefits",
        input_schema = types.ListBenefitsInput,
        output_schema = types.ListBenefitsOutput,
        http_method = "POST",
        http_path = "/ListBenefits",
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
        http_path = "/ListTagsForResource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:recallBenefitApplication(input, options)
    return self:invokeOperation(input, {
        name = "RecallBenefitApplication",
        input_schema = types.RecallBenefitApplicationInput,
        output_schema = types.RecallBenefitApplicationOutput,
        http_method = "POST",
        http_path = "/RecallBenefitApplication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:submitBenefitApplication(input, options)
    return self:invokeOperation(input, {
        name = "SubmitBenefitApplication",
        input_schema = types.SubmitBenefitApplicationInput,
        output_schema = types.SubmitBenefitApplicationOutput,
        http_method = "POST",
        http_path = "/SubmitBenefitApplication",
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

function Client:updateBenefitApplication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBenefitApplication",
        input_schema = types.UpdateBenefitApplicationInput,
        output_schema = types.UpdateBenefitApplicationOutput,
        http_method = "POST",
        http_path = "/UpdateBenefitApplication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
