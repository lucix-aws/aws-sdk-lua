local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("drs.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("drs.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ElasticDisasterRecoveryService"
    cfg.signing_name = "drs"
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

function Client:associateSourceNetworkStack(input, options)
    return self:invokeOperation(input, {
        name = "AssociateSourceNetworkStack",
        input_schema = types.AssociateSourceNetworkStackInput,
        output_schema = types.AssociateSourceNetworkStackOutput,
        http_method = "POST",
        http_path = "/AssociateSourceNetworkStack",
    }, options)
end

function Client:createExtendedSourceServer(input, options)
    return self:invokeOperation(input, {
        name = "CreateExtendedSourceServer",
        input_schema = types.CreateExtendedSourceServerInput,
        output_schema = types.CreateExtendedSourceServerOutput,
        http_method = "POST",
        http_path = "/CreateExtendedSourceServer",
    }, options)
end

function Client:createLaunchConfigurationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateLaunchConfigurationTemplate",
        input_schema = types.CreateLaunchConfigurationTemplateInput,
        output_schema = types.CreateLaunchConfigurationTemplateOutput,
        http_method = "POST",
        http_path = "/CreateLaunchConfigurationTemplate",
    }, options)
end

function Client:createReplicationConfigurationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateReplicationConfigurationTemplate",
        input_schema = types.CreateReplicationConfigurationTemplateInput,
        output_schema = types.CreateReplicationConfigurationTemplateOutput,
        http_method = "POST",
        http_path = "/CreateReplicationConfigurationTemplate",
    }, options)
end

function Client:createSourceNetwork(input, options)
    return self:invokeOperation(input, {
        name = "CreateSourceNetwork",
        input_schema = types.CreateSourceNetworkInput,
        output_schema = types.CreateSourceNetworkOutput,
        http_method = "POST",
        http_path = "/CreateSourceNetwork",
    }, options)
end

function Client:deleteJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteJob",
        input_schema = types.DeleteJobInput,
        output_schema = types.DeleteJobOutput,
        http_method = "POST",
        http_path = "/DeleteJob",
    }, options)
end

function Client:deleteLaunchAction(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLaunchAction",
        input_schema = types.DeleteLaunchActionInput,
        output_schema = types.DeleteLaunchActionOutput,
        http_method = "POST",
        http_path = "/DeleteLaunchAction",
    }, options)
end

function Client:deleteLaunchConfigurationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLaunchConfigurationTemplate",
        input_schema = types.DeleteLaunchConfigurationTemplateInput,
        output_schema = types.DeleteLaunchConfigurationTemplateOutput,
        http_method = "POST",
        http_path = "/DeleteLaunchConfigurationTemplate",
    }, options)
end

function Client:deleteRecoveryInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRecoveryInstance",
        input_schema = types.DeleteRecoveryInstanceInput,
        output_schema = types.DeleteRecoveryInstanceOutput,
        http_method = "POST",
        http_path = "/DeleteRecoveryInstance",
    }, options)
end

function Client:deleteReplicationConfigurationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteReplicationConfigurationTemplate",
        input_schema = types.DeleteReplicationConfigurationTemplateInput,
        output_schema = types.DeleteReplicationConfigurationTemplateOutput,
        http_method = "POST",
        http_path = "/DeleteReplicationConfigurationTemplate",
    }, options)
end

function Client:deleteSourceNetwork(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSourceNetwork",
        input_schema = types.DeleteSourceNetworkInput,
        output_schema = types.DeleteSourceNetworkOutput,
        http_method = "POST",
        http_path = "/DeleteSourceNetwork",
    }, options)
end

function Client:deleteSourceServer(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSourceServer",
        input_schema = types.DeleteSourceServerInput,
        output_schema = types.DeleteSourceServerOutput,
        http_method = "POST",
        http_path = "/DeleteSourceServer",
    }, options)
end

function Client:describeJobLogItems(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJobLogItems",
        input_schema = types.DescribeJobLogItemsInput,
        output_schema = types.DescribeJobLogItemsOutput,
        http_method = "POST",
        http_path = "/DescribeJobLogItems",
    }, options)
end

function Client:describeJobs(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJobs",
        input_schema = types.DescribeJobsInput,
        output_schema = types.DescribeJobsOutput,
        http_method = "POST",
        http_path = "/DescribeJobs",
    }, options)
end

function Client:describeLaunchConfigurationTemplates(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLaunchConfigurationTemplates",
        input_schema = types.DescribeLaunchConfigurationTemplatesInput,
        output_schema = types.DescribeLaunchConfigurationTemplatesOutput,
        http_method = "POST",
        http_path = "/DescribeLaunchConfigurationTemplates",
    }, options)
end

function Client:describeRecoveryInstances(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRecoveryInstances",
        input_schema = types.DescribeRecoveryInstancesInput,
        output_schema = types.DescribeRecoveryInstancesOutput,
        http_method = "POST",
        http_path = "/DescribeRecoveryInstances",
    }, options)
