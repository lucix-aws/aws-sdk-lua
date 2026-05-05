local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("arczonalshift.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("arczonalshift.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "PercDataPlane"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "arc-zonal-shift", signing_region = cfg.region } }
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

function Client:cancelPracticeRun(input, options)
    return self:invokeOperation(input, {
        name = "CancelPracticeRun",
        input_schema = schemas.CancelPracticeRunInput,
        output_schema = schemas.CancelPracticeRunOutput,
        http_method = "DELETE",
        http_path = "/practiceruns/{zonalShiftId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelZonalShift(input, options)
    return self:invokeOperation(input, {
        name = "CancelZonalShift",
        input_schema = schemas.CancelZonalShiftInput,
        output_schema = schemas.CancelZonalShiftOutput,
        http_method = "DELETE",
        http_path = "/zonalshifts/{zonalShiftId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPracticeRunConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreatePracticeRunConfiguration",
        input_schema = schemas.CreatePracticeRunConfigurationInput,
        output_schema = schemas.CreatePracticeRunConfigurationOutput,
        http_method = "POST",
        http_path = "/configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePracticeRunConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeletePracticeRunConfiguration",
        input_schema = schemas.DeletePracticeRunConfigurationInput,
        output_schema = schemas.DeletePracticeRunConfigurationOutput,
        http_method = "DELETE",
        http_path = "/configuration/{resourceIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAutoshiftObserverNotificationStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetAutoshiftObserverNotificationStatus",
        input_schema = schemas.GetAutoshiftObserverNotificationStatusInput,
        output_schema = schemas.GetAutoshiftObserverNotificationStatusOutput,
        http_method = "GET",
        http_path = "/autoshift-observer-notification",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getManagedResource(input, options)
    return self:invokeOperation(input, {
        name = "GetManagedResource",
        input_schema = schemas.GetManagedResourceInput,
        output_schema = schemas.GetManagedResourceOutput,
        http_method = "GET",
        http_path = "/managedresources/{resourceIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAutoshifts(input, options)
    return self:invokeOperation(input, {
        name = "ListAutoshifts",
        input_schema = schemas.ListAutoshiftsInput,
        output_schema = schemas.ListAutoshiftsOutput,
        http_method = "GET",
        http_path = "/autoshifts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listManagedResources(input, options)
    return self:invokeOperation(input, {
        name = "ListManagedResources",
        input_schema = schemas.ListManagedResourcesInput,
        output_schema = schemas.ListManagedResourcesOutput,
        http_method = "GET",
        http_path = "/managedresources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listZonalShifts(input, options)
    return self:invokeOperation(input, {
        name = "ListZonalShifts",
        input_schema = schemas.ListZonalShiftsInput,
        output_schema = schemas.ListZonalShiftsOutput,
        http_method = "GET",
        http_path = "/zonalshifts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startPracticeRun(input, options)
    return self:invokeOperation(input, {
        name = "StartPracticeRun",
        input_schema = schemas.StartPracticeRunInput,
        output_schema = schemas.StartPracticeRunOutput,
        http_method = "POST",
        http_path = "/practiceruns",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startZonalShift(input, options)
    return self:invokeOperation(input, {
        name = "StartZonalShift",
        input_schema = schemas.StartZonalShiftInput,
        output_schema = schemas.StartZonalShiftOutput,
        http_method = "POST",
        http_path = "/zonalshifts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAutoshiftObserverNotificationStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAutoshiftObserverNotificationStatus",
        input_schema = schemas.UpdateAutoshiftObserverNotificationStatusInput,
        output_schema = schemas.UpdateAutoshiftObserverNotificationStatusOutput,
        http_method = "PUT",
        http_path = "/autoshift-observer-notification",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePracticeRunConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePracticeRunConfiguration",
        input_schema = schemas.UpdatePracticeRunConfigurationInput,
        output_schema = schemas.UpdatePracticeRunConfigurationOutput,
        http_method = "PATCH",
        http_path = "/configuration/{resourceIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateZonalAutoshiftConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateZonalAutoshiftConfiguration",
        input_schema = schemas.UpdateZonalAutoshiftConfigurationInput,
        output_schema = schemas.UpdateZonalAutoshiftConfigurationOutput,
        http_method = "PUT",
        http_path = "/managedresources/{resourceIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateZonalShift(input, options)
    return self:invokeOperation(input, {
        name = "UpdateZonalShift",
        input_schema = schemas.UpdateZonalShiftInput,
        output_schema = schemas.UpdateZonalShiftOutput,
        http_method = "PATCH",
        http_path = "/zonalshifts/{zonalShiftId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
