local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("controltower.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("controltower.types")

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
        input_schema = types.CreateLandingZoneInput,
        output_schema = types.CreateLandingZoneOutput,
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
        input_schema = types.DeleteLandingZoneInput,
        output_schema = types.DeleteLandingZoneOutput,
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
        input_schema = types.DisableBaselineInput,
        output_schema = types.DisableBaselineOutput,
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
        input_schema = types.DisableControlInput,
        output_schema = types.DisableControlOutput,
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
        input_schema = types.EnableBaselineInput,
        output_schema = types.EnableBaselineOutput,
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
        input_schema = types.EnableControlInput,
        output_schema = types.EnableControlOutput,
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
        input_schema = types.GetBaselineInput,
        output_schema = types.GetBaselineOutput,
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
        input_schema = types.GetBaselineOperationInput,
        output_schema = types.GetBaselineOperationOutput,
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
        input_schema = types.GetControlOperationInput,
        output_schema = types.GetControlOperationOutput,
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
        input_schema = types.GetEnabledBaselineInput,
        output_schema = types.GetEnabledBaselineOutput,
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
        input_schema = types.GetEnabledControlInput,
        output_schema = types.GetEnabledControlOutput,
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
        input_schema = types.GetLandingZoneInput,
        output_schema = types.GetLandingZoneOutput,
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
        input_schema = types.GetLandingZoneOperationInput,
        output_schema = types.GetLandingZoneOperationOutput,
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
        input_schema = types.ListBaselinesInput,
        output_schema = types.ListBaselinesOutput,
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
        input_schema = types.ListControlOperationsInput,
        output_schema = types.ListControlOperationsOutput,
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
        input_schema = types.ListEnabledBaselinesInput,
        output_schema = types.ListEnabledBaselinesOutput,
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
        input_schema = types.ListEnabledControlsInput,
        output_schema = types.ListEnabledControlsOutput,
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
        input_schema = types.ListLandingZoneOperationsInput,
        output_schema = types.ListLandingZoneOperationsOutput,
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
        input_schema = types.ListLandingZonesInput,
        output_schema = types.ListLandingZonesOutput,
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
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
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
        input_schema = types.ResetEnabledBaselineInput,
        output_schema = types.ResetEnabledBaselineOutput,
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
        input_schema = types.ResetEnabledControlInput,
        output_schema = types.ResetEnabledControlOutput,
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
        input_schema = types.ResetLandingZoneInput,
        output_schema = types.ResetLandingZoneOutput,
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
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
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
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
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
        input_schema = types.UpdateEnabledBaselineInput,
        output_schema = types.UpdateEnabledBaselineOutput,
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
        input_schema = types.UpdateEnabledControlInput,
        output_schema = types.UpdateEnabledControlOutput,
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
        input_schema = types.UpdateLandingZoneInput,
        output_schema = types.UpdateLandingZoneOutput,
        http_method = "POST",
        http_path = "/update-landingzone",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
