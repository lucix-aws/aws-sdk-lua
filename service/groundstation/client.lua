local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("groundstation.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("groundstation.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "GroundStation"
    cfg.signing_name = "groundstation"
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

function Client:cancelContact(input, options)
    return self:invokeOperation(input, {
        name = "CancelContact",
        input_schema = types.CancelContactInput,
        output_schema = types.CancelContactOutput,
        http_method = "DELETE",
        http_path = "/contact/{contactId}",
    }, options)
end

function Client:createConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfig",
        input_schema = types.CreateConfigInput,
        output_schema = types.CreateConfigOutput,
        http_method = "POST",
        http_path = "/config",
    }, options)
end

function Client:createDataflowEndpointGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataflowEndpointGroup",
        input_schema = types.CreateDataflowEndpointGroupInput,
        output_schema = types.CreateDataflowEndpointGroupOutput,
        http_method = "POST",
        http_path = "/dataflowEndpointGroup",
    }, options)
end

function Client:createDataflowEndpointGroupV2(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataflowEndpointGroupV2",
        input_schema = types.CreateDataflowEndpointGroupV2Input,
        output_schema = types.CreateDataflowEndpointGroupV2Output,
        http_method = "POST",
        http_path = "/dataflowEndpointGroupV2",
    }, options)
end

function Client:createEphemeris(input, options)
    return self:invokeOperation(input, {
        name = "CreateEphemeris",
        input_schema = types.CreateEphemerisInput,
        output_schema = types.CreateEphemerisOutput,
        http_method = "POST",
        http_path = "/ephemeris",
    }, options)
end

function Client:createMissionProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateMissionProfile",
        input_schema = types.CreateMissionProfileInput,
        output_schema = types.CreateMissionProfileOutput,
        http_method = "POST",
        http_path = "/missionprofile",
    }, options)
end

function Client:deleteConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfig",
        input_schema = types.DeleteConfigInput,
        output_schema = types.DeleteConfigOutput,
        http_method = "DELETE",
        http_path = "/config/{configType}/{configId}",
    }, options)
end

function Client:deleteDataflowEndpointGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataflowEndpointGroup",
        input_schema = types.DeleteDataflowEndpointGroupInput,
        output_schema = types.DeleteDataflowEndpointGroupOutput,
        http_method = "DELETE",
        http_path = "/dataflowEndpointGroup/{dataflowEndpointGroupId}",
    }, options)
end

function Client:deleteEphemeris(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEphemeris",
        input_schema = types.DeleteEphemerisInput,
        output_schema = types.DeleteEphemerisOutput,
        http_method = "DELETE",
        http_path = "/ephemeris/{ephemerisId}",
    }, options)
end

function Client:deleteMissionProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMissionProfile",
        input_schema = types.DeleteMissionProfileInput,
        output_schema = types.DeleteMissionProfileOutput,
        http_method = "DELETE",
        http_path = "/missionprofile/{missionProfileId}",
    }, options)
end

function Client:describeContact(input, options)
    return self:invokeOperation(input, {
        name = "DescribeContact",
        input_schema = types.DescribeContactInput,
        output_schema = types.DescribeContactOutput,
        http_method = "GET",
        http_path = "/contact/{contactId}",
    }, options)
end

function Client:describeContactVersion(input, options)
    return self:invokeOperation(input, {
        name = "DescribeContactVersion",
        input_schema = types.DescribeContactVersionInput,
        output_schema = types.DescribeContactVersionOutput,
        http_method = "GET",
        http_path = "/contact/{contactId}/versions/{versionId}",
    }, options)
end

function Client:describeEphemeris(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEphemeris",
        input_schema = types.DescribeEphemerisInput,
        output_schema = types.DescribeEphemerisOutput,
        http_method = "GET",
        http_path = "/ephemeris/{ephemerisId}",
    }, options)
end

function Client:getAgentConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetAgentConfiguration",
        input_schema = types.GetAgentConfigurationInput,
        output_schema = types.GetAgentConfigurationOutput,
        http_method = "GET",
        http_path = "/agent/{agentId}/configuration",
    }, options)
end

function Client:getAgentTaskResponseUrl(input, options)
    return self:invokeOperation(input, {
        name = "GetAgentTaskResponseUrl",
        input_schema = types.GetAgentTaskResponseUrlInput,
        output_schema = types.GetAgentTaskResponseUrlOutput,
        http_method = "GET",
        http_path = "/agentResponseUrl/{agentId}/{taskId}",
    }, options)
end

function Client:getConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetConfig",
        input_schema = types.GetConfigInput,
        output_schema = types.GetConfigOutput,
        http_method = "GET",
        http_path = "/config/{configType}/{configId}",
    }, options)
end

function Client:getDataflowEndpointGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetDataflowEndpointGroup",
        input_schema = types.GetDataflowEndpointGroupInput,
        output_schema = types.GetDataflowEndpointGroupOutput,
        http_method = "GET",
        http_path = "/dataflowEndpointGroup/{dataflowEndpointGroupId}",
    }, options)
end

function Client:getMinuteUsage(input, options)
    return self:invokeOperation(input, {
        name = "GetMinuteUsage",
        input_schema = types.GetMinuteUsageInput,
        output_schema = types.GetMinuteUsageOutput,
        http_method = "POST",
        http_path = "/minute-usage",
    }, options)
