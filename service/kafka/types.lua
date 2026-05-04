local M = {}

M.ProvisionedThroughput = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                json_name = "enabled",
            },
        },
        VolumeThroughput = {
            type = "number",
            traits = {
                json_name = "volumeThroughput",
            },
        },
    },
}

M.BrokerEBSVolumeInfo = {
    type = "structure",
    members = {
        KafkaBrokerNodeId = {
            type = "string",
            traits = {
                json_name = "kafkaBrokerNodeId",
                required = true,
            },
        },
        ProvisionedThroughput = {
            type = "structure",
            traits = {
                json_name = "provisionedThroughput",
            },
        },
        VolumeSizeGB = {
            type = "number",
            traits = {
                json_name = "volumeSizeGB",
            },
        },
    },
}

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

M.ClientVpcConnection = {
    type = "structure",
    members = {
        Authentication = {
            type = "string",
            traits = {
                json_name = "authentication",
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                json_name = "creationTime",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
        VpcConnectionArn = {
            type = "string",
            traits = {
                json_name = "vpcConnectionArn",
                required = true,
            },
        },
        Owner = {
            type = "string",
            traits = {
                json_name = "owner",
            },
        },
    },
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

M.PublicAccess = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
    },
}

M.VpcConnectivityIam = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                json_name = "enabled",
            },
        },
    },
}

M.VpcConnectivityScram = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                json_name = "enabled",
            },
        },
    },
}

M.VpcConnectivitySasl = {
    type = "structure",
    members = {
        Scram = {
            type = "structure",
            traits = {
                json_name = "scram",
            },
        },
        Iam = {
            type = "structure",
            traits = {
                json_name = "iam",
            },
        },
    },
}

M.VpcConnectivityTls = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                json_name = "enabled",
            },
        },
    },
}

M.VpcConnectivityClientAuthentication = {
    type = "structure",
    members = {
        Sasl = {
            type = "structure",
            traits = {
                json_name = "sasl",
            },
        },
        Tls = {
            type = "structure",
            traits = {
                json_name = "tls",
            },
        },
    },
}

M.VpcConnectivity = {
    type = "structure",
    members = {
        ClientAuthentication = {
            type = "structure",
            traits = {
                json_name = "clientAuthentication",
            },
        },
    },
}

M.ConnectivityInfo = {
    type = "structure",
    members = {
        PublicAccess = {
            type = "structure",
            traits = {
                json_name = "publicAccess",
            },
        },
        VpcConnectivity = {
            type = "structure",
            traits = {
                json_name = "vpcConnectivity",
            },
        },
        NetworkType = {
            type = "string",
            traits = {
                json_name = "networkType",
            },
        },
    },
}

M.EBSStorageInfo = {
    type = "structure",
    members = {
        ProvisionedThroughput = {
            type = "structure",
            traits = {
                json_name = "provisionedThroughput",
            },
        },
        VolumeSize = {
            type = "number",
            traits = {
                json_name = "volumeSize",
            },
        },
    },
}

M.StorageInfo = {
    type = "structure",
    members = {
        EbsStorageInfo = {
            type = "structure",
            traits = {
                json_name = "ebsStorageInfo",
            },
        },
    },
}

M.BrokerNodeGroupInfo = {
    type = "structure",
    members = {
        BrokerAZDistribution = {
            type = "string",
            traits = {
                json_name = "brokerAZDistribution",
            },
        },
        ClientSubnets = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "clientSubnets",
                required = true,
            },
        },
        InstanceType = {
            type = "string",
            traits = {
                json_name = "instanceType",
                required = true,
            },
        },
        SecurityGroups = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "securityGroups",
            },
        },
        StorageInfo = {
            type = "structure",
            traits = {
                json_name = "storageInfo",
            },
        },
        ConnectivityInfo = {
            type = "structure",
            traits = {
                json_name = "connectivityInfo",
            },
        },
        ZoneIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "zoneIds",
            },
        },
    },
}

M.Iam = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                json_name = "enabled",
            },
        },
    },
}

M.Scram = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                json_name = "enabled",
            },
        },
    },
}

M.Sasl = {
    type = "structure",
    members = {
        Scram = {
            type = "structure",
            traits = {
                json_name = "scram",
            },
        },
        Iam = {
            type = "structure",
            traits = {
                json_name = "iam",
            },
        },
    },
}

M.Tls = {
    type = "structure",
    members = {
        CertificateAuthorityArnList = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "certificateAuthorityArnList",
            },
        },
        Enabled = {
            type = "boolean",
            traits = {
                json_name = "enabled",
            },
        },
    },
}

M.Unauthenticated = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                json_name = "enabled",
            },
        },
    },
}

M.ClientAuthentication = {
    type = "structure",
    members = {
        Sasl = {
            type = "structure",
            traits = {
                json_name = "sasl",
            },
        },
        Tls = {
            type = "structure",
            traits = {
                json_name = "tls",
            },
        },
        Unauthenticated = {
            type = "structure",
            traits = {
                json_name = "unauthenticated",
            },
        },
    },
}

M.BrokerSoftwareInfo = {
    type = "structure",
    members = {
        ConfigurationArn = {
            type = "string",
            traits = {
                json_name = "configurationArn",
            },
        },
        ConfigurationRevision = {
            type = "number",
            traits = {
                json_name = "configurationRevision",
            },
        },
        KafkaVersion = {
            type = "string",
            traits = {
                json_name = "kafkaVersion",
            },
        },
    },
}

M.CustomerActionStatus = {
    CRITICAL_ACTION_REQUIRED = "CRITICAL_ACTION_REQUIRED",
    ACTION_RECOMMENDED = "ACTION_RECOMMENDED",
    NONE = "NONE",
}

M.EncryptionAtRest = {
    type = "structure",
    members = {
        DataVolumeKMSKeyId = {
            type = "string",
            traits = {
                json_name = "dataVolumeKMSKeyId",
                required = true,
            },
        },
    },
}

M.ClientBroker = {
    TLS = "TLS",
    TLS_PLAINTEXT = "TLS_PLAINTEXT",
    PLAINTEXT = "PLAINTEXT",
}

M.EncryptionInTransit = {
    type = "structure",
    members = {
        ClientBroker = {
            type = "string",
            traits = {
                json_name = "clientBroker",
            },
        },
        InCluster = {
            type = "boolean",
            traits = {
                json_name = "inCluster",
            },
        },
    },
}

M.EncryptionInfo = {
    type = "structure",
    members = {
        EncryptionAtRest = {
            type = "structure",
            traits = {
                json_name = "encryptionAtRest",
            },
        },
        EncryptionInTransit = {
            type = "structure",
            traits = {
                json_name = "encryptionInTransit",
            },
        },
    },
}

M.EnhancedMonitoring = {
    DEFAULT = "DEFAULT",
    PER_BROKER = "PER_BROKER",
    PER_TOPIC_PER_BROKER = "PER_TOPIC_PER_BROKER",
    PER_TOPIC_PER_PARTITION = "PER_TOPIC_PER_PARTITION",
}

M.CloudWatchLogs = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                json_name = "enabled",
                required = true,
            },
        },
        LogGroup = {
            type = "string",
            traits = {
                json_name = "logGroup",
            },
        },
    },
}

M.Firehose = {
    type = "structure",
    members = {
        DeliveryStream = {
            type = "string",
            traits = {
                json_name = "deliveryStream",
            },
        },
        Enabled = {
            type = "boolean",
            traits = {
                json_name = "enabled",
                required = true,
            },
        },
    },
}

M.S3 = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
            traits = {
                json_name = "bucket",
            },
        },
        Enabled = {
            type = "boolean",
            traits = {
                json_name = "enabled",
                required = true,
            },
        },
        Prefix = {
            type = "string",
            traits = {
                json_name = "prefix",
            },
        },
    },
}

M.BrokerLogs = {
    type = "structure",
    members = {
        CloudWatchLogs = {
            type = "structure",
            traits = {
                json_name = "cloudWatchLogs",
            },
        },
        Firehose = {
            type = "structure",
            traits = {
                json_name = "firehose",
            },
        },
        S3 = {
            type = "structure",
            traits = {
                json_name = "s3",
            },
        },
    },
}

M.LoggingInfo = {
    type = "structure",
    members = {
        BrokerLogs = {
            type = "structure",
            traits = {
                json_name = "brokerLogs",
                required = true,
            },
        },
    },
}

M.JmxExporterInfo = {
    type = "structure",
    members = {
        EnabledInBroker = {
            type = "boolean",
            traits = {
                json_name = "enabledInBroker",
                required = true,
            },
        },
    },
}

M.NodeExporterInfo = {
    type = "structure",
    members = {
        EnabledInBroker = {
            type = "boolean",
            traits = {
                json_name = "enabledInBroker",
                required = true,
            },
        },
    },
}

M.PrometheusInfo = {
    type = "structure",
    members = {
        JmxExporter = {
            type = "structure",
            traits = {
                json_name = "jmxExporter",
            },
        },
        NodeExporter = {
            type = "structure",
            traits = {
                json_name = "nodeExporter",
            },
        },
    },
}