end

function Client:describeRecoverySnapshots(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRecoverySnapshots",
        input_schema = types.DescribeRecoverySnapshotsInput,
        output_schema = types.DescribeRecoverySnapshotsOutput,
        http_method = "POST",
        http_path = "/DescribeRecoverySnapshots",
    }, options)
end

function Client:describeReplicationConfigurationTemplates(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReplicationConfigurationTemplates",
        input_schema = types.DescribeReplicationConfigurationTemplatesInput,
        output_schema = types.DescribeReplicationConfigurationTemplatesOutput,
        http_method = "POST",
        http_path = "/DescribeReplicationConfigurationTemplates",
    }, options)
end

function Client:describeSourceNetworks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSourceNetworks",
        input_schema = types.DescribeSourceNetworksInput,
        output_schema = types.DescribeSourceNetworksOutput,
        http_method = "POST",
        http_path = "/DescribeSourceNetworks",
    }, options)
end

function Client:describeSourceServers(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSourceServers",
        input_schema = types.DescribeSourceServersInput,
        output_schema = types.DescribeSourceServersOutput,
        http_method = "POST",
        http_path = "/DescribeSourceServers",
    }, options)
end

function Client:disconnectRecoveryInstance(input, options)
    return self:invokeOperation(input, {
        name = "DisconnectRecoveryInstance",
        input_schema = types.DisconnectRecoveryInstanceInput,
        output_schema = types.DisconnectRecoveryInstanceOutput,
        http_method = "POST",
        http_path = "/DisconnectRecoveryInstance",
    }, options)
end

function Client:disconnectSourceServer(input, options)
    return self:invokeOperation(input, {
        name = "DisconnectSourceServer",
        input_schema = types.DisconnectSourceServerInput,
        output_schema = types.DisconnectSourceServerOutput,
        http_method = "POST",
        http_path = "/DisconnectSourceServer",
    }, options)
end

function Client:exportSourceNetworkCfnTemplate(input, options)
    return self:invokeOperation(input, {
        name = "ExportSourceNetworkCfnTemplate",
        input_schema = types.ExportSourceNetworkCfnTemplateInput,
        output_schema = types.ExportSourceNetworkCfnTemplateOutput,
        http_method = "POST",
        http_path = "/ExportSourceNetworkCfnTemplate",
    }, options)
end

function Client:getFailbackReplicationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetFailbackReplicationConfiguration",
        input_schema = types.GetFailbackReplicationConfigurationInput,
        output_schema = types.GetFailbackReplicationConfigurationOutput,
        http_method = "POST",
        http_path = "/GetFailbackReplicationConfiguration",
    }, options)
end

function Client:getLaunchConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetLaunchConfiguration",
        input_schema = types.GetLaunchConfigurationInput,
        output_schema = types.GetLaunchConfigurationOutput,
        http_method = "POST",
        http_path = "/GetLaunchConfiguration",
    }, options)
end

function Client:getReplicationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetReplicationConfiguration",
        input_schema = types.GetReplicationConfigurationInput,
        output_schema = types.GetReplicationConfigurationOutput,
        http_method = "POST",
        http_path = "/GetReplicationConfiguration",
    }, options)
end

function Client:initializeService(input, options)
    return self:invokeOperation(input, {
        name = "InitializeService",
        input_schema = types.InitializeServiceInput,
        output_schema = types.InitializeServiceOutput,
        http_method = "POST",
        http_path = "/InitializeService",
    }, options)
end

function Client:listExtensibleSourceServers(input, options)
    return self:invokeOperation(input, {
        name = "ListExtensibleSourceServers",
        input_schema = types.ListExtensibleSourceServersInput,
        output_schema = types.ListExtensibleSourceServersOutput,
        http_method = "POST",
        http_path = "/ListExtensibleSourceServers",
    }, options)
end

function Client:listLaunchActions(input, options)
    return self:invokeOperation(input, {
        name = "ListLaunchActions",
        input_schema = types.ListLaunchActionsInput,
        output_schema = types.ListLaunchActionsOutput,
        http_method = "POST",
        http_path = "/ListLaunchActions",
    }, options)
end