end

function Client:getMissionProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetMissionProfile",
        input_schema = types.GetMissionProfileInput,
        output_schema = types.GetMissionProfileOutput,
        http_method = "GET",
        http_path = "/missionprofile/{missionProfileId}",
    }, options)
end

function Client:getSatellite(input, options)
    return self:invokeOperation(input, {
        name = "GetSatellite",
        input_schema = types.GetSatelliteInput,
        output_schema = types.GetSatelliteOutput,
        http_method = "GET",
        http_path = "/satellite/{satelliteId}",
    }, options)
end

function Client:listAntennas(input, options)
    return self:invokeOperation(input, {
        name = "ListAntennas",
        input_schema = types.ListAntennasInput,
        output_schema = types.ListAntennasOutput,
        http_method = "GET",
        http_path = "/groundstation/{groundStationId}/antenna",
    }, options)
end

function Client:listConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListConfigs",
        input_schema = types.ListConfigsInput,
        output_schema = types.ListConfigsOutput,
        http_method = "GET",
        http_path = "/config",
    }, options)
end

function Client:listContacts(input, options)
    return self:invokeOperation(input, {
        name = "ListContacts",
        input_schema = types.ListContactsInput,
        output_schema = types.ListContactsOutput,
        http_method = "POST",
        http_path = "/contacts",
    }, options)
end

function Client:listContactVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListContactVersions",
        input_schema = types.ListContactVersionsInput,
        output_schema = types.ListContactVersionsOutput,
        http_method = "GET",
        http_path = "/contact/{contactId}/versions",
    }, options)
end

function Client:listDataflowEndpointGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListDataflowEndpointGroups",
        input_schema = types.ListDataflowEndpointGroupsInput,
        output_schema = types.ListDataflowEndpointGroupsOutput,
        http_method = "GET",
        http_path = "/dataflowEndpointGroup",
    }, options)
end

function Client:listEphemerides(input, options)
    return self:invokeOperation(input, {
        name = "ListEphemerides",
        input_schema = types.ListEphemeridesInput,
        output_schema = types.ListEphemeridesOutput,
        http_method = "POST",
        http_path = "/ephemerides",
    }, options)
end

function Client:listGroundStationReservations(input, options)
    return self:invokeOperation(input, {
        name = "ListGroundStationReservations",
        input_schema = types.ListGroundStationReservationsInput,
        output_schema = types.ListGroundStationReservationsOutput,
        http_method = "GET",
        http_path = "/groundstation/{groundStationId}/reservation",
    }, options)
end

function Client:listGroundStations(input, options)
    return self:invokeOperation(input, {
        name = "ListGroundStations",
        input_schema = types.ListGroundStationsInput,
        output_schema = types.ListGroundStationsOutput,
        http_method = "GET",
        http_path = "/groundstation",
    }, options)
end

function Client:listMissionProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListMissionProfiles",
        input_schema = types.ListMissionProfilesInput,
        output_schema = types.ListMissionProfilesOutput,
        http_method = "GET",
        http_path = "/missionprofile",
    }, options)
end

function Client:listSatellites(input, options)
    return self:invokeOperation(input, {
        name = "ListSatellites",
        input_schema = types.ListSatellitesInput,
        output_schema = types.ListSatellitesOutput,
        http_method = "GET",
        http_path = "/satellite",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:registerAgent(input, options)
    return self:invokeOperation(input, {
        name = "RegisterAgent",
        input_schema = types.RegisterAgentInput,
        output_schema = types.RegisterAgentOutput,
        http_method = "POST",
        http_path = "/agent",
    }, options)
end

function Client:reserveContact(input, options)
    return self:invokeOperation(input, {
        name = "ReserveContact",
        input_schema = types.ReserveContactInput,
        output_schema = types.ReserveContactOutput,
        http_method = "POST",
        http_path = "/contact",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:updateAgentStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAgentStatus",
        input_schema = types.UpdateAgentStatusInput,
        output_schema = types.UpdateAgentStatusOutput,
        http_method = "PUT",
        http_path = "/agent/{agentId}",
    }, options)
end

function Client:updateConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConfig",
        input_schema = types.UpdateConfigInput,
        output_schema = types.UpdateConfigOutput,
        http_method = "PUT",
        http_path = "/config/{configType}/{configId}",
    }, options)
end

function Client:updateContact(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContact",
        input_schema = types.UpdateContactInput,
        output_schema = types.UpdateContactOutput,
        http_method = "POST",
        http_path = "/contact/{contactId}/versions",
    }, options)
end

function Client:updateEphemeris(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEphemeris",
        input_schema = types.UpdateEphemerisInput,
        output_schema = types.UpdateEphemerisOutput,
        http_method = "PUT",
        http_path = "/ephemeris/{ephemerisId}",
    }, options)
end

function Client:updateMissionProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMissionProfile",
        input_schema = types.UpdateMissionProfileInput,
        output_schema = types.UpdateMissionProfileOutput,
        http_method = "PUT",
        http_path = "/missionprofile/{missionProfileId}",
    }, options)
end

return M