M.OpenMonitoringInfo = {
    type = "structure",
    members = {
        Prometheus = {
            type = "structure",
            traits = {
                json_name = "prometheus",
                required = true,
            },
        },
    },
}

M.RebalancingStatus = {
    PAUSED = "PAUSED",
    ACTIVE = "ACTIVE",
}

M.Rebalancing = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.StorageMode = {
    LOCAL = "LOCAL",
    TIERED = "TIERED",
}

M.Provisioned = {
    type = "structure",
    members = {
        BrokerNodeGroupInfo = {
            type = "structure",
            traits = {
                json_name = "brokerNodeGroupInfo",
                required = true,
            },
        },
        Rebalancing = {
            type = "structure",
            traits = {
                json_name = "rebalancing",
            },
        },
        CurrentBrokerSoftwareInfo = {
            type = "structure",
            traits = {
                json_name = "currentBrokerSoftwareInfo",
            },
        },
        ClientAuthentication = {
            type = "structure",
            traits = {
                json_name = "clientAuthentication",
            },
        },
        EncryptionInfo = {
            type = "structure",
            traits = {
                json_name = "encryptionInfo",
            },
        },
        EnhancedMonitoring = {
            type = "string",
            traits = {
                json_name = "enhancedMonitoring",
            },
        },
        OpenMonitoring = {
            type = "structure",
            traits = {
                json_name = "openMonitoring",
            },
        },
        LoggingInfo = {
            type = "structure",
            traits = {
                json_name = "loggingInfo",
            },
        },
        NumberOfBrokerNodes = {
            type = "number",
            traits = {
                json_name = "numberOfBrokerNodes",
                required = true,
            },
        },
        ZookeeperConnectString = {
            type = "string",
            traits = {
                json_name = "zookeeperConnectString",
            },
        },
        ZookeeperConnectStringTls = {
            type = "string",
            traits = {
                json_name = "zookeeperConnectStringTls",
            },
        },
        StorageMode = {
            type = "string",
            traits = {
                json_name = "storageMode",
            },
        },
        CustomerActionStatus = {
            type = "string",
            traits = {
                json_name = "customerActionStatus",
            },
        },
    },
}

M.ServerlessSasl = {
    type = "structure",
    members = {
        Iam = {
            type = "structure",
            traits = {
                json_name = "iam",
            },
        },
    },
}

M.ServerlessClientAuthentication = {
    type = "structure",
    members = {
        Sasl = {
            type = "structure",
            traits = {
                json_name = "sasl",
            },
        },
    },
}

M.ServerlessConnectivityInfo = {
    type = "structure",
    members = {
        NetworkType = {
            type = "string",
            traits = {
                json_name = "networkType",
            },
        },
    },
}

M.VpcConfig = {
    type = "structure",
    members = {
        SubnetIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "subnetIds",
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "securityGroupIds",
            },
        },
    },
}

M.Serverless = {
    type = "structure",
    members = {
        VpcConfigs = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "vpcConfigs",
                required = true,
            },
        },
        ClientAuthentication = {
            type = "structure",
            traits = {
                json_name = "clientAuthentication",
            },
        },
        ConnectivityInfo = {
            type = "structure",
            traits = {
                json_name = "connectivityInfo",
            },
        },
    },
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

M.StateInfo = {
    type = "structure",
    members = {
        Code = {
            type = "string",
            traits = {
                json_name = "code",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.Cluster = {
    type = "structure",
    members = {
        ActiveOperationArn = {
            type = "string",
            traits = {
                json_name = "activeOperationArn",
            },
        },
        ClusterType = {
            type = "string",
            traits = {
                json_name = "clusterType",
            },
        },
        ClusterArn = {
            type = "string",
            traits = {
                json_name = "clusterArn",
            },
        },
        ClusterName = {
            type = "string",
            traits = {
                json_name = "clusterName",
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                json_name = "creationTime",
            },
        },
        CurrentVersion = {
            type = "string",
            traits = {
                json_name = "currentVersion",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
        StateInfo = {
            type = "structure",
            traits = {
                json_name = "stateInfo",
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        Provisioned = {
            type = "structure",
            traits = {
                json_name = "provisioned",
            },
        },
        Serverless = {
            type = "structure",
            traits = {
                json_name = "serverless",
            },
        },
    },
}

M.JmxExporter = {
    type = "structure",
    members = {
        EnabledInBroker = {
            type = "boolean",
            traits = {
                json_name = "enabledInBroker",
                required = true,
            },
        },
    },
}

M.NodeExporter = {
    type = "structure",
    members = {
        EnabledInBroker = {
            type = "boolean",
            traits = {
                json_name = "enabledInBroker",
                required = true,
            },
        },
    },
}

M.Prometheus = {
    type = "structure",
    members = {
        JmxExporter = {
            type = "structure",
            traits = {
                json_name = "jmxExporter",
            },
        },
        NodeExporter = {
            type = "structure",
            traits = {
                json_name = "nodeExporter",
            },
        },
    },
}

M.OpenMonitoring = {
    type = "structure",
    members = {
        Prometheus = {
            type = "structure",
            traits = {
                json_name = "prometheus",
                required = true,
            },
        },
    },
}

M.ClusterInfo = {
    type = "structure",
    members = {
        ActiveOperationArn = {
            type = "string",
            traits = {
                json_name = "activeOperationArn",
            },
        },
        BrokerNodeGroupInfo = {
            type = "structure",
            traits = {
                json_name = "brokerNodeGroupInfo",
            },
        },
        Rebalancing = {
            type = "structure",
            traits = {
                json_name = "rebalancing",
            },
        },
        ClientAuthentication = {
            type = "structure",
            traits = {
                json_name = "clientAuthentication",
            },
        },
        ClusterArn = {
            type = "string",
            traits = {
                json_name = "clusterArn",
            },
        },
        ClusterName = {
            type = "string",
            traits = {
                json_name = "clusterName",
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                json_name = "creationTime",
            },
        },
        CurrentBrokerSoftwareInfo = {
            type = "structure",
            traits = {
                json_name = "currentBrokerSoftwareInfo",
            },
        },
        CurrentVersion = {
            type = "string",
            traits = {
                json_name = "currentVersion",
            },
        },
        EncryptionInfo = {
            type = "structure",
            traits = {
                json_name = "encryptionInfo",
            },
        },
        EnhancedMonitoring = {
            type = "string",
            traits = {
                json_name = "enhancedMonitoring",
            },
        },
        OpenMonitoring = {
            type = "structure",
            traits = {
                json_name = "openMonitoring",
            },
        },
        LoggingInfo = {
            type = "structure",
            traits = {
                json_name = "loggingInfo",
            },
        },
        NumberOfBrokerNodes = {
            type = "number",
            traits = {
                json_name = "numberOfBrokerNodes",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
        StateInfo = {
            type = "structure",
            traits = {
                json_name = "stateInfo",
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        ZookeeperConnectString = {
            type = "string",
            traits = {
                json_name = "zookeeperConnectString",
            },
        },
        ZookeeperConnectStringTls = {
            type = "string",
            traits = {
                json_name = "zookeeperConnectStringTls",
            },
        },
        StorageMode = {
            type = "string",
            traits = {
                json_name = "storageMode",
            },
        },
        CustomerActionStatus = {
            type = "string",
            traits = {
                json_name = "customerActionStatus",
            },
        },
    },
}

M.ErrorInfo = {
    type = "structure",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                json_name = "errorCode",
            },
        },
        ErrorString = {
            type = "string",
            traits = {
                json_name = "errorString",
            },
        },
    },
}

M.ClusterOperationStepInfo = {
    type = "structure",
    members = {
        StepStatus = {
            type = "string",
            traits = {
                json_name = "stepStatus",
            },
        },
    },
}

M.ClusterOperationStep = {
    type = "structure",
    members = {
        StepInfo = {
            type = "structure",
            traits = {
                json_name = "stepInfo",
            },
        },
        StepName = {
            type = "string",
            traits = {
                json_name = "stepName",
            },
        },
    },
}

M.BrokerCountUpdateInfo = {
    type = "structure",
    members = {
        CreatedBrokerIds = {
            type = "list",
            member_type = "number",
            traits = {
                json_name = "createdBrokerIds",
            },
        },
        DeletedBrokerIds = {
            type = "list",
            member_type = "number",
            traits = {
                json_name = "deletedBrokerIds",
            },
        },
    },
}

M.ConfigurationInfo = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        Revision = {
            type = "number",
            traits = {
                json_name = "revision",
                required = true,
            },
        },
    },
}

M.ZookeeperAccess = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                json_name = "enabled",
            },
        },
    },
}

M.MutableClusterInfo = {
    type = "structure",
    members = {
        BrokerEBSVolumeInfo = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "brokerEBSVolumeInfo",
            },
        },
        ConfigurationInfo = {
            type = "structure",
            traits = {
                json_name = "configurationInfo",
            },
        },
        NumberOfBrokerNodes = {
            type = "number",
            traits = {
                json_name = "numberOfBrokerNodes",
            },
        },
        EnhancedMonitoring = {
            type = "string",
            traits = {
                json_name = "enhancedMonitoring",
            },
        },
        OpenMonitoring = {
            type = "structure",
            traits = {
                json_name = "openMonitoring",
            },
        },
        ZookeeperAccess = {
            type = "structure",
            traits = {
                json_name = "zookeeperAccess",
            },
        },
        KafkaVersion = {
            type = "string",
            traits = {
                json_name = "kafkaVersion",
            },
        },
        LoggingInfo = {
            type = "structure",
            traits = {
                json_name = "loggingInfo",
            },
        },
        InstanceType = {
            type = "string",
            traits = {
                json_name = "instanceType",
            },
        },
        ClientAuthentication = {
            type = "structure",
            traits = {
                json_name = "clientAuthentication",
            },
        },
        EncryptionInfo = {
            type = "structure",
            traits = {
                json_name = "encryptionInfo",
            },
        },
        ConnectivityInfo = {
            type = "structure",
            traits = {
                json_name = "connectivityInfo",
            },
        },
        StorageMode = {
            type = "string",
            traits = {
                json_name = "storageMode",
            },
        },
        BrokerCountUpdateInfo = {
            type = "structure",
            traits = {
                json_name = "brokerCountUpdateInfo",
            },
        },
        Rebalancing = {
            type = "structure",
            traits = {
                json_name = "rebalancing",
            },
        },
    },
}

M.UserIdentityType = {
    AWSACCOUNT = "AWSACCOUNT",
    AWSSERVICE = "AWSSERVICE",
}

M.UserIdentity = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
        PrincipalId = {
            type = "string",
            traits = {
                json_name = "principalId",
            },
        },
    },
}

