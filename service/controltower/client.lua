local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("controltower.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("controltower.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSControlTowerApis"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "controltower", signing_region = cfg.region } }
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

function Client:createLandingZone(input, options)
    return self:invokeOperation(input, {
        name = "CreateLandingZone",
        input_schema = schemas.CreateLandingZoneInput,
        output_schema = schemas.CreateLandingZoneOutput,
        http_method = "POST",
        http_path = "/create-landingzone",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLandingZone(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLandingZone",
        input_schema = schemas.DeleteLandingZoneInput,
        output_schema = schemas.DeleteLandingZoneOutput,
        http_method = "POST",
        http_path = "/delete-landingzone",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableBaseline(input, options)
    return self:invokeOperation(input, {
        name = "DisableBaseline",
        input_schema = schemas.DisableBaselineInput,
        output_schema = schemas.DisableBaselineOutput,
        http_method = "POST",
        http_path = "/disable-baseline",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableControl(input, options)
    return self:invokeOperation(input, {
        name = "DisableControl",
        input_schema = schemas.DisableControlInput,
        output_schema = schemas.DisableControlOutput,
        http_method = "POST",
        http_path = "/disable-control",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableBaseline(input, options)
    return self:invokeOperation(input, {
        name = "EnableBaseline",
        input_schema = schemas.EnableBaselineInput,
        output_schema = schemas.EnableBaselineOutput,
        http_method = "POST",
        http_path = "/enable-baseline",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableControl(input, options)
    return self:invokeOperation(input, {
        name = "EnableControl",
        input_schema = schemas.EnableControlInput,
        output_schema = schemas.EnableControlOutput,
        http_method = "POST",
        http_path = "/enable-control",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBaseline(input, options)
    return self:invokeOperation(input, {
        name = "GetBaseline",
        input_schema = schemas.GetBaselineInput,
        output_schema = schemas.GetBaselineOutput,
        http_method = "POST",
        http_path = "/get-baseline",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBaselineOperation(input, options)
    return self:invokeOperation(input, {
        name = "GetBaselineOperation",
        input_schema = schemas.GetBaselineOperationInput,
        output_schema = schemas.GetBaselineOperationOutput,
        http_method = "POST",
        http_path = "/get-baseline-operation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getControlOperation(input, options)
    return self:invokeOperation(input, {
        name = "GetControlOperation",
        input_schema = schemas.GetControlOperationInput,
        output_schema = schemas.GetControlOperationOutput,
        http_method = "POST",
        http_path = "/get-control-operation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEnabledBaseline(input, options)
    return self:invokeOperation(input, {
        name = "GetEnabledBaseline",
        input_schema = schemas.GetEnabledBaselineInput,
        output_schema = schemas.GetEnabledBaselineOutput,
        http_method = "POST",
        http_path = "/get-enabled-baseline",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEnabledControl(input, options)
    return self:invokeOperation(input, {
        name = "GetEnabledControl",
        input_schema = schemas.GetEnabledControlInput,
        output_schema = schemas.GetEnabledControlOutput,
        http_method = "POST",
        http_path = "/get-enabled-control",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLandingZone(input, options)
    return self:invokeOperation(input, {
        name = "GetLandingZone",
        input_schema = schemas.GetLandingZoneInput,
        output_schema = schemas.GetLandingZoneOutput,
        http_method = "POST",
        http_path = "/get-landingzone",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLandingZoneOperation(input, options)
    return self:invokeOperation(input, {
        name = "GetLandingZoneOperation",
        input_schema = schemas.GetLandingZoneOperationInput,
        output_schema = schemas.GetLandingZoneOperationOutput,
        http_method = "POST",
        http_path = "/get-landingzone-operation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBaselines(input, options)
    return self:invokeOperation(input, {
        name = "ListBaselines",
        input_schema = schemas.ListBaselinesInput,
        output_schema = schemas.ListBaselinesOutput,
        http_method = "POST",
        http_path = "/list-baselines",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listControlOperations(input, options)
    return self:invokeOperation(input, {
        name = "ListControlOperations",
        input_schema = schemas.ListControlOperationsInput,
        output_schema = schemas.ListControlOperationsOutput,
        http_method = "POST",
        http_path = "/list-control-operations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEnabledBaselines(input, options)
    return self:invokeOperation(input, {
        name = "ListEnabledBaselines",
        input_schema = schemas.ListEnabledBaselinesInput,
        output_schema = schemas.ListEnabledBaselinesOutput,
        http_method = "POST",
        http_path = "/list-enabled-baselines",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEnabledControls(input, options)
    return self:invokeOperation(input, {
        name = "ListEnabledControls",
        input_schema = schemas.ListEnabledControlsInput,
        output_schema = schemas.ListEnabledControlsOutput,
        http_method = "POST",
        http_path = "/list-enabled-controls",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLandingZoneOperations(input, options)
    return self:invokeOperation(input, {
        name = "ListLandingZoneOperations",
        input_schema = schemas.ListLandingZoneOperationsInput,
        output_schema = schemas.ListLandingZoneOperationsOutput,
        http_method = "POST",
        http_path = "/list-landingzone-operations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLandingZones(input, options)
    return self:invokeOperation(input, {
        name = "ListLandingZones",
        input_schema = schemas.ListLandingZonesInput,
        output_schema = schemas.ListLandingZonesOutput,
        http_method = "POST",
        http_path = "/list-landingzones",
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
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resetEnabledBaseline(input, options)
    return self:invokeOperation(input, {
        name = "ResetEnabledBaseline",
        input_schema = schemas.ResetEnabledBaselineInput,
        output_schema = schemas.ResetEnabledBaselineOutput,
        http_method = "POST",
        http_path = "/reset-enabled-baseline",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resetEnabledControl(input, options)
    return self:invokeOperation(input, {
        name = "ResetEnabledControl",
        input_schema = schemas.ResetEnabledControlInput,
        output_schema = schemas.ResetEnabledControlOutput,
        http_method = "POST",
        http_path = "/reset-enabled-control",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resetLandingZone(input, options)
    return self:invokeOperation(input, {
        name = "ResetLandingZone",
        input_schema = schemas.ResetLandingZoneInput,
        output_schema = schemas.ResetLandingZoneOutput,
        http_method = "POST",
        http_path = "/reset-landingzone",
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
        http_path = "/tags/{resourceArn}",
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
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEnabledBaseline(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEnabledBaseline",
        input_schema = schemas.UpdateEnabledBaselineInput,
        output_schema = schemas.UpdateEnabledBaselineOutput,
        http_method = "POST",
        http_path = "/update-enabled-baseline",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEnabledControl(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEnabledControl",
        input_schema = schemas.UpdateEnabledControlInput,
        output_schema = schemas.UpdateEnabledControlOutput,
        http_method = "POST",
        http_path = "/update-enabled-control",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLandingZone(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLandingZone",
        input_schema = schemas.UpdateLandingZoneInput,
        output_schema = schemas.UpdateLandingZoneOutput,
        http_method = "POST",
        http_path = "/update-landingzone",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
