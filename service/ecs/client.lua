local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("ecs.endpoint_rules")
local schemas = require("ecs.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonEC2ContainerServiceV20141113"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ecs", signing_region = cfg.region } }
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

function Client:createCapacityProvider(input, options)
    return self:invokeOperation(input, {
        name = "CreateCapacityProvider",
        input_schema = schemas.CreateCapacityProviderInput,
        output_schema = schemas.CreateCapacityProviderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCluster(input, options)
    return self:invokeOperation(input, {
        name = "CreateCluster",
        input_schema = schemas.CreateClusterInput,
        output_schema = schemas.CreateClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDaemon(input, options)
    return self:invokeOperation(input, {
        name = "CreateDaemon",
        input_schema = schemas.CreateDaemonInput,
        output_schema = schemas.CreateDaemonOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createExpressGatewayService(input, options)
    return self:invokeOperation(input, {
        name = "CreateExpressGatewayService",
        input_schema = schemas.CreateExpressGatewayServiceInput,
        output_schema = schemas.CreateExpressGatewayServiceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createService(input, options)
    return self:invokeOperation(input, {
        name = "CreateService",
        input_schema = schemas.CreateServiceInput,
        output_schema = schemas.CreateServiceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTaskSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateTaskSet",
        input_schema = schemas.CreateTaskSetInput,
        output_schema = schemas.CreateTaskSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAccountSetting(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccountSetting",
        input_schema = schemas.DeleteAccountSettingInput,
        output_schema = schemas.DeleteAccountSettingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAttributes(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAttributes",
        input_schema = schemas.DeleteAttributesInput,
        output_schema = schemas.DeleteAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCapacityProvider(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCapacityProvider",
        input_schema = schemas.DeleteCapacityProviderInput,
        output_schema = schemas.DeleteCapacityProviderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCluster(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCluster",
        input_schema = schemas.DeleteClusterInput,
        output_schema = schemas.DeleteClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDaemon(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDaemon",
        input_schema = schemas.DeleteDaemonInput,
        output_schema = schemas.DeleteDaemonOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDaemonTaskDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDaemonTaskDefinition",
        input_schema = schemas.DeleteDaemonTaskDefinitionInput,
        output_schema = schemas.DeleteDaemonTaskDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteExpressGatewayService(input, options)
    return self:invokeOperation(input, {
        name = "DeleteExpressGatewayService",
        input_schema = schemas.DeleteExpressGatewayServiceInput,
        output_schema = schemas.DeleteExpressGatewayServiceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteService(input, options)
    return self:invokeOperation(input, {
        name = "DeleteService",
        input_schema = schemas.DeleteServiceInput,
        output_schema = schemas.DeleteServiceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTaskDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTaskDefinitions",
        input_schema = schemas.DeleteTaskDefinitionsInput,
        output_schema = schemas.DeleteTaskDefinitionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTaskSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTaskSet",
        input_schema = schemas.DeleteTaskSetInput,
        output_schema = schemas.DeleteTaskSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterContainerInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterContainerInstance",
        input_schema = schemas.DeregisterContainerInstanceInput,
        output_schema = schemas.DeregisterContainerInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterTaskDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterTaskDefinition",
        input_schema = schemas.DeregisterTaskDefinitionInput,
        output_schema = schemas.DeregisterTaskDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCapacityProviders(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCapacityProviders",
        input_schema = schemas.DescribeCapacityProvidersInput,
        output_schema = schemas.DescribeCapacityProvidersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeClusters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeClusters",
        input_schema = schemas.DescribeClustersInput,
        output_schema = schemas.DescribeClustersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeContainerInstances(input, options)
    return self:invokeOperation(input, {
        name = "DescribeContainerInstances",
        input_schema = schemas.DescribeContainerInstancesInput,
        output_schema = schemas.DescribeContainerInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDaemon(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDaemon",
        input_schema = schemas.DescribeDaemonInput,
        output_schema = schemas.DescribeDaemonOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDaemonDeployments(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDaemonDeployments",
        input_schema = schemas.DescribeDaemonDeploymentsInput,
        output_schema = schemas.DescribeDaemonDeploymentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDaemonRevisions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDaemonRevisions",
        input_schema = schemas.DescribeDaemonRevisionsInput,
        output_schema = schemas.DescribeDaemonRevisionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDaemonTaskDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDaemonTaskDefinition",
        input_schema = schemas.DescribeDaemonTaskDefinitionInput,
        output_schema = schemas.DescribeDaemonTaskDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeExpressGatewayService(input, options)
    return self:invokeOperation(input, {
        name = "DescribeExpressGatewayService",
        input_schema = schemas.DescribeExpressGatewayServiceInput,
        output_schema = schemas.DescribeExpressGatewayServiceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeServiceDeployments(input, options)
    return self:invokeOperation(input, {
        name = "DescribeServiceDeployments",
        input_schema = schemas.DescribeServiceDeploymentsInput,
        output_schema = schemas.DescribeServiceDeploymentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeServiceRevisions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeServiceRevisions",
        input_schema = schemas.DescribeServiceRevisionsInput,
        output_schema = schemas.DescribeServiceRevisionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeServices(input, options)
    return self:invokeOperation(input, {
        name = "DescribeServices",
        input_schema = schemas.DescribeServicesInput,
        output_schema = schemas.DescribeServicesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTaskDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTaskDefinition",
        input_schema = schemas.DescribeTaskDefinitionInput,
        output_schema = schemas.DescribeTaskDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTasks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTasks",
        input_schema = schemas.DescribeTasksInput,
        output_schema = schemas.DescribeTasksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTaskSets(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTaskSets",
        input_schema = schemas.DescribeTaskSetsInput,
        output_schema = schemas.DescribeTaskSetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:discoverPollEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DiscoverPollEndpoint",
        input_schema = schemas.DiscoverPollEndpointInput,
        output_schema = schemas.DiscoverPollEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:executeCommand(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteCommand",
        input_schema = schemas.ExecuteCommandInput,
        output_schema = schemas.ExecuteCommandOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTaskProtection(input, options)
    return self:invokeOperation(input, {
        name = "GetTaskProtection",
        input_schema = schemas.GetTaskProtectionInput,
        output_schema = schemas.GetTaskProtectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccountSettings(input, options)
    return self:invokeOperation(input, {
        name = "ListAccountSettings",
        input_schema = schemas.ListAccountSettingsInput,
        output_schema = schemas.ListAccountSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAttributes(input, options)
    return self:invokeOperation(input, {
        name = "ListAttributes",
        input_schema = schemas.ListAttributesInput,
        output_schema = schemas.ListAttributesOutput,
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
        input_schema = schemas.ListClustersInput,
        output_schema = schemas.ListClustersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listContainerInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListContainerInstances",
        input_schema = schemas.ListContainerInstancesInput,
        output_schema = schemas.ListContainerInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDaemonDeployments(input, options)
    return self:invokeOperation(input, {
        name = "ListDaemonDeployments",
        input_schema = schemas.ListDaemonDeploymentsInput,
        output_schema = schemas.ListDaemonDeploymentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDaemons(input, options)
    return self:invokeOperation(input, {
        name = "ListDaemons",
        input_schema = schemas.ListDaemonsInput,
        output_schema = schemas.ListDaemonsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDaemonTaskDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListDaemonTaskDefinitions",
        input_schema = schemas.ListDaemonTaskDefinitionsInput,
        output_schema = schemas.ListDaemonTaskDefinitionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServiceDeployments(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceDeployments",
        input_schema = schemas.ListServiceDeploymentsInput,
        output_schema = schemas.ListServiceDeploymentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServices(input, options)
    return self:invokeOperation(input, {
        name = "ListServices",
        input_schema = schemas.ListServicesInput,
        output_schema = schemas.ListServicesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServicesByNamespace(input, options)
    return self:invokeOperation(input, {
        name = "ListServicesByNamespace",
        input_schema = schemas.ListServicesByNamespaceInput,
        output_schema = schemas.ListServicesByNamespaceOutput,
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

function Client:listTaskDefinitionFamilies(input, options)
    return self:invokeOperation(input, {
        name = "ListTaskDefinitionFamilies",
        input_schema = schemas.ListTaskDefinitionFamiliesInput,
        output_schema = schemas.ListTaskDefinitionFamiliesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTaskDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListTaskDefinitions",
        input_schema = schemas.ListTaskDefinitionsInput,
        output_schema = schemas.ListTaskDefinitionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListTasks",
        input_schema = schemas.ListTasksInput,
        output_schema = schemas.ListTasksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putAccountSetting(input, options)
    return self:invokeOperation(input, {
        name = "PutAccountSetting",
        input_schema = schemas.PutAccountSettingInput,
        output_schema = schemas.PutAccountSettingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putAccountSettingDefault(input, options)
    return self:invokeOperation(input, {
        name = "PutAccountSettingDefault",
        input_schema = schemas.PutAccountSettingDefaultInput,
        output_schema = schemas.PutAccountSettingDefaultOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutAttributes",
        input_schema = schemas.PutAttributesInput,
        output_schema = schemas.PutAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putClusterCapacityProviders(input, options)
    return self:invokeOperation(input, {
        name = "PutClusterCapacityProviders",
        input_schema = schemas.PutClusterCapacityProvidersInput,
        output_schema = schemas.PutClusterCapacityProvidersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerContainerInstance(input, options)
    return self:invokeOperation(input, {
        name = "RegisterContainerInstance",
        input_schema = schemas.RegisterContainerInstanceInput,
        output_schema = schemas.RegisterContainerInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerDaemonTaskDefinition(input, options)
    return self:invokeOperation(input, {
        name = "RegisterDaemonTaskDefinition",
        input_schema = schemas.RegisterDaemonTaskDefinitionInput,
        output_schema = schemas.RegisterDaemonTaskDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerTaskDefinition(input, options)
    return self:invokeOperation(input, {
        name = "RegisterTaskDefinition",
        input_schema = schemas.RegisterTaskDefinitionInput,
        output_schema = schemas.RegisterTaskDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:runTask(input, options)
    return self:invokeOperation(input, {
        name = "RunTask",
        input_schema = schemas.RunTaskInput,
        output_schema = schemas.RunTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startTask(input, options)
    return self:invokeOperation(input, {
        name = "StartTask",
        input_schema = schemas.StartTaskInput,
        output_schema = schemas.StartTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopServiceDeployment(input, options)
    return self:invokeOperation(input, {
        name = "StopServiceDeployment",
        input_schema = schemas.StopServiceDeploymentInput,
        output_schema = schemas.StopServiceDeploymentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopTask(input, options)
    return self:invokeOperation(input, {
        name = "StopTask",
        input_schema = schemas.StopTaskInput,
        output_schema = schemas.StopTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:submitAttachmentStateChanges(input, options)
    return self:invokeOperation(input, {
        name = "SubmitAttachmentStateChanges",
        input_schema = schemas.SubmitAttachmentStateChangesInput,
        output_schema = schemas.SubmitAttachmentStateChangesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:submitContainerStateChange(input, options)
    return self:invokeOperation(input, {
        name = "SubmitContainerStateChange",
        input_schema = schemas.SubmitContainerStateChangeInput,
        output_schema = schemas.SubmitContainerStateChangeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:submitTaskStateChange(input, options)
    return self:invokeOperation(input, {
        name = "SubmitTaskStateChange",
        input_schema = schemas.SubmitTaskStateChangeInput,
        output_schema = schemas.SubmitTaskStateChangeOutput,
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

function Client:updateCapacityProvider(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCapacityProvider",
        input_schema = schemas.UpdateCapacityProviderInput,
        output_schema = schemas.UpdateCapacityProviderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCluster(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCluster",
        input_schema = schemas.UpdateClusterInput,
        output_schema = schemas.UpdateClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateClusterSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateClusterSettings",
        input_schema = schemas.UpdateClusterSettingsInput,
        output_schema = schemas.UpdateClusterSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateContainerAgent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContainerAgent",
        input_schema = schemas.UpdateContainerAgentInput,
        output_schema = schemas.UpdateContainerAgentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateContainerInstancesState(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContainerInstancesState",
        input_schema = schemas.UpdateContainerInstancesStateInput,
        output_schema = schemas.UpdateContainerInstancesStateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDaemon(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDaemon",
        input_schema = schemas.UpdateDaemonInput,
        output_schema = schemas.UpdateDaemonOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateExpressGatewayService(input, options)
    return self:invokeOperation(input, {
        name = "UpdateExpressGatewayService",
        input_schema = schemas.UpdateExpressGatewayServiceInput,
        output_schema = schemas.UpdateExpressGatewayServiceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateService(input, options)
    return self:invokeOperation(input, {
        name = "UpdateService",
        input_schema = schemas.UpdateServiceInput,
        output_schema = schemas.UpdateServiceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateServicePrimaryTaskSet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServicePrimaryTaskSet",
        input_schema = schemas.UpdateServicePrimaryTaskSetInput,
        output_schema = schemas.UpdateServicePrimaryTaskSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTaskProtection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTaskProtection",
        input_schema = schemas.UpdateTaskProtectionInput,
        output_schema = schemas.UpdateTaskProtectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTaskSet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTaskSet",
        input_schema = schemas.UpdateTaskSetInput,
        output_schema = schemas.UpdateTaskSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
