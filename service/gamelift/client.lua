local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("gamelift.endpoint_rules")
local schemas = require("gamelift.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "GameLift"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "gamelift", signing_region = cfg.region } }
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

function Client:acceptMatch(input, options)
    return self:invokeOperation(input, {
        name = "AcceptMatch",
        input_schema = schemas.AcceptMatchInput,
        output_schema = schemas.AcceptMatchOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:claimGameServer(input, options)
    return self:invokeOperation(input, {
        name = "ClaimGameServer",
        input_schema = schemas.ClaimGameServerInput,
        output_schema = schemas.ClaimGameServerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAlias(input, options)
    return self:invokeOperation(input, {
        name = "CreateAlias",
        input_schema = schemas.CreateAliasInput,
        output_schema = schemas.CreateAliasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBuild(input, options)
    return self:invokeOperation(input, {
        name = "CreateBuild",
        input_schema = schemas.CreateBuildInput,
        output_schema = schemas.CreateBuildOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createContainerFleet(input, options)
    return self:invokeOperation(input, {
        name = "CreateContainerFleet",
        input_schema = schemas.CreateContainerFleetInput,
        output_schema = schemas.CreateContainerFleetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createContainerGroupDefinition(input, options)
    return self:invokeOperation(input, {
        name = "CreateContainerGroupDefinition",
        input_schema = schemas.CreateContainerGroupDefinitionInput,
        output_schema = schemas.CreateContainerGroupDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFleet(input, options)
    return self:invokeOperation(input, {
        name = "CreateFleet",
        input_schema = schemas.CreateFleetInput,
        output_schema = schemas.CreateFleetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFleetLocations(input, options)
    return self:invokeOperation(input, {
        name = "CreateFleetLocations",
        input_schema = schemas.CreateFleetLocationsInput,
        output_schema = schemas.CreateFleetLocationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGameServerGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateGameServerGroup",
        input_schema = schemas.CreateGameServerGroupInput,
        output_schema = schemas.CreateGameServerGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGameSession(input, options)
    return self:invokeOperation(input, {
        name = "CreateGameSession",
        input_schema = schemas.CreateGameSessionInput,
        output_schema = schemas.CreateGameSessionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGameSessionQueue(input, options)
    return self:invokeOperation(input, {
        name = "CreateGameSessionQueue",
        input_schema = schemas.CreateGameSessionQueueInput,
        output_schema = schemas.CreateGameSessionQueueOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLocation(input, options)
    return self:invokeOperation(input, {
        name = "CreateLocation",
        input_schema = schemas.CreateLocationInput,
        output_schema = schemas.CreateLocationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMatchmakingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateMatchmakingConfiguration",
        input_schema = schemas.CreateMatchmakingConfigurationInput,
        output_schema = schemas.CreateMatchmakingConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMatchmakingRuleSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateMatchmakingRuleSet",
        input_schema = schemas.CreateMatchmakingRuleSetInput,
        output_schema = schemas.CreateMatchmakingRuleSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPlayerSession(input, options)
    return self:invokeOperation(input, {
        name = "CreatePlayerSession",
        input_schema = schemas.CreatePlayerSessionInput,
        output_schema = schemas.CreatePlayerSessionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPlayerSessions(input, options)
    return self:invokeOperation(input, {
        name = "CreatePlayerSessions",
        input_schema = schemas.CreatePlayerSessionsInput,
        output_schema = schemas.CreatePlayerSessionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createScript(input, options)
    return self:invokeOperation(input, {
        name = "CreateScript",
        input_schema = schemas.CreateScriptInput,
        output_schema = schemas.CreateScriptOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVpcPeeringAuthorization(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpcPeeringAuthorization",
        input_schema = schemas.CreateVpcPeeringAuthorizationInput,
        output_schema = schemas.CreateVpcPeeringAuthorizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVpcPeeringConnection(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpcPeeringConnection",
        input_schema = schemas.CreateVpcPeeringConnectionInput,
        output_schema = schemas.CreateVpcPeeringConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAlias(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAlias",
        input_schema = schemas.DeleteAliasInput,
        output_schema = schemas.DeleteAliasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBuild(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBuild",
        input_schema = schemas.DeleteBuildInput,
        output_schema = schemas.DeleteBuildOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteContainerFleet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteContainerFleet",
        input_schema = schemas.DeleteContainerFleetInput,
        output_schema = schemas.DeleteContainerFleetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteContainerGroupDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteContainerGroupDefinition",
        input_schema = schemas.DeleteContainerGroupDefinitionInput,
        output_schema = schemas.DeleteContainerGroupDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFleet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFleet",
        input_schema = schemas.DeleteFleetInput,
        output_schema = schemas.DeleteFleetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFleetLocations(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFleetLocations",
        input_schema = schemas.DeleteFleetLocationsInput,
        output_schema = schemas.DeleteFleetLocationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGameServerGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGameServerGroup",
        input_schema = schemas.DeleteGameServerGroupInput,
        output_schema = schemas.DeleteGameServerGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGameSessionQueue(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGameSessionQueue",
        input_schema = schemas.DeleteGameSessionQueueInput,
        output_schema = schemas.DeleteGameSessionQueueOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLocation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLocation",
        input_schema = schemas.DeleteLocationInput,
        output_schema = schemas.DeleteLocationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMatchmakingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMatchmakingConfiguration",
        input_schema = schemas.DeleteMatchmakingConfigurationInput,
        output_schema = schemas.DeleteMatchmakingConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMatchmakingRuleSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMatchmakingRuleSet",
        input_schema = schemas.DeleteMatchmakingRuleSetInput,
        output_schema = schemas.DeleteMatchmakingRuleSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteScalingPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteScalingPolicy",
        input_schema = schemas.DeleteScalingPolicyInput,
        output_schema = schemas.DeleteScalingPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteScript(input, options)
    return self:invokeOperation(input, {
        name = "DeleteScript",
        input_schema = schemas.DeleteScriptInput,
        output_schema = schemas.DeleteScriptOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVpcPeeringAuthorization(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVpcPeeringAuthorization",
        input_schema = schemas.DeleteVpcPeeringAuthorizationInput,
        output_schema = schemas.DeleteVpcPeeringAuthorizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVpcPeeringConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVpcPeeringConnection",
        input_schema = schemas.DeleteVpcPeeringConnectionInput,
        output_schema = schemas.DeleteVpcPeeringConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterCompute(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterCompute",
        input_schema = schemas.DeregisterComputeInput,
        output_schema = schemas.DeregisterComputeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterGameServer(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterGameServer",
        input_schema = schemas.DeregisterGameServerInput,
        output_schema = schemas.DeregisterGameServerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAlias(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAlias",
        input_schema = schemas.DescribeAliasInput,
        output_schema = schemas.DescribeAliasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBuild(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBuild",
        input_schema = schemas.DescribeBuildInput,
        output_schema = schemas.DescribeBuildOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCompute(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCompute",
        input_schema = schemas.DescribeComputeInput,
        output_schema = schemas.DescribeComputeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeContainerFleet(input, options)
    return self:invokeOperation(input, {
        name = "DescribeContainerFleet",
        input_schema = schemas.DescribeContainerFleetInput,
        output_schema = schemas.DescribeContainerFleetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeContainerGroupDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DescribeContainerGroupDefinition",
        input_schema = schemas.DescribeContainerGroupDefinitionInput,
        output_schema = schemas.DescribeContainerGroupDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeContainerGroupPortMappings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeContainerGroupPortMappings",
        input_schema = schemas.DescribeContainerGroupPortMappingsInput,
        output_schema = schemas.DescribeContainerGroupPortMappingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEC2InstanceLimits(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEC2InstanceLimits",
        input_schema = schemas.DescribeEC2InstanceLimitsInput,
        output_schema = schemas.DescribeEC2InstanceLimitsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFleetAttributes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFleetAttributes",
        input_schema = schemas.DescribeFleetAttributesInput,
        output_schema = schemas.DescribeFleetAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFleetCapacity(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFleetCapacity",
        input_schema = schemas.DescribeFleetCapacityInput,
        output_schema = schemas.DescribeFleetCapacityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFleetDeployment(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFleetDeployment",
        input_schema = schemas.DescribeFleetDeploymentInput,
        output_schema = schemas.DescribeFleetDeploymentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFleetEvents(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFleetEvents",
        input_schema = schemas.DescribeFleetEventsInput,
        output_schema = schemas.DescribeFleetEventsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFleetLocationAttributes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFleetLocationAttributes",
        input_schema = schemas.DescribeFleetLocationAttributesInput,
        output_schema = schemas.DescribeFleetLocationAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFleetLocationCapacity(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFleetLocationCapacity",
        input_schema = schemas.DescribeFleetLocationCapacityInput,
        output_schema = schemas.DescribeFleetLocationCapacityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFleetLocationUtilization(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFleetLocationUtilization",
        input_schema = schemas.DescribeFleetLocationUtilizationInput,
        output_schema = schemas.DescribeFleetLocationUtilizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFleetPortSettings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFleetPortSettings",
        input_schema = schemas.DescribeFleetPortSettingsInput,
        output_schema = schemas.DescribeFleetPortSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFleetUtilization(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFleetUtilization",
        input_schema = schemas.DescribeFleetUtilizationInput,
        output_schema = schemas.DescribeFleetUtilizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeGameServer(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGameServer",
        input_schema = schemas.DescribeGameServerInput,
        output_schema = schemas.DescribeGameServerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeGameServerGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGameServerGroup",
        input_schema = schemas.DescribeGameServerGroupInput,
        output_schema = schemas.DescribeGameServerGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeGameServerInstances(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGameServerInstances",
        input_schema = schemas.DescribeGameServerInstancesInput,
        output_schema = schemas.DescribeGameServerInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeGameSessionDetails(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGameSessionDetails",
        input_schema = schemas.DescribeGameSessionDetailsInput,
        output_schema = schemas.DescribeGameSessionDetailsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeGameSessionPlacement(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGameSessionPlacement",
        input_schema = schemas.DescribeGameSessionPlacementInput,
        output_schema = schemas.DescribeGameSessionPlacementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeGameSessionQueues(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGameSessionQueues",
        input_schema = schemas.DescribeGameSessionQueuesInput,
        output_schema = schemas.DescribeGameSessionQueuesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeGameSessions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGameSessions",
        input_schema = schemas.DescribeGameSessionsInput,
        output_schema = schemas.DescribeGameSessionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInstances(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstances",
        input_schema = schemas.DescribeInstancesInput,
        output_schema = schemas.DescribeInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMatchmaking(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMatchmaking",
        input_schema = schemas.DescribeMatchmakingInput,
        output_schema = schemas.DescribeMatchmakingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMatchmakingConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMatchmakingConfigurations",
        input_schema = schemas.DescribeMatchmakingConfigurationsInput,
        output_schema = schemas.DescribeMatchmakingConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMatchmakingRuleSets(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMatchmakingRuleSets",
        input_schema = schemas.DescribeMatchmakingRuleSetsInput,
        output_schema = schemas.DescribeMatchmakingRuleSetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePlayerSessions(input, options)
    return self:invokeOperation(input, {
        name = "DescribePlayerSessions",
        input_schema = schemas.DescribePlayerSessionsInput,
        output_schema = schemas.DescribePlayerSessionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRuntimeConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRuntimeConfiguration",
        input_schema = schemas.DescribeRuntimeConfigurationInput,
        output_schema = schemas.DescribeRuntimeConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeScalingPolicies(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScalingPolicies",
        input_schema = schemas.DescribeScalingPoliciesInput,
        output_schema = schemas.DescribeScalingPoliciesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeScript(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScript",
        input_schema = schemas.DescribeScriptInput,
        output_schema = schemas.DescribeScriptOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVpcPeeringAuthorizations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVpcPeeringAuthorizations",
        input_schema = schemas.DescribeVpcPeeringAuthorizationsInput,
        output_schema = schemas.DescribeVpcPeeringAuthorizationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVpcPeeringConnections(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVpcPeeringConnections",
        input_schema = schemas.DescribeVpcPeeringConnectionsInput,
        output_schema = schemas.DescribeVpcPeeringConnectionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getComputeAccess(input, options)
    return self:invokeOperation(input, {
        name = "GetComputeAccess",
        input_schema = schemas.GetComputeAccessInput,
        output_schema = schemas.GetComputeAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getComputeAuthToken(input, options)
    return self:invokeOperation(input, {
        name = "GetComputeAuthToken",
        input_schema = schemas.GetComputeAuthTokenInput,
        output_schema = schemas.GetComputeAuthTokenOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGameSessionLogUrl(input, options)
    return self:invokeOperation(input, {
        name = "GetGameSessionLogUrl",
        input_schema = schemas.GetGameSessionLogUrlInput,
        output_schema = schemas.GetGameSessionLogUrlOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInstanceAccess(input, options)
    return self:invokeOperation(input, {
        name = "GetInstanceAccess",
        input_schema = schemas.GetInstanceAccessInput,
        output_schema = schemas.GetInstanceAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPlayerConnectionDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetPlayerConnectionDetails",
        input_schema = schemas.GetPlayerConnectionDetailsInput,
        output_schema = schemas.GetPlayerConnectionDetailsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAliases(input, options)
    return self:invokeOperation(input, {
        name = "ListAliases",
        input_schema = schemas.ListAliasesInput,
        output_schema = schemas.ListAliasesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBuilds(input, options)
    return self:invokeOperation(input, {
        name = "ListBuilds",
        input_schema = schemas.ListBuildsInput,
        output_schema = schemas.ListBuildsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCompute(input, options)
    return self:invokeOperation(input, {
        name = "ListCompute",
        input_schema = schemas.ListComputeInput,
        output_schema = schemas.ListComputeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listContainerFleets(input, options)
    return self:invokeOperation(input, {
        name = "ListContainerFleets",
        input_schema = schemas.ListContainerFleetsInput,
        output_schema = schemas.ListContainerFleetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listContainerGroupDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListContainerGroupDefinitions",
        input_schema = schemas.ListContainerGroupDefinitionsInput,
        output_schema = schemas.ListContainerGroupDefinitionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listContainerGroupDefinitionVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListContainerGroupDefinitionVersions",
        input_schema = schemas.ListContainerGroupDefinitionVersionsInput,
        output_schema = schemas.ListContainerGroupDefinitionVersionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFleetDeployments(input, options)
    return self:invokeOperation(input, {
        name = "ListFleetDeployments",
        input_schema = schemas.ListFleetDeploymentsInput,
        output_schema = schemas.ListFleetDeploymentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFleets(input, options)
    return self:invokeOperation(input, {
        name = "ListFleets",
        input_schema = schemas.ListFleetsInput,
        output_schema = schemas.ListFleetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGameServerGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListGameServerGroups",
        input_schema = schemas.ListGameServerGroupsInput,
        output_schema = schemas.ListGameServerGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGameServers(input, options)
    return self:invokeOperation(input, {
        name = "ListGameServers",
        input_schema = schemas.ListGameServersInput,
        output_schema = schemas.ListGameServersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLocations(input, options)
    return self:invokeOperation(input, {
        name = "ListLocations",
        input_schema = schemas.ListLocationsInput,
        output_schema = schemas.ListLocationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listScripts(input, options)
    return self:invokeOperation(input, {
        name = "ListScripts",
        input_schema = schemas.ListScriptsInput,
        output_schema = schemas.ListScriptsOutput,
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

function Client:putScalingPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutScalingPolicy",
        input_schema = schemas.PutScalingPolicyInput,
        output_schema = schemas.PutScalingPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerCompute(input, options)
    return self:invokeOperation(input, {
        name = "RegisterCompute",
        input_schema = schemas.RegisterComputeInput,
        output_schema = schemas.RegisterComputeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerGameServer(input, options)
    return self:invokeOperation(input, {
        name = "RegisterGameServer",
        input_schema = schemas.RegisterGameServerInput,
        output_schema = schemas.RegisterGameServerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:requestUploadCredentials(input, options)
    return self:invokeOperation(input, {
        name = "RequestUploadCredentials",
        input_schema = schemas.RequestUploadCredentialsInput,
        output_schema = schemas.RequestUploadCredentialsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resolveAlias(input, options)
    return self:invokeOperation(input, {
        name = "ResolveAlias",
        input_schema = schemas.ResolveAliasInput,
        output_schema = schemas.ResolveAliasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resumeGameServerGroup(input, options)
    return self:invokeOperation(input, {
        name = "ResumeGameServerGroup",
        input_schema = schemas.ResumeGameServerGroupInput,
        output_schema = schemas.ResumeGameServerGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchGameSessions(input, options)
    return self:invokeOperation(input, {
        name = "SearchGameSessions",
        input_schema = schemas.SearchGameSessionsInput,
        output_schema = schemas.SearchGameSessionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startFleetActions(input, options)
    return self:invokeOperation(input, {
        name = "StartFleetActions",
        input_schema = schemas.StartFleetActionsInput,
        output_schema = schemas.StartFleetActionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startGameSessionPlacement(input, options)
    return self:invokeOperation(input, {
        name = "StartGameSessionPlacement",
        input_schema = schemas.StartGameSessionPlacementInput,
        output_schema = schemas.StartGameSessionPlacementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startMatchBackfill(input, options)
    return self:invokeOperation(input, {
        name = "StartMatchBackfill",
        input_schema = schemas.StartMatchBackfillInput,
        output_schema = schemas.StartMatchBackfillOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startMatchmaking(input, options)
    return self:invokeOperation(input, {
        name = "StartMatchmaking",
        input_schema = schemas.StartMatchmakingInput,
        output_schema = schemas.StartMatchmakingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopFleetActions(input, options)
    return self:invokeOperation(input, {
        name = "StopFleetActions",
        input_schema = schemas.StopFleetActionsInput,
        output_schema = schemas.StopFleetActionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopGameSessionPlacement(input, options)
    return self:invokeOperation(input, {
        name = "StopGameSessionPlacement",
        input_schema = schemas.StopGameSessionPlacementInput,
        output_schema = schemas.StopGameSessionPlacementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopMatchmaking(input, options)
    return self:invokeOperation(input, {
        name = "StopMatchmaking",
        input_schema = schemas.StopMatchmakingInput,
        output_schema = schemas.StopMatchmakingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:suspendGameServerGroup(input, options)
    return self:invokeOperation(input, {
        name = "SuspendGameServerGroup",
        input_schema = schemas.SuspendGameServerGroupInput,
        output_schema = schemas.SuspendGameServerGroupOutput,
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

function Client:terminateGameSession(input, options)
    return self:invokeOperation(input, {
        name = "TerminateGameSession",
        input_schema = schemas.TerminateGameSessionInput,
        output_schema = schemas.TerminateGameSessionOutput,
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

function Client:updateAlias(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAlias",
        input_schema = schemas.UpdateAliasInput,
        output_schema = schemas.UpdateAliasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBuild(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBuild",
        input_schema = schemas.UpdateBuildInput,
        output_schema = schemas.UpdateBuildOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateContainerFleet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContainerFleet",
        input_schema = schemas.UpdateContainerFleetInput,
        output_schema = schemas.UpdateContainerFleetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateContainerGroupDefinition(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContainerGroupDefinition",
        input_schema = schemas.UpdateContainerGroupDefinitionInput,
        output_schema = schemas.UpdateContainerGroupDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFleetAttributes(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFleetAttributes",
        input_schema = schemas.UpdateFleetAttributesInput,
        output_schema = schemas.UpdateFleetAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFleetCapacity(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFleetCapacity",
        input_schema = schemas.UpdateFleetCapacityInput,
        output_schema = schemas.UpdateFleetCapacityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFleetPortSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFleetPortSettings",
        input_schema = schemas.UpdateFleetPortSettingsInput,
        output_schema = schemas.UpdateFleetPortSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGameServer(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGameServer",
        input_schema = schemas.UpdateGameServerInput,
        output_schema = schemas.UpdateGameServerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGameServerGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGameServerGroup",
        input_schema = schemas.UpdateGameServerGroupInput,
        output_schema = schemas.UpdateGameServerGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGameSession(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGameSession",
        input_schema = schemas.UpdateGameSessionInput,
        output_schema = schemas.UpdateGameSessionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGameSessionQueue(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGameSessionQueue",
        input_schema = schemas.UpdateGameSessionQueueInput,
        output_schema = schemas.UpdateGameSessionQueueOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMatchmakingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMatchmakingConfiguration",
        input_schema = schemas.UpdateMatchmakingConfigurationInput,
        output_schema = schemas.UpdateMatchmakingConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRuntimeConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRuntimeConfiguration",
        input_schema = schemas.UpdateRuntimeConfigurationInput,
        output_schema = schemas.UpdateRuntimeConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateScript(input, options)
    return self:invokeOperation(input, {
        name = "UpdateScript",
        input_schema = schemas.UpdateScriptInput,
        output_schema = schemas.UpdateScriptOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:validateMatchmakingRuleSet(input, options)
    return self:invokeOperation(input, {
        name = "ValidateMatchmakingRuleSet",
        input_schema = schemas.ValidateMatchmakingRuleSetInput,
        output_schema = schemas.ValidateMatchmakingRuleSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