M.VpcConnectionInfo = {
    type = "structure",
    members = {
        VpcConnectionArn = {
            type = "string",
            traits = {
                json_name = "vpcConnectionArn",
            },
        },
        Owner = {
            type = "string",
            traits = {
                json_name = "owner",
            },
        },
        UserIdentity = {
            type = "structure",
            traits = {
                json_name = "userIdentity",
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                json_name = "creationTime",
            },
        },
    },
}

M.ClusterOperationInfo = {
    type = "structure",
    members = {
        ClientRequestId = {
            type = "string",
            traits = {
                json_name = "clientRequestId",
            },
        },
        ClusterArn = {
            type = "string",
            traits = {
                json_name = "clusterArn",
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                json_name = "creationTime",
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                json_name = "endTime",
            },
        },
        ErrorInfo = {
            type = "structure",
            traits = {
                json_name = "errorInfo",
            },
        },
        OperationArn = {
            type = "string",
            traits = {
                json_name = "operationArn",
            },
        },
        OperationState = {
            type = "string",
            traits = {
                json_name = "operationState",
            },
        },
        OperationSteps = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "operationSteps",
            },
        },
        OperationType = {
            type = "string",
            traits = {
                json_name = "operationType",
            },
        },
        SourceClusterInfo = {
            type = "structure",
            traits = {
                json_name = "sourceClusterInfo",
            },
        },
        TargetClusterInfo = {
            type = "structure",
            traits = {
                json_name = "targetClusterInfo",
            },
        },
        VpcConnectionInfo = {
            type = "structure",
            traits = {
                json_name = "vpcConnectionInfo",
            },
        },
    },
}

M.ClusterOperationV2Summary = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                json_name = "clusterArn",
            },
        },
        ClusterType = {
            type = "string",
            traits = {
                json_name = "clusterType",
            },
        },
        StartTime = {
            type = "timestamp",
            traits = {
                json_name = "startTime",
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                json_name = "endTime",
            },
        },
        OperationArn = {
            type = "string",
            traits = {
                json_name = "operationArn",
            },
        },
        OperationState = {
            type = "string",
            traits = {
                json_name = "operationState",
            },
        },
        OperationType = {
            type = "string",
            traits = {
                json_name = "operationType",
            },
        },
    },
}

M.CompatibleKafkaVersion = {
    type = "structure",
    members = {
        SourceVersion = {
            type = "string",
            traits = {
                json_name = "sourceVersion",
            },
        },
        TargetVersions = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "targetVersions",
            },
        },
    },
}

M.ConfigurationRevision = {
    type = "structure",
    members = {
        CreationTime = {
            type = "timestamp",
            traits = {
                json_name = "creationTime",
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        Revision = {
            type = "number",
            traits = {
                json_name = "revision",
                required = true,
            },
        },
    },
}

M.ConfigurationState = {
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    DELETE_FAILED = "DELETE_FAILED",
}

M.Configuration = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                json_name = "creationTime",
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
                required = true,
            },
        },
        KafkaVersions = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "kafkaVersions",
                required = true,
            },
        },
        LatestRevision = {
            type = "structure",
            traits = {
                json_name = "latestRevision",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
                required = true,
            },
        },
    },
}

M.AmazonMskCluster = {
    type = "structure",
    members = {
        MskClusterArn = {
            type = "string",
            traits = {
                json_name = "mskClusterArn",
                required = true,
            },
        },
    },
}

M.ApacheKafkaCluster = {
    type = "structure",
    members = {
        ApacheKafkaClusterId = {
            type = "string",
            traits = {
                json_name = "apacheKafkaClusterId",
                required = true,
            },
        },
        BootstrapBrokerString = {
            type = "string",
            traits = {
                json_name = "bootstrapBrokerString",
                required = true,
            },
        },
    },
}

M.KafkaClusterSaslScramMechanism = {
    SHA256 = "SHA256",
    SHA512 = "SHA512",
}

M.KafkaClusterSaslScramAuthentication = {
    type = "structure",
    members = {
        Mechanism = {
            type = "string",
            traits = {
                json_name = "mechanism",
                required = true,
            },
        },
        SecretArn = {
            type = "string",
            traits = {
                json_name = "secretArn",
                required = true,
            },
        },
    },
}

M.KafkaClusterClientAuthentication = {
    type = "structure",
    members = {
        SaslScram = {
            type = "structure",
            traits = {
                json_name = "saslScram",
                required = true,
            },
        },
    },
}

M.KafkaClusterEncryptionInTransitType = {
    TLS = "TLS",
}

M.KafkaClusterEncryptionInTransit = {
    type = "structure",
    members = {
        EncryptionType = {
            type = "string",
            traits = {
                json_name = "encryptionType",
                required = true,
            },
        },
        RootCaCertificate = {
            type = "string",
            traits = {
                json_name = "rootCaCertificate",
            },
        },
    },
}

M.KafkaClusterClientVpcConfig = {
    type = "structure",
    members = {
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "securityGroupIds",
            },
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "subnetIds",
                required = true,
            },
        },
    },
}

M.KafkaCluster = {
    type = "structure",
    members = {
        AmazonMskCluster = {
            type = "structure",
            traits = {
                json_name = "amazonMskCluster",
            },
        },
        ApacheKafkaCluster = {
            type = "structure",
            traits = {
                json_name = "apacheKafkaCluster",
            },
        },
        VpcConfig = {
            type = "structure",
            traits = {
                json_name = "vpcConfig",
            },
        },
        ClientAuthentication = {
            type = "structure",
            traits = {
                json_name = "clientAuthentication",
            },
        },
        EncryptionInTransit = {
            type = "structure",
            traits = {
                json_name = "encryptionInTransit",
            },
        },
    },
}

M.KafkaClusterDescription = {
    type = "structure",
    members = {
        AmazonMskCluster = {
            type = "structure",
            traits = {
                json_name = "amazonMskCluster",
            },
        },
        ApacheKafkaCluster = {
            type = "structure",
            traits = {
                json_name = "apacheKafkaCluster",
            },
        },
        KafkaClusterAlias = {
            type = "string",
            traits = {
                json_name = "kafkaClusterAlias",
            },
        },
        VpcConfig = {
            type = "structure",
            traits = {
                json_name = "vpcConfig",
            },
        },
        ClientAuthentication = {
            type = "structure",
            traits = {
                json_name = "clientAuthentication",
            },
        },
        EncryptionInTransit = {
            type = "structure",
            traits = {
                json_name = "encryptionInTransit",
            },
        },
    },
}

M.KafkaClusterSummary = {
    type = "structure",
    members = {
        AmazonMskCluster = {
            type = "structure",
            traits = {
                json_name = "amazonMskCluster",
            },
        },
        ApacheKafkaCluster = {
            type = "structure",
            traits = {
                json_name = "apacheKafkaCluster",
            },
        },
        KafkaClusterAlias = {
            type = "string",
            traits = {
                json_name = "kafkaClusterAlias",
            },
        },
    },
}

M.KafkaVersionStatus = {
    ACTIVE = "ACTIVE",
    DEPRECATED = "DEPRECATED",
}

M.KafkaVersion = {
    type = "structure",
    members = {
        Version = {
            type = "string",
            traits = {
                json_name = "version",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.BrokerNodeInfo = {
    type = "structure",
    members = {
        AttachedENIId = {
            type = "string",
            traits = {
                json_name = "attachedENIId",
            },
        },
        BrokerId = {
            type = "number",
            traits = {
                json_name = "brokerId",
            },
        },
        ClientSubnet = {
            type = "string",
            traits = {
                json_name = "clientSubnet",
            },
        },
        ClientVpcIpAddress = {
            type = "string",
            traits = {
                json_name = "clientVpcIpAddress",
            },
        },
        CurrentBrokerSoftwareInfo = {
            type = "structure",
            traits = {
                json_name = "currentBrokerSoftwareInfo",
            },
        },
        Endpoints = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "endpoints",
            },
        },
    },
}

M.ControllerNodeInfo = {
    type = "structure",
    members = {
        Endpoints = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "endpoints",
            },
        },
    },
}

