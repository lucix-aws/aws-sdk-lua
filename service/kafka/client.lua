local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("kafka.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("kafka.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Kafka"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "kafka", signing_region = cfg.region } }
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

function Client:batchAssociateScramSecret(input, options)
    return self:invokeOperation(input, {
        name = "BatchAssociateScramSecret",
        input_schema = types.BatchAssociateScramSecretInput,
        output_schema = types.BatchAssociateScramSecretOutput,
        http_method = "POST",
        http_path = "/v1/clusters/{ClusterArn}/scram-secrets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDisassociateScramSecret(input, options)
    return self:invokeOperation(input, {
        name = "BatchDisassociateScramSecret",
        input_schema = types.BatchDisassociateScramSecretInput,
        output_schema = types.BatchDisassociateScramSecretOutput,
        http_method = "PATCH",
        http_path = "/v1/clusters/{ClusterArn}/scram-secrets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCluster(input, options)
    return self:invokeOperation(input, {
        name = "CreateCluster",
        input_schema = types.CreateClusterInput,
        output_schema = types.CreateClusterOutput,
        http_method = "POST",
        http_path = "/v1/clusters",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createClusterV2(input, options)
    return self:invokeOperation(input, {
        name = "CreateClusterV2",
        input_schema = types.CreateClusterV2Input,
        output_schema = types.CreateClusterV2Output,
        http_method = "POST",
        http_path = "/api/v2/clusters",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfiguration",
        input_schema = types.CreateConfigurationInput,
        output_schema = types.CreateConfigurationOutput,
        http_method = "POST",
        http_path = "/v1/configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createReplicator(input, options)
    return self:invokeOperation(input, {
        name = "CreateReplicator",
        input_schema = types.CreateReplicatorInput,
        output_schema = types.CreateReplicatorOutput,
        http_method = "POST",
        http_path = "/replication/v1/replicators",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTopic(input, options)
    return self:invokeOperation(input, {
        name = "CreateTopic",
        input_schema = types.CreateTopicInput,
        output_schema = types.CreateTopicOutput,
        http_method = "POST",
        http_path = "/v1/clusters/{ClusterArn}/topics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVpcConnection(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpcConnection",
        input_schema = types.CreateVpcConnectionInput,
        output_schema = types.CreateVpcConnectionOutput,
        http_method = "POST",
        http_path = "/v1/vpc-connection",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCluster(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCluster",
        input_schema = types.DeleteClusterInput,
        output_schema = types.DeleteClusterOutput,
        http_method = "DELETE",
        http_path = "/v1/clusters/{ClusterArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteClusterPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteClusterPolicy",
        input_schema = types.DeleteClusterPolicyInput,
        output_schema = types.DeleteClusterPolicyOutput,
        http_method = "DELETE",
        http_path = "/v1/clusters/{ClusterArn}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfiguration",
        input_schema = types.DeleteConfigurationInput,
        output_schema = types.DeleteConfigurationOutput,
        http_method = "DELETE",
        http_path = "/v1/configurations/{Arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteReplicator(input, options)
    return self:invokeOperation(input, {
        name = "DeleteReplicator",
        input_schema = types.DeleteReplicatorInput,
        output_schema = types.DeleteReplicatorOutput,
        http_method = "DELETE",
        http_path = "/replication/v1/replicators/{ReplicatorArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTopic(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTopic",
        input_schema = types.DeleteTopicInput,
        output_schema = types.DeleteTopicOutput,
        http_method = "DELETE",
        http_path = "/v1/clusters/{ClusterArn}/topics/{TopicName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVpcConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVpcConnection",
        input_schema = types.DeleteVpcConnectionInput,
        output_schema = types.DeleteVpcConnectionOutput,
        http_method = "DELETE",
        http_path = "/v1/vpc-connection/{Arn}",
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
        http_method = "GET",
        http_path = "/v1/clusters/{ClusterArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeClusterOperation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeClusterOperation",
        input_schema = types.DescribeClusterOperationInput,
        output_schema = types.DescribeClusterOperationOutput,
        http_method = "GET",
        http_path = "/v1/operations/{ClusterOperationArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeClusterOperationV2(input, options)
    return self:invokeOperation(input, {
        name = "DescribeClusterOperationV2",
        input_schema = types.DescribeClusterOperationV2Input,
        output_schema = types.DescribeClusterOperationV2Output,
        http_method = "GET",
        http_path = "/api/v2/operations/{ClusterOperationArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeClusterV2(input, options)
    return self:invokeOperation(input, {
        name = "DescribeClusterV2",
        input_schema = types.DescribeClusterV2Input,
        output_schema = types.DescribeClusterV2Output,
        http_method = "GET",
        http_path = "/api/v2/clusters/{ClusterArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConfiguration",
        input_schema = types.DescribeConfigurationInput,
        output_schema = types.DescribeConfigurationOutput,
        http_method = "GET",
        http_path = "/v1/configurations/{Arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConfigurationRevision(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConfigurationRevision",
        input_schema = types.DescribeConfigurationRevisionInput,
        output_schema = types.DescribeConfigurationRevisionOutput,
        http_method = "GET",
        http_path = "/v1/configurations/{Arn}/revisions/{Revision}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReplicator(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReplicator",
        input_schema = types.DescribeReplicatorInput,
        output_schema = types.DescribeReplicatorOutput,
        http_method = "GET",
        http_path = "/replication/v1/replicators/{ReplicatorArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTopic(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTopic",
        input_schema = types.DescribeTopicInput,
        output_schema = types.DescribeTopicOutput,
        http_method = "GET",
        http_path = "/v1/clusters/{ClusterArn}/topics/{TopicName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTopicPartitions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTopicPartitions",
        input_schema = types.DescribeTopicPartitionsInput,
        output_schema = types.DescribeTopicPartitionsOutput,
        http_method = "GET",
        http_path = "/v1/clusters/{ClusterArn}/topics/{TopicName}/partitions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVpcConnection(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVpcConnection",
        input_schema = types.DescribeVpcConnectionInput,
        output_schema = types.DescribeVpcConnectionOutput,
        http_method = "GET",
        http_path = "/v1/vpc-connection/{Arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBootstrapBrokers(input, options)
    return self:invokeOperation(input, {
        name = "GetBootstrapBrokers",
        input_schema = types.GetBootstrapBrokersInput,
        output_schema = types.GetBootstrapBrokersOutput,
        http_method = "GET",
        http_path = "/v1/clusters/{ClusterArn}/bootstrap-brokers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getClusterPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetClusterPolicy",
        input_schema = types.GetClusterPolicyInput,
        output_schema = types.GetClusterPolicyOutput,
        http_method = "GET",
        http_path = "/v1/clusters/{ClusterArn}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCompatibleKafkaVersions(input, options)
    return self:invokeOperation(input, {
        name = "GetCompatibleKafkaVersions",
        input_schema = types.GetCompatibleKafkaVersionsInput,
        output_schema = types.GetCompatibleKafkaVersionsOutput,
        http_method = "GET",
        http_path = "/v1/compatible-kafka-versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listClientVpcConnections(input, options)
    return self:invokeOperation(input, {
        name = "ListClientVpcConnections",
        input_schema = types.ListClientVpcConnectionsInput,
        output_schema = types.ListClientVpcConnectionsOutput,
        http_method = "GET",
        http_path = "/v1/clusters/{ClusterArn}/client-vpc-connections",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listClusterOperations(input, options)
    return self:invokeOperation(input, {
        name = "ListClusterOperations",
        input_schema = types.ListClusterOperationsInput,
        output_schema = types.ListClusterOperationsOutput,
        http_method = "GET",
        http_path = "/v1/clusters/{ClusterArn}/operations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listClusterOperationsV2(input, options)
    return self:invokeOperation(input, {
        name = "ListClusterOperationsV2",
        input_schema = types.ListClusterOperationsV2Input,
        output_schema = types.ListClusterOperationsV2Output,
        http_method = "GET",
        http_path = "/api/v2/clusters/{ClusterArn}/operations",
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
        http_method = "GET",
        http_path = "/v1/clusters",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listClustersV2(input, options)
    return self:invokeOperation(input, {
        name = "ListClustersV2",
        input_schema = types.ListClustersV2Input,
        output_schema = types.ListClustersV2Output,
        http_method = "GET",
        http_path = "/api/v2/clusters",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConfigurationRevisions(input, options)
    return self:invokeOperation(input, {
        name = "ListConfigurationRevisions",
        input_schema = types.ListConfigurationRevisionsInput,
        output_schema = types.ListConfigurationRevisionsOutput,
        http_method = "GET",
        http_path = "/v1/configurations/{Arn}/revisions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListConfigurations",
        input_schema = types.ListConfigurationsInput,
        output_schema = types.ListConfigurationsOutput,
        http_method = "GET",
        http_path = "/v1/configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listKafkaVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListKafkaVersions",
        input_schema = types.ListKafkaVersionsInput,
        output_schema = types.ListKafkaVersionsOutput,
        http_method = "GET",
        http_path = "/v1/kafka-versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNodes(input, options)
    return self:invokeOperation(input, {
        name = "ListNodes",
        input_schema = types.ListNodesInput,
        output_schema = types.ListNodesOutput,
        http_method = "GET",
        http_path = "/v1/clusters/{ClusterArn}/nodes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listReplicators(input, options)
    return self:invokeOperation(input, {
        name = "ListReplicators",
        input_schema = types.ListReplicatorsInput,
        output_schema = types.ListReplicatorsOutput,
        http_method = "GET",
        http_path = "/replication/v1/replicators",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listScramSecrets(input, options)
    return self:invokeOperation(input, {
        name = "ListScramSecrets",
        input_schema = types.ListScramSecretsInput,
        output_schema = types.ListScramSecretsOutput,
        http_method = "GET",
        http_path = "/v1/clusters/{ClusterArn}/scram-secrets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/v1/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTopics(input, options)
    return self:invokeOperation(input, {
        name = "ListTopics",
        input_schema = types.ListTopicsInput,
        output_schema = types.ListTopicsOutput,
        http_method = "GET",
        http_path = "/v1/clusters/{ClusterArn}/topics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVpcConnections(input, options)
    return self:invokeOperation(input, {
        name = "ListVpcConnections",
        input_schema = types.ListVpcConnectionsInput,
        output_schema = types.ListVpcConnectionsOutput,
        http_method = "GET",
        http_path = "/v1/vpc-connections",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putClusterPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutClusterPolicy",
        input_schema = types.PutClusterPolicyInput,
        output_schema = types.PutClusterPolicyOutput,
        http_method = "PUT",
        http_path = "/v1/clusters/{ClusterArn}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rebootBroker(input, options)
    return self:invokeOperation(input, {
        name = "RebootBroker",
        input_schema = types.RebootBrokerInput,
        output_schema = types.RebootBrokerOutput,
        http_method = "PUT",
        http_path = "/v1/clusters/{ClusterArn}/reboot-broker",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectClientVpcConnection(input, options)
    return self:invokeOperation(input, {
        name = "RejectClientVpcConnection",
        input_schema = types.RejectClientVpcConnectionInput,
        output_schema = types.RejectClientVpcConnectionOutput,
        http_method = "PUT",
        http_path = "/v1/clusters/{ClusterArn}/client-vpc-connection",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/v1/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/v1/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBrokerCount(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBrokerCount",
        input_schema = types.UpdateBrokerCountInput,
        output_schema = types.UpdateBrokerCountOutput,
        http_method = "PUT",
        http_path = "/v1/clusters/{ClusterArn}/nodes/count",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBrokerStorage(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBrokerStorage",
        input_schema = types.UpdateBrokerStorageInput,
        output_schema = types.UpdateBrokerStorageOutput,
        http_method = "PUT",
        http_path = "/v1/clusters/{ClusterArn}/nodes/storage",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBrokerType(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBrokerType",
        input_schema = types.UpdateBrokerTypeInput,
        output_schema = types.UpdateBrokerTypeOutput,
        http_method = "PUT",
        http_path = "/v1/clusters/{ClusterArn}/nodes/type",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateClusterConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateClusterConfiguration",
        input_schema = types.UpdateClusterConfigurationInput,
        output_schema = types.UpdateClusterConfigurationOutput,
        http_method = "PUT",
        http_path = "/v1/clusters/{ClusterArn}/configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateClusterKafkaVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdateClusterKafkaVersion",
        input_schema = types.UpdateClusterKafkaVersionInput,
        output_schema = types.UpdateClusterKafkaVersionOutput,
        http_method = "PUT",
        http_path = "/v1/clusters/{ClusterArn}/version",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConfiguration",
        input_schema = types.UpdateConfigurationInput,
        output_schema = types.UpdateConfigurationOutput,
        http_method = "PUT",
        http_path = "/v1/configurations/{Arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConnectivity(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnectivity",
        input_schema = types.UpdateConnectivityInput,
        output_schema = types.UpdateConnectivityOutput,
        http_method = "PUT",
        http_path = "/v1/clusters/{ClusterArn}/connectivity",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMonitoring(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMonitoring",
        input_schema = types.UpdateMonitoringInput,
        output_schema = types.UpdateMonitoringOutput,
        http_method = "PUT",
        http_path = "/v1/clusters/{ClusterArn}/monitoring",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRebalancing(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRebalancing",
        input_schema = types.UpdateRebalancingInput,
        output_schema = types.UpdateRebalancingOutput,
        http_method = "PUT",
        http_path = "/v1/clusters/{ClusterArn}/rebalancing",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateReplicationInfo(input, options)
    return self:invokeOperation(input, {
        name = "UpdateReplicationInfo",
        input_schema = types.UpdateReplicationInfoInput,
        output_schema = types.UpdateReplicationInfoOutput,
        http_method = "PUT",
        http_path = "/replication/v1/replicators/{ReplicatorArn}/replication-info",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSecurity(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSecurity",
        input_schema = types.UpdateSecurityInput,
        output_schema = types.UpdateSecurityOutput,
        http_method = "PATCH",
        http_path = "/v1/clusters/{ClusterArn}/security",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateStorage(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStorage",
        input_schema = types.UpdateStorageInput,
        output_schema = types.UpdateStorageOutput,
        http_method = "PUT",
        http_path = "/v1/clusters/{ClusterArn}/storage",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTopic(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTopic",
        input_schema = types.UpdateTopicInput,
        output_schema = types.UpdateTopicOutput,
        http_method = "PUT",
        http_path = "/v1/clusters/{ClusterArn}/topics/{TopicName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
