local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("emr.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("emr.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ElasticMapReduce"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "elasticmapreduce", signing_region = cfg.region } }
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

function Client:addInstanceFleet(input, options)
    return self:invokeOperation(input, {
        name = "AddInstanceFleet",
        input_schema = types.AddInstanceFleetInput,
        output_schema = types.AddInstanceFleetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addInstanceGroups(input, options)
    return self:invokeOperation(input, {
        name = "AddInstanceGroups",
        input_schema = types.AddInstanceGroupsInput,
        output_schema = types.AddInstanceGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addJobFlowSteps(input, options)
    return self:invokeOperation(input, {
        name = "AddJobFlowSteps",
        input_schema = types.AddJobFlowStepsInput,
        output_schema = types.AddJobFlowStepsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addTags(input, options)
    return self:invokeOperation(input, {
        name = "AddTags",
        input_schema = types.AddTagsInput,
        output_schema = types.AddTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelSteps(input, options)
    return self:invokeOperation(input, {
        name = "CancelSteps",
        input_schema = types.CancelStepsInput,
        output_schema = types.CancelStepsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPersistentAppUI(input, options)
    return self:invokeOperation(input, {
        name = "CreatePersistentAppUI",
        input_schema = types.CreatePersistentAppUIInput,
        output_schema = types.CreatePersistentAppUIOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSecurityConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateSecurityConfiguration",
        input_schema = types.CreateSecurityConfigurationInput,
        output_schema = types.CreateSecurityConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createStudio(input, options)
    return self:invokeOperation(input, {
        name = "CreateStudio",
        input_schema = types.CreateStudioInput,
        output_schema = types.CreateStudioOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createStudioSessionMapping(input, options)
    return self:invokeOperation(input, {
        name = "CreateStudioSessionMapping",
        input_schema = types.CreateStudioSessionMappingInput,
        output_schema = types.CreateStudioSessionMappingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSecurityConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSecurityConfiguration",
        input_schema = types.DeleteSecurityConfigurationInput,
        output_schema = types.DeleteSecurityConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteStudio(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStudio",
        input_schema = types.DeleteStudioInput,
        output_schema = types.DeleteStudioOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteStudioSessionMapping(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStudioSessionMapping",
        input_schema = types.DeleteStudioSessionMappingInput,
        output_schema = types.DeleteStudioSessionMappingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCluster(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCluster",
        input_schema = types.DescribeClusterInput,
        output_schema = types.DescribeClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeJobFlows(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJobFlows",
        input_schema = types.DescribeJobFlowsInput,
        output_schema = types.DescribeJobFlowsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeNotebookExecution(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNotebookExecution",
        input_schema = types.DescribeNotebookExecutionInput,
        output_schema = types.DescribeNotebookExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePersistentAppUI(input, options)
    return self:invokeOperation(input, {
        name = "DescribePersistentAppUI",
        input_schema = types.DescribePersistentAppUIInput,
        output_schema = types.DescribePersistentAppUIOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReleaseLabel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReleaseLabel",
        input_schema = types.DescribeReleaseLabelInput,
        output_schema = types.DescribeReleaseLabelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSecurityConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSecurityConfiguration",
        input_schema = types.DescribeSecurityConfigurationInput,
        output_schema = types.DescribeSecurityConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeStep(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStep",
        input_schema = types.DescribeStepInput,
        output_schema = types.DescribeStepOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeStudio(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStudio",
        input_schema = types.DescribeStudioInput,
        output_schema = types.DescribeStudioOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAutoTerminationPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetAutoTerminationPolicy",
        input_schema = types.GetAutoTerminationPolicyInput,
        output_schema = types.GetAutoTerminationPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBlockPublicAccessConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetBlockPublicAccessConfiguration",
        input_schema = types.GetBlockPublicAccessConfigurationInput,
        output_schema = types.GetBlockPublicAccessConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getClusterSessionCredentials(input, options)
    return self:invokeOperation(input, {
        name = "GetClusterSessionCredentials",
        input_schema = types.GetClusterSessionCredentialsInput,
        output_schema = types.GetClusterSessionCredentialsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getManagedScalingPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetManagedScalingPolicy",
        input_schema = types.GetManagedScalingPolicyInput,
        output_schema = types.GetManagedScalingPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOnClusterAppUIPresignedURL(input, options)
    return self:invokeOperation(input, {
        name = "GetOnClusterAppUIPresignedURL",
        input_schema = types.GetOnClusterAppUIPresignedURLInput,
        output_schema = types.GetOnClusterAppUIPresignedURLOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPersistentAppUIPresignedURL(input, options)
    return self:invokeOperation(input, {
        name = "GetPersistentAppUIPresignedURL",
        input_schema = types.GetPersistentAppUIPresignedURLInput,
        output_schema = types.GetPersistentAppUIPresignedURLOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getStudioSessionMapping(input, options)
    return self:invokeOperation(input, {
        name = "GetStudioSessionMapping",
        input_schema = types.GetStudioSessionMappingInput,
        output_schema = types.GetStudioSessionMappingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBootstrapActions(input, options)
    return self:invokeOperation(input, {
        name = "ListBootstrapActions",
        input_schema = types.ListBootstrapActionsInput,
        output_schema = types.ListBootstrapActionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listClusters(input, options)
    return self:invokeOperation(input, {
        name = "ListClusters",
        input_schema = types.ListClustersInput,
        output_schema = types.ListClustersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInstanceFleets(input, options)
    return self:invokeOperation(input, {
        name = "ListInstanceFleets",
        input_schema = types.ListInstanceFleetsInput,
        output_schema = types.ListInstanceFleetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInstanceGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListInstanceGroups",
        input_schema = types.ListInstanceGroupsInput,
        output_schema = types.ListInstanceGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListInstances",
        input_schema = types.ListInstancesInput,
        output_schema = types.ListInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNotebookExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListNotebookExecutions",
        input_schema = types.ListNotebookExecutionsInput,
        output_schema = types.ListNotebookExecutionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listReleaseLabels(input, options)
    return self:invokeOperation(input, {
        name = "ListReleaseLabels",
        input_schema = types.ListReleaseLabelsInput,
        output_schema = types.ListReleaseLabelsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSecurityConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListSecurityConfigurations",
        input_schema = types.ListSecurityConfigurationsInput,
        output_schema = types.ListSecurityConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSteps(input, options)
    return self:invokeOperation(input, {
        name = "ListSteps",
        input_schema = types.ListStepsInput,
        output_schema = types.ListStepsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStudios(input, options)
    return self:invokeOperation(input, {
        name = "ListStudios",
        input_schema = types.ListStudiosInput,
        output_schema = types.ListStudiosOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStudioSessionMappings(input, options)
    return self:invokeOperation(input, {
        name = "ListStudioSessionMappings",
        input_schema = types.ListStudioSessionMappingsInput,
        output_schema = types.ListStudioSessionMappingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSupportedInstanceTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListSupportedInstanceTypes",
        input_schema = types.ListSupportedInstanceTypesInput,
        output_schema = types.ListSupportedInstanceTypesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyCluster(input, options)
    return self:invokeOperation(input, {
        name = "ModifyCluster",
        input_schema = types.ModifyClusterInput,
        output_schema = types.ModifyClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyInstanceFleet(input, options)
    return self:invokeOperation(input, {
        name = "ModifyInstanceFleet",
        input_schema = types.ModifyInstanceFleetInput,
        output_schema = types.ModifyInstanceFleetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyInstanceGroups(input, options)
    return self:invokeOperation(input, {
        name = "ModifyInstanceGroups",
        input_schema = types.ModifyInstanceGroupsInput,
        output_schema = types.ModifyInstanceGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putAutoScalingPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutAutoScalingPolicy",
        input_schema = types.PutAutoScalingPolicyInput,
        output_schema = types.PutAutoScalingPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putAutoTerminationPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutAutoTerminationPolicy",
        input_schema = types.PutAutoTerminationPolicyInput,
        output_schema = types.PutAutoTerminationPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putBlockPublicAccessConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutBlockPublicAccessConfiguration",
        input_schema = types.PutBlockPublicAccessConfigurationInput,
        output_schema = types.PutBlockPublicAccessConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putManagedScalingPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutManagedScalingPolicy",
        input_schema = types.PutManagedScalingPolicyInput,
        output_schema = types.PutManagedScalingPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeAutoScalingPolicy(input, options)
    return self:invokeOperation(input, {
        name = "RemoveAutoScalingPolicy",
        input_schema = types.RemoveAutoScalingPolicyInput,
        output_schema = types.RemoveAutoScalingPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeAutoTerminationPolicy(input, options)
    return self:invokeOperation(input, {
        name = "RemoveAutoTerminationPolicy",
        input_schema = types.RemoveAutoTerminationPolicyInput,
        output_schema = types.RemoveAutoTerminationPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeManagedScalingPolicy(input, options)
    return self:invokeOperation(input, {
        name = "RemoveManagedScalingPolicy",
        input_schema = types.RemoveManagedScalingPolicyInput,
        output_schema = types.RemoveManagedScalingPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeTags(input, options)
    return self:invokeOperation(input, {
        name = "RemoveTags",
        input_schema = types.RemoveTagsInput,
        output_schema = types.RemoveTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:runJobFlow(input, options)
    return self:invokeOperation(input, {
        name = "RunJobFlow",
        input_schema = types.RunJobFlowInput,
        output_schema = types.RunJobFlowOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setKeepJobFlowAliveWhenNoSteps(input, options)
    return self:invokeOperation(input, {
        name = "SetKeepJobFlowAliveWhenNoSteps",
        input_schema = types.SetKeepJobFlowAliveWhenNoStepsInput,
        output_schema = types.SetKeepJobFlowAliveWhenNoStepsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setTerminationProtection(input, options)
    return self:invokeOperation(input, {
        name = "SetTerminationProtection",
        input_schema = types.SetTerminationProtectionInput,
        output_schema = types.SetTerminationProtectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setUnhealthyNodeReplacement(input, options)
    return self:invokeOperation(input, {
        name = "SetUnhealthyNodeReplacement",
        input_schema = types.SetUnhealthyNodeReplacementInput,
        output_schema = types.SetUnhealthyNodeReplacementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setVisibleToAllUsers(input, options)
    return self:invokeOperation(input, {
        name = "SetVisibleToAllUsers",
        input_schema = types.SetVisibleToAllUsersInput,
        output_schema = types.SetVisibleToAllUsersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startNotebookExecution(input, options)
    return self:invokeOperation(input, {
        name = "StartNotebookExecution",
        input_schema = types.StartNotebookExecutionInput,
        output_schema = types.StartNotebookExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopNotebookExecution(input, options)
    return self:invokeOperation(input, {
        name = "StopNotebookExecution",
        input_schema = types.StopNotebookExecutionInput,
        output_schema = types.StopNotebookExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:terminateJobFlows(input, options)
    return self:invokeOperation(input, {
        name = "TerminateJobFlows",
        input_schema = types.TerminateJobFlowsInput,
        output_schema = types.TerminateJobFlowsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateStudio(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStudio",
        input_schema = types.UpdateStudioInput,
        output_schema = types.UpdateStudioOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateStudioSessionMapping(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStudioSessionMapping",
        input_schema = types.UpdateStudioSessionMappingInput,
        output_schema = types.UpdateStudioSessionMappingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
