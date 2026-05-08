



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("ecs.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("ecs.schemas")
local traits = require("smithy.traits")
local types = require("ecs.types")
local sdk_defaults = require("aws.sdk_defaults")


















































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonEC2ContainerServiceV20141113"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ecs", signing_region = c.region } }
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

function C:createCapacityProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCapacityProvider, input, options)
end

function C:createCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCluster, input, options)
end

function C:createDaemon(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDaemon, input, options)
end

function C:createExpressGatewayService(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateExpressGatewayService, input, options)
end

function C:createService(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateService, input, options)
end

function C:createTaskSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTaskSet, input, options)
end

function C:deleteAccountSetting(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccountSetting, input, options)
end

function C:deleteAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAttributes, input, options)
end

function C:deleteCapacityProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCapacityProvider, input, options)
end

function C:deleteCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCluster, input, options)
end

function C:deleteDaemon(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDaemon, input, options)
end

function C:deleteDaemonTaskDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDaemonTaskDefinition, input, options)
end

function C:deleteExpressGatewayService(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteExpressGatewayService, input, options)
end

function C:deleteService(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteService, input, options)
end

function C:deleteTaskDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTaskDefinitions, input, options)
end

function C:deleteTaskSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTaskSet, input, options)
end

function C:deregisterContainerInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterContainerInstance, input, options)
end

function C:deregisterTaskDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterTaskDefinition, input, options)
end

function C:describeCapacityProviders(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCapacityProviders, input, options)
end

function C:describeClusters(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeClusters, input, options)
end

function C:describeContainerInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeContainerInstances, input, options)
end

function C:describeDaemon(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDaemon, input, options)
end

function C:describeDaemonDeployments(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDaemonDeployments, input, options)
end

function C:describeDaemonRevisions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDaemonRevisions, input, options)
end

function C:describeDaemonTaskDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDaemonTaskDefinition, input, options)
end

function C:describeExpressGatewayService(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeExpressGatewayService, input, options)
end

function C:describeServiceDeployments(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeServiceDeployments, input, options)
end

function C:describeServiceRevisions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeServiceRevisions, input, options)
end

function C:describeServices(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeServices, input, options)
end

function C:describeTaskDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTaskDefinition, input, options)
end

function C:describeTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTasks, input, options)
end

function C:describeTaskSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTaskSets, input, options)
end

function C:discoverPollEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DiscoverPollEndpoint, input, options)
end

function C:executeCommand(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExecuteCommand, input, options)
end

function C:getTaskProtection(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTaskProtection, input, options)
end

function C:listAccountSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccountSettings, input, options)
end

function C:listAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAttributes, input, options)
end

function C:listClusters(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListClusters, input, options)
end

function C:listContainerInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListContainerInstances, input, options)
end

function C:listDaemonDeployments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDaemonDeployments, input, options)
end

function C:listDaemons(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDaemons, input, options)
end

function C:listDaemonTaskDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDaemonTaskDefinitions, input, options)
end

function C:listServiceDeployments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServiceDeployments, input, options)
end

function C:listServices(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServices, input, options)
end

function C:listServicesByNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServicesByNamespace, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTaskDefinitionFamilies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTaskDefinitionFamilies, input, options)
end

function C:listTaskDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTaskDefinitions, input, options)
end

function C:listTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTasks, input, options)
end

function C:putAccountSetting(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAccountSetting, input, options)
end

function C:putAccountSettingDefault(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAccountSettingDefault, input, options)
end

function C:putAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAttributes, input, options)
end

function C:putClusterCapacityProviders(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutClusterCapacityProviders, input, options)
end

function C:registerContainerInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterContainerInstance, input, options)
end

function C:registerDaemonTaskDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterDaemonTaskDefinition, input, options)
end

function C:registerTaskDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterTaskDefinition, input, options)
end

function C:runTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.RunTask, input, options)
end

function C:startTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartTask, input, options)
end

function C:stopServiceDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopServiceDeployment, input, options)
end

function C:stopTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopTask, input, options)
end

function C:submitAttachmentStateChanges(input, options)
   return self:invokeOperation(schemas.Service, schemas.SubmitAttachmentStateChanges, input, options)
end

function C:submitContainerStateChange(input, options)
   return self:invokeOperation(schemas.Service, schemas.SubmitContainerStateChange, input, options)
end

function C:submitTaskStateChange(input, options)
   return self:invokeOperation(schemas.Service, schemas.SubmitTaskStateChange, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateCapacityProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCapacityProvider, input, options)
end

function C:updateCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCluster, input, options)
end

function C:updateClusterSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateClusterSettings, input, options)
end

function C:updateContainerAgent(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateContainerAgent, input, options)
end

function C:updateContainerInstancesState(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateContainerInstancesState, input, options)
end

function C:updateDaemon(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDaemon, input, options)
end

function C:updateExpressGatewayService(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateExpressGatewayService, input, options)
end

function C:updateService(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateService, input, options)
end

function C:updateServicePrimaryTaskSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateServicePrimaryTaskSet, input, options)
end

function C:updateTaskProtection(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTaskProtection, input, options)
end

function C:updateTaskSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTaskSet, input, options)
end

return M