M.NodeType = {
    BROKER = "BROKER",
}

M.ZookeeperNodeInfo = {
    type = "structure",
    members = {
        AttachedENIId = {
            type = "string",
            traits = {
                json_name = "attachedENIId",
            },
        },
        ClientVpcIpAddress = {
            type = "string",
            traits = {
                json_name = "clientVpcIpAddress",
            },
        },
        Endpoints = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "endpoints",
            },
        },
        ZookeeperId = {
            type = "number",
            traits = {
                json_name = "zookeeperId",
            },
        },
        ZookeeperVersion = {
            type = "string",
            traits = {
                json_name = "zookeeperVersion",
            },
        },
    },
}

M.NodeInfo = {
    type = "structure",
    members = {
        AddedToClusterTime = {
            type = "string",
            traits = {
                json_name = "addedToClusterTime",
            },
        },
        BrokerNodeInfo = {
            type = "structure",
            traits = {
                json_name = "brokerNodeInfo",
            },
        },
        ControllerNodeInfo = {
            type = "structure",
            traits = {
                json_name = "controllerNodeInfo",
            },
        },
        InstanceType = {
            type = "string",
            traits = {
                json_name = "instanceType",
            },
        },
        NodeARN = {
            type = "string",
            traits = {
                json_name = "nodeARN",
            },
        },
        NodeType = {
            type = "string",
            traits = {
                json_name = "nodeType",
            },
        },
        ZookeeperNodeInfo = {
            type = "structure",
            traits = {
                json_name = "zookeeperNodeInfo",
            },
        },
    },
}

M.ConsumerGroupOffsetSyncMode = {
    LEGACY = "LEGACY",
    ENHANCED = "ENHANCED",
}

M.ConsumerGroupReplication = {
    type = "structure",
    members = {
        ConsumerGroupsToExclude = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "consumerGroupsToExclude",
            },
        },
        ConsumerGroupsToReplicate = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "consumerGroupsToReplicate",
                required = true,
            },
        },
        DetectAndCopyNewConsumerGroups = {
            type = "boolean",
            traits = {
                json_name = "detectAndCopyNewConsumerGroups",
            },
        },
        SynchroniseConsumerGroupOffsets = {
            type = "boolean",
            traits = {
                json_name = "synchroniseConsumerGroupOffsets",
            },
        },
        ConsumerGroupOffsetSyncMode = {
            type = "string",
            traits = {
                json_name = "consumerGroupOffsetSyncMode",
            },
        },
    },
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

M.ReplicationStartingPosition = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
    },
}

M.ReplicationTopicNameConfigurationType = {
    PREFIXED_WITH_SOURCE_CLUSTER_ALIAS = "PREFIXED_WITH_SOURCE_CLUSTER_ALIAS",
    IDENTICAL = "IDENTICAL",
}

M.ReplicationTopicNameConfiguration = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
    },
}

M.TopicReplication = {
    type = "structure",
    members = {
        CopyAccessControlListsForTopics = {
            type = "boolean",
            traits = {
                json_name = "copyAccessControlListsForTopics",
            },
        },
        CopyTopicConfigurations = {
            type = "boolean",
            traits = {
                json_name = "copyTopicConfigurations",
            },
        },
        DetectAndCopyNewTopics = {
            type = "boolean",
            traits = {
                json_name = "detectAndCopyNewTopics",
            },
        },
        StartingPosition = {
            type = "structure",
            traits = {
                json_name = "startingPosition",
            },
        },
        TopicNameConfiguration = {
            type = "structure",
            traits = {
                json_name = "topicNameConfiguration",
            },
        },
        TopicsToExclude = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "topicsToExclude",
            },
        },
        TopicsToReplicate = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "topicsToReplicate",
                required = true,
            },
        },
    },
}

M.ReplicationInfo = {
    type = "structure",
    members = {
        ConsumerGroupReplication = {
            type = "structure",
            traits = {
                json_name = "consumerGroupReplication",
                required = true,
            },
        },
        SourceKafkaClusterArn = {
            type = "string",
            traits = {
                json_name = "sourceKafkaClusterArn",
            },
        },
        SourceKafkaClusterId = {
            type = "string",
            traits = {
                json_name = "sourceKafkaClusterId",
            },
        },
        TargetCompressionType = {
            type = "string",
            traits = {
                json_name = "targetCompressionType",
                required = true,
            },
        },
        TargetKafkaClusterArn = {
            type = "string",
            traits = {
                json_name = "targetKafkaClusterArn",
            },
        },
        TargetKafkaClusterId = {
            type = "string",
            traits = {
                json_name = "targetKafkaClusterId",
            },
        },
        TopicReplication = {
            type = "structure",
            traits = {
                json_name = "topicReplication",
                required = true,
            },
        },
    },
}

M.ReplicationInfoDescription = {
    type = "structure",
    members = {
        ConsumerGroupReplication = {
            type = "structure",
            traits = {
                json_name = "consumerGroupReplication",
            },
        },
        SourceKafkaClusterAlias = {
            type = "string",
            traits = {
                json_name = "sourceKafkaClusterAlias",
            },
        },
        TargetCompressionType = {
            type = "string",
            traits = {
                json_name = "targetCompressionType",
            },
        },
        TargetKafkaClusterAlias = {
            type = "string",
            traits = {
                json_name = "targetKafkaClusterAlias",
            },
        },
        TopicReplication = {
            type = "structure",
            traits = {
                json_name = "topicReplication",
            },
        },
    },
}

M.ReplicationInfoSummary = {
    type = "structure",
    members = {
        SourceKafkaClusterAlias = {
            type = "string",
            traits = {
                json_name = "sourceKafkaClusterAlias",
            },
        },
        TargetKafkaClusterAlias = {
            type = "string",
            traits = {
                json_name = "targetKafkaClusterAlias",
            },
        },
    },
}

M.ReplicatorState = {
    RUNNING = "RUNNING",
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.ReplicatorSummary = {
    type = "structure",
    members = {
        CreationTime = {
            type = "timestamp",
            traits = {
                json_name = "creationTime",
            },
        },
        CurrentVersion = {
            type = "string",
            traits = {
                json_name = "currentVersion",
            },
        },
        IsReplicatorReference = {
            type = "boolean",
            traits = {
                json_name = "isReplicatorReference",
            },
        },
        KafkaClustersSummary = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "kafkaClustersSummary",
            },
        },
        ReplicationInfoSummaryList = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "replicationInfoSummaryList",
            },
        },
        ReplicatorArn = {
            type = "string",
            traits = {
                json_name = "replicatorArn",
            },
        },
        ReplicatorName = {
            type = "string",
            traits = {
                json_name = "replicatorName",
            },
        },
        ReplicatorResourceArn = {
            type = "string",
            traits = {
                json_name = "replicatorResourceArn",
            },
        },
        ReplicatorState = {
            type = "string",
            traits = {
                json_name = "replicatorState",
            },
        },
    },
}

M.TopicInfo = {
    type = "structure",
    members = {
        TopicArn = {
            type = "string",
            traits = {
                json_name = "topicArn",
            },
        },
        TopicName = {
            type = "string",
            traits = {
                json_name = "topicName",
            },
        },
        ReplicationFactor = {
            type = "number",
            traits = {
                json_name = "replicationFactor",
            },
        },
        PartitionCount = {
            type = "number",
            traits = {
                json_name = "partitionCount",
            },
        },
        OutOfSyncReplicaCount = {
            type = "number",
            traits = {
                json_name = "outOfSyncReplicaCount",
            },
        },
    },
}

M.TopicPartitionInfo = {
    type = "structure",
    members = {
        Partition = {
            type = "number",
            traits = {
                json_name = "partition",
            },
        },
        Leader = {
            type = "number",
            traits = {
                json_name = "leader",
            },
        },
        Replicas = {
            type = "list",
            member_type = "number",
            traits = {
                json_name = "replicas",
            },
        },
        Isr = {
            type = "list",
            member_type = "number",
            traits = {
                json_name = "isr",
            },
        },
    },
}

M.UnprocessedScramSecret = {
    type = "structure",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                json_name = "errorCode",
            },
        },
        ErrorMessage = {
            type = "string",
            traits = {
                json_name = "errorMessage",
            },
        },
        SecretArn = {
            type = "string",
            traits = {
                json_name = "secretArn",
            },
        },
    },
}

