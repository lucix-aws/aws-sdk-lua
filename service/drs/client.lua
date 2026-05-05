local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("drs.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("drs.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ElasticDisasterRecoveryService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "drs", signing_region = cfg.region } }
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

function Client:associateSourceNetworkStack(input, options)
    return self:invokeOperation(input, {
        name = "AssociateSourceNetworkStack",
        input_schema = schemas.AssociateSourceNetworkStackInput,
        output_schema = schemas.AssociateSourceNetworkStackOutput,
        http_method = "POST",
        http_path = "/AssociateSourceNetworkStack",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createExtendedSourceServer(input, options)
    return self:invokeOperation(input, {
        name = "CreateExtendedSourceServer",
        input_schema = schemas.CreateExtendedSourceServerInput,
        output_schema = schemas.CreateExtendedSourceServerOutput,
        http_method = "POST",
        http_path = "/CreateExtendedSourceServer",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLaunchConfigurationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateLaunchConfigurationTemplate",
        input_schema = schemas.CreateLaunchConfigurationTemplateInput,
        output_schema = schemas.CreateLaunchConfigurationTemplateOutput,
        http_method = "POST",
        http_path = "/CreateLaunchConfigurationTemplate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createReplicationConfigurationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateReplicationConfigurationTemplate",
        input_schema = schemas.CreateReplicationConfigurationTemplateInput,
        output_schema = schemas.CreateReplicationConfigurationTemplateOutput,
        http_method = "POST",
        http_path = "/CreateReplicationConfigurationTemplate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSourceNetwork(input, options)
    return self:invokeOperation(input, {
        name = "CreateSourceNetwork",
        input_schema = schemas.CreateSourceNetworkInput,
        output_schema = schemas.CreateSourceNetworkOutput,
        http_method = "POST",
        http_path = "/CreateSourceNetwork",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteJob",
        input_schema = schemas.DeleteJobInput,
        output_schema = schemas.DeleteJobOutput,
        http_method = "POST",
        http_path = "/DeleteJob",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLaunchAction(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLaunchAction",
        input_schema = schemas.DeleteLaunchActionInput,
        output_schema = schemas.DeleteLaunchActionOutput,
        http_method = "POST",
        http_path = "/DeleteLaunchAction",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLaunchConfigurationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLaunchConfigurationTemplate",
        input_schema = schemas.DeleteLaunchConfigurationTemplateInput,
        output_schema = schemas.DeleteLaunchConfigurationTemplateOutput,
        http_method = "POST",
        http_path = "/DeleteLaunchConfigurationTemplate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRecoveryInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRecoveryInstance",
        input_schema = schemas.DeleteRecoveryInstanceInput,
        output_schema = schemas.DeleteRecoveryInstanceOutput,
        http_method = "POST",
        http_path = "/DeleteRecoveryInstance",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteReplicationConfigurationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteReplicationConfigurationTemplate",
        input_schema = schemas.DeleteReplicationConfigurationTemplateInput,
        output_schema = schemas.DeleteReplicationConfigurationTemplateOutput,
        http_method = "POST",
        http_path = "/DeleteReplicationConfigurationTemplate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSourceNetwork(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSourceNetwork",
        input_schema = schemas.DeleteSourceNetworkInput,
        output_schema = schemas.DeleteSourceNetworkOutput,
        http_method = "POST",
        http_path = "/DeleteSourceNetwork",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSourceServer(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSourceServer",
        input_schema = schemas.DeleteSourceServerInput,
        output_schema = schemas.DeleteSourceServerOutput,
        http_method = "POST",
        http_path = "/DeleteSourceServer",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeJobLogItems(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJobLogItems",
        input_schema = schemas.DescribeJobLogItemsInput,
        output_schema = schemas.DescribeJobLogItemsOutput,
        http_method = "POST",
        http_path = "/DescribeJobLogItems",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeJobs(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJobs",
        input_schema = schemas.DescribeJobsInput,
        output_schema = schemas.DescribeJobsOutput,
        http_method = "POST",
        http_path = "/DescribeJobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLaunchConfigurationTemplates(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLaunchConfigurationTemplates",
        input_schema = schemas.DescribeLaunchConfigurationTemplatesInput,
        output_schema = schemas.DescribeLaunchConfigurationTemplatesOutput,
        http_method = "POST",
        http_path = "/DescribeLaunchConfigurationTemplates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRecoveryInstances(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRecoveryInstances",
        input_schema = schemas.DescribeRecoveryInstancesInput,
        output_schema = schemas.DescribeRecoveryInstancesOutput,
        http_method = "POST",
        http_path = "/DescribeRecoveryInstances",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRecoverySnapshots(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRecoverySnapshots",
        input_schema = schemas.DescribeRecoverySnapshotsInput,
        output_schema = schemas.DescribeRecoverySnapshotsOutput,
        http_method = "POST",
        http_path = "/DescribeRecoverySnapshots",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReplicationConfigurationTemplates(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReplicationConfigurationTemplates",
        input_schema = schemas.DescribeReplicationConfigurationTemplatesInput,
        output_schema = schemas.DescribeReplicationConfigurationTemplatesOutput,
        http_method = "POST",
        http_path = "/DescribeReplicationConfigurationTemplates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSourceNetworks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSourceNetworks",
        input_schema = schemas.DescribeSourceNetworksInput,
        output_schema = schemas.DescribeSourceNetworksOutput,
        http_method = "POST",
        http_path = "/DescribeSourceNetworks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSourceServers(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSourceServers",
        input_schema = schemas.DescribeSourceServersInput,
        output_schema = schemas.DescribeSourceServersOutput,
        http_method = "POST",
        http_path = "/DescribeSourceServers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disconnectRecoveryInstance(input, options)
    return self:invokeOperation(input, {
        name = "DisconnectRecoveryInstance",
        input_schema = schemas.DisconnectRecoveryInstanceInput,
        output_schema = schemas.DisconnectRecoveryInstanceOutput,
        http_method = "POST",
        http_path = "/DisconnectRecoveryInstance",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disconnectSourceServer(input, options)
    return self:invokeOperation(input, {
        name = "DisconnectSourceServer",
        input_schema = schemas.DisconnectSourceServerInput,
        output_schema = schemas.DisconnectSourceServerOutput,
        http_method = "POST",
        http_path = "/DisconnectSourceServer",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:exportSourceNetworkCfnTemplate(input, options)
    return self:invokeOperation(input, {
        name = "ExportSourceNetworkCfnTemplate",
        input_schema = schemas.ExportSourceNetworkCfnTemplateInput,
        output_schema = schemas.ExportSourceNetworkCfnTemplateOutput,
        http_method = "POST",
        http_path = "/ExportSourceNetworkCfnTemplate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFailbackReplicationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetFailbackReplicationConfiguration",
        input_schema = schemas.GetFailbackReplicationConfigurationInput,
        output_schema = schemas.GetFailbackReplicationConfigurationOutput,
        http_method = "POST",
        http_path = "/GetFailbackReplicationConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLaunchConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetLaunchConfiguration",
        input_schema = schemas.GetLaunchConfigurationInput,
        output_schema = schemas.GetLaunchConfigurationOutput,
        http_method = "POST",
        http_path = "/GetLaunchConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getReplicationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetReplicationConfiguration",
        input_schema = schemas.GetReplicationConfigurationInput,
        output_schema = schemas.GetReplicationConfigurationOutput,
        http_method = "POST",
        http_path = "/GetReplicationConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:initializeService(input, options)
    return self:invokeOperation(input, {
        name = "InitializeService",
        input_schema = schemas.InitializeServiceInput,
        output_schema = schemas.InitializeServiceOutput,
        http_method = "POST",
        http_path = "/InitializeService",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listExtensibleSourceServers(input, options)
    return self:invokeOperation(input, {
        name = "ListExtensibleSourceServers",
        input_schema = schemas.ListExtensibleSourceServersInput,
        output_schema = schemas.ListExtensibleSourceServersOutput,
        http_method = "POST",
        http_path = "/ListExtensibleSourceServers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLaunchActions(input, options)
    return self:invokeOperation(input, {
        name = "ListLaunchActions",
        input_schema = schemas.ListLaunchActionsInput,
        output_schema = schemas.ListLaunchActionsOutput,
        http_method = "POST",
        http_path = "/ListLaunchActions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStagingAccounts(input, options)
    return self:invokeOperation(input, {
        name = "ListStagingAccounts",
        input_schema = schemas.ListStagingAccountsInput,
        output_schema = schemas.ListStagingAccountsOutput,
        http_method = "GET",
        http_path = "/ListStagingAccounts",
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

function Client:putLaunchAction(input, options)
    return self:invokeOperation(input, {
        name = "PutLaunchAction",
        input_schema = schemas.PutLaunchActionInput,
        output_schema = schemas.PutLaunchActionOutput,
        http_method = "POST",
        http_path = "/PutLaunchAction",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:retryDataReplication(input, options)
    return self:invokeOperation(input, {
        name = "RetryDataReplication",
        input_schema = schemas.RetryDataReplicationInput,
        output_schema = schemas.RetryDataReplicationOutput,
        http_method = "POST",
        http_path = "/RetryDataReplication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:reverseReplication(input, options)
    return self:invokeOperation(input, {
        name = "ReverseReplication",
        input_schema = schemas.ReverseReplicationInput,
        output_schema = schemas.ReverseReplicationOutput,
        http_method = "POST",
        http_path = "/ReverseReplication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startFailbackLaunch(input, options)
    return self:invokeOperation(input, {
        name = "StartFailbackLaunch",
        input_schema = schemas.StartFailbackLaunchInput,
        output_schema = schemas.StartFailbackLaunchOutput,
        http_method = "POST",
        http_path = "/StartFailbackLaunch",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startRecovery(input, options)
    return self:invokeOperation(input, {
        name = "StartRecovery",
        input_schema = schemas.StartRecoveryInput,
        output_schema = schemas.StartRecoveryOutput,
        http_method = "POST",
        http_path = "/StartRecovery",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startReplication(input, options)
    return self:invokeOperation(input, {
        name = "StartReplication",
        input_schema = schemas.StartReplicationInput,
        output_schema = schemas.StartReplicationOutput,
        http_method = "POST",
        http_path = "/StartReplication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startSourceNetworkRecovery(input, options)
    return self:invokeOperation(input, {
        name = "StartSourceNetworkRecovery",
        input_schema = schemas.StartSourceNetworkRecoveryInput,
        output_schema = schemas.StartSourceNetworkRecoveryOutput,
        http_method = "POST",
        http_path = "/StartSourceNetworkRecovery",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startSourceNetworkReplication(input, options)
    return self:invokeOperation(input, {
        name = "StartSourceNetworkReplication",
        input_schema = schemas.StartSourceNetworkReplicationInput,
        output_schema = schemas.StartSourceNetworkReplicationOutput,
        http_method = "POST",
        http_path = "/StartSourceNetworkReplication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopFailback(input, options)
    return self:invokeOperation(input, {
        name = "StopFailback",
        input_schema = schemas.StopFailbackInput,
        output_schema = schemas.StopFailbackOutput,
        http_method = "POST",
        http_path = "/StopFailback",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopReplication(input, options)
    return self:invokeOperation(input, {
        name = "StopReplication",
        input_schema = schemas.StopReplicationInput,
        output_schema = schemas.StopReplicationOutput,
        http_method = "POST",
        http_path = "/StopReplication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopSourceNetworkReplication(input, options)
    return self:invokeOperation(input, {
        name = "StopSourceNetworkReplication",
        input_schema = schemas.StopSourceNetworkReplicationInput,
        output_schema = schemas.StopSourceNetworkReplicationOutput,
        http_method = "POST",
        http_path = "/StopSourceNetworkReplication",
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

function Client:terminateRecoveryInstances(input, options)
    return self:invokeOperation(input, {
        name = "TerminateRecoveryInstances",
        input_schema = schemas.TerminateRecoveryInstancesInput,
        output_schema = schemas.TerminateRecoveryInstancesOutput,
        http_method = "POST",
        http_path = "/TerminateRecoveryInstances",
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

function Client:updateFailbackReplicationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFailbackReplicationConfiguration",
        input_schema = schemas.UpdateFailbackReplicationConfigurationInput,
        output_schema = schemas.UpdateFailbackReplicationConfigurationOutput,
        http_method = "POST",
        http_path = "/UpdateFailbackReplicationConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLaunchConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLaunchConfiguration",
        input_schema = schemas.UpdateLaunchConfigurationInput,
        output_schema = schemas.UpdateLaunchConfigurationOutput,
        http_method = "POST",
        http_path = "/UpdateLaunchConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLaunchConfigurationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLaunchConfigurationTemplate",
        input_schema = schemas.UpdateLaunchConfigurationTemplateInput,
        output_schema = schemas.UpdateLaunchConfigurationTemplateOutput,
        http_method = "POST",
        http_path = "/UpdateLaunchConfigurationTemplate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateReplicationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateReplicationConfiguration",
        input_schema = schemas.UpdateReplicationConfigurationInput,
        output_schema = schemas.UpdateReplicationConfigurationOutput,
        http_method = "POST",
        http_path = "/UpdateReplicationConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateReplicationConfigurationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateReplicationConfigurationTemplate",
        input_schema = schemas.UpdateReplicationConfigurationTemplateInput,
        output_schema = schemas.UpdateReplicationConfigurationTemplateOutput,
        http_method = "POST",
        http_path = "/UpdateReplicationConfigurationTemplate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
