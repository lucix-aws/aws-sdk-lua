local record BatchAssociateScramSecretInput
    ClusterArn: string
    SecretArnList: {string}
end

local record BatchAssociateScramSecretOutput
    ClusterArn: string
    UnprocessedScramSecrets: {UnprocessedScramSecret}
end

local record BatchDisassociateScramSecretInput
    ClusterArn: string
    SecretArnList: {string}
end

local record BatchDisassociateScramSecretOutput
    ClusterArn: string
    UnprocessedScramSecrets: {UnprocessedScramSecret}
end

local record CreateClusterInput
    BrokerNodeGroupInfo: BrokerNodeGroupInfo
    Rebalancing: Rebalancing
    ClientAuthentication: ClientAuthentication
    ClusterName: string
    ConfigurationInfo: ConfigurationInfo
    EncryptionInfo: EncryptionInfo
    EnhancedMonitoring: string
    OpenMonitoring: OpenMonitoringInfo
    KafkaVersion: string
    LoggingInfo: LoggingInfo
    NumberOfBrokerNodes: number
    Tags: {string : string}
    StorageMode: string
end

local record CreateClusterOutput
    ClusterArn: string
    ClusterName: string
    State: string
end

local record CreateClusterV2Input
    ClusterName: string
    Tags: {string : string}
    Provisioned: ProvisionedRequest
    Serverless: ServerlessRequest
end

local record CreateClusterV2Output
    ClusterArn: string
    ClusterName: string
    State: string
    ClusterType: string
end

local record CreateConfigurationInput
    Description: string
    KafkaVersions: {string}
    Name: string
    ServerProperties: string
end

local record CreateConfigurationOutput
    Arn: string
    CreationTime: number
    LatestRevision: ConfigurationRevision
    Name: string
    State: string
end

local record CreateReplicatorInput
    Description: string
    KafkaClusters: {KafkaCluster}
    ReplicationInfoList: {ReplicationInfo}
    ReplicatorName: string
    ServiceExecutionRoleArn: string
    Tags: {string : string}
    LogDelivery: LogDelivery
end

local record CreateReplicatorOutput
    ReplicatorArn: string
    ReplicatorName: string
    ReplicatorState: string
end

local record CreateTopicInput
    ClusterArn: string
    TopicName: string
    PartitionCount: number
    ReplicationFactor: number
    Configs: string
end

local record CreateTopicOutput
    TopicArn: string
    TopicName: string
    Status: string
end

local record CreateVpcConnectionInput
    TargetClusterArn: string
    Authentication: string
    VpcId: string
    ClientSubnets: {string}
    SecurityGroups: {string}
    Tags: {string : string}
end

local record CreateVpcConnectionOutput
    VpcConnectionArn: string
    State: string
    Authentication: string
    VpcId: string
    ClientSubnets: {string}
    SecurityGroups: {string}
    CreationTime: number
    Tags: {string : string}
end

local record DeleteClusterInput
    ClusterArn: string
    CurrentVersion: string
end

local record DeleteClusterOutput
    ClusterArn: string
    State: string
end

local record DeleteClusterPolicyInput
    ClusterArn: string
end

local record DeleteClusterPolicyOutput
end

local record DeleteConfigurationInput
    Arn: string
end

local record DeleteConfigurationOutput
    Arn: string
    State: string
end

local record DeleteReplicatorInput
    CurrentVersion: string
    ReplicatorArn: string
end

local record DeleteReplicatorOutput
    ReplicatorArn: string
    ReplicatorState: string
end

local record DeleteTopicInput
    ClusterArn: string
    TopicName: string
end

local record DeleteTopicOutput
    TopicArn: string
    TopicName: string
    Status: string
end

local record DeleteVpcConnectionInput
    Arn: string
end

local record DeleteVpcConnectionOutput
    VpcConnectionArn: string
    State: string
end

local record DescribeClusterInput
    ClusterArn: string
end

local record DescribeClusterOutput
    ClusterInfo: ClusterInfo
end

local record DescribeClusterOperationInput
    ClusterOperationArn: string
end

local record DescribeClusterOperationOutput
    ClusterOperationInfo: ClusterOperationInfo
end

local record DescribeClusterOperationV2Input
    ClusterOperationArn: string
end

local record DescribeClusterOperationV2Output
    ClusterOperationInfo: ClusterOperationV2
end

