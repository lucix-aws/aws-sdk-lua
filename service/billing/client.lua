local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("billing.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("billing.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSBilling"
    cfg.signing_name = "awsbilling"
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

function Client:associateSourceViews(input, options)
    return self:invokeOperation(input, {
        name = "AssociateSourceViews",
        input_schema = types.AssociateSourceViewsInput,
        output_schema = types.AssociateSourceViewsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createBillingView(input, options)
    return self:invokeOperation(input, {
        name = "CreateBillingView",
        input_schema = types.CreateBillingViewInput,
        output_schema = types.CreateBillingViewOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteBillingView(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBillingView",
        input_schema = types.DeleteBillingViewInput,
        output_schema = types.DeleteBillingViewOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateSourceViews(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateSourceViews",
        input_schema = types.DisassociateSourceViewsInput,
        output_schema = types.DisassociateSourceViewsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getBillingView(input, options)
    return self:invokeOperation(input, {
        name = "GetBillingView",
        input_schema = types.GetBillingViewInput,
        output_schema = types.GetBillingViewOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = types.GetResourcePolicyInput,
        output_schema = types.GetResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listBillingViews(input, options)
    return self:invokeOperation(input, {
        name = "ListBillingViews",
        input_schema = types.ListBillingViewsInput,
        output_schema = types.ListBillingViewsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listSourceViewsForBillingView(input, options)
    return self:invokeOperation(input, {
        name = "ListSourceViewsForBillingView",
        input_schema = types.ListSourceViewsForBillingViewInput,
        output_schema = types.ListSourceViewsForBillingViewOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateBillingView(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBillingView",
        input_schema = types.UpdateBillingViewInput,
        output_schema = types.UpdateBillingViewOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
