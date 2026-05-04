local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("arczonalshift.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("arczonalshift.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "PercDataPlane"
    cfg.signing_name = "percdataplane"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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

function Client:cancelPracticeRun(input, options)
    return self:invokeOperation(input, {
        name = "CancelPracticeRun",
        input_schema = types.CancelPracticeRunInput,
        output_schema = types.CancelPracticeRunOutput,
        http_method = "DELETE",
        http_path = "/practiceruns/{zonalShiftId}",
    }, options)
end

function Client:cancelZonalShift(input, options)
    return self:invokeOperation(input, {
        name = "CancelZonalShift",
        input_schema = types.CancelZonalShiftInput,
        output_schema = types.CancelZonalShiftOutput,
        http_method = "DELETE",
        http_path = "/zonalshifts/{zonalShiftId}",
    }, options)
end

function Client:createPracticeRunConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreatePracticeRunConfiguration",
        input_schema = types.CreatePracticeRunConfigurationInput,
        output_schema = types.CreatePracticeRunConfigurationOutput,
        http_method = "POST",
        http_path = "/configuration",
    }, options)
end

function Client:deletePracticeRunConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeletePracticeRunConfiguration",
        input_schema = types.DeletePracticeRunConfigurationInput,
        output_schema = types.DeletePracticeRunConfigurationOutput,
        http_method = "DELETE",
        http_path = "/configuration/{resourceIdentifier}",
    }, options)
end

function Client:getAutoshiftObserverNotificationStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetAutoshiftObserverNotificationStatus",
        input_schema = types.GetAutoshiftObserverNotificationStatusInput,
        output_schema = types.GetAutoshiftObserverNotificationStatusOutput,
        http_method = "GET",
        http_path = "/autoshift-observer-notification",
    }, options)
end

function Client:getManagedResource(input, options)
    return self:invokeOperation(input, {
        name = "GetManagedResource",
        input_schema = types.GetManagedResourceInput,
        output_schema = types.GetManagedResourceOutput,
        http_method = "GET",
        http_path = "/managedresources/{resourceIdentifier}",
    }, options)
end

function Client:listAutoshifts(input, options)
    return self:invokeOperation(input, {
        name = "ListAutoshifts",
        input_schema = types.ListAutoshiftsInput,
        output_schema = types.ListAutoshiftsOutput,
        http_method = "GET",
        http_path = "/autoshifts",
    }, options)
end

function Client:listManagedResources(input, options)
    return self:invokeOperation(input, {
        name = "ListManagedResources",
        input_schema = types.ListManagedResourcesInput,
        output_schema = types.ListManagedResourcesOutput,
        http_method = "GET",
        http_path = "/managedresources",
    }, options)
end

function Client:listZonalShifts(input, options)
    return self:invokeOperation(input, {
        name = "ListZonalShifts",
        input_schema = types.ListZonalShiftsInput,
        output_schema = types.ListZonalShiftsOutput,
        http_method = "GET",
        http_path = "/zonalshifts",
    }, options)
end

function Client:startPracticeRun(input, options)
    return self:invokeOperation(input, {
        name = "StartPracticeRun",
        input_schema = types.StartPracticeRunInput,
        output_schema = types.StartPracticeRunOutput,
        http_method = "POST",
        http_path = "/practiceruns",
    }, options)
end

function Client:startZonalShift(input, options)
    return self:invokeOperation(input, {
        name = "StartZonalShift",
        input_schema = types.StartZonalShiftInput,
        output_schema = types.StartZonalShiftOutput,
        http_method = "POST",
        http_path = "/zonalshifts",
    }, options)
end

function Client:updateAutoshiftObserverNotificationStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAutoshiftObserverNotificationStatus",
        input_schema = types.UpdateAutoshiftObserverNotificationStatusInput,
        output_schema = types.UpdateAutoshiftObserverNotificationStatusOutput,
        http_method = "PUT",
        http_path = "/autoshift-observer-notification",
    }, options)
end

function Client:updatePracticeRunConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePracticeRunConfiguration",
        input_schema = types.UpdatePracticeRunConfigurationInput,
        output_schema = types.UpdatePracticeRunConfigurationOutput,
        http_method = "PATCH",
        http_path = "/configuration/{resourceIdentifier}",
    }, options)
end

function Client:updateZonalAutoshiftConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateZonalAutoshiftConfiguration",
        input_schema = types.UpdateZonalAutoshiftConfigurationInput,
        output_schema = types.UpdateZonalAutoshiftConfigurationOutput,
        http_method = "PUT",
        http_path = "/managedresources/{resourceIdentifier}",
    }, options)
end

function Client:updateZonalShift(input, options)
    return self:invokeOperation(input, {
        name = "UpdateZonalShift",
        input_schema = types.UpdateZonalShiftInput,
        output_schema = types.UpdateZonalShiftOutput,
        http_method = "PATCH",
        http_path = "/zonalshifts/{zonalShiftId}",
    }, options)
end

return M