local record DescribeClusterV2Input
    ClusterArn: string
end

local record DescribeClusterV2Output
    ClusterInfo: Cluster
end

local record DescribeConfigurationInput
    Arn: string
end

local record DescribeConfigurationOutput
    Arn: string
    CreationTime: number
    Description: string
    KafkaVersions: {string}
    LatestRevision: ConfigurationRevision
    Name: string
    State: string
end

local record DescribeConfigurationRevisionInput
    Arn: string
    Revision: number
end

local record DescribeConfigurationRevisionOutput
    Arn: string
    CreationTime: number
    Description: string
    Revision: number
    ServerProperties: string
end

local record DescribeReplicatorInput
    ReplicatorArn: string
end

local record DescribeReplicatorOutput
    CreationTime: number
    CurrentVersion: string
    IsReplicatorReference: boolean
    KafkaClusters: {KafkaClusterDescription}
    ReplicationInfoList: {ReplicationInfoDescription}
    ReplicatorArn: string
    ReplicatorDescription: string
    ReplicatorName: string
    ReplicatorResourceArn: string
    ReplicatorState: string
    ServiceExecutionRoleArn: string
    StateInfo: ReplicationStateInfo
    Tags: {string : string}
    LogDelivery: LogDelivery
end

local record DescribeTopicInput
    ClusterArn: string
    TopicName: string
end

local record DescribeTopicOutput
    TopicArn: string
    TopicName: string
    ReplicationFactor: number
    PartitionCount: number
    Configs: string
    Status: string
end

local record DescribeTopicPartitionsInput
    ClusterArn: string
    TopicName: string
    MaxResults: number
    NextToken: string
end

local record DescribeTopicPartitionsOutput
    Partitions: {TopicPartitionInfo}
    NextToken: string
end

local record DescribeVpcConnectionInput
    Arn: string
end

local record DescribeVpcConnectionOutput
    VpcConnectionArn: string
    TargetClusterArn: string
    State: string
    Authentication: string
    VpcId: string
    Subnets: {string}
    SecurityGroups: {string}
    CreationTime: number
    Tags: {string : string}
end

local record GetBootstrapBrokersInput
    ClusterArn: string
end

local record GetBootstrapBrokersOutput
    BootstrapBrokerString: string
    BootstrapBrokerStringTls: string
    BootstrapBrokerStringSaslScram: string
    BootstrapBrokerStringSaslIam: string
    BootstrapBrokerStringPublicTls: string
    BootstrapBrokerStringPublicSaslScram: string
    BootstrapBrokerStringPublicSaslIam: string
    BootstrapBrokerStringVpcConnectivityTls: string
    BootstrapBrokerStringVpcConnectivitySaslScram: string
    BootstrapBrokerStringVpcConnectivitySaslIam: string
    BootstrapBrokerStringIpv6: string
    BootstrapBrokerStringTlsIpv6: string
    BootstrapBrokerStringSaslScramIpv6: string
    BootstrapBrokerStringSaslIamIpv6: string
end

local record GetClusterPolicyInput
    ClusterArn: string
end

local record GetClusterPolicyOutput
    CurrentVersion: string
    Policy: string
end

local record GetCompatibleKafkaVersionsInput
    ClusterArn: string
end

local record GetCompatibleKafkaVersionsOutput
    CompatibleKafkaVersions: {CompatibleKafkaVersion}
end

local record ListClientVpcConnectionsInput
    ClusterArn: string
    MaxResults: number
    NextToken: string
end

local record ListClientVpcConnectionsOutput
    ClientVpcConnections: {ClientVpcConnection}
    NextToken: string
end

local record ListClusterOperationsInput
    ClusterArn: string
    MaxResults: number
    NextToken: string
end

local record ListClusterOperationsOutput
    ClusterOperationInfoList: {ClusterOperationInfo}
    NextToken: string
end

local record ListClusterOperationsV2Input
    ClusterArn: string
    MaxResults: number
    NextToken: string
end

local record ListClusterOperationsV2Output
    ClusterOperationInfoList: {ClusterOperationV2Summary}
    NextToken: string
end

local record ListClustersInput
    ClusterNameFilter: string
    MaxResults: number
    NextToken: string
end

local record ListClustersOutput
    ClusterInfoList: {ClusterInfo}
    NextToken: string
end

