local types = require("kafka.types")

local record Client
    batchAssociateScramSecret: function(Client, types.BatchAssociateScramSecretInput): types.BatchAssociateScramSecretOutput, table
    batchDisassociateScramSecret: function(Client, types.BatchDisassociateScramSecretInput): types.BatchDisassociateScramSecretOutput, table
    createCluster: function(Client, types.CreateClusterInput): types.CreateClusterOutput, table
    createClusterV2: function(Client, types.CreateClusterV2Input): types.CreateClusterV2Output, table
    createConfiguration: function(Client, types.CreateConfigurationInput): types.CreateConfigurationOutput, table
    createReplicator: function(Client, types.CreateReplicatorInput): types.CreateReplicatorOutput, table
    createTopic: function(Client, types.CreateTopicInput): types.CreateTopicOutput, table
    createVpcConnection: function(Client, types.CreateVpcConnectionInput): types.CreateVpcConnectionOutput, table
    deleteCluster: function(Client, types.DeleteClusterInput): types.DeleteClusterOutput, table
    deleteClusterPolicy: function(Client, types.DeleteClusterPolicyInput): types.DeleteClusterPolicyOutput, table
    deleteConfiguration: function(Client, types.DeleteConfigurationInput): types.DeleteConfigurationOutput, table
    deleteReplicator: function(Client, types.DeleteReplicatorInput): types.DeleteReplicatorOutput, table
    deleteTopic: function(Client, types.DeleteTopicInput): types.DeleteTopicOutput, table
    deleteVpcConnection: function(Client, types.DeleteVpcConnectionInput): types.DeleteVpcConnectionOutput, table
    describeCluster: function(Client, types.DescribeClusterInput): types.DescribeClusterOutput, table
    describeClusterOperation: function(Client, types.DescribeClusterOperationInput): types.DescribeClusterOperationOutput, table
    describeClusterOperationV2: function(Client, types.DescribeClusterOperationV2Input): types.DescribeClusterOperationV2Output, table
    describeClusterV2: function(Client, types.DescribeClusterV2Input): types.DescribeClusterV2Output, table
    describeConfiguration: function(Client, types.DescribeConfigurationInput): types.DescribeConfigurationOutput, table
    describeConfigurationRevision: function(Client, types.DescribeConfigurationRevisionInput): types.DescribeConfigurationRevisionOutput, table
    describeReplicator: function(Client, types.DescribeReplicatorInput): types.DescribeReplicatorOutput, table
    describeTopic: function(Client, types.DescribeTopicInput): types.DescribeTopicOutput, table
    describeTopicPartitions: function(Client, types.DescribeTopicPartitionsInput): types.DescribeTopicPartitionsOutput, table
    describeVpcConnection: function(Client, types.DescribeVpcConnectionInput): types.DescribeVpcConnectionOutput, table
    getBootstrapBrokers: function(Client, types.GetBootstrapBrokersInput): types.GetBootstrapBrokersOutput, table
    getClusterPolicy: function(Client, types.GetClusterPolicyInput): types.GetClusterPolicyOutput, table
    getCompatibleKafkaVersions: function(Client, types.GetCompatibleKafkaVersionsInput): types.GetCompatibleKafkaVersionsOutput, table
    listClientVpcConnections: function(Client, types.ListClientVpcConnectionsInput): types.ListClientVpcConnectionsOutput, table
    listClusterOperations: function(Client, types.ListClusterOperationsInput): types.ListClusterOperationsOutput, table
    listClusterOperationsV2: function(Client, types.ListClusterOperationsV2Input): types.ListClusterOperationsV2Output, table
    listClusters: function(Client, types.ListClustersInput): types.ListClustersOutput, table
    listClustersV2: function(Client, types.ListClustersV2Input): types.ListClustersV2Output, table
    listConfigurationRevisions: function(Client, types.ListConfigurationRevisionsInput): types.ListConfigurationRevisionsOutput, table
    listConfigurations: function(Client, types.ListConfigurationsInput): types.ListConfigurationsOutput, table
    listKafkaVersions: function(Client, types.ListKafkaVersionsInput): types.ListKafkaVersionsOutput, table
    listNodes: function(Client, types.ListNodesInput): types.ListNodesOutput, table
    listReplicators: function(Client, types.ListReplicatorsInput): types.ListReplicatorsOutput, table
    listScramSecrets: function(Client, types.ListScramSecretsInput): types.ListScramSecretsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listTopics: function(Client, types.ListTopicsInput): types.ListTopicsOutput, table
    listVpcConnections: function(Client, types.ListVpcConnectionsInput): types.ListVpcConnectionsOutput, table
    putClusterPolicy: function(Client, types.PutClusterPolicyInput): types.PutClusterPolicyOutput, table
    rebootBroker: function(Client, types.RebootBrokerInput): types.RebootBrokerOutput, table
    rejectClientVpcConnection: function(Client, types.RejectClientVpcConnectionInput): types.RejectClientVpcConnectionOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateBrokerCount: function(Client, types.UpdateBrokerCountInput): types.UpdateBrokerCountOutput, table
    updateBrokerStorage: function(Client, types.UpdateBrokerStorageInput): types.UpdateBrokerStorageOutput, table
    updateBrokerType: function(Client, types.UpdateBrokerTypeInput): types.UpdateBrokerTypeOutput, table
    updateClusterConfiguration: function(Client, types.UpdateClusterConfigurationInput): types.UpdateClusterConfigurationOutput, table
    updateClusterKafkaVersion: function(Client, types.UpdateClusterKafkaVersionInput): types.UpdateClusterKafkaVersionOutput, table
    updateConfiguration: function(Client, types.UpdateConfigurationInput): types.UpdateConfigurationOutput, table
    updateConnectivity: function(Client, types.UpdateConnectivityInput): types.UpdateConnectivityOutput, table
    updateMonitoring: function(Client, types.UpdateMonitoringInput): types.UpdateMonitoringOutput, table
    updateRebalancing: function(Client, types.UpdateRebalancingInput): types.UpdateRebalancingOutput, table
    updateReplicationInfo: function(Client, types.UpdateReplicationInfoInput): types.UpdateReplicationInfoOutput, table
    updateSecurity: function(Client, types.UpdateSecurityInput): types.UpdateSecurityOutput, table
    updateStorage: function(Client, types.UpdateStorageInput): types.UpdateStorageOutput, table
    updateTopic: function(Client, types.UpdateTopicInput): types.UpdateTopicOutput, table
end

local record M
    new: function(table): Client
end

return M
