local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("cloudhsm.endpoint_rules")
local schemas = require("cloudhsm.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "CloudHsmFrontendService"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
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
        input_schema = schemas.AddTagsToResourceInput,
        output_schema = schemas.AddTagsToResourceOutput,
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
        input_schema = schemas.CreateHapgInput,
        output_schema = schemas.CreateHapgOutput,
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
        input_schema = schemas.CreateHsmInput,
        output_schema = schemas.CreateHsmOutput,
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
        input_schema = schemas.CreateLunaClientInput,
        output_schema = schemas.CreateLunaClientOutput,
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
        input_schema = schemas.DeleteHapgInput,
        output_schema = schemas.DeleteHapgOutput,
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
        input_schema = schemas.DeleteHsmInput,
        output_schema = schemas.DeleteHsmOutput,
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
        input_schema = schemas.DeleteLunaClientInput,
        output_schema = schemas.DeleteLunaClientOutput,
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
        input_schema = schemas.DescribeHapgInput,
        output_schema = schemas.DescribeHapgOutput,
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
        input_schema = schemas.DescribeHsmInput,
        output_schema = schemas.DescribeHsmOutput,
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
        input_schema = schemas.DescribeLunaClientInput,
        output_schema = schemas.DescribeLunaClientOutput,
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
        input_schema = schemas.GetConfigInput,
        output_schema = schemas.GetConfigOutput,
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
        input_schema = schemas.ListAvailableZonesInput,
        output_schema = schemas.ListAvailableZonesOutput,
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
        input_schema = schemas.ListHapgsInput,
        output_schema = schemas.ListHapgsOutput,
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
        input_schema = schemas.ListHsmsInput,
        output_schema = schemas.ListHsmsOutput,
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
        input_schema = schemas.ListLunaClientsInput,
        output_schema = schemas.ListLunaClientsOutput,
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
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
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
        input_schema = schemas.ModifyHapgInput,
        output_schema = schemas.ModifyHapgOutput,
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
        input_schema = schemas.ModifyHsmInput,
        output_schema = schemas.ModifyHsmOutput,
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
        input_schema = schemas.ModifyLunaClientInput,
        output_schema = schemas.ModifyLunaClientOutput,
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
        input_schema = schemas.RemoveTagsFromResourceInput,
        output_schema = schemas.RemoveTagsFromResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