local record ListClustersV2Input
    ClusterNameFilter: string
    ClusterTypeFilter: string
    MaxResults: number
    NextToken: string
end

local record ListClustersV2Output
    ClusterInfoList: {Cluster}
    NextToken: string
end

local record ListConfigurationRevisionsInput
    Arn: string
    MaxResults: number
    NextToken: string
end

local record ListConfigurationRevisionsOutput
    NextToken: string
    Revisions: {ConfigurationRevision}
end

local record ListConfigurationsInput
    MaxResults: number
    NextToken: string
end

local record ListConfigurationsOutput
    Configurations: {Configuration}
    NextToken: string
end

local record ListKafkaVersionsInput
    MaxResults: number
    NextToken: string
end

local record ListKafkaVersionsOutput
    KafkaVersions: {KafkaVersion}
    NextToken: string
end

local record ListNodesInput
    ClusterArn: string
    MaxResults: number
    NextToken: string
end

local record ListNodesOutput
    NextToken: string
    NodeInfoList: {NodeInfo}
end

local record ListReplicatorsInput
    MaxResults: number
    NextToken: string
    ReplicatorNameFilter: string
end

local record ListReplicatorsOutput
    NextToken: string
    Replicators: {ReplicatorSummary}
end

local record ListScramSecretsInput
    ClusterArn: string
    MaxResults: number
    NextToken: string
end

local record ListScramSecretsOutput
    NextToken: string
    SecretArnList: {string}
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record ListTopicsInput
    ClusterArn: string
    MaxResults: number
    NextToken: string
    TopicNameFilter: string
end

local record ListTopicsOutput
    Topics: {TopicInfo}
    NextToken: string
end

local record ListVpcConnectionsInput
    MaxResults: number
    NextToken: string
end

local record ListVpcConnectionsOutput
    VpcConnections: {VpcConnection}
    NextToken: string
end

local record PutClusterPolicyInput
    ClusterArn: string
    CurrentVersion: string
    Policy: string
end

local record PutClusterPolicyOutput
    CurrentVersion: string
end

local record RebootBrokerInput
    BrokerIds: {string}
    ClusterArn: string
end

local record RebootBrokerOutput
    ClusterArn: string
    ClusterOperationArn: string
end

local record RejectClientVpcConnectionInput
    ClusterArn: string
    VpcConnectionArn: string
end

local record RejectClientVpcConnectionOutput
end

local record TagResourceInput
    ResourceArn: string
    Tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateBrokerCountInput
    ClusterArn: string
    CurrentVersion: string
    TargetNumberOfBrokerNodes: number
end

local record UpdateBrokerCountOutput
    ClusterArn: string
    ClusterOperationArn: string
end

local record UpdateBrokerStorageInput
    ClusterArn: string
    CurrentVersion: string
    TargetBrokerEBSVolumeInfo: {BrokerEBSVolumeInfo}
end

local record UpdateBrokerStorageOutput
    ClusterArn: string
    ClusterOperationArn: string
end

local record UpdateBrokerTypeInput
    ClusterArn: string
    CurrentVersion: string
    TargetInstanceType: string
end

local record UpdateBrokerTypeOutput
    ClusterArn: string
    ClusterOperationArn: string
end

local record UpdateClusterConfigurationInput
    ClusterArn: string
    ConfigurationInfo: ConfigurationInfo
    CurrentVersion: string
end

local record UpdateClusterConfigurationOutput
    ClusterArn: string
    ClusterOperationArn: string
end

local record UpdateClusterKafkaVersionInput
    ClusterArn: string
    ConfigurationInfo: ConfigurationInfo
    CurrentVersion: string
    TargetKafkaVersion: string
end

local record UpdateClusterKafkaVersionOutput
    ClusterArn: string
    ClusterOperationArn: string
end

local record UpdateConfigurationInput
    Arn: string
    Description: string
    ServerProperties: string
end

local record UpdateConfigurationOutput
    Arn: string
    LatestRevision: ConfigurationRevision
end

local record UpdateConnectivityInput
    ClusterArn: string
    ConnectivityInfo: ConnectivityInfo
    CurrentVersion: string
    ZookeeperAccess: ZookeeperAccess
end

local record UpdateConnectivityOutput
    ClusterArn: string
    ClusterOperationArn: string
end

local record UpdateMonitoringInput
    ClusterArn: string
    CurrentVersion: string
    EnhancedMonitoring: string
    OpenMonitoring: OpenMonitoringInfo
    LoggingInfo: LoggingInfo
