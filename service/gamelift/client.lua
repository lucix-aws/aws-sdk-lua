local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("gamelift.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("gamelift.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "GameLift"
    cfg.signing_name = "gamelift"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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

function Client:acceptMatch(input, options)
    return self:invokeOperation(input, {
        name = "AcceptMatch",
        input_schema = types.AcceptMatchInput,
        output_schema = types.AcceptMatchOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:claimGameServer(input, options)
    return self:invokeOperation(input, {
        name = "ClaimGameServer",
        input_schema = types.ClaimGameServerInput,
        output_schema = types.ClaimGameServerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createAlias(input, options)
    return self:invokeOperation(input, {
        name = "CreateAlias",
        input_schema = types.CreateAliasInput,
        output_schema = types.CreateAliasOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createBuild(input, options)
    return self:invokeOperation(input, {
        name = "CreateBuild",
        input_schema = types.CreateBuildInput,
        output_schema = types.CreateBuildOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createContainerFleet(input, options)
    return self:invokeOperation(input, {
        name = "CreateContainerFleet",
        input_schema = types.CreateContainerFleetInput,
        output_schema = types.CreateContainerFleetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createContainerGroupDefinition(input, options)
    return self:invokeOperation(input, {
        name = "CreateContainerGroupDefinition",
        input_schema = types.CreateContainerGroupDefinitionInput,
        output_schema = types.CreateContainerGroupDefinitionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createFleet(input, options)
    return self:invokeOperation(input, {
        name = "CreateFleet",
        input_schema = types.CreateFleetInput,
        output_schema = types.CreateFleetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createFleetLocations(input, options)
    return self:invokeOperation(input, {
        name = "CreateFleetLocations",
        input_schema = types.CreateFleetLocationsInput,
        output_schema = types.CreateFleetLocationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createGameServerGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateGameServerGroup",
        input_schema = types.CreateGameServerGroupInput,
        output_schema = types.CreateGameServerGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createGameSession(input, options)
    return self:invokeOperation(input, {
        name = "CreateGameSession",
        input_schema = types.CreateGameSessionInput,
        output_schema = types.CreateGameSessionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createGameSessionQueue(input, options)
    return self:invokeOperation(input, {
        name = "CreateGameSessionQueue",
        input_schema = types.CreateGameSessionQueueInput,
        output_schema = types.CreateGameSessionQueueOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createLocation(input, options)
    return self:invokeOperation(input, {
        name = "CreateLocation",
        input_schema = types.CreateLocationInput,
        output_schema = types.CreateLocationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createMatchmakingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateMatchmakingConfiguration",
        input_schema = types.CreateMatchmakingConfigurationInput,
        output_schema = types.CreateMatchmakingConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createMatchmakingRuleSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateMatchmakingRuleSet",
        input_schema = types.CreateMatchmakingRuleSetInput,
        output_schema = types.CreateMatchmakingRuleSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createPlayerSession(input, options)
    return self:invokeOperation(input, {
        name = "CreatePlayerSession",
        input_schema = types.CreatePlayerSessionInput,
        output_schema = types.CreatePlayerSessionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createPlayerSessions(input, options)
    return self:invokeOperation(input, {
        name = "CreatePlayerSessions",
        input_schema = types.CreatePlayerSessionsInput,
        output_schema = types.CreatePlayerSessionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createScript(input, options)
    return self:invokeOperation(input, {
        name = "CreateScript",
        input_schema = types.CreateScriptInput,
        output_schema = types.CreateScriptOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createVpcPeeringAuthorization(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpcPeeringAuthorization",
        input_schema = types.CreateVpcPeeringAuthorizationInput,
        output_schema = types.CreateVpcPeeringAuthorizationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createVpcPeeringConnection(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpcPeeringConnection",
        input_schema = types.CreateVpcPeeringConnectionInput,
        output_schema = types.CreateVpcPeeringConnectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteAlias(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAlias",
        input_schema = types.DeleteAliasInput,
        output_schema = types.DeleteAliasOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteBuild(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBuild",
        input_schema = types.DeleteBuildInput,
        output_schema = types.DeleteBuildOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteContainerFleet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteContainerFleet",
        input_schema = types.DeleteContainerFleetInput,
        output_schema = types.DeleteContainerFleetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteContainerGroupDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteContainerGroupDefinition",
        input_schema = types.DeleteContainerGroupDefinitionInput,
        output_schema = types.DeleteContainerGroupDefinitionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteFleet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFleet",
        input_schema = types.DeleteFleetInput,
        output_schema = types.DeleteFleetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteFleetLocations(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFleetLocations",
        input_schema = types.DeleteFleetLocationsInput,
        output_schema = types.DeleteFleetLocationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteGameServerGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGameServerGroup",
        input_schema = types.DeleteGameServerGroupInput,
        output_schema = types.DeleteGameServerGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteGameSessionQueue(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGameSessionQueue",
        input_schema = types.DeleteGameSessionQueueInput,
        output_schema = types.DeleteGameSessionQueueOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteLocation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLocation",
        input_schema = types.DeleteLocationInput,
        output_schema = types.DeleteLocationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteMatchmakingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMatchmakingConfiguration",
        input_schema = types.DeleteMatchmakingConfigurationInput,
        output_schema = types.DeleteMatchmakingConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteMatchmakingRuleSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMatchmakingRuleSet",
        input_schema = types.DeleteMatchmakingRuleSetInput,
        output_schema = types.DeleteMatchmakingRuleSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteScalingPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteScalingPolicy",
        input_schema = types.DeleteScalingPolicyInput,
        output_schema = types.DeleteScalingPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteScript(input, options)
    return self:invokeOperation(input, {
        name = "DeleteScript",
        input_schema = types.DeleteScriptInput,
        output_schema = types.DeleteScriptOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteVpcPeeringAuthorization(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVpcPeeringAuthorization",
        input_schema = types.DeleteVpcPeeringAuthorizationInput,
        output_schema = types.DeleteVpcPeeringAuthorizationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteVpcPeeringConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVpcPeeringConnection",
        input_schema = types.DeleteVpcPeeringConnectionInput,
        output_schema = types.DeleteVpcPeeringConnectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deregisterCompute(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterCompute",
        input_schema = types.DeregisterComputeInput,
        output_schema = types.DeregisterComputeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deregisterGameServer(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterGameServer",
        input_schema = types.DeregisterGameServerInput,
        output_schema = types.DeregisterGameServerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAlias(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAlias",
        input_schema = types.DescribeAliasInput,
        output_schema = types.DescribeAliasOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeBuild(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBuild",
        input_schema = types.DescribeBuildInput,
        output_schema = types.DescribeBuildOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeCompute(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCompute",
        input_schema = types.DescribeComputeInput,
        output_schema = types.DescribeComputeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeContainerFleet(input, options)
    return self:invokeOperation(input, {
        name = "DescribeContainerFleet",
        input_schema = types.DescribeContainerFleetInput,
        output_schema = types.DescribeContainerFleetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeContainerGroupDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DescribeContainerGroupDefinition",
        input_schema = types.DescribeContainerGroupDefinitionInput,
        output_schema = types.DescribeContainerGroupDefinitionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeContainerGroupPortMappings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeContainerGroupPortMappings",
        input_schema = types.DescribeContainerGroupPortMappingsInput,
        output_schema = types.DescribeContainerGroupPortMappingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeEC2InstanceLimits(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEC2InstanceLimits",
        input_schema = types.DescribeEC2InstanceLimitsInput,
        output_schema = types.DescribeEC2InstanceLimitsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeFleetAttributes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFleetAttributes",
        input_schema = types.DescribeFleetAttributesInput,
        output_schema = types.DescribeFleetAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeFleetCapacity(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFleetCapacity",
        input_schema = types.DescribeFleetCapacityInput,
        output_schema = types.DescribeFleetCapacityOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeFleetDeployment(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFleetDeployment",
        input_schema = types.DescribeFleetDeploymentInput,
        output_schema = types.DescribeFleetDeploymentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeFleetEvents(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFleetEvents",
        input_schema = types.DescribeFleetEventsInput,
        output_schema = types.DescribeFleetEventsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeFleetLocationAttributes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFleetLocationAttributes",
        input_schema = types.DescribeFleetLocationAttributesInput,
        output_schema = types.DescribeFleetLocationAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeFleetLocationCapacity(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFleetLocationCapacity",
        input_schema = types.DescribeFleetLocationCapacityInput,
        output_schema = types.DescribeFleetLocationCapacityOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeFleetLocationUtilization(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFleetLocationUtilization",
        input_schema = types.DescribeFleetLocationUtilizationInput,
        output_schema = types.DescribeFleetLocationUtilizationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeFleetPortSettings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFleetPortSettings",
        input_schema = types.DescribeFleetPortSettingsInput,
        output_schema = types.DescribeFleetPortSettingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeFleetUtilization(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFleetUtilization",
        input_schema = types.DescribeFleetUtilizationInput,
        output_schema = types.DescribeFleetUtilizationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeGameServer(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGameServer",
        input_schema = types.DescribeGameServerInput,
        output_schema = types.DescribeGameServerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeGameServerGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGameServerGroup",
        input_schema = types.DescribeGameServerGroupInput,
        output_schema = types.DescribeGameServerGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeGameServerInstances(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGameServerInstances",
        input_schema = types.DescribeGameServerInstancesInput,
        output_schema = types.DescribeGameServerInstancesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeGameSessionDetails(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGameSessionDetails",
        input_schema = types.DescribeGameSessionDetailsInput,
        output_schema = types.DescribeGameSessionDetailsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeGameSessionPlacement(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGameSessionPlacement",
        input_schema = types.DescribeGameSessionPlacementInput,
        output_schema = types.DescribeGameSessionPlacementOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeGameSessionQueues(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGameSessionQueues",
        input_schema = types.DescribeGameSessionQueuesInput,
        output_schema = types.DescribeGameSessionQueuesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeGameSessions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGameSessions",
        input_schema = types.DescribeGameSessionsInput,
        output_schema = types.DescribeGameSessionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeInstances(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstances",
        input_schema = types.DescribeInstancesInput,
        output_schema = types.DescribeInstancesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeMatchmaking(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMatchmaking",
        input_schema = types.DescribeMatchmakingInput,
        output_schema = types.DescribeMatchmakingOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeMatchmakingConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMatchmakingConfigurations",
        input_schema = types.DescribeMatchmakingConfigurationsInput,
        output_schema = types.DescribeMatchmakingConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeMatchmakingRuleSets(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMatchmakingRuleSets",
        input_schema = types.DescribeMatchmakingRuleSetsInput,
        output_schema = types.DescribeMatchmakingRuleSetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describePlayerSessions(input, options)
    return self:invokeOperation(input, {
        name = "DescribePlayerSessions",
        input_schema = types.DescribePlayerSessionsInput,
        output_schema = types.DescribePlayerSessionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeRuntimeConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRuntimeConfiguration",
        input_schema = types.DescribeRuntimeConfigurationInput,
        output_schema = types.DescribeRuntimeConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeScalingPolicies(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScalingPolicies",
        input_schema = types.DescribeScalingPoliciesInput,
        output_schema = types.DescribeScalingPoliciesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeScript(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScript",
        input_schema = types.DescribeScriptInput,
        output_schema = types.DescribeScriptOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeVpcPeeringAuthorizations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVpcPeeringAuthorizations",
        input_schema = types.DescribeVpcPeeringAuthorizationsInput,
        output_schema = types.DescribeVpcPeeringAuthorizationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeVpcPeeringConnections(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVpcPeeringConnections",
        input_schema = types.DescribeVpcPeeringConnectionsInput,
        output_schema = types.DescribeVpcPeeringConnectionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getComputeAccess(input, options)
    return self:invokeOperation(input, {
        name = "GetComputeAccess",
        input_schema = types.GetComputeAccessInput,
        output_schema = types.GetComputeAccessOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getComputeAuthToken(input, options)
    return self:invokeOperation(input, {
        name = "GetComputeAuthToken",
        input_schema = types.GetComputeAuthTokenInput,
        output_schema = types.GetComputeAuthTokenOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getGameSessionLogUrl(input, options)
    return self:invokeOperation(input, {
        name = "GetGameSessionLogUrl",
        input_schema = types.GetGameSessionLogUrlInput,
        output_schema = types.GetGameSessionLogUrlOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getInstanceAccess(input, options)
    return self:invokeOperation(input, {
        name = "GetInstanceAccess",
        input_schema = types.GetInstanceAccessInput,
        output_schema = types.GetInstanceAccessOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getPlayerConnectionDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetPlayerConnectionDetails",
        input_schema = types.GetPlayerConnectionDetailsInput,
        output_schema = types.GetPlayerConnectionDetailsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAliases(input, options)
    return self:invokeOperation(input, {
        name = "ListAliases",
        input_schema = types.ListAliasesInput,
        output_schema = types.ListAliasesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listBuilds(input, options)
    return self:invokeOperation(input, {
        name = "ListBuilds",
        input_schema = types.ListBuildsInput,
        output_schema = types.ListBuildsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listCompute(input, options)
    return self:invokeOperation(input, {
        name = "ListCompute",
        input_schema = types.ListComputeInput,
        output_schema = types.ListComputeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listContainerFleets(input, options)
    return self:invokeOperation(input, {
        name = "ListContainerFleets",
        input_schema = types.ListContainerFleetsInput,
        output_schema = types.ListContainerFleetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listContainerGroupDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListContainerGroupDefinitions",
        input_schema = types.ListContainerGroupDefinitionsInput,
        output_schema = types.ListContainerGroupDefinitionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listContainerGroupDefinitionVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListContainerGroupDefinitionVersions",
        input_schema = types.ListContainerGroupDefinitionVersionsInput,
        output_schema = types.ListContainerGroupDefinitionVersionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listFleetDeployments(input, options)
    return self:invokeOperation(input, {
        name = "ListFleetDeployments",
        input_schema = types.ListFleetDeploymentsInput,
        output_schema = types.ListFleetDeploymentsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listFleets(input, options)
    return self:invokeOperation(input, {
        name = "ListFleets",
        input_schema = types.ListFleetsInput,
        output_schema = types.ListFleetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listGameServerGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListGameServerGroups",
        input_schema = types.ListGameServerGroupsInput,
        output_schema = types.ListGameServerGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listGameServers(input, options)
    return self:invokeOperation(input, {
        name = "ListGameServers",
        input_schema = types.ListGameServersInput,
        output_schema = types.ListGameServersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listLocations(input, options)
    return self:invokeOperation(input, {
        name = "ListLocations",
        input_schema = types.ListLocationsInput,
        output_schema = types.ListLocationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listScripts(input, options)
    return self:invokeOperation(input, {
        name = "ListScripts",
        input_schema = types.ListScriptsInput,
        output_schema = types.ListScriptsOutput,
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

function Client:putScalingPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutScalingPolicy",
        input_schema = types.PutScalingPolicyInput,
        output_schema = types.PutScalingPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:registerCompute(input, options)
    return self:invokeOperation(input, {
        name = "RegisterCompute",
        input_schema = types.RegisterComputeInput,
        output_schema = types.RegisterComputeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:registerGameServer(input, options)
    return self:invokeOperation(input, {
        name = "RegisterGameServer",
        input_schema = types.RegisterGameServerInput,
        output_schema = types.RegisterGameServerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:requestUploadCredentials(input, options)
    return self:invokeOperation(input, {
        name = "RequestUploadCredentials",
        input_schema = types.RequestUploadCredentialsInput,
        output_schema = types.RequestUploadCredentialsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:resolveAlias(input, options)
    return self:invokeOperation(input, {
        name = "ResolveAlias",
        input_schema = types.ResolveAliasInput,
        output_schema = types.ResolveAliasOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:resumeGameServerGroup(input, options)
    return self:invokeOperation(input, {
        name = "ResumeGameServerGroup",
        input_schema = types.ResumeGameServerGroupInput,
        output_schema = types.ResumeGameServerGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:searchGameSessions(input, options)
    return self:invokeOperation(input, {
        name = "SearchGameSessions",
        input_schema = types.SearchGameSessionsInput,
        output_schema = types.SearchGameSessionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startFleetActions(input, options)
    return self:invokeOperation(input, {
        name = "StartFleetActions",
        input_schema = types.StartFleetActionsInput,
        output_schema = types.StartFleetActionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startGameSessionPlacement(input, options)
    return self:invokeOperation(input, {
        name = "StartGameSessionPlacement",
        input_schema = types.StartGameSessionPlacementInput,
        output_schema = types.StartGameSessionPlacementOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startMatchBackfill(input, options)
    return self:invokeOperation(input, {
        name = "StartMatchBackfill",
        input_schema = types.StartMatchBackfillInput,
        output_schema = types.StartMatchBackfillOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startMatchmaking(input, options)
    return self:invokeOperation(input, {
        name = "StartMatchmaking",
        input_schema = types.StartMatchmakingInput,
        output_schema = types.StartMatchmakingOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopFleetActions(input, options)
    return self:invokeOperation(input, {
        name = "StopFleetActions",
        input_schema = types.StopFleetActionsInput,
        output_schema = types.StopFleetActionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopGameSessionPlacement(input, options)
    return self:invokeOperation(input, {
        name = "StopGameSessionPlacement",
        input_schema = types.StopGameSessionPlacementInput,
        output_schema = types.StopGameSessionPlacementOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopMatchmaking(input, options)
    return self:invokeOperation(input, {
        name = "StopMatchmaking",
        input_schema = types.StopMatchmakingInput,
        output_schema = types.StopMatchmakingOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:suspendGameServerGroup(input, options)
    return self:invokeOperation(input, {
        name = "SuspendGameServerGroup",
        input_schema = types.SuspendGameServerGroupInput,
        output_schema = types.SuspendGameServerGroupOutput,
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

function Client:terminateGameSession(input, options)
    return self:invokeOperation(input, {
        name = "TerminateGameSession",
        input_schema = types.TerminateGameSessionInput,
        output_schema = types.TerminateGameSessionOutput,
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

function Client:updateAlias(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAlias",
        input_schema = types.UpdateAliasInput,
        output_schema = types.UpdateAliasOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateBuild(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBuild",
        input_schema = types.UpdateBuildInput,
        output_schema = types.UpdateBuildOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateContainerFleet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContainerFleet",
        input_schema = types.UpdateContainerFleetInput,
        output_schema = types.UpdateContainerFleetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateContainerGroupDefinition(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContainerGroupDefinition",
        input_schema = types.UpdateContainerGroupDefinitionInput,
        output_schema = types.UpdateContainerGroupDefinitionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateFleetAttributes(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFleetAttributes",
        input_schema = types.UpdateFleetAttributesInput,
        output_schema = types.UpdateFleetAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateFleetCapacity(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFleetCapacity",
        input_schema = types.UpdateFleetCapacityInput,
        output_schema = types.UpdateFleetCapacityOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateFleetPortSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFleetPortSettings",
        input_schema = types.UpdateFleetPortSettingsInput,
        output_schema = types.UpdateFleetPortSettingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateGameServer(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGameServer",
        input_schema = types.UpdateGameServerInput,
        output_schema = types.UpdateGameServerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateGameServerGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGameServerGroup",
        input_schema = types.UpdateGameServerGroupInput,
        output_schema = types.UpdateGameServerGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateGameSession(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGameSession",
        input_schema = types.UpdateGameSessionInput,
        output_schema = types.UpdateGameSessionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateGameSessionQueue(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGameSessionQueue",
        input_schema = types.UpdateGameSessionQueueInput,
        output_schema = types.UpdateGameSessionQueueOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateMatchmakingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMatchmakingConfiguration",
        input_schema = types.UpdateMatchmakingConfigurationInput,
        output_schema = types.UpdateMatchmakingConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateRuntimeConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRuntimeConfiguration",
        input_schema = types.UpdateRuntimeConfigurationInput,
        output_schema = types.UpdateRuntimeConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateScript(input, options)
    return self:invokeOperation(input, {
        name = "UpdateScript",
        input_schema = types.UpdateScriptInput,
        output_schema = types.UpdateScriptOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:validateMatchmakingRuleSet(input, options)
    return self:invokeOperation(input, {
        name = "ValidateMatchmakingRuleSet",
        input_schema = types.ValidateMatchmakingRuleSetInput,
        output_schema = types.ValidateMatchmakingRuleSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
