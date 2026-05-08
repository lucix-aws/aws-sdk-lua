



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("gamelift.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("gamelift.schemas")
local traits = require("smithy.traits")
local types = require("gamelift.types")
local sdk_defaults = require("aws.sdk_defaults")






























































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "GameLift"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.1", service_id = c.service_id }) end
   if not c.endpoint_provider then
      c.endpoint_provider = function(params)
         return endpoint.resolve(endpoint_rules, params)
      end
   end
   if not c.auth_scheme_resolver then
      c.auth_scheme_resolver = function(_service, operation)
         local auth_trait = operation:trait(traits.AUTH) or _service:trait(traits.AUTH)
         local options = {}
         for _, scheme in ipairs(auth_trait or {}) do
            local scheme_id = scheme.scheme_id or scheme
            if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "gamelift", signing_region = c.region } }
            else
               options[#options + 1] = { scheme_id = scheme_id }
            end
         end
         return options
      end
   end
   defaults.resolve_auth_schemes(c)
   defaults.resolve_identity_resolvers(c)
   defaults.resolve_http_client(c)
   defaults.resolve_retry_strategy(c)
   sdk_defaults.resolve_identity_resolver(c)
   local self = setmetatable(base_client.new(c), Client_mt)
   return self
end

function C:acceptMatch(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptMatch, input, options)
end

function C:claimGameServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.ClaimGameServer, input, options)
end

function C:createAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAlias, input, options)
end

function C:createBuild(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBuild, input, options)
end

function C:createContainerFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateContainerFleet, input, options)
end

function C:createContainerGroupDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateContainerGroupDefinition, input, options)
end

function C:createFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFleet, input, options)
end

function C:createFleetLocations(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFleetLocations, input, options)
end

function C:createGameServerGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGameServerGroup, input, options)
end

function C:createGameSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGameSession, input, options)
end

function C:createGameSessionQueue(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGameSessionQueue, input, options)
end

function C:createLocation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLocation, input, options)
end

function C:createMatchmakingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMatchmakingConfiguration, input, options)
end

function C:createMatchmakingRuleSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMatchmakingRuleSet, input, options)
end

function C:createPlayerSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePlayerSession, input, options)
end

function C:createPlayerSessions(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePlayerSessions, input, options)
end

function C:createScript(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateScript, input, options)
end

function C:createVpcPeeringAuthorization(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVpcPeeringAuthorization, input, options)
end

function C:createVpcPeeringConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVpcPeeringConnection, input, options)
end

function C:deleteAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAlias, input, options)
end

function C:deleteBuild(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBuild, input, options)
end

function C:deleteContainerFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteContainerFleet, input, options)
end

function C:deleteContainerGroupDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteContainerGroupDefinition, input, options)
end

function C:deleteFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFleet, input, options)
end

function C:deleteFleetLocations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFleetLocations, input, options)
end

function C:deleteGameServerGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGameServerGroup, input, options)
end

function C:deleteGameSessionQueue(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGameSessionQueue, input, options)
end

function C:deleteLocation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLocation, input, options)
end

function C:deleteMatchmakingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMatchmakingConfiguration, input, options)
end

function C:deleteMatchmakingRuleSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMatchmakingRuleSet, input, options)
end

function C:deleteScalingPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteScalingPolicy, input, options)
end

function C:deleteScript(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteScript, input, options)
end

function C:deleteVpcPeeringAuthorization(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVpcPeeringAuthorization, input, options)
end

function C:deleteVpcPeeringConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVpcPeeringConnection, input, options)
end

function C:deregisterCompute(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterCompute, input, options)
end

function C:deregisterGameServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterGameServer, input, options)
end

function C:describeAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAlias, input, options)
end

function C:describeBuild(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBuild, input, options)
end

function C:describeCompute(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCompute, input, options)
end

function C:describeContainerFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeContainerFleet, input, options)
end

function C:describeContainerGroupDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeContainerGroupDefinition, input, options)
end

function C:describeContainerGroupPortMappings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeContainerGroupPortMappings, input, options)
end

function C:describeEC2InstanceLimits(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEC2InstanceLimits, input, options)
end

function C:describeFleetAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFleetAttributes, input, options)
end

function C:describeFleetCapacity(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFleetCapacity, input, options)
end

function C:describeFleetDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFleetDeployment, input, options)
end

function C:describeFleetEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFleetEvents, input, options)
end

function C:describeFleetLocationAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFleetLocationAttributes, input, options)
end

function C:describeFleetLocationCapacity(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFleetLocationCapacity, input, options)
end

function C:describeFleetLocationUtilization(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFleetLocationUtilization, input, options)
end