end

local record UpdateMonitoringOutput
    ClusterArn: string
    ClusterOperationArn: string
end

local record UpdateRebalancingInput
    ClusterArn: string
    CurrentVersion: string
    Rebalancing: Rebalancing
end

local record UpdateRebalancingOutput
    ClusterArn: string
    ClusterOperationArn: string
end

local record UpdateReplicationInfoInput
    ConsumerGroupReplication: ConsumerGroupReplicationUpdate
    CurrentVersion: string
    ReplicatorArn: string
    SourceKafkaClusterArn: string
    SourceKafkaClusterId: string
    TargetKafkaClusterArn: string
    TargetKafkaClusterId: string
    TopicReplication: TopicReplicationUpdate
    LogDelivery: LogDelivery
end

local record UpdateReplicationInfoOutput
    ReplicatorArn: string
    ReplicatorState: string
end

local record UpdateSecurityInput
    ClientAuthentication: ClientAuthentication
    ClusterArn: string
    CurrentVersion: string
    EncryptionInfo: EncryptionInfo
end

local record UpdateSecurityOutput
    ClusterArn: string
    ClusterOperationArn: string
end

local record UpdateStorageInput
    ClusterArn: string
    CurrentVersion: string
    ProvisionedThroughput: ProvisionedThroughput
    StorageMode: string
    VolumeSizeGB: number
end

local record UpdateStorageOutput
    ClusterArn: string
    ClusterOperationArn: string
end

local record UpdateTopicInput
    ClusterArn: string
    TopicName: string
    Configs: string
    PartitionCount: number
end

local record UpdateTopicOutput
    TopicArn: string
    TopicName: string
    Status: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record TooManyRequestsException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record TooManyRequestsException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ConflictException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record TooManyRequestsException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ConflictException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record TooManyRequestsException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ConflictException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record TooManyRequestsException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ConflictException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record TooManyRequestsException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ClusterConnectivityException
    InvalidParameter: string
    Message: string
end

local record ConflictException
    InvalidParameter: string
    Message: string
end

local record ControllerMovedException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record GroupSubscribedToTopicException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record KafkaRequestException
    InvalidParameter: string
    Message: string
end

local record KafkaTimeoutException
    InvalidParameter: string
    Message: string
end

local record NotControllerException
    InvalidParameter: string
    Message: string
end

local record ReassignmentInProgressException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record TooManyRequestsException
    InvalidParameter: string
    Message: string
end

local record TopicExistsException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record UnknownTopicOrPartitionException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record TooManyRequestsException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record TooManyRequestsException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ClusterConnectivityException
    InvalidParameter: string
    Message: string
end

local record ControllerMovedException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record GroupSubscribedToTopicException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record KafkaRequestException
    InvalidParameter: string
    Message: string
end

local record KafkaTimeoutException
    InvalidParameter: string
    Message: string
end

local record NotControllerException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record ReassignmentInProgressException
    InvalidParameter: string
    Message: string
end

local record UnknownTopicOrPartitionException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record TooManyRequestsException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record TooManyRequestsException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ConflictException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record TooManyRequestsException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record TooManyRequestsException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record TooManyRequestsException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record TooManyRequestsException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record TooManyRequestsException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record TooManyRequestsException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record TooManyRequestsException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record TooManyRequestsException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record TooManyRequestsException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record TooManyRequestsException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record TooManyRequestsException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record BadRequestException
    InvalidParameter: string
    Message: string
end

local record ClusterConnectivityException
    InvalidParameter: string
    Message: string
end

local record ControllerMovedException
    InvalidParameter: string
    Message: string
end

local record ForbiddenException
    InvalidParameter: string
    Message: string
end

local record GroupSubscribedToTopicException
    InvalidParameter: string
    Message: string
end

local record InternalServerErrorException
    InvalidParameter: string
    Message: string
end

local record KafkaRequestException
    InvalidParameter: string
    Message: string
end

local record KafkaTimeoutException
    InvalidParameter: string
    Message: string
end

local record NotControllerException
    InvalidParameter: string
    Message: string
end

local record NotFoundException
    InvalidParameter: string
    Message: string
end

local record ReassignmentInProgressException
    InvalidParameter: string
    Message: string
end

local record ServiceUnavailableException
    InvalidParameter: string
    Message: string