M.VpcConnection = {
    type = "structure",
    members = {
        VpcConnectionArn = {
            type = "string",
            traits = {
                json_name = "vpcConnectionArn",
                required = true,
            },
        },
        TargetClusterArn = {
            type = "string",
            traits = {
                json_name = "targetClusterArn",
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                json_name = "creationTime",
            },
        },
        Authentication = {
            type = "string",
            traits = {
                json_name = "authentication",
            },
        },
        VpcId = {
            type = "string",
            traits = {
                json_name = "vpcId",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
}

M.BadRequestException = {
    type = "structure",
    error = "client",
    members = {
        InvalidParameter = {
            type = "string",
            traits = {
                json_name = "invalidParameter",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.BatchAssociateScramSecretInput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SecretArnList = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "secretArnList",
                required = true,
            },
        },
    },
}

M.BatchAssociateScramSecretOutput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                json_name = "clusterArn",
            },
        },
        UnprocessedScramSecrets = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "unprocessedScramSecrets",
            },
        },
    },
}

M.ForbiddenException = {
    type = "structure",
    error = "client",
    members = {
        InvalidParameter = {
            type = "string",
            traits = {
                json_name = "invalidParameter",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.InternalServerErrorException = {
    type = "structure",
    error = "server",
    members = {
        InvalidParameter = {
            type = "string",
            traits = {
                json_name = "invalidParameter",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.NotFoundException = {
    type = "structure",
    error = "client",
    members = {
        InvalidParameter = {
            type = "string",
            traits = {
                json_name = "invalidParameter",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        InvalidParameter = {
            type = "string",
            traits = {
                json_name = "invalidParameter",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    error = "client",
    members = {
        InvalidParameter = {
            type = "string",
            traits = {
                json_name = "invalidParameter",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.UnauthorizedException = {
    type = "structure",
    error = "client",
    members = {
        InvalidParameter = {
            type = "string",
            traits = {
                json_name = "invalidParameter",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.BatchDisassociateScramSecretInput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SecretArnList = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "secretArnList",
                required = true,
            },
        },
    },
}

M.BatchDisassociateScramSecretOutput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                json_name = "clusterArn",
            },
        },
        UnprocessedScramSecrets = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "unprocessedScramSecrets",
            },
        },
    },
}

M.ClusterConnectivityException = {
    type = "structure",
    error = "client",
    members = {
        InvalidParameter = {
            type = "string",
            traits = {
                json_name = "invalidParameter",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.ClusterOperationV2Provisioned = {
    type = "structure",
    members = {
        OperationSteps = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "operationSteps",
            },
        },
        SourceClusterInfo = {
            type = "structure",
            traits = {
                json_name = "sourceClusterInfo",
            },
        },
        TargetClusterInfo = {
            type = "structure",
            traits = {
                json_name = "targetClusterInfo",
            },
        },
        VpcConnectionInfo = {
            type = "structure",
            traits = {
                json_name = "vpcConnectionInfo",
            },
        },
    },
}

M.VpcConnectionInfoServerless = {
    type = "structure",
    members = {
        CreationTime = {
            type = "timestamp",
            traits = {
                json_name = "creationTime",
            },
        },
        Owner = {
            type = "string",
            traits = {
                json_name = "owner",
            },
        },
        UserIdentity = {
            type = "structure",
            traits = {
                json_name = "userIdentity",
            },
        },
        VpcConnectionArn = {
            type = "string",
            traits = {
                json_name = "vpcConnectionArn",
            },
        },
    },
}

M.ClusterOperationV2Serverless = {
    type = "structure",
    members = {
        SourceClusterInfo = {
            type = "structure",
            traits = {
                json_name = "sourceClusterInfo",
            },
        },
        TargetClusterInfo = {
            type = "structure",
            traits = {
                json_name = "targetClusterInfo",
            },
        },
        VpcConnectionInfo = {
            type = "structure",
            traits = {
                json_name = "vpcConnectionInfo",
            },
        },
    },
}

M.ClusterOperationV2 = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                json_name = "clusterArn",
            },
        },
        ClusterType = {
            type = "string",
            traits = {
                json_name = "clusterType",
            },
        },
        StartTime = {
            type = "timestamp",
            traits = {
                json_name = "startTime",
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                json_name = "endTime",
            },
        },
        ErrorInfo = {
            type = "structure",
            traits = {
                json_name = "errorInfo",
            },
        },
        OperationArn = {
            type = "string",
            traits = {
                json_name = "operationArn",
            },
        },
        OperationState = {
            type = "string",
            traits = {
                json_name = "operationState",
            },
        },
        OperationType = {
            type = "string",
            traits = {
                json_name = "operationType",
            },
        },
        Provisioned = {
            type = "structure",
            traits = {
                json_name = "provisioned",
            },
        },
        Serverless = {
            type = "structure",
            traits = {
                json_name = "serverless",
            },
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        InvalidParameter = {
            type = "string",
            traits = {
                json_name = "invalidParameter",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.ConsumerGroupReplicationUpdate = {
    type = "structure",
    members = {
        ConsumerGroupsToExclude = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "consumerGroupsToExclude",
                required = true,
            },
        },
        ConsumerGroupsToReplicate = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "consumerGroupsToReplicate",
                required = true,
            },
        },
        DetectAndCopyNewConsumerGroups = {
            type = "boolean",
            traits = {
                json_name = "detectAndCopyNewConsumerGroups",
                required = true,
            },
        },
        SynchroniseConsumerGroupOffsets = {
            type = "boolean",
            traits = {
                json_name = "synchroniseConsumerGroupOffsets",
                required = true,
            },
        },
    },
}

M.ControllerMovedException = {
    type = "structure",
    error = "client",
    members = {
        InvalidParameter = {
            type = "string",
            traits = {
                json_name = "invalidParameter",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.CreateClusterInput = {
    type = "structure",
    members = {
        BrokerNodeGroupInfo = {
            type = "structure",
            traits = {
                json_name = "brokerNodeGroupInfo",
                required = true,
            },
        },
        Rebalancing = {
            type = "structure",
            traits = {
                json_name = "rebalancing",
            },
        },
        ClientAuthentication = {
            type = "structure",
            traits = {
                json_name = "clientAuthentication",
            },
        },
        ClusterName = {
            type = "string",
            traits = {
                json_name = "clusterName",
                required = true,
            },
        },
        ConfigurationInfo = {
            type = "structure",
            traits = {
                json_name = "configurationInfo",
            },
        },
        EncryptionInfo = {
            type = "structure",
            traits = {
                json_name = "encryptionInfo",
            },
        },
        EnhancedMonitoring = {
            type = "string",
            traits = {
                json_name = "enhancedMonitoring",
            },
        },
        OpenMonitoring = {
            type = "structure",
            traits = {
                json_name = "openMonitoring",
            },
        },
        KafkaVersion = {
            type = "string",
            traits = {
                json_name = "kafkaVersion",
                required = true,
            },
        },
        LoggingInfo = {
            type = "structure",
            traits = {
                json_name = "loggingInfo",
            },
        },
        NumberOfBrokerNodes = {
            type = "number",
            traits = {
                json_name = "numberOfBrokerNodes",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        StorageMode = {
            type = "string",
            traits = {
                json_name = "storageMode",
            },
        },
    },
}

M.CreateClusterOutput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                json_name = "clusterArn",
            },
        },
        ClusterName = {
            type = "string",
            traits = {
                json_name = "clusterName",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
}

M.ProvisionedRequest = {
    type = "structure",
    members = {
        BrokerNodeGroupInfo = {
            type = "structure",
            traits = {
                json_name = "brokerNodeGroupInfo",
                required = true,
            },
        },
        Rebalancing = {
            type = "structure",
            traits = {
                json_name = "rebalancing",
            },
        },
        ClientAuthentication = {
            type = "structure",
            traits = {
                json_name = "clientAuthentication",
            },
        },
        ConfigurationInfo = {
            type = "structure",
            traits = {
                json_name = "configurationInfo",
            },
        },
        EncryptionInfo = {
            type = "structure",
            traits = {
                json_name = "encryptionInfo",
            },
        },
        EnhancedMonitoring = {
            type = "string",
            traits = {
                json_name = "enhancedMonitoring",
            },
        },
        OpenMonitoring = {
            type = "structure",
            traits = {
                json_name = "openMonitoring",
            },
        },
        KafkaVersion = {
            type = "string",
            traits = {
                json_name = "kafkaVersion",
                required = true,
            },
        },
        LoggingInfo = {
            type = "structure",
            traits = {
                json_name = "loggingInfo",
            },
        },
        NumberOfBrokerNodes = {
            type = "number",
            traits = {
                json_name = "numberOfBrokerNodes",
                required = true,
            },
        },
        StorageMode = {
            type = "string",
            traits = {
                json_name = "storageMode",
            },
        },
    },
}

M.ServerlessRequest = {
    type = "structure",
    members = {
        VpcConfigs = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "vpcConfigs",
                required = true,
            },
        },
        ClientAuthentication = {
            type = "structure",
            traits = {
                json_name = "clientAuthentication",
            },
        },
    },
}

M.CreateClusterV2Input = {
    type = "structure",
    members = {
        ClusterName = {
            type = "string",
            traits = {
                json_name = "clusterName",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        Provisioned = {
            type = "structure",
            traits = {
                json_name = "provisioned",
            },
        },
        Serverless = {
            type = "structure",
            traits = {
                json_name = "serverless",
            },
        },
    },
}

M.CreateClusterV2Output = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                json_name = "clusterArn",
            },
        },
        ClusterName = {
            type = "string",
            traits = {
                json_name = "clusterName",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
        ClusterType = {
            type = "string",
            traits = {
                json_name = "clusterType",
            },
        },
    },
}

M.CreateConfigurationInput = {
    type = "structure",
    members = {
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        KafkaVersions = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "kafkaVersions",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        ServerProperties = {
            type = "blob",
            traits = {
                json_name = "serverProperties",
                required = true,
            },
        },
    },
}

M.CreateConfigurationOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                json_name = "creationTime",
            },
        },
        LatestRevision = {
            type = "structure",
            traits = {
                json_name = "latestRevision",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
}

M.ReplicatorCloudWatchLogs = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                json_name = "enabled",
                required = true,
            },
        },
        LogGroup = {
            type = "string",
            traits = {
                json_name = "logGroup",
            },
        },
    },
}

M.ReplicatorFirehose = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                json_name = "enabled",
                required = true,
            },
        },
        DeliveryStream = {
            type = "string",
            traits = {
                json_name = "deliveryStream",
            },
        },
    },
}

M.ReplicatorS3 = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                json_name = "enabled",
                required = true,
            },
        },
        Bucket = {
            type = "string",
            traits = {
                json_name = "bucket",
            },
        },
        Prefix = {
            type = "string",
            traits = {
                json_name = "prefix",
            },
        },
    },
}