function C:describeFleetPortSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFleetPortSettings, input, options)
end

function C:describeFleetUtilization(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFleetUtilization, input, options)
end

function C:describeGameServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeGameServer, input, options)
end

function C:describeGameServerGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeGameServerGroup, input, options)
end

function C:describeGameServerInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeGameServerInstances, input, options)
end

function C:describeGameSessionDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeGameSessionDetails, input, options)
end

function C:describeGameSessionPlacement(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeGameSessionPlacement, input, options)
end

function C:describeGameSessionQueues(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeGameSessionQueues, input, options)
end

function C:describeGameSessions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeGameSessions, input, options)
end

function C:describeInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInstances, input, options)
end

function C:describeMatchmaking(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMatchmaking, input, options)
end

function C:describeMatchmakingConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMatchmakingConfigurations, input, options)
end

function C:describeMatchmakingRuleSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMatchmakingRuleSets, input, options)
end

function C:describePlayerSessions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePlayerSessions, input, options)
end

function C:describeRuntimeConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRuntimeConfiguration, input, options)
end

function C:describeScalingPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeScalingPolicies, input, options)
end

function C:describeScript(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeScript, input, options)
end

function C:describeVpcPeeringAuthorizations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVpcPeeringAuthorizations, input, options)
end

function C:describeVpcPeeringConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVpcPeeringConnections, input, options)
end

function C:getComputeAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetComputeAccess, input, options)
end

function C:getComputeAuthToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetComputeAuthToken, input, options)
end

function C:getGameSessionLogUrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGameSessionLogUrl, input, options)
end

function C:getInstanceAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInstanceAccess, input, options)
end

function C:getPlayerConnectionDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPlayerConnectionDetails, input, options)
end

function C:listAliases(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAliases, input, options)
end

function C:listBuilds(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBuilds, input, options)
end

function C:listCompute(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCompute, input, options)
end

function C:listContainerFleets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListContainerFleets, input, options)
end

function C:listContainerGroupDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListContainerGroupDefinitions, input, options)
end

function C:listContainerGroupDefinitionVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListContainerGroupDefinitionVersions, input, options)
end

function C:listFleetDeployments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFleetDeployments, input, options)
end

function C:listFleets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFleets, input, options)
end

function C:listGameServerGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGameServerGroups, input, options)
end

function C:listGameServers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGameServers, input, options)
end

function C:listLocations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLocations, input, options)
end

function C:listScripts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListScripts, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putScalingPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutScalingPolicy, input, options)
end

function C:registerCompute(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterCompute, input, options)
end

function C:registerGameServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterGameServer, input, options)
end

function C:requestUploadCredentials(input, options)
   return self:invokeOperation(schemas.Service, schemas.RequestUploadCredentials, input, options)
end

function C:resolveAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResolveAlias, input, options)
end

function C:resumeGameServerGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResumeGameServerGroup, input, options)
end

function C:searchGameSessions(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchGameSessions, input, options)
end

function C:startFleetActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartFleetActions, input, options)
end

function C:startGameSessionPlacement(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartGameSessionPlacement, input, options)
end

function C:startMatchBackfill(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMatchBackfill, input, options)
end

function C:startMatchmaking(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMatchmaking, input, options)
end

function C:stopFleetActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopFleetActions, input, options)
end

function C:stopGameSessionPlacement(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopGameSessionPlacement, input, options)
end

function C:stopMatchmaking(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopMatchmaking, input, options)
end

function C:suspendGameServerGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.SuspendGameServerGroup, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:terminateGameSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.TerminateGameSession, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAlias, input, options)
end

function C:updateBuild(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBuild, input, options)
end

function C:updateContainerFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateContainerFleet, input, options)
end

function C:updateContainerGroupDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateContainerGroupDefinition, input, options)
end

function C:updateFleetAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFleetAttributes, input, options)
end

function C:updateFleetCapacity(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFleetCapacity, input, options)
end

function C:updateFleetPortSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFleetPortSettings, input, options)
end

function C:updateGameServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGameServer, input, options)
end

function C:updateGameServerGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGameServerGroup, input, options)
end

function C:updateGameSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGameSession, input, options)
end

function C:updateGameSessionQueue(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGameSessionQueue, input, options)
end

function C:updateMatchmakingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMatchmakingConfiguration, input, options)
end

function C:updateRuntimeConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRuntimeConfiguration, input, options)
end

function C:updateScript(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateScript, input, options)
end

function C:validateMatchmakingRuleSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.ValidateMatchmakingRuleSet, input, options)
end

return M