end

local record UnauthorizedException
    InvalidParameter: string
    Message: string
end

local record UnknownTopicOrPartitionException
    InvalidParameter: string
    Message: string
end

local type ClusterState = "ACTIVE" | "CREATING" | "DELETING" | "FAILED" | "HEALING" | "MAINTENANCE" | "REBOOTING_BROKER" | "UPDATING"

local type ClusterType = "PROVISIONED" | "SERVERLESS"

local type ConfigurationState = "ACTIVE" | "DELETING" | "DELETE_FAILED"

local type EnhancedMonitoring = "DEFAULT" | "PER_BROKER" | "PER_TOPIC_PER_BROKER" | "PER_TOPIC_PER_PARTITION"

local type ReplicatorState = "RUNNING" | "CREATING" | "UPDATING" | "DELETING" | "FAILED"

local type StorageMode = "LOCAL" | "TIERED"

local type TopicState = "CREATING" | "UPDATING" | "DELETING" | "ACTIVE"

local type VpcConnectionState = "CREATING" | "AVAILABLE" | "INACTIVE" | "DEACTIVATING" | "DELETING" | "FAILED" | "REJECTED" | "REJECTING"

local record M
    BatchAssociateScramSecretInput: BatchAssociateScramSecretInput
    BatchAssociateScramSecretOutput: BatchAssociateScramSecretOutput
    BatchDisassociateScramSecretInput: BatchDisassociateScramSecretInput
    BatchDisassociateScramSecretOutput: BatchDisassociateScramSecretOutput
    CreateClusterInput: CreateClusterInput
    CreateClusterOutput: CreateClusterOutput
    CreateClusterV2Input: CreateClusterV2Input
    CreateClusterV2Output: CreateClusterV2Output
    CreateConfigurationInput: CreateConfigurationInput
    CreateConfigurationOutput: CreateConfigurationOutput
    CreateReplicatorInput: CreateReplicatorInput
    CreateReplicatorOutput: CreateReplicatorOutput
    CreateTopicInput: CreateTopicInput
    CreateTopicOutput: CreateTopicOutput
    CreateVpcConnectionInput: CreateVpcConnectionInput
    CreateVpcConnectionOutput: CreateVpcConnectionOutput
    DeleteClusterInput: DeleteClusterInput
    DeleteClusterOutput: DeleteClusterOutput
    DeleteClusterPolicyInput: DeleteClusterPolicyInput
    DeleteClusterPolicyOutput: DeleteClusterPolicyOutput
    DeleteConfigurationInput: DeleteConfigurationInput
    DeleteConfigurationOutput: DeleteConfigurationOutput
    DeleteReplicatorInput: DeleteReplicatorInput
    DeleteReplicatorOutput: DeleteReplicatorOutput
    DeleteTopicInput: DeleteTopicInput
    DeleteTopicOutput: DeleteTopicOutput
    DeleteVpcConnectionInput: DeleteVpcConnectionInput
    DeleteVpcConnectionOutput: DeleteVpcConnectionOutput
    DescribeClusterInput: DescribeClusterInput
    DescribeClusterOutput: DescribeClusterOutput
    DescribeClusterOperationInput: DescribeClusterOperationInput
    DescribeClusterOperationOutput: DescribeClusterOperationOutput
    DescribeClusterOperationV2Input: DescribeClusterOperationV2Input
    DescribeClusterOperationV2Output: DescribeClusterOperationV2Output
    DescribeClusterV2Input: DescribeClusterV2Input
    DescribeClusterV2Output: DescribeClusterV2Output
    DescribeConfigurationInput: DescribeConfigurationInput
    DescribeConfigurationOutput: DescribeConfigurationOutput
    DescribeConfigurationRevisionInput: DescribeConfigurationRevisionInput
    DescribeConfigurationRevisionOutput: DescribeConfigurationRevisionOutput
    DescribeReplicatorInput: DescribeReplicatorInput
    DescribeReplicatorOutput: DescribeReplicatorOutput
    DescribeTopicInput: DescribeTopicInput
    DescribeTopicOutput: DescribeTopicOutput
    DescribeTopicPartitionsInput: DescribeTopicPartitionsInput
    DescribeTopicPartitionsOutput: DescribeTopicPartitionsOutput
    DescribeVpcConnectionInput: DescribeVpcConnectionInput
    DescribeVpcConnectionOutput: DescribeVpcConnectionOutput
    GetBootstrapBrokersInput: GetBootstrapBrokersInput
    GetBootstrapBrokersOutput: GetBootstrapBrokersOutput
    GetClusterPolicyInput: GetClusterPolicyInput
    GetClusterPolicyOutput: GetClusterPolicyOutput
    GetCompatibleKafkaVersionsInput: GetCompatibleKafkaVersionsInput
    GetCompatibleKafkaVersionsOutput: GetCompatibleKafkaVersionsOutput
    ListClientVpcConnectionsInput: ListClientVpcConnectionsInput
    ListClientVpcConnectionsOutput: ListClientVpcConnectionsOutput
    ListClusterOperationsInput: ListClusterOperationsInput
    ListClusterOperationsOutput: ListClusterOperationsOutput
    ListClusterOperationsV2Input: ListClusterOperationsV2Input
    ListClusterOperationsV2Output: ListClusterOperationsV2Output
    ListClustersInput: ListClustersInput
    ListClustersOutput: ListClustersOutput
    ListClustersV2Input: ListClustersV2Input
    ListClustersV2Output: ListClustersV2Output
    ListConfigurationRevisionsInput: ListConfigurationRevisionsInput
    ListConfigurationRevisionsOutput: ListConfigurationRevisionsOutput
    ListConfigurationsInput: ListConfigurationsInput
    ListConfigurationsOutput: ListConfigurationsOutput
    ListKafkaVersionsInput: ListKafkaVersionsInput
    ListKafkaVersionsOutput: ListKafkaVersionsOutput
    ListNodesInput: ListNodesInput
    ListNodesOutput: ListNodesOutput
    ListReplicatorsInput: ListReplicatorsInput
    ListReplicatorsOutput: ListReplicatorsOutput
    ListScramSecretsInput: ListScramSecretsInput
    ListScramSecretsOutput: ListScramSecretsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTopicsInput: ListTopicsInput
    ListTopicsOutput: ListTopicsOutput
    ListVpcConnectionsInput: ListVpcConnectionsInput
    ListVpcConnectionsOutput: ListVpcConnectionsOutput
    PutClusterPolicyInput: PutClusterPolicyInput
    PutClusterPolicyOutput: PutClusterPolicyOutput
    RebootBrokerInput: RebootBrokerInput
    RebootBrokerOutput: RebootBrokerOutput
    RejectClientVpcConnectionInput: RejectClientVpcConnectionInput
    RejectClientVpcConnectionOutput: RejectClientVpcConnectionOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateBrokerCountInput: UpdateBrokerCountInput
    UpdateBrokerCountOutput: UpdateBrokerCountOutput
    UpdateBrokerStorageInput: UpdateBrokerStorageInput
    UpdateBrokerStorageOutput: UpdateBrokerStorageOutput
    UpdateBrokerTypeInput: UpdateBrokerTypeInput
    UpdateBrokerTypeOutput: UpdateBrokerTypeOutput
    UpdateClusterConfigurationInput: UpdateClusterConfigurationInput
    UpdateClusterConfigurationOutput: UpdateClusterConfigurationOutput
    UpdateClusterKafkaVersionInput: UpdateClusterKafkaVersionInput
    UpdateClusterKafkaVersionOutput: UpdateClusterKafkaVersionOutput
    UpdateConfigurationInput: UpdateConfigurationInput
    UpdateConfigurationOutput: UpdateConfigurationOutput
    UpdateConnectivityInput: UpdateConnectivityInput
    UpdateConnectivityOutput: UpdateConnectivityOutput
    UpdateMonitoringInput: UpdateMonitoringInput
    UpdateMonitoringOutput: UpdateMonitoringOutput
    UpdateRebalancingInput: UpdateRebalancingInput
    UpdateRebalancingOutput: UpdateRebalancingOutput
    UpdateReplicationInfoInput: UpdateReplicationInfoInput
    UpdateReplicationInfoOutput: UpdateReplicationInfoOutput
    UpdateSecurityInput: UpdateSecurityInput
    UpdateSecurityOutput: UpdateSecurityOutput
    UpdateStorageInput: UpdateStorageInput
    UpdateStorageOutput: UpdateStorageOutput
    UpdateTopicInput: UpdateTopicInput
    UpdateTopicOutput: UpdateTopicOutput
end

return M