M.ReplicatorLogDelivery = {
    type = "structure",
    members = {
        CloudWatchLogs = {
            type = "structure",
            traits = {
                json_name = "cloudWatchLogs",
            },
        },
        Firehose = {
            type = "structure",
            traits = {
                json_name = "firehose",
            },
        },
        S3 = {
            type = "structure",
            traits = {
                json_name = "s3",
            },
        },
    },
}

M.LogDelivery = {
    type = "structure",
    members = {
        ReplicatorLogDelivery = {
            type = "structure",
            traits = {
                json_name = "replicatorLogDelivery",
            },
        },
    },
}

M.CreateReplicatorInput = {
    type = "structure",
    members = {
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        KafkaClusters = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "kafkaClusters",
                required = true,
            },
        },
        ReplicationInfoList = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "replicationInfoList",
                required = true,
            },
        },
        ReplicatorName = {
            type = "string",
            traits = {
                json_name = "replicatorName",
                required = true,
            },
        },
        ServiceExecutionRoleArn = {
            type = "string",
            traits = {
                json_name = "serviceExecutionRoleArn",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        LogDelivery = {
            type = "structure",
            traits = {
                json_name = "logDelivery",
            },
        },
    },
}

M.CreateReplicatorOutput = {
    type = "structure",
    members = {
        ReplicatorArn = {
            type = "string",
            traits = {
                json_name = "replicatorArn",
            },
        },
        ReplicatorName = {
            type = "string",
            traits = {
                json_name = "replicatorName",
            },
        },
        ReplicatorState = {
            type = "string",
            traits = {
                json_name = "replicatorState",
            },
        },
    },
}

M.CreateTopicInput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TopicName = {
            type = "string",
            traits = {
                json_name = "topicName",
                required = true,
            },
        },
        PartitionCount = {
            type = "number",
            traits = {
                json_name = "partitionCount",
                required = true,
            },
        },
        ReplicationFactor = {
            type = "number",
            traits = {
                json_name = "replicationFactor",
                required = true,
            },
        },
        Configs = {
            type = "string",
            traits = {
                json_name = "configs",
            },
        },
    },
}

M.TopicState = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    ACTIVE = "ACTIVE",
}

