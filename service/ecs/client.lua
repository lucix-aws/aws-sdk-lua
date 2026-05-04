local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("ecs.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("ecs.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonEC2ContainerServiceV20141113"
    cfg.signing_name = "ecs"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
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

function Client:createCapacityProvider(input, options)
    return self:invokeOperation(input, {
        name = "CreateCapacityProvider",
        input_schema = types.CreateCapacityProviderInput,
        output_schema = types.CreateCapacityProviderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createCluster(input, options)
    return self:invokeOperation(input, {
        name = "CreateCluster",
        input_schema = types.CreateClusterInput,
        output_schema = types.CreateClusterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDaemon(input, options)
    return self:invokeOperation(input, {
        name = "CreateDaemon",
        input_schema = types.CreateDaemonInput,
        output_schema = types.CreateDaemonOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createExpressGatewayService(input, options)
    return self:invokeOperation(input, {
        name = "CreateExpressGatewayService",
        input_schema = types.CreateExpressGatewayServiceInput,
        output_schema = types.CreateExpressGatewayServiceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createService(input, options)
    return self:invokeOperation(input, {
        name = "CreateService",
        input_schema = types.CreateServiceInput,
        output_schema = types.CreateServiceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createTaskSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateTaskSet",
        input_schema = types.CreateTaskSetInput,
        output_schema = types.CreateTaskSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteAccountSetting(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccountSetting",
        input_schema = types.DeleteAccountSettingInput,
        output_schema = types.DeleteAccountSettingOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteAttributes(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAttributes",
        input_schema = types.DeleteAttributesInput,
        output_schema = types.DeleteAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteCapacityProvider(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCapacityProvider",
        input_schema = types.DeleteCapacityProviderInput,
        output_schema = types.DeleteCapacityProviderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteCluster(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCluster",
        input_schema = types.DeleteClusterInput,
        output_schema = types.DeleteClusterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDaemon(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDaemon",
        input_schema = types.DeleteDaemonInput,
        output_schema = types.DeleteDaemonOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDaemonTaskDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDaemonTaskDefinition",
        input_schema = types.DeleteDaemonTaskDefinitionInput,
        output_schema = types.DeleteDaemonTaskDefinitionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteExpressGatewayService(input, options)
    return self:invokeOperation(input, {
        name = "DeleteExpressGatewayService",
        input_schema = types.DeleteExpressGatewayServiceInput,
        output_schema = types.DeleteExpressGatewayServiceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteService(input, options)
    return self:invokeOperation(input, {
        name = "DeleteService",
        input_schema = types.DeleteServiceInput,
        output_schema = types.DeleteServiceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteTaskDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTaskDefinitions",
        input_schema = types.DeleteTaskDefinitionsInput,
        output_schema = types.DeleteTaskDefinitionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteTaskSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTaskSet",
        input_schema = types.DeleteTaskSetInput,
        output_schema = types.DeleteTaskSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deregisterContainerInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterContainerInstance",
        input_schema = types.DeregisterContainerInstanceInput,
        output_schema = types.DeregisterContainerInstanceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deregisterTaskDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterTaskDefinition",
        input_schema = types.DeregisterTaskDefinitionInput,
        output_schema = types.DeregisterTaskDefinitionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeCapacityProviders(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCapacityProviders",
        input_schema = types.DescribeCapacityProvidersInput,
        output_schema = types.DescribeCapacityProvidersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeClusters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeClusters",
        input_schema = types.DescribeClustersInput,
        output_schema = types.DescribeClustersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeContainerInstances(input, options)
    return self:invokeOperation(input, {
        name = "DescribeContainerInstances",
        input_schema = types.DescribeContainerInstancesInput,
        output_schema = types.DescribeContainerInstancesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDaemon(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDaemon",
        input_schema = types.DescribeDaemonInput,
        output_schema = types.DescribeDaemonOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDaemonDeployments(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDaemonDeployments",
        input_schema = types.DescribeDaemonDeploymentsInput,
        output_schema = types.DescribeDaemonDeploymentsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDaemonRevisions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDaemonRevisions",
        input_schema = types.DescribeDaemonRevisionsInput,
        output_schema = types.DescribeDaemonRevisionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDaemonTaskDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDaemonTaskDefinition",
        input_schema = types.DescribeDaemonTaskDefinitionInput,
        output_schema = types.DescribeDaemonTaskDefinitionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeExpressGatewayService(input, options)
    return self:invokeOperation(input, {
        name = "DescribeExpressGatewayService",
        input_schema = types.DescribeExpressGatewayServiceInput,
        output_schema = types.DescribeExpressGatewayServiceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeServiceDeployments(input, options)
    return self:invokeOperation(input, {
        name = "DescribeServiceDeployments",
        input_schema = types.DescribeServiceDeploymentsInput,
        output_schema = types.DescribeServiceDeploymentsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeServiceRevisions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeServiceRevisions",
        input_schema = types.DescribeServiceRevisionsInput,
        output_schema = types.DescribeServiceRevisionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeServices(input, options)
    return self:invokeOperation(input, {
        name = "DescribeServices",
        input_schema = types.DescribeServicesInput,
        output_schema = types.DescribeServicesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTaskDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTaskDefinition",
        input_schema = types.DescribeTaskDefinitionInput,
        output_schema = types.DescribeTaskDefinitionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTasks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTasks",
        input_schema = types.DescribeTasksInput,
        output_schema = types.DescribeTasksOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTaskSets(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTaskSets",
        input_schema = types.DescribeTaskSetsInput,
        output_schema = types.DescribeTaskSetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:discoverPollEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DiscoverPollEndpoint",
        input_schema = types.DiscoverPollEndpointInput,
        output_schema = types.DiscoverPollEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:executeCommand(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteCommand",
        input_schema = types.ExecuteCommandInput,
        output_schema = types.ExecuteCommandOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getTaskProtection(input, options)
    return self:invokeOperation(input, {
        name = "GetTaskProtection",
        input_schema = types.GetTaskProtectionInput,
        output_schema = types.GetTaskProtectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAccountSettings(input, options)
    return self:invokeOperation(input, {
        name = "ListAccountSettings",
        input_schema = types.ListAccountSettingsInput,
        output_schema = types.ListAccountSettingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAttributes(input, options)
    return self:invokeOperation(input, {
        name = "ListAttributes",
        input_schema = types.ListAttributesInput,
        output_schema = types.ListAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listClusters(input, options)
    return self:invokeOperation(input, {
        name = "ListClusters",
        input_schema = types.ListClustersInput,
        output_schema = types.ListClustersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listContainerInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListContainerInstances",
        input_schema = types.ListContainerInstancesInput,
        output_schema = types.ListContainerInstancesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDaemonDeployments(input, options)
    return self:invokeOperation(input, {
        name = "ListDaemonDeployments",
        input_schema = types.ListDaemonDeploymentsInput,
        output_schema = types.ListDaemonDeploymentsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDaemons(input, options)
    return self:invokeOperation(input, {
        name = "ListDaemons",
        input_schema = types.ListDaemonsInput,
        output_schema = types.ListDaemonsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDaemonTaskDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListDaemonTaskDefinitions",
        input_schema = types.ListDaemonTaskDefinitionsInput,
        output_schema = types.ListDaemonTaskDefinitionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listServiceDeployments(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceDeployments",
        input_schema = types.ListServiceDeploymentsInput,
        output_schema = types.ListServiceDeploymentsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listServices(input, options)
    return self:invokeOperation(input, {
        name = "ListServices",
        input_schema = types.ListServicesInput,
        output_schema = types.ListServicesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listServicesByNamespace(input, options)
    return self:invokeOperation(input, {
        name = "ListServicesByNamespace",
        input_schema = types.ListServicesByNamespaceInput,
        output_schema = types.ListServicesByNamespaceOutput,
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

function Client:listTaskDefinitionFamilies(input, options)
    return self:invokeOperation(input, {
        name = "ListTaskDefinitionFamilies",
        input_schema = types.ListTaskDefinitionFamiliesInput,
        output_schema = types.ListTaskDefinitionFamiliesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTaskDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListTaskDefinitions",
        input_schema = types.ListTaskDefinitionsInput,
        output_schema = types.ListTaskDefinitionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListTasks",
        input_schema = types.ListTasksInput,
        output_schema = types.ListTasksOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putAccountSetting(input, options)
    return self:invokeOperation(input, {
        name = "PutAccountSetting",
        input_schema = types.PutAccountSettingInput,
        output_schema = types.PutAccountSettingOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putAccountSettingDefault(input, options)
    return self:invokeOperation(input, {
        name = "PutAccountSettingDefault",
        input_schema = types.PutAccountSettingDefaultInput,
        output_schema = types.PutAccountSettingDefaultOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutAttributes",
        input_schema = types.PutAttributesInput,
        output_schema = types.PutAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putClusterCapacityProviders(input, options)
    return self:invokeOperation(input, {
        name = "PutClusterCapacityProviders",
        input_schema = types.PutClusterCapacityProvidersInput,
        output_schema = types.PutClusterCapacityProvidersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:registerContainerInstance(input, options)
    return self:invokeOperation(input, {
        name = "RegisterContainerInstance",
        input_schema = types.RegisterContainerInstanceInput,
        output_schema = types.RegisterContainerInstanceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:registerDaemonTaskDefinition(input, options)
    return self:invokeOperation(input, {
        name = "RegisterDaemonTaskDefinition",
        input_schema = types.RegisterDaemonTaskDefinitionInput,
        output_schema = types.RegisterDaemonTaskDefinitionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:registerTaskDefinition(input, options)
    return self:invokeOperation(input, {
        name = "RegisterTaskDefinition",
        input_schema = types.RegisterTaskDefinitionInput,
        output_schema = types.RegisterTaskDefinitionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:runTask(input, options)
    return self:invokeOperation(input, {
        name = "RunTask",
        input_schema = types.RunTaskInput,
        output_schema = types.RunTaskOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startTask(input, options)
    return self:invokeOperation(input, {
        name = "StartTask",
        input_schema = types.StartTaskInput,
        output_schema = types.StartTaskOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopServiceDeployment(input, options)
    return self:invokeOperation(input, {
        name = "StopServiceDeployment",
        input_schema = types.StopServiceDeploymentInput,
        output_schema = types.StopServiceDeploymentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopTask(input, options)
    return self:invokeOperation(input, {
        name = "StopTask",
        input_schema = types.StopTaskInput,
        output_schema = types.StopTaskOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:submitAttachmentStateChanges(input, options)
    return self:invokeOperation(input, {
        name = "SubmitAttachmentStateChanges",
        input_schema = types.SubmitAttachmentStateChangesInput,
        output_schema = types.SubmitAttachmentStateChangesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:submitContainerStateChange(input, options)
    return self:invokeOperation(input, {
        name = "SubmitContainerStateChange",
        input_schema = types.SubmitContainerStateChangeInput,
        output_schema = types.SubmitContainerStateChangeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:submitTaskStateChange(input, options)
    return self:invokeOperation(input, {
        name = "SubmitTaskStateChange",
        input_schema = types.SubmitTaskStateChangeInput,
        output_schema = types.SubmitTaskStateChangeOutput,
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

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateCapacityProvider(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCapacityProvider",
        input_schema = types.UpdateCapacityProviderInput,
        output_schema = types.UpdateCapacityProviderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateCluster(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCluster",
        input_schema = types.UpdateClusterInput,
        output_schema = types.UpdateClusterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateClusterSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateClusterSettings",
        input_schema = types.UpdateClusterSettingsInput,
        output_schema = types.UpdateClusterSettingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateContainerAgent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContainerAgent",
        input_schema = types.UpdateContainerAgentInput,
        output_schema = types.UpdateContainerAgentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateContainerInstancesState(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContainerInstancesState",
        input_schema = types.UpdateContainerInstancesStateInput,
        output_schema = types.UpdateContainerInstancesStateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateDaemon(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDaemon",
        input_schema = types.UpdateDaemonInput,
        output_schema = types.UpdateDaemonOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateExpressGatewayService(input, options)
    return self:invokeOperation(input, {
        name = "UpdateExpressGatewayService",
        input_schema = types.UpdateExpressGatewayServiceInput,
        output_schema = types.UpdateExpressGatewayServiceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateService(input, options)
    return self:invokeOperation(input, {
        name = "UpdateService",
        input_schema = types.UpdateServiceInput,
        output_schema = types.UpdateServiceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateServicePrimaryTaskSet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServicePrimaryTaskSet",
        input_schema = types.UpdateServicePrimaryTaskSetInput,
        output_schema = types.UpdateServicePrimaryTaskSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateTaskProtection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTaskProtection",
        input_schema = types.UpdateTaskProtectionInput,
        output_schema = types.UpdateTaskProtectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateTaskSet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTaskSet",
        input_schema = types.UpdateTaskSetInput,
        output_schema = types.UpdateTaskSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
