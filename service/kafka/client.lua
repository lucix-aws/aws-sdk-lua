



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("kafka.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("kafka.schemas")
local traits = require("smithy.traits")
local types = require("kafka.types")
local sdk_defaults = require("aws.sdk_defaults")

































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "Kafka"
   if not c.protocol then c.protocol = restjson_protocol.new() end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "kafka", signing_region = c.region } }
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

function C:batchAssociateScramSecret(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchAssociateScramSecret, input, options)
end

function C:batchDisassociateScramSecret(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDisassociateScramSecret, input, options)
end

function C:createCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCluster, input, options)
end

function C:createClusterV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateClusterV2, input, options)
end

function C:createConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConfiguration, input, options)
end

function C:createReplicator(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateReplicator, input, options)
end

function C:createTopic(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTopic, input, options)
end

function C:createVpcConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVpcConnection, input, options)
end

function C:deleteCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCluster, input, options)
end

function C:deleteClusterPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteClusterPolicy, input, options)
end

function C:deleteConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConfiguration, input, options)
end

function C:deleteReplicator(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteReplicator, input, options)
end

function C:deleteTopic(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTopic, input, options)
end

function C:deleteVpcConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVpcConnection, input, options)
end

function C:describeCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCluster, input, options)
end

function C:describeClusterOperation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeClusterOperation, input, options)
end

function C:describeClusterOperationV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeClusterOperationV2, input, options)
end

function C:describeClusterV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeClusterV2, input, options)
end

function C:describeConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConfiguration, input, options)
end

function C:describeConfigurationRevision(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConfigurationRevision, input, options)
end

function C:describeReplicator(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReplicator, input, options)
end

function C:describeTopic(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTopic, input, options)
end

function C:describeTopicPartitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTopicPartitions, input, options)
end

function C:describeVpcConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVpcConnection, input, options)
end

function C:getBootstrapBrokers(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBootstrapBrokers, input, options)
end

function C:getClusterPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetClusterPolicy, input, options)
end

function C:getCompatibleKafkaVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCompatibleKafkaVersions, input, options)
end

function C:listClientVpcConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListClientVpcConnections, input, options)
end

function C:listClusterOperations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListClusterOperations, input, options)
end

function C:listClusterOperationsV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListClusterOperationsV2, input, options)
end

function C:listClusters(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListClusters, input, options)
end

function C:listClustersV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListClustersV2, input, options)
end

function C:listConfigurationRevisions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConfigurationRevisions, input, options)
end

function C:listConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConfigurations, input, options)
end

function C:listKafkaVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListKafkaVersions, input, options)
end

function C:listNodes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNodes, input, options)
end

function C:listReplicators(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReplicators, input, options)
end

function C:listScramSecrets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListScramSecrets, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTopics(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTopics, input, options)
end

function C:listVpcConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVpcConnections, input, options)
end

function C:putClusterPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutClusterPolicy, input, options)
end

function C:rebootBroker(input, options)
   return self:invokeOperation(schemas.Service, schemas.RebootBroker, input, options)
end

function C:rejectClientVpcConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectClientVpcConnection, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateBrokerCount(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBrokerCount, input, options)
end

function C:updateBrokerStorage(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBrokerStorage, input, options)
end

function C:updateBrokerType(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBrokerType, input, options)
end

function C:updateClusterConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateClusterConfiguration, input, options)
end

function C:updateClusterKafkaVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateClusterKafkaVersion, input, options)
end

function C:updateConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConfiguration, input, options)
end

function C:updateConnectivity(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConnectivity, input, options)
end

function C:updateMonitoring(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMonitoring, input, options)
end

function C:updateRebalancing(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRebalancing, input, options)
end

function C:updateReplicationInfo(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateReplicationInfo, input, options)
end

function C:updateSecurity(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSecurity, input, options)
end

function C:updateStorage(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateStorage, input, options)
end

function C:updateTopic(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTopic, input, options)
end

return M