M.CreateTopicOutput = {
    type = "structure",
    members = {
        TopicArn = {
            type = "string",
            traits = {
                json_name = "topicArn",
            },
        },
        TopicName = {
            type = "string",
            traits = {
                json_name = "topicName",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.GroupSubscribedToTopicException = {
    type = "structure",
    error = "client",
    members = {
        InvalidParameter = {
            type = "string",
            traits = {
                json_name = "invalidParameter",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.KafkaRequestException = {
    type = "structure",
    error = "client",
    members = {
        InvalidParameter = {
            type = "string",
            traits = {
                json_name = "invalidParameter",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.KafkaTimeoutException = {
    type = "structure",
    error = "client",
    members = {
        InvalidParameter = {
            type = "string",
            traits = {
                json_name = "invalidParameter",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.NotControllerException = {
    type = "structure",
    error = "client",
    members = {
        InvalidParameter = {
            type = "string",
            traits = {
                json_name = "invalidParameter",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.ReassignmentInProgressException = {
    type = "structure",
    error = "client",
    members = {
        InvalidParameter = {
            type = "string",
            traits = {
                json_name = "invalidParameter",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.TopicExistsException = {
    type = "structure",
    error = "client",
    members = {
        InvalidParameter = {
            type = "string",
            traits = {
                json_name = "invalidParameter",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.UnknownTopicOrPartitionException = {
    type = "structure",
    error = "client",
    members = {
        InvalidParameter = {
            type = "string",
            traits = {
                json_name = "invalidParameter",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.CreateVpcConnectionInput = {
    type = "structure",
    members = {
        TargetClusterArn = {
            type = "string",
            traits = {
                json_name = "targetClusterArn",
                required = true,
            },
        },
        Authentication = {
            type = "string",
            traits = {
                json_name = "authentication",
                required = true,
            },
        },
        VpcId = {
            type = "string",
            traits = {
                json_name = "vpcId",
                required = true,
            },
        },
        ClientSubnets = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "clientSubnets",
                required = true,
            },
        },
        SecurityGroups = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "securityGroups",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateVpcConnectionOutput = {
    type = "structure",
    members = {
        VpcConnectionArn = {
            type = "string",
            traits = {
                json_name = "vpcConnectionArn",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
        Authentication = {
            type = "string",
            traits = {
                json_name = "authentication",
            },
        },
        VpcId = {
            type = "string",
            traits = {
                json_name = "vpcId",
            },
        },
        ClientSubnets = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "clientSubnets",
            },
        },
        SecurityGroups = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "securityGroups",
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                json_name = "creationTime",
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.DeleteClusterInput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CurrentVersion = {
            type = "string",
            traits = {
                http_query = "currentVersion",
            },
        },
    },
}

M.DeleteClusterOutput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                json_name = "clusterArn",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
}

M.DeleteClusterPolicyInput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteClusterPolicyOutput = {
    type = "structure",
}

M.DeleteConfigurationInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteConfigurationOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
}

M.DeleteReplicatorInput = {
    type = "structure",
    members = {
        CurrentVersion = {
            type = "string",
            traits = {
                http_query = "currentVersion",
            },
        },
        ReplicatorArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteReplicatorOutput = {
    type = "structure",
    members = {
        ReplicatorArn = {
            type = "string",
            traits = {
                json_name = "replicatorArn",
            },
        },
        ReplicatorState = {
            type = "string",
            traits = {
                json_name = "replicatorState",
            },
        },
    },
}

M.DeleteTopicInput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TopicName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTopicOutput = {
    type = "structure",
    members = {
        TopicArn = {
            type = "string",
            traits = {
                json_name = "topicArn",
            },
        },
        TopicName = {
            type = "string",
            traits = {
                json_name = "topicName",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.DeleteVpcConnectionInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteVpcConnectionOutput = {
    type = "structure",
    members = {
        VpcConnectionArn = {
            type = "string",
            traits = {
                json_name = "vpcConnectionArn",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
}

M.DescribeClusterInput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeClusterOutput = {
    type = "structure",
    members = {
        ClusterInfo = {
            type = "structure",
            traits = {
                json_name = "clusterInfo",
            },
        },
    },
}

M.DescribeClusterOperationInput = {
    type = "structure",
    members = {
        ClusterOperationArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeClusterOperationOutput = {
    type = "structure",
    members = {
        ClusterOperationInfo = {
            type = "structure",
            traits = {
                json_name = "clusterOperationInfo",
            },
        },
    },
}

M.DescribeClusterOperationV2Input = {
    type = "structure",
    members = {
        ClusterOperationArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeClusterOperationV2Output = {
    type = "structure",
    members = {
        ClusterOperationInfo = {
            type = "structure",
            traits = {
                json_name = "clusterOperationInfo",
            },
        },
    },
}

M.DescribeClusterV2Input = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeClusterV2Output = {
    type = "structure",
    members = {
        ClusterInfo = {
            type = "structure",
            traits = {
                json_name = "clusterInfo",
            },
        },
    },
}

M.DescribeConfigurationInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeConfigurationOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                json_name = "creationTime",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        KafkaVersions = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "kafkaVersions",
            },
        },
        LatestRevision = {
            type = "structure",
            traits = {
                json_name = "latestRevision",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
}

M.DescribeConfigurationRevisionInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Revision = {
            type = "number",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeConfigurationRevisionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                json_name = "creationTime",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        Revision = {
            type = "number",
            traits = {
                json_name = "revision",
            },
        },
        ServerProperties = {
            type = "blob",
            traits = {
                json_name = "serverProperties",
            },
        },
    },
}

M.DescribeReplicatorInput = {
    type = "structure",
    members = {
        ReplicatorArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ReplicationStateInfo = {
    type = "structure",
    members = {
        Code = {
            type = "string",
            traits = {
                json_name = "code",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.DescribeReplicatorOutput = {
    type = "structure",
    members = {
        CreationTime = {
            type = "timestamp",
            traits = {
                json_name = "creationTime",
            },
        },
        CurrentVersion = {
            type = "string",
            traits = {
                json_name = "currentVersion",
            },
        },
        IsReplicatorReference = {
            type = "boolean",
            traits = {
                json_name = "isReplicatorReference",
            },
        },
        KafkaClusters = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "kafkaClusters",
            },
        },
        ReplicationInfoList = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "replicationInfoList",
            },
        },
        ReplicatorArn = {
            type = "string",
            traits = {
                json_name = "replicatorArn",
            },
        },
        ReplicatorDescription = {
            type = "string",
            traits = {
                json_name = "replicatorDescription",
            },
        },
        ReplicatorName = {
            type = "string",
            traits = {
                json_name = "replicatorName",
            },
        },
        ReplicatorResourceArn = {
            type = "string",
            traits = {
                json_name = "replicatorResourceArn",
            },
        },
        ReplicatorState = {
            type = "string",
            traits = {
                json_name = "replicatorState",
            },
        },
        ServiceExecutionRoleArn = {
            type = "string",
            traits = {
                json_name = "serviceExecutionRoleArn",
            },
        },
        StateInfo = {
            type = "structure",
            traits = {
                json_name = "stateInfo",
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        LogDelivery = {
            type = "structure",
            traits = {
                json_name = "logDelivery",
            },
        },
    },
}

M.DescribeTopicInput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TopicName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeTopicOutput = {
    type = "structure",
    members = {
        TopicArn = {
            type = "string",
            traits = {
                json_name = "topicArn",
            },
        },
        TopicName = {
            type = "string",
            traits = {
                json_name = "topicName",
            },
        },
        ReplicationFactor = {
            type = "number",
            traits = {
                json_name = "replicationFactor",
            },
        },
        PartitionCount = {
            type = "number",
            traits = {
                json_name = "partitionCount",
            },
        },
        Configs = {
            type = "string",
            traits = {
                json_name = "configs",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.DescribeTopicPartitionsInput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TopicName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.DescribeTopicPartitionsOutput = {
    type = "structure",
    members = {
        Partitions = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "partitions",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.DescribeVpcConnectionInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeVpcConnectionOutput = {
    type = "structure",
    members = {
        VpcConnectionArn = {
            type = "string",
            traits = {
                json_name = "vpcConnectionArn",
            },
        },
        TargetClusterArn = {
            type = "string",
            traits = {
                json_name = "targetClusterArn",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
        Authentication = {
            type = "string",
            traits = {
                json_name = "authentication",
            },
        },
        VpcId = {
            type = "string",
            traits = {
                json_name = "vpcId",
            },
        },
        Subnets = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "subnets",
            },
        },
        SecurityGroups = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "securityGroups",
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                json_name = "creationTime",
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.GetBootstrapBrokersInput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetBootstrapBrokersOutput = {
    type = "structure",
    members = {
        BootstrapBrokerString = {
            type = "string",
            traits = {
                json_name = "bootstrapBrokerString",
            },
        },
        BootstrapBrokerStringTls = {
            type = "string",
            traits = {
                json_name = "bootstrapBrokerStringTls",
            },
        },
        BootstrapBrokerStringSaslScram = {
            type = "string",
            traits = {
                json_name = "bootstrapBrokerStringSaslScram",
            },
        },
        BootstrapBrokerStringSaslIam = {
            type = "string",
            traits = {
                json_name = "bootstrapBrokerStringSaslIam",
            },
        },
        BootstrapBrokerStringPublicTls = {
            type = "string",
            traits = {
                json_name = "bootstrapBrokerStringPublicTls",
            },
        },
        BootstrapBrokerStringPublicSaslScram = {
            type = "string",
            traits = {
                json_name = "bootstrapBrokerStringPublicSaslScram",
            },
        },
        BootstrapBrokerStringPublicSaslIam = {
            type = "string",
            traits = {
                json_name = "bootstrapBrokerStringPublicSaslIam",
            },
        },
        BootstrapBrokerStringVpcConnectivityTls = {
            type = "string",
            traits = {
                json_name = "bootstrapBrokerStringVpcConnectivityTls",
            },
        },
        BootstrapBrokerStringVpcConnectivitySaslScram = {
            type = "string",
            traits = {
                json_name = "bootstrapBrokerStringVpcConnectivitySaslScram",
            },
        },
        BootstrapBrokerStringVpcConnectivitySaslIam = {
            type = "string",
            traits = {
                json_name = "bootstrapBrokerStringVpcConnectivitySaslIam",
            },
        },
        BootstrapBrokerStringIpv6 = {
            type = "string",
            traits = {
                json_name = "bootstrapBrokerStringIpv6",
            },
        },
        BootstrapBrokerStringTlsIpv6 = {
            type = "string",
            traits = {
                json_name = "bootstrapBrokerStringTlsIpv6",
            },
        },
        BootstrapBrokerStringSaslScramIpv6 = {
            type = "string",
            traits = {
                json_name = "bootstrapBrokerStringSaslScramIpv6",
            },
        },
        BootstrapBrokerStringSaslIamIpv6 = {
            type = "string",
            traits = {
                json_name = "bootstrapBrokerStringSaslIamIpv6",
            },
        },
    },
}

M.GetClusterPolicyInput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetClusterPolicyOutput = {
    type = "structure",
    members = {
        CurrentVersion = {
            type = "string",
            traits = {
                json_name = "currentVersion",
            },
        },
        Policy = {
            type = "string",
            traits = {
                json_name = "policy",
            },
        },
    },
}

M.GetCompatibleKafkaVersionsInput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_query = "clusterArn",
            },
        },
    },
}

M.GetCompatibleKafkaVersionsOutput = {
    type = "structure",
    members = {
        CompatibleKafkaVersions = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "compatibleKafkaVersions",
            },
        },
    },
}

M.ListClientVpcConnectionsInput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListClientVpcConnectionsOutput = {
    type = "structure",
    members = {
        ClientVpcConnections = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "clientVpcConnections",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListClusterOperationsInput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListClusterOperationsOutput = {
    type = "structure",
    members = {
        ClusterOperationInfoList = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "clusterOperationInfoList",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListClusterOperationsV2Input = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListClusterOperationsV2Output = {
    type = "structure",
    members = {
        ClusterOperationInfoList = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "clusterOperationInfoList",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListClustersInput = {
    type = "structure",
    members = {
        ClusterNameFilter = {
            type = "string",
            traits = {
                http_query = "clusterNameFilter",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListClustersOutput = {
    type = "structure",
    members = {
        ClusterInfoList = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "clusterInfoList",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListClustersV2Input = {
    type = "structure",
    members = {
        ClusterNameFilter = {
            type = "string",
            traits = {
                http_query = "clusterNameFilter",
            },
        },
        ClusterTypeFilter = {
            type = "string",
            traits = {
                http_query = "clusterTypeFilter",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListClustersV2Output = {
    type = "structure",
    members = {
        ClusterInfoList = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "clusterInfoList",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListConfigurationRevisionsInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListConfigurationRevisionsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        Revisions = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "revisions",
            },
        },
    },
}

M.ListConfigurationsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListConfigurationsOutput = {
    type = "structure",
    members = {
        Configurations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "configurations",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListKafkaVersionsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListKafkaVersionsOutput = {
    type = "structure",
    members = {
        KafkaVersions = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "kafkaVersions",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListNodesInput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListNodesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        NodeInfoList = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "nodeInfoList",
            },
        },
    },
}

M.ListReplicatorsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        ReplicatorNameFilter = {
            type = "string",
            traits = {
                http_query = "replicatorNameFilter",
            },
        },
    },
}

M.ListReplicatorsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        Replicators = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "replicators",
            },
        },
    },
}

M.ListScramSecretsInput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListScramSecretsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        SecretArnList = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "secretArnList",
            },
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.ListTopicsInput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        TopicNameFilter = {
            type = "string",
            traits = {
                http_query = "topicNameFilter",
            },
        },
    },
}

M.ListTopicsOutput = {
    type = "structure",
    members = {
        Topics = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "topics",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListVpcConnectionsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListVpcConnectionsOutput = {
    type = "structure",
    members = {
        VpcConnections = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "vpcConnections",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.PutClusterPolicyInput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CurrentVersion = {
            type = "string",
            traits = {
                json_name = "currentVersion",
            },
        },
        Policy = {
            type = "string",
            traits = {
                json_name = "policy",
                required = true,
            },
        },
    },
}

M.PutClusterPolicyOutput = {
    type = "structure",
    members = {
        CurrentVersion = {
            type = "string",
            traits = {
                json_name = "currentVersion",
            },
        },
    },
}

M.RebootBrokerInput = {
    type = "structure",
    members = {
        BrokerIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "brokerIds",
                required = true,
            },
        },
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RebootBrokerOutput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                json_name = "clusterArn",
            },
        },
        ClusterOperationArn = {
            type = "string",
            traits = {
                json_name = "clusterOperationArn",
            },
        },
    },
}

M.RejectClientVpcConnectionInput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VpcConnectionArn = {
            type = "string",
            traits = {
                json_name = "vpcConnectionArn",
                required = true,
            },
        },
    },
}

M.RejectClientVpcConnectionOutput = {
    type = "structure",
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateBrokerCountInput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CurrentVersion = {
            type = "string",
            traits = {
                json_name = "currentVersion",
                required = true,
            },
        },
        TargetNumberOfBrokerNodes = {
            type = "number",
            traits = {
                json_name = "targetNumberOfBrokerNodes",
                required = true,
            },
        },
    },
}

M.UpdateBrokerCountOutput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                json_name = "clusterArn",
            },
        },
        ClusterOperationArn = {
            type = "string",
            traits = {
                json_name = "clusterOperationArn",
            },
        },
    },
}

M.UpdateBrokerStorageInput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CurrentVersion = {
            type = "string",
            traits = {
                json_name = "currentVersion",
                required = true,
            },
        },
        TargetBrokerEBSVolumeInfo = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "targetBrokerEBSVolumeInfo",
                required = true,
            },
        },
    },
}

M.UpdateBrokerStorageOutput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                json_name = "clusterArn",
            },
        },
        ClusterOperationArn = {
            type = "string",
            traits = {
                json_name = "clusterOperationArn",
            },
        },
    },
}

M.UpdateBrokerTypeInput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CurrentVersion = {
            type = "string",
            traits = {
                json_name = "currentVersion",
                required = true,
            },
        },
        TargetInstanceType = {
            type = "string",
            traits = {
                json_name = "targetInstanceType",
                required = true,
            },
        },
    },
}

M.UpdateBrokerTypeOutput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                json_name = "clusterArn",
            },
        },
        ClusterOperationArn = {
            type = "string",
            traits = {
                json_name = "clusterOperationArn",
            },
        },
    },
}

M.UpdateClusterConfigurationInput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConfigurationInfo = {
            type = "structure",
            traits = {
                json_name = "configurationInfo",
                required = true,
            },
        },
        CurrentVersion = {
            type = "string",
            traits = {
                json_name = "currentVersion",
                required = true,
            },
        },
    },
}

M.UpdateClusterConfigurationOutput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                json_name = "clusterArn",
            },
        },
        ClusterOperationArn = {
            type = "string",
            traits = {
                json_name = "clusterOperationArn",
            },
        },
    },
}

M.UpdateClusterKafkaVersionInput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConfigurationInfo = {
            type = "structure",
            traits = {
                json_name = "configurationInfo",
            },
        },
        CurrentVersion = {
            type = "string",
            traits = {
                json_name = "currentVersion",
                required = true,
            },
        },
        TargetKafkaVersion = {
            type = "string",
            traits = {
                json_name = "targetKafkaVersion",
                required = true,
            },
        },
    },
}

M.UpdateClusterKafkaVersionOutput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                json_name = "clusterArn",
            },
        },
        ClusterOperationArn = {
            type = "string",
            traits = {
                json_name = "clusterOperationArn",
            },
        },
    },
}

M.UpdateConfigurationInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        ServerProperties = {
            type = "blob",
            traits = {
                json_name = "serverProperties",
                required = true,
            },
        },
    },
}

M.UpdateConfigurationOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        LatestRevision = {
            type = "structure",
            traits = {
                json_name = "latestRevision",
            },
        },
    },
}

M.UpdateConnectivityInput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConnectivityInfo = {
            type = "structure",
            traits = {
                json_name = "connectivityInfo",
            },
        },
        CurrentVersion = {
            type = "string",
            traits = {
                json_name = "currentVersion",
                required = true,
            },
        },
        ZookeeperAccess = {
            type = "structure",
            traits = {
                json_name = "zookeeperAccess",
            },
        },
    },
}

M.UpdateConnectivityOutput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                json_name = "clusterArn",
            },
        },
        ClusterOperationArn = {
            type = "string",
            traits = {
                json_name = "clusterOperationArn",
            },
        },
    },
}

M.UpdateMonitoringInput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CurrentVersion = {
            type = "string",
            traits = {
                json_name = "currentVersion",
                required = true,
            },
        },
        EnhancedMonitoring = {
            type = "string",
            traits = {
                json_name = "enhancedMonitoring",
            },
        },
        OpenMonitoring = {
            type = "structure",
            traits = {
                json_name = "openMonitoring",
            },
        },
        LoggingInfo = {
            type = "structure",
            traits = {
                json_name = "loggingInfo",
            },
        },
    },
}

M.UpdateMonitoringOutput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                json_name = "clusterArn",
            },
        },
        ClusterOperationArn = {
            type = "string",
            traits = {
                json_name = "clusterOperationArn",
            },
        },
    },
}

M.UpdateRebalancingInput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CurrentVersion = {
            type = "string",
            traits = {
                json_name = "currentVersion",
                required = true,
            },
        },
        Rebalancing = {
            type = "structure",
            traits = {
                json_name = "rebalancing",
                required = true,
            },
        },
    },
}

