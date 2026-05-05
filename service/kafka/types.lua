local M = {}

M.VpcConnectionState = {
    CREATING = "CREATING",
    AVAILABLE = "AVAILABLE",
    INACTIVE = "INACTIVE",
    DEACTIVATING = "DEACTIVATING",
    DELETING = "DELETING",
    FAILED = "FAILED",
    REJECTED = "REJECTED",
    REJECTING = "REJECTING",
}

M.ClusterType = {
    PROVISIONED = "PROVISIONED",
    SERVERLESS = "SERVERLESS",
}

M.BrokerAZDistribution = {
    DEFAULT = "DEFAULT",
}

M.NetworkType = {
    IPV4 = "IPV4",
    DUAL = "DUAL",
}

M.CustomerActionStatus = {
    CRITICAL_ACTION_REQUIRED = "CRITICAL_ACTION_REQUIRED",
    ACTION_RECOMMENDED = "ACTION_RECOMMENDED",
    NONE = "NONE",
}

M.ClientBroker = {
    TLS = "TLS",
    TLS_PLAINTEXT = "TLS_PLAINTEXT",
    PLAINTEXT = "PLAINTEXT",
}

M.EnhancedMonitoring = {
    DEFAULT = "DEFAULT",
    PER_BROKER = "PER_BROKER",
    PER_TOPIC_PER_BROKER = "PER_TOPIC_PER_BROKER",
    PER_TOPIC_PER_PARTITION = "PER_TOPIC_PER_PARTITION",
}

M.RebalancingStatus = {
    PAUSED = "PAUSED",
    ACTIVE = "ACTIVE",
}

M.StorageMode = {
    LOCAL = "LOCAL",
    TIERED = "TIERED",
}

M.ClusterState = {
    ACTIVE = "ACTIVE",
    CREATING = "CREATING",
    DELETING = "DELETING",
    FAILED = "FAILED",
    HEALING = "HEALING",
    MAINTENANCE = "MAINTENANCE",
    REBOOTING_BROKER = "REBOOTING_BROKER",
    UPDATING = "UPDATING",
}

M.UserIdentityType = {
    AWSACCOUNT = "AWSACCOUNT",
    AWSSERVICE = "AWSSERVICE",
}

M.ConfigurationState = {
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    DELETE_FAILED = "DELETE_FAILED",
}

M.KafkaClusterSaslScramMechanism = {
    SHA256 = "SHA256",
    SHA512 = "SHA512",
}

M.KafkaClusterEncryptionInTransitType = {
    TLS = "TLS",
}

M.KafkaVersionStatus = {
    ACTIVE = "ACTIVE",
    DEPRECATED = "DEPRECATED",
}

M.NodeType = {
    BROKER = "BROKER",
}

M.ConsumerGroupOffsetSyncMode = {
    LEGACY = "LEGACY",
    ENHANCED = "ENHANCED",
}

M.TargetCompressionType = {
    NONE = "NONE",
    GZIP = "GZIP",
    SNAPPY = "SNAPPY",
    LZ4 = "LZ4",
    ZSTD = "ZSTD",
}

M.ReplicationStartingPositionType = {
    LATEST = "LATEST",
    EARLIEST = "EARLIEST",
}

M.ReplicationTopicNameConfigurationType = {
    PREFIXED_WITH_SOURCE_CLUSTER_ALIAS = "PREFIXED_WITH_SOURCE_CLUSTER_ALIAS",
    IDENTICAL = "IDENTICAL",
}

M.ReplicatorState = {
    RUNNING = "RUNNING",
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.TopicState = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    ACTIVE = "ACTIVE",
}

return M