function Client:listStagingAccounts(input, options)
    return self:invokeOperation(input, {
        name = "ListStagingAccounts",
        input_schema = types.ListStagingAccountsInput,
        output_schema = types.ListStagingAccountsOutput,
        http_method = "GET",
        http_path = "/ListStagingAccounts",
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

function Client:putLaunchAction(input, options)
    return self:invokeOperation(input, {
        name = "PutLaunchAction",
        input_schema = types.PutLaunchActionInput,
        output_schema = types.PutLaunchActionOutput,
        http_method = "POST",
        http_path = "/PutLaunchAction",
    }, options)
end

function Client:retryDataReplication(input, options)
    return self:invokeOperation(input, {
        name = "RetryDataReplication",
        input_schema = types.RetryDataReplicationInput,
        output_schema = types.RetryDataReplicationOutput,
        http_method = "POST",
        http_path = "/RetryDataReplication",
    }, options)
end

function Client:reverseReplication(input, options)
    return self:invokeOperation(input, {
        name = "ReverseReplication",
        input_schema = types.ReverseReplicationInput,
        output_schema = types.ReverseReplicationOutput,
        http_method = "POST",
        http_path = "/ReverseReplication",
    }, options)
end

function Client:startFailbackLaunch(input, options)
    return self:invokeOperation(input, {
        name = "StartFailbackLaunch",
        input_schema = types.StartFailbackLaunchInput,
        output_schema = types.StartFailbackLaunchOutput,
        http_method = "POST",
        http_path = "/StartFailbackLaunch",
    }, options)
end

function Client:startRecovery(input, options)
    return self:invokeOperation(input, {
        name = "StartRecovery",
        input_schema = types.StartRecoveryInput,
        output_schema = types.StartRecoveryOutput,
        http_method = "POST",
        http_path = "/StartRecovery",
    }, options)
end

function Client:startReplication(input, options)
    return self:invokeOperation(input, {
        name = "StartReplication",
        input_schema = types.StartReplicationInput,
        output_schema = types.StartReplicationOutput,
        http_method = "POST",
        http_path = "/StartReplication",
    }, options)
end

function Client:startSourceNetworkRecovery(input, options)
    return self:invokeOperation(input, {
        name = "StartSourceNetworkRecovery",
        input_schema = types.StartSourceNetworkRecoveryInput,
        output_schema = types.StartSourceNetworkRecoveryOutput,
        http_method = "POST",
        http_path = "/StartSourceNetworkRecovery",
    }, options)
end

function Client:startSourceNetworkReplication(input, options)
    return self:invokeOperation(input, {
        name = "StartSourceNetworkReplication",
        input_schema = types.StartSourceNetworkReplicationInput,
        output_schema = types.StartSourceNetworkReplicationOutput,
        http_method = "POST",
        http_path = "/StartSourceNetworkReplication",
    }, options)
end

function Client:stopFailback(input, options)
    return self:invokeOperation(input, {
        name = "StopFailback",
        input_schema = types.StopFailbackInput,
        output_schema = types.StopFailbackOutput,
        http_method = "POST",
        http_path = "/StopFailback",
    }, options)
end

function Client:stopReplication(input, options)
    return self:invokeOperation(input, {
        name = "StopReplication",
        input_schema = types.StopReplicationInput,
        output_schema = types.StopReplicationOutput,
        http_method = "POST",
        http_path = "/StopReplication",
    }, options)
end

function Client:stopSourceNetworkReplication(input, options)
    return self:invokeOperation(input, {
        name = "StopSourceNetworkReplication",
        input_schema = types.StopSourceNetworkReplicationInput,
        output_schema = types.StopSourceNetworkReplicationOutput,
        http_method = "POST",
        http_path = "/StopSourceNetworkReplication",
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

function Client:terminateRecoveryInstances(input, options)
    return self:invokeOperation(input, {
        name = "TerminateRecoveryInstances",
        input_schema = types.TerminateRecoveryInstancesInput,
        output_schema = types.TerminateRecoveryInstancesOutput,
        http_method = "POST",
        http_path = "/TerminateRecoveryInstances",
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

function Client:updateFailbackReplicationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFailbackReplicationConfiguration",
        input_schema = types.UpdateFailbackReplicationConfigurationInput,
        output_schema = types.UpdateFailbackReplicationConfigurationOutput,
        http_method = "POST",
        http_path = "/UpdateFailbackReplicationConfiguration",
    }, options)
end

function Client:updateLaunchConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLaunchConfiguration",
        input_schema = types.UpdateLaunchConfigurationInput,
        output_schema = types.UpdateLaunchConfigurationOutput,
        http_method = "POST",
        http_path = "/UpdateLaunchConfiguration",
    }, options)
end

function Client:updateLaunchConfigurationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLaunchConfigurationTemplate",
        input_schema = types.UpdateLaunchConfigurationTemplateInput,
        output_schema = types.UpdateLaunchConfigurationTemplateOutput,
        http_method = "POST",
        http_path = "/UpdateLaunchConfigurationTemplate",
    }, options)
end

function Client:updateReplicationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateReplicationConfiguration",
        input_schema = types.UpdateReplicationConfigurationInput,
        output_schema = types.UpdateReplicationConfigurationOutput,
        http_method = "POST",
        http_path = "/UpdateReplicationConfiguration",
    }, options)
end

function Client:updateReplicationConfigurationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateReplicationConfigurationTemplate",
        input_schema = types.UpdateReplicationConfigurationTemplateInput,
        output_schema = types.UpdateReplicationConfigurationTemplateOutput,
        http_method = "POST",
        http_path = "/UpdateReplicationConfigurationTemplate",
    }, options)
end

return M