M.UpdateRebalancingOutput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                json_name = "clusterArn",
            },
        },
        ClusterOperationArn = {
            type = "string",
            traits = {
                json_name = "clusterOperationArn",
            },
        },
    },
}

M.TopicReplicationUpdate = {
    type = "structure",
    members = {
        CopyAccessControlListsForTopics = {
            type = "boolean",
            traits = {
                json_name = "copyAccessControlListsForTopics",
                required = true,
            },
        },
        CopyTopicConfigurations = {
            type = "boolean",
            traits = {
                json_name = "copyTopicConfigurations",
                required = true,
            },
        },
        DetectAndCopyNewTopics = {
            type = "boolean",
            traits = {
                json_name = "detectAndCopyNewTopics",
                required = true,
            },
        },
        TopicsToExclude = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "topicsToExclude",
                required = true,
            },
        },
        TopicsToReplicate = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "topicsToReplicate",
                required = true,
            },
        },
    },
}

M.UpdateReplicationInfoInput = {
    type = "structure",
    members = {
        ConsumerGroupReplication = {
            type = "structure",
            traits = {
                json_name = "consumerGroupReplication",
            },
        },
        CurrentVersion = {
            type = "string",
            traits = {
                json_name = "currentVersion",
                required = true,
            },
        },
        ReplicatorArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SourceKafkaClusterArn = {
            type = "string",
            traits = {
                json_name = "sourceKafkaClusterArn",
            },
        },
        SourceKafkaClusterId = {
            type = "string",
            traits = {
                json_name = "sourceKafkaClusterId",
            },
        },
        TargetKafkaClusterArn = {
            type = "string",
            traits = {
                json_name = "targetKafkaClusterArn",
            },
        },
        TargetKafkaClusterId = {
            type = "string",
            traits = {
                json_name = "targetKafkaClusterId",
            },
        },
        TopicReplication = {
            type = "structure",
            traits = {
                json_name = "topicReplication",
            },
        },
        LogDelivery = {
            type = "structure",
            traits = {
                json_name = "logDelivery",
            },
        },
    },
}

M.UpdateReplicationInfoOutput = {
    type = "structure",
    members = {
        ReplicatorArn = {
            type = "string",
            traits = {
                json_name = "replicatorArn",
            },
        },
        ReplicatorState = {
            type = "string",
            traits = {
                json_name = "replicatorState",
            },
        },
    },
}

M.UpdateSecurityInput = {
    type = "structure",
    members = {
        ClientAuthentication = {
            type = "structure",
            traits = {
                json_name = "clientAuthentication",
            },
        },
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CurrentVersion = {
            type = "string",
            traits = {
                json_name = "currentVersion",
                required = true,
            },
        },
        EncryptionInfo = {
            type = "structure",
            traits = {
                json_name = "encryptionInfo",
            },
        },
    },
}

M.UpdateSecurityOutput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                json_name = "clusterArn",
            },
        },
        ClusterOperationArn = {
            type = "string",
            traits = {
                json_name = "clusterOperationArn",
            },
        },
    },
}

M.UpdateStorageInput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CurrentVersion = {
            type = "string",
            traits = {
                json_name = "currentVersion",
                required = true,
            },
        },
        ProvisionedThroughput = {
            type = "structure",
            traits = {
                json_name = "provisionedThroughput",
            },
        },
        StorageMode = {
            type = "string",
            traits = {
                json_name = "storageMode",
            },
        },
        VolumeSizeGB = {
            type = "number",
            traits = {
                json_name = "volumeSizeGB",
            },
        },
    },
}

M.UpdateStorageOutput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                json_name = "clusterArn",
            },
        },
        ClusterOperationArn = {
            type = "string",
            traits = {
                json_name = "clusterOperationArn",
            },
        },
    },
}

M.UpdateTopicInput = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TopicName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Configs = {
            type = "string",
            traits = {
                json_name = "configs",
            },
        },
        PartitionCount = {
            type = "number",
            traits = {
                json_name = "partitionCount",
            },
        },
    },
}

M.UpdateTopicOutput = {
    type = "structure",
    members = {
        TopicArn = {
            type = "string",
            traits = {
                json_name = "topicArn",
            },
        },
        TopicName = {
            type = "string",
            traits = {
                json_name = "topicName",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

return M
