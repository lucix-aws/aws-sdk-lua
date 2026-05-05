local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("backupgateway.endpoint_rules")
local schemas = require("backupgateway.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "BackupOnPremises_v20210101"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "backup-gateway", signing_region = cfg.region } }
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

function Client:associateGatewayToServer(input, options)
    return self:invokeOperation(input, {
        name = "AssociateGatewayToServer",
        input_schema = schemas.AssociateGatewayToServerInput,
        output_schema = schemas.AssociateGatewayToServerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGateway(input, options)
    return self:invokeOperation(input, {
        name = "CreateGateway",
        input_schema = schemas.CreateGatewayInput,
        output_schema = schemas.CreateGatewayOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGateway(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGateway",
        input_schema = schemas.DeleteGatewayInput,
        output_schema = schemas.DeleteGatewayOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteHypervisor(input, options)
    return self:invokeOperation(input, {
        name = "DeleteHypervisor",
        input_schema = schemas.DeleteHypervisorInput,
        output_schema = schemas.DeleteHypervisorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateGatewayFromServer(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateGatewayFromServer",
        input_schema = schemas.DisassociateGatewayFromServerInput,
        output_schema = schemas.DisassociateGatewayFromServerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBandwidthRateLimitSchedule(input, options)
    return self:invokeOperation(input, {
        name = "GetBandwidthRateLimitSchedule",
        input_schema = schemas.GetBandwidthRateLimitScheduleInput,
        output_schema = schemas.GetBandwidthRateLimitScheduleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGateway(input, options)
    return self:invokeOperation(input, {
        name = "GetGateway",
        input_schema = schemas.GetGatewayInput,
        output_schema = schemas.GetGatewayOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getHypervisor(input, options)
    return self:invokeOperation(input, {
        name = "GetHypervisor",
        input_schema = schemas.GetHypervisorInput,
        output_schema = schemas.GetHypervisorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getHypervisorPropertyMappings(input, options)
    return self:invokeOperation(input, {
        name = "GetHypervisorPropertyMappings",
        input_schema = schemas.GetHypervisorPropertyMappingsInput,
        output_schema = schemas.GetHypervisorPropertyMappingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVirtualMachine(input, options)
    return self:invokeOperation(input, {
        name = "GetVirtualMachine",
        input_schema = schemas.GetVirtualMachineInput,
        output_schema = schemas.GetVirtualMachineOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importHypervisorConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "ImportHypervisorConfiguration",
        input_schema = schemas.ImportHypervisorConfigurationInput,
        output_schema = schemas.ImportHypervisorConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGateways(input, options)
    return self:invokeOperation(input, {
        name = "ListGateways",
        input_schema = schemas.ListGatewaysInput,
        output_schema = schemas.ListGatewaysOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listHypervisors(input, options)
    return self:invokeOperation(input, {
        name = "ListHypervisors",
        input_schema = schemas.ListHypervisorsInput,
        output_schema = schemas.ListHypervisorsOutput,
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

function Client:listVirtualMachines(input, options)
    return self:invokeOperation(input, {
        name = "ListVirtualMachines",
        input_schema = schemas.ListVirtualMachinesInput,
        output_schema = schemas.ListVirtualMachinesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putBandwidthRateLimitSchedule(input, options)
    return self:invokeOperation(input, {
        name = "PutBandwidthRateLimitSchedule",
        input_schema = schemas.PutBandwidthRateLimitScheduleInput,
        output_schema = schemas.PutBandwidthRateLimitScheduleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putHypervisorPropertyMappings(input, options)
    return self:invokeOperation(input, {
        name = "PutHypervisorPropertyMappings",
        input_schema = schemas.PutHypervisorPropertyMappingsInput,
        output_schema = schemas.PutHypervisorPropertyMappingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putMaintenanceStartTime(input, options)
    return self:invokeOperation(input, {
        name = "PutMaintenanceStartTime",
        input_schema = schemas.PutMaintenanceStartTimeInput,
        output_schema = schemas.PutMaintenanceStartTimeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startVirtualMachinesMetadataSync(input, options)
    return self:invokeOperation(input, {
        name = "StartVirtualMachinesMetadataSync",
        input_schema = schemas.StartVirtualMachinesMetadataSyncInput,
        output_schema = schemas.StartVirtualMachinesMetadataSyncOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:testHypervisorConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "TestHypervisorConfiguration",
        input_schema = schemas.TestHypervisorConfigurationInput,
        output_schema = schemas.TestHypervisorConfigurationOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGatewayInformation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGatewayInformation",
        input_schema = schemas.UpdateGatewayInformationInput,
        output_schema = schemas.UpdateGatewayInformationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGatewaySoftwareNow(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGatewaySoftwareNow",
        input_schema = schemas.UpdateGatewaySoftwareNowInput,
        output_schema = schemas.UpdateGatewaySoftwareNowOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateHypervisor(input, options)
    return self:invokeOperation(input, {
        name = "UpdateHypervisor",
        input_schema = schemas.UpdateHypervisorInput,
        output_schema = schemas.UpdateHypervisorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
