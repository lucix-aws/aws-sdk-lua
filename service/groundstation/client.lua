local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("groundstation.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("groundstation.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "GroundStation"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "groundstation", signing_region = cfg.region } }
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

function Client:cancelContact(input, options)
    return self:invokeOperation(input, {
        name = "CancelContact",
        input_schema = schemas.CancelContactInput,
        output_schema = schemas.CancelContactOutput,
        http_method = "DELETE",
        http_path = "/contact/{contactId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfig",
        input_schema = schemas.CreateConfigInput,
        output_schema = schemas.CreateConfigOutput,
        http_method = "POST",
        http_path = "/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataflowEndpointGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataflowEndpointGroup",
        input_schema = schemas.CreateDataflowEndpointGroupInput,
        output_schema = schemas.CreateDataflowEndpointGroupOutput,
        http_method = "POST",
        http_path = "/dataflowEndpointGroup",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataflowEndpointGroupV2(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataflowEndpointGroupV2",
        input_schema = schemas.CreateDataflowEndpointGroupV2Input,
        output_schema = schemas.CreateDataflowEndpointGroupV2Output,
        http_method = "POST",
        http_path = "/dataflowEndpointGroupV2",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEphemeris(input, options)
    return self:invokeOperation(input, {
        name = "CreateEphemeris",
        input_schema = schemas.CreateEphemerisInput,
        output_schema = schemas.CreateEphemerisOutput,
        http_method = "POST",
        http_path = "/ephemeris",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMissionProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateMissionProfile",
        input_schema = schemas.CreateMissionProfileInput,
        output_schema = schemas.CreateMissionProfileOutput,
        http_method = "POST",
        http_path = "/missionprofile",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfig",
        input_schema = schemas.DeleteConfigInput,
        output_schema = schemas.DeleteConfigOutput,
        http_method = "DELETE",
        http_path = "/config/{configType}/{configId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataflowEndpointGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataflowEndpointGroup",
        input_schema = schemas.DeleteDataflowEndpointGroupInput,
        output_schema = schemas.DeleteDataflowEndpointGroupOutput,
        http_method = "DELETE",
        http_path = "/dataflowEndpointGroup/{dataflowEndpointGroupId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEphemeris(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEphemeris",
        input_schema = schemas.DeleteEphemerisInput,
        output_schema = schemas.DeleteEphemerisOutput,
        http_method = "DELETE",
        http_path = "/ephemeris/{ephemerisId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMissionProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMissionProfile",
        input_schema = schemas.DeleteMissionProfileInput,
        output_schema = schemas.DeleteMissionProfileOutput,
        http_method = "DELETE",
        http_path = "/missionprofile/{missionProfileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeContact(input, options)
    return self:invokeOperation(input, {
        name = "DescribeContact",
        input_schema = schemas.DescribeContactInput,
        output_schema = schemas.DescribeContactOutput,
        http_method = "GET",
        http_path = "/contact/{contactId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeContactVersion(input, options)
    return self:invokeOperation(input, {
        name = "DescribeContactVersion",
        input_schema = schemas.DescribeContactVersionInput,
        output_schema = schemas.DescribeContactVersionOutput,
        http_method = "GET",
        http_path = "/contact/{contactId}/versions/{versionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEphemeris(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEphemeris",
        input_schema = schemas.DescribeEphemerisInput,
        output_schema = schemas.DescribeEphemerisOutput,
        http_method = "GET",
        http_path = "/ephemeris/{ephemerisId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAgentConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetAgentConfiguration",
        input_schema = schemas.GetAgentConfigurationInput,
        output_schema = schemas.GetAgentConfigurationOutput,
        http_method = "GET",
        http_path = "/agent/{agentId}/configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAgentTaskResponseUrl(input, options)
    return self:invokeOperation(input, {
        name = "GetAgentTaskResponseUrl",
        input_schema = schemas.GetAgentTaskResponseUrlInput,
        output_schema = schemas.GetAgentTaskResponseUrlOutput,
        http_method = "GET",
        http_path = "/agentResponseUrl/{agentId}/{taskId}",
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
        http_method = "GET",
        http_path = "/config/{configType}/{configId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataflowEndpointGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetDataflowEndpointGroup",
        input_schema = schemas.GetDataflowEndpointGroupInput,
        output_schema = schemas.GetDataflowEndpointGroupOutput,
        http_method = "GET",
        http_path = "/dataflowEndpointGroup/{dataflowEndpointGroupId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMinuteUsage(input, options)
    return self:invokeOperation(input, {
        name = "GetMinuteUsage",
        input_schema = schemas.GetMinuteUsageInput,
        output_schema = schemas.GetMinuteUsageOutput,
        http_method = "POST",
        http_path = "/minute-usage",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMissionProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetMissionProfile",
        input_schema = schemas.GetMissionProfileInput,
        output_schema = schemas.GetMissionProfileOutput,
        http_method = "GET",
        http_path = "/missionprofile/{missionProfileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSatellite(input, options)
    return self:invokeOperation(input, {
        name = "GetSatellite",
        input_schema = schemas.GetSatelliteInput,
        output_schema = schemas.GetSatelliteOutput,
        http_method = "GET",
        http_path = "/satellite/{satelliteId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAntennas(input, options)
    return self:invokeOperation(input, {
        name = "ListAntennas",
        input_schema = schemas.ListAntennasInput,
        output_schema = schemas.ListAntennasOutput,
        http_method = "GET",
        http_path = "/groundstation/{groundStationId}/antenna",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListConfigs",
        input_schema = schemas.ListConfigsInput,
        output_schema = schemas.ListConfigsOutput,
        http_method = "GET",
        http_path = "/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listContacts(input, options)
    return self:invokeOperation(input, {
        name = "ListContacts",
        input_schema = schemas.ListContactsInput,
        output_schema = schemas.ListContactsOutput,
        http_method = "POST",
        http_path = "/contacts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listContactVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListContactVersions",
        input_schema = schemas.ListContactVersionsInput,
        output_schema = schemas.ListContactVersionsOutput,
        http_method = "GET",
        http_path = "/contact/{contactId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataflowEndpointGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListDataflowEndpointGroups",
        input_schema = schemas.ListDataflowEndpointGroupsInput,
        output_schema = schemas.ListDataflowEndpointGroupsOutput,
        http_method = "GET",
        http_path = "/dataflowEndpointGroup",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEphemerides(input, options)
    return self:invokeOperation(input, {
        name = "ListEphemerides",
        input_schema = schemas.ListEphemeridesInput,
        output_schema = schemas.ListEphemeridesOutput,
        http_method = "POST",
        http_path = "/ephemerides",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGroundStationReservations(input, options)
    return self:invokeOperation(input, {
        name = "ListGroundStationReservations",
        input_schema = schemas.ListGroundStationReservationsInput,
        output_schema = schemas.ListGroundStationReservationsOutput,
        http_method = "GET",
        http_path = "/groundstation/{groundStationId}/reservation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGroundStations(input, options)
    return self:invokeOperation(input, {
        name = "ListGroundStations",
        input_schema = schemas.ListGroundStationsInput,
        output_schema = schemas.ListGroundStationsOutput,
        http_method = "GET",
        http_path = "/groundstation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMissionProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListMissionProfiles",
        input_schema = schemas.ListMissionProfilesInput,
        output_schema = schemas.ListMissionProfilesOutput,
        http_method = "GET",
        http_path = "/missionprofile",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSatellites(input, options)
    return self:invokeOperation(input, {
        name = "ListSatellites",
        input_schema = schemas.ListSatellitesInput,
        output_schema = schemas.ListSatellitesOutput,
        http_method = "GET",
        http_path = "/satellite",
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

function Client:registerAgent(input, options)
    return self:invokeOperation(input, {
        name = "RegisterAgent",
        input_schema = schemas.RegisterAgentInput,
        output_schema = schemas.RegisterAgentOutput,
        http_method = "POST",
        http_path = "/agent",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:reserveContact(input, options)
    return self:invokeOperation(input, {
        name = "ReserveContact",
        input_schema = schemas.ReserveContactInput,
        output_schema = schemas.ReserveContactOutput,
        http_method = "POST",
        http_path = "/contact",
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

function Client:updateAgentStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAgentStatus",
        input_schema = schemas.UpdateAgentStatusInput,
        output_schema = schemas.UpdateAgentStatusOutput,
        http_method = "PUT",
        http_path = "/agent/{agentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConfig",
        input_schema = schemas.UpdateConfigInput,
        output_schema = schemas.UpdateConfigOutput,
        http_method = "PUT",
        http_path = "/config/{configType}/{configId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateContact(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContact",
        input_schema = schemas.UpdateContactInput,
        output_schema = schemas.UpdateContactOutput,
        http_method = "POST",
        http_path = "/contact/{contactId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEphemeris(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEphemeris",
        input_schema = schemas.UpdateEphemerisInput,
        output_schema = schemas.UpdateEphemerisOutput,
        http_method = "PUT",
        http_path = "/ephemeris/{ephemerisId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMissionProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMissionProfile",
        input_schema = schemas.UpdateMissionProfileInput,
        output_schema = schemas.UpdateMissionProfileOutput,
        http_method = "PUT",
        http_path = "/missionprofile/{missionProfileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
