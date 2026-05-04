local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("cloudhsm.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("cloudhsm.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "CloudHsmFrontendService"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "cloudhsm", signing_region = cfg.region } }
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

function Client:addTagsToResource(input, options)
    return self:invokeOperation(input, {
        name = "AddTagsToResource",
        input_schema = types.AddTagsToResourceInput,
        output_schema = types.AddTagsToResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createHapg(input, options)
    return self:invokeOperation(input, {
        name = "CreateHapg",
        input_schema = types.CreateHapgInput,
        output_schema = types.CreateHapgOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createHsm(input, options)
    return self:invokeOperation(input, {
        name = "CreateHsm",
        input_schema = types.CreateHsmInput,
        output_schema = types.CreateHsmOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLunaClient(input, options)
    return self:invokeOperation(input, {
        name = "CreateLunaClient",
        input_schema = types.CreateLunaClientInput,
        output_schema = types.CreateLunaClientOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteHapg(input, options)
    return self:invokeOperation(input, {
        name = "DeleteHapg",
        input_schema = types.DeleteHapgInput,
        output_schema = types.DeleteHapgOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteHsm(input, options)
    return self:invokeOperation(input, {
        name = "DeleteHsm",
        input_schema = types.DeleteHsmInput,
        output_schema = types.DeleteHsmOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLunaClient(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLunaClient",
        input_schema = types.DeleteLunaClientInput,
        output_schema = types.DeleteLunaClientOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeHapg(input, options)
    return self:invokeOperation(input, {
        name = "DescribeHapg",
        input_schema = types.DescribeHapgInput,
        output_schema = types.DescribeHapgOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeHsm(input, options)
    return self:invokeOperation(input, {
        name = "DescribeHsm",
        input_schema = types.DescribeHsmInput,
        output_schema = types.DescribeHsmOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLunaClient(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLunaClient",
        input_schema = types.DescribeLunaClientInput,
        output_schema = types.DescribeLunaClientOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetConfig",
        input_schema = types.GetConfigInput,
        output_schema = types.GetConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAvailableZones(input, options)
    return self:invokeOperation(input, {
        name = "ListAvailableZones",
        input_schema = types.ListAvailableZonesInput,
        output_schema = types.ListAvailableZonesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listHapgs(input, options)
    return self:invokeOperation(input, {
        name = "ListHapgs",
        input_schema = types.ListHapgsInput,
        output_schema = types.ListHapgsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listHsms(input, options)
    return self:invokeOperation(input, {
        name = "ListHsms",
        input_schema = types.ListHsmsInput,
        output_schema = types.ListHsmsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLunaClients(input, options)
    return self:invokeOperation(input, {
        name = "ListLunaClients",
        input_schema = types.ListLunaClientsInput,
        output_schema = types.ListLunaClientsOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyHapg(input, options)
    return self:invokeOperation(input, {
        name = "ModifyHapg",
        input_schema = types.ModifyHapgInput,
        output_schema = types.ModifyHapgOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyHsm(input, options)
    return self:invokeOperation(input, {
        name = "ModifyHsm",
        input_schema = types.ModifyHsmInput,
        output_schema = types.ModifyHsmOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyLunaClient(input, options)
    return self:invokeOperation(input, {
        name = "ModifyLunaClient",
        input_schema = types.ModifyLunaClientInput,
        output_schema = types.ModifyLunaClientOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeTagsFromResource(input, options)
    return self:invokeOperation(input, {
        name = "RemoveTagsFromResource",
        input_schema = types.RemoveTagsFromResourceInput,
        output_schema = types.RemoveTagsFromResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
