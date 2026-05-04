local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("cloudcontrol.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("cloudcontrol.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "CloudApiService"
    cfg.signing_name = "cloudcontrolapi"
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

function Client:cancelResourceRequest(input, options)
    return self:invokeOperation(input, {
        name = "CancelResourceRequest",
        input_schema = types.CancelResourceRequestInput,
        output_schema = types.CancelResourceRequestOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createResource(input, options)
    return self:invokeOperation(input, {
        name = "CreateResource",
        input_schema = types.CreateResourceInput,
        output_schema = types.CreateResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteResource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResource",
        input_schema = types.DeleteResourceInput,
        output_schema = types.DeleteResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getResource(input, options)
    return self:invokeOperation(input, {
        name = "GetResource",
        input_schema = types.GetResourceInput,
        output_schema = types.GetResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getResourceRequestStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceRequestStatus",
        input_schema = types.GetResourceRequestStatusInput,
        output_schema = types.GetResourceRequestStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listResourceRequests(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceRequests",
        input_schema = types.ListResourceRequestsInput,
        output_schema = types.ListResourceRequestsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listResources(input, options)
    return self:invokeOperation(input, {
        name = "ListResources",
        input_schema = types.ListResourcesInput,
        output_schema = types.ListResourcesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateResource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResource",
        input_schema = types.UpdateResourceInput,
        output_schema = types.UpdateResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
