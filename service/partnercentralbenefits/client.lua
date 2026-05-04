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
    cfg.signing_name = "partnercentral-benefits"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
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

function Client:amendBenefitApplication(input, options)
    return self:invokeOperation(input, {
        name = "AmendBenefitApplication",
        input_schema = types.AmendBenefitApplicationInput,
        output_schema = types.AmendBenefitApplicationOutput,
        http_method = "POST",
        http_path = "/AmendBenefitApplication",
    }, options)
end

function Client:associateBenefitApplicationResource(input, options)
    return self:invokeOperation(input, {
        name = "AssociateBenefitApplicationResource",
        input_schema = types.AssociateBenefitApplicationResourceInput,
        output_schema = types.AssociateBenefitApplicationResourceOutput,
        http_method = "POST",
        http_path = "/AssociateBenefitApplicationResource",
    }, options)
end

function Client:cancelBenefitApplication(input, options)
    return self:invokeOperation(input, {
        name = "CancelBenefitApplication",
        input_schema = types.CancelBenefitApplicationInput,
        output_schema = types.CancelBenefitApplicationOutput,
        http_method = "POST",
        http_path = "/CancelBenefitApplication",
    }, options)
end

function Client:createBenefitApplication(input, options)
    return self:invokeOperation(input, {
        name = "CreateBenefitApplication",
        input_schema = types.CreateBenefitApplicationInput,
        output_schema = types.CreateBenefitApplicationOutput,
        http_method = "POST",
        http_path = "/CreateBenefitApplication",
    }, options)
end

function Client:disassociateBenefitApplicationResource(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateBenefitApplicationResource",
        input_schema = types.DisassociateBenefitApplicationResourceInput,
        output_schema = types.DisassociateBenefitApplicationResourceOutput,
        http_method = "POST",
        http_path = "/DisassociateBenefitApplicationResource",
    }, options)
end

function Client:getBenefit(input, options)
    return self:invokeOperation(input, {
        name = "GetBenefit",
        input_schema = types.GetBenefitInput,
        output_schema = types.GetBenefitOutput,
        http_method = "POST",
        http_path = "/GetBenefit",
    }, options)
end

function Client:getBenefitAllocation(input, options)
    return self:invokeOperation(input, {
        name = "GetBenefitAllocation",
        input_schema = types.GetBenefitAllocationInput,
        output_schema = types.GetBenefitAllocationOutput,
        http_method = "POST",
        http_path = "/GetBenefitAllocation",
    }, options)
end

function Client:getBenefitApplication(input, options)
    return self:invokeOperation(input, {
        name = "GetBenefitApplication",
        input_schema = types.GetBenefitApplicationInput,
        output_schema = types.GetBenefitApplicationOutput,
        http_method = "POST",
        http_path = "/GetBenefitApplication",
    }, options)
end

function Client:listBenefitAllocations(input, options)
    return self:invokeOperation(input, {
        name = "ListBenefitAllocations",
        input_schema = types.ListBenefitAllocationsInput,
        output_schema = types.ListBenefitAllocationsOutput,
        http_method = "POST",
        http_path = "/ListBenefitAllocations",
    }, options)
end

function Client:listBenefitApplications(input, options)
    return self:invokeOperation(input, {
        name = "ListBenefitApplications",
        input_schema = types.ListBenefitApplicationsInput,
        output_schema = types.ListBenefitApplicationsOutput,
        http_method = "POST",
        http_path = "/ListBenefitApplications",
    }, options)
end

function Client:listBenefits(input, options)
    return self:invokeOperation(input, {
        name = "ListBenefits",
        input_schema = types.ListBenefitsInput,
        output_schema = types.ListBenefitsOutput,
        http_method = "POST",
        http_path = "/ListBenefits",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/ListTagsForResource",
    }, options)
end

function Client:recallBenefitApplication(input, options)
    return self:invokeOperation(input, {
        name = "RecallBenefitApplication",
        input_schema = types.RecallBenefitApplicationInput,
        output_schema = types.RecallBenefitApplicationOutput,
        http_method = "POST",
        http_path = "/RecallBenefitApplication",
    }, options)
end

function Client:submitBenefitApplication(input, options)
    return self:invokeOperation(input, {
        name = "SubmitBenefitApplication",
        input_schema = types.SubmitBenefitApplicationInput,
        output_schema = types.SubmitBenefitApplicationOutput,
        http_method = "POST",
        http_path = "/SubmitBenefitApplication",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/TagResource",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/UntagResource",
    }, options)
end

function Client:updateBenefitApplication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBenefitApplication",
        input_schema = types.UpdateBenefitApplicationInput,
        output_schema = types.UpdateBenefitApplicationOutput,
        http_method = "POST",
        http_path = "/UpdateBenefitApplication",
    }, options)
end

return M
