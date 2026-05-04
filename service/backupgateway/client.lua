local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("backupgateway.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("backupgateway.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "BackupOnPremises_v20210101"
    cfg.signing_name = "backuponpremises_v20210101"
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

function Client:associateGatewayToServer(input, options)
    return self:invokeOperation(input, {
        name = "AssociateGatewayToServer",
        input_schema = types.AssociateGatewayToServerInput,
        output_schema = types.AssociateGatewayToServerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createGateway(input, options)
    return self:invokeOperation(input, {
        name = "CreateGateway",
        input_schema = types.CreateGatewayInput,
        output_schema = types.CreateGatewayOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteGateway(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGateway",
        input_schema = types.DeleteGatewayInput,
        output_schema = types.DeleteGatewayOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteHypervisor(input, options)
    return self:invokeOperation(input, {
        name = "DeleteHypervisor",
        input_schema = types.DeleteHypervisorInput,
        output_schema = types.DeleteHypervisorOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateGatewayFromServer(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateGatewayFromServer",
        input_schema = types.DisassociateGatewayFromServerInput,
        output_schema = types.DisassociateGatewayFromServerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getBandwidthRateLimitSchedule(input, options)
    return self:invokeOperation(input, {
        name = "GetBandwidthRateLimitSchedule",
        input_schema = types.GetBandwidthRateLimitScheduleInput,
        output_schema = types.GetBandwidthRateLimitScheduleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getGateway(input, options)
    return self:invokeOperation(input, {
        name = "GetGateway",
        input_schema = types.GetGatewayInput,
        output_schema = types.GetGatewayOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getHypervisor(input, options)
    return self:invokeOperation(input, {
        name = "GetHypervisor",
        input_schema = types.GetHypervisorInput,
        output_schema = types.GetHypervisorOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getHypervisorPropertyMappings(input, options)
    return self:invokeOperation(input, {
        name = "GetHypervisorPropertyMappings",
        input_schema = types.GetHypervisorPropertyMappingsInput,
        output_schema = types.GetHypervisorPropertyMappingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getVirtualMachine(input, options)
    return self:invokeOperation(input, {
        name = "GetVirtualMachine",
        input_schema = types.GetVirtualMachineInput,
        output_schema = types.GetVirtualMachineOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:importHypervisorConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "ImportHypervisorConfiguration",
        input_schema = types.ImportHypervisorConfigurationInput,
        output_schema = types.ImportHypervisorConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listGateways(input, options)
    return self:invokeOperation(input, {
        name = "ListGateways",
        input_schema = types.ListGatewaysInput,
        output_schema = types.ListGatewaysOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listHypervisors(input, options)
    return self:invokeOperation(input, {
        name = "ListHypervisors",
        input_schema = types.ListHypervisorsInput,
        output_schema = types.ListHypervisorsOutput,
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

function Client:listVirtualMachines(input, options)
    return self:invokeOperation(input, {
        name = "ListVirtualMachines",
        input_schema = types.ListVirtualMachinesInput,
        output_schema = types.ListVirtualMachinesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putBandwidthRateLimitSchedule(input, options)
    return self:invokeOperation(input, {
        name = "PutBandwidthRateLimitSchedule",
        input_schema = types.PutBandwidthRateLimitScheduleInput,
        output_schema = types.PutBandwidthRateLimitScheduleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putHypervisorPropertyMappings(input, options)
    return self:invokeOperation(input, {
        name = "PutHypervisorPropertyMappings",
        input_schema = types.PutHypervisorPropertyMappingsInput,
        output_schema = types.PutHypervisorPropertyMappingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putMaintenanceStartTime(input, options)
    return self:invokeOperation(input, {
        name = "PutMaintenanceStartTime",
        input_schema = types.PutMaintenanceStartTimeInput,
        output_schema = types.PutMaintenanceStartTimeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startVirtualMachinesMetadataSync(input, options)
    return self:invokeOperation(input, {
        name = "StartVirtualMachinesMetadataSync",
        input_schema = types.StartVirtualMachinesMetadataSyncInput,
        output_schema = types.StartVirtualMachinesMetadataSyncOutput,
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

function Client:testHypervisorConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "TestHypervisorConfiguration",
        input_schema = types.TestHypervisorConfigurationInput,
        output_schema = types.TestHypervisorConfigurationOutput,
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

function Client:updateGatewayInformation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGatewayInformation",
        input_schema = types.UpdateGatewayInformationInput,
        output_schema = types.UpdateGatewayInformationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateGatewaySoftwareNow(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGatewaySoftwareNow",
        input_schema = types.UpdateGatewaySoftwareNowInput,
        output_schema = types.UpdateGatewaySoftwareNowOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateHypervisor(input, options)
    return self:invokeOperation(input, {
        name = "UpdateHypervisor",
        input_schema = types.UpdateHypervisorInput,
        output_schema = types.UpdateHypervisorOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
