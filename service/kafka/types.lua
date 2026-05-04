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
            type = "integer",
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
        ProvisionedThroughput = setmetatable({ traits = {
            json_name = "provisionedThroughput",
        } }, { __index = M.ProvisionedThroughput }),
        VolumeSizeGB = {
            type = "integer",
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
                timestamp_format = "date-time",
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
        Scram = setmetatable({ traits = {
            json_name = "scram",
        } }, { __index = M.VpcConnectivityScram }),
        Iam = setmetatable({ traits = {
            json_name = "iam",
        } }, { __index = M.VpcConnectivityIam }),
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
        Sasl = setmetatable({ traits = {
            json_name = "sasl",
        } }, { __index = M.VpcConnectivitySasl }),
        Tls = setmetatable({ traits = {
            json_name = "tls",
        } }, { __index = M.VpcConnectivityTls }),
    },
}

M.VpcConnectivity = {
    type = "structure",
    members = {
        ClientAuthentication = setmetatable({ traits = {
            json_name = "clientAuthentication",
        } }, { __index = M.VpcConnectivityClientAuthentication }),
    },
}

M.ConnectivityInfo = {
    type = "structure",
    members = {
        PublicAccess = setmetatable({ traits = {
            json_name = "publicAccess",
        } }, { __index = M.PublicAccess }),
        VpcConnectivity = setmetatable({ traits = {
            json_name = "vpcConnectivity",
        } }, { __index = M.VpcConnectivity }),
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
        ProvisionedThroughput = setmetatable({ traits = {
            json_name = "provisionedThroughput",
        } }, { __index = M.ProvisionedThroughput }),
        VolumeSize = {
            type = "integer",
            traits = {
                json_name = "volumeSize",
            },
        },
    },
}

M.StorageInfo = {
    type = "structure",
    members = {
        EbsStorageInfo = setmetatable({ traits = {
            json_name = "ebsStorageInfo",
        } }, { __index = M.EBSStorageInfo }),
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
            member = { type = "string" },
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
            member = { type = "string" },
            traits = {
                json_name = "securityGroups",
            },
        },
        StorageInfo = setmetatable({ traits = {
            json_name = "storageInfo",
        } }, { __index = M.StorageInfo }),
        ConnectivityInfo = setmetatable({ traits = {
            json_name = "connectivityInfo",
        } }, { __index = M.ConnectivityInfo }),
        ZoneIds = {
            type = "list",
            member = { type = "string" },
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
        Scram = setmetatable({ traits = {
            json_name = "scram",
        } }, { __index = M.Scram }),
        Iam = setmetatable({ traits = {
            json_name = "iam",
        } }, { __index = M.Iam }),
    },
}

M.Tls = {
    type = "structure",
    members = {
        CertificateAuthorityArnList = {
            type = "list",
            member = { type = "string" },
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
        Sasl = setmetatable({ traits = {
            json_name = "sasl",
        } }, { __index = M.Sasl }),
        Tls = setmetatable({ traits = {
            json_name = "tls",
        } }, { __index = M.Tls }),
        Unauthenticated = setmetatable({ traits = {
            json_name = "unauthenticated",
        } }, { __index = M.Unauthenticated }),
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
            type = "long",
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
        EncryptionAtRest = setmetatable({ traits = {
            json_name = "encryptionAtRest",
        } }, { __index = M.EncryptionAtRest }),
        EncryptionInTransit = setmetatable({ traits = {
            json_name = "encryptionInTransit",
        } }, { __index = M.EncryptionInTransit }),
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
        CloudWatchLogs = setmetatable({ traits = {
            json_name = "cloudWatchLogs",
        } }, { __index = M.CloudWatchLogs }),
        Firehose = setmetatable({ traits = {
            json_name = "firehose",
        } }, { __index = M.Firehose }),
        S3 = setmetatable({ traits = {
            json_name = "s3",
        } }, { __index = M.S3 }),
    },
}

M.LoggingInfo = {
    type = "structure",
    members = {
        BrokerLogs = setmetatable({ traits = {
            json_name = "brokerLogs",
            required = true,
        } }, { __index = M.BrokerLogs }),
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
        JmxExporter = setmetatable({ traits = {
            json_name = "jmxExporter",
        } }, { __index = M.JmxExporterInfo }),
        NodeExporter = setmetatable({ traits = {
            json_name = "nodeExporter",
        } }, { __index = M.NodeExporterInfo }),
    },
}

M.OpenMonitoringInfo = {
    type = "structure",
    members = {
        Prometheus = setmetatable({ traits = {
            json_name = "prometheus",
            required = true,
        } }, { __index = M.PrometheusInfo }),
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
        BrokerNodeGroupInfo = setmetatable({ traits = {
            json_name = "brokerNodeGroupInfo",
            required = true,
        } }, { __index = M.BrokerNodeGroupInfo }),
        Rebalancing = setmetatable({ traits = {
            json_name = "rebalancing",
        } }, { __index = M.Rebalancing }),
        CurrentBrokerSoftwareInfo = setmetatable({ traits = {
            json_name = "currentBrokerSoftwareInfo",
        } }, { __index = M.BrokerSoftwareInfo }),
        ClientAuthentication = setmetatable({ traits = {
            json_name = "clientAuthentication",
        } }, { __index = M.ClientAuthentication }),
        EncryptionInfo = setmetatable({ traits = {
            json_name = "encryptionInfo",
        } }, { __index = M.EncryptionInfo }),
        EnhancedMonitoring = {
            type = "string",
            traits = {
                json_name = "enhancedMonitoring",
            },
        },
        OpenMonitoring = setmetatable({ traits = {
            json_name = "openMonitoring",
        } }, { __index = M.OpenMonitoringInfo }),
        LoggingInfo = setmetatable({ traits = {
            json_name = "loggingInfo",
        } }, { __index = M.LoggingInfo }),
        NumberOfBrokerNodes = {
            type = "integer",
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
        Iam = setmetatable({ traits = {
            json_name = "iam",
        } }, { __index = M.Iam }),
    },
}

M.ServerlessClientAuthentication = {
    type = "structure",
    members = {
        Sasl = setmetatable({ traits = {
            json_name = "sasl",
        } }, { __index = M.ServerlessSasl }),
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
            member = { type = "string" },
            traits = {
                json_name = "subnetIds",
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
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
            member = M.VpcConfig,
            traits = {
                json_name = "vpcConfigs",
                required = true,
            },
        },
        ClientAuthentication = setmetatable({ traits = {
            json_name = "clientAuthentication",
        } }, { __index = M.ServerlessClientAuthentication }),
        ConnectivityInfo = setmetatable({ traits = {
            json_name = "connectivityInfo",
        } }, { __index = M.ServerlessConnectivityInfo }),
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
                timestamp_format = "date-time",
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
        StateInfo = setmetatable({ traits = {
            json_name = "stateInfo",
        } }, { __index = M.StateInfo }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        Provisioned = setmetatable({ traits = {
            json_name = "provisioned",
        } }, { __index = M.Provisioned }),
        Serverless = setmetatable({ traits = {
            json_name = "serverless",
        } }, { __index = M.Serverless }),
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
        JmxExporter = setmetatable({ traits = {
            json_name = "jmxExporter",
        } }, { __index = M.JmxExporter }),
        NodeExporter = setmetatable({ traits = {
            json_name = "nodeExporter",
        } }, { __index = M.NodeExporter }),
    },
}

M.OpenMonitoring = {
    type = "structure",
    members = {
        Prometheus = setmetatable({ traits = {
            json_name = "prometheus",
            required = true,
        } }, { __index = M.Prometheus }),
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
        BrokerNodeGroupInfo = setmetatable({ traits = {
            json_name = "brokerNodeGroupInfo",
        } }, { __index = M.BrokerNodeGroupInfo }),
        Rebalancing = setmetatable({ traits = {
            json_name = "rebalancing",
        } }, { __index = M.Rebalancing }),
        ClientAuthentication = setmetatable({ traits = {
            json_name = "clientAuthentication",
        } }, { __index = M.ClientAuthentication }),
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
                timestamp_format = "date-time",
            },
        },
        CurrentBrokerSoftwareInfo = setmetatable({ traits = {
            json_name = "currentBrokerSoftwareInfo",
        } }, { __index = M.BrokerSoftwareInfo }),
        CurrentVersion = {
            type = "string",
            traits = {
                json_name = "currentVersion",
            },
        },
        EncryptionInfo = setmetatable({ traits = {
            json_name = "encryptionInfo",
        } }, { __index = M.EncryptionInfo }),
        EnhancedMonitoring = {
            type = "string",
            traits = {
                json_name = "enhancedMonitoring",
            },
        },
        OpenMonitoring = setmetatable({ traits = {
            json_name = "openMonitoring",
        } }, { __index = M.OpenMonitoring }),
        LoggingInfo = setmetatable({ traits = {
            json_name = "loggingInfo",
        } }, { __index = M.LoggingInfo }),
        NumberOfBrokerNodes = {
            type = "integer",
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
        StateInfo = setmetatable({ traits = {
            json_name = "stateInfo",
        } }, { __index = M.StateInfo }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
        StepInfo = setmetatable({ traits = {
            json_name = "stepInfo",
        } }, { __index = M.ClusterOperationStepInfo }),
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
            member = { type = "double" },
            traits = {
                json_name = "createdBrokerIds",
            },
        },
        DeletedBrokerIds = {
            type = "list",
            member = { type = "double" },
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
            type = "long",
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
            member = M.BrokerEBSVolumeInfo,
            traits = {
                json_name = "brokerEBSVolumeInfo",
            },
        },
        ConfigurationInfo = setmetatable({ traits = {
            json_name = "configurationInfo",
        } }, { __index = M.ConfigurationInfo }),
        NumberOfBrokerNodes = {
            type = "integer",
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
        OpenMonitoring = setmetatable({ traits = {
            json_name = "openMonitoring",
        } }, { __index = M.OpenMonitoring }),
        ZookeeperAccess = setmetatable({ traits = {
            json_name = "zookeeperAccess",
        } }, { __index = M.ZookeeperAccess }),
        KafkaVersion = {
            type = "string",
            traits = {
                json_name = "kafkaVersion",
            },
        },
        LoggingInfo = setmetatable({ traits = {
            json_name = "loggingInfo",
        } }, { __index = M.LoggingInfo }),
        InstanceType = {
            type = "string",
            traits = {
                json_name = "instanceType",
            },
        },
        ClientAuthentication = setmetatable({ traits = {
            json_name = "clientAuthentication",
        } }, { __index = M.ClientAuthentication }),
        EncryptionInfo = setmetatable({ traits = {
            json_name = "encryptionInfo",
        } }, { __index = M.EncryptionInfo }),
        ConnectivityInfo = setmetatable({ traits = {
            json_name = "connectivityInfo",
        } }, { __index = M.ConnectivityInfo }),
        StorageMode = {
            type = "string",
            traits = {
                json_name = "storageMode",
            },
        },
        BrokerCountUpdateInfo = setmetatable({ traits = {
            json_name = "brokerCountUpdateInfo",
        } }, { __index = M.BrokerCountUpdateInfo }),
        Rebalancing = setmetatable({ traits = {
            json_name = "rebalancing",
        } }, { __index = M.Rebalancing }),
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
        UserIdentity = setmetatable({ traits = {
            json_name = "userIdentity",
        } }, { __index = M.UserIdentity }),
        CreationTime = {
            type = "timestamp",
            traits = {
                json_name = "creationTime",
                timestamp_format = "date-time",
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
                timestamp_format = "date-time",
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                json_name = "endTime",
                timestamp_format = "date-time",
            },
        },
        ErrorInfo = setmetatable({ traits = {
            json_name = "errorInfo",
        } }, { __index = M.ErrorInfo }),
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
            member = M.ClusterOperationStep,
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
        SourceClusterInfo = setmetatable({ traits = {
            json_name = "sourceClusterInfo",
        } }, { __index = M.MutableClusterInfo }),
        TargetClusterInfo = setmetatable({ traits = {
            json_name = "targetClusterInfo",
        } }, { __index = M.MutableClusterInfo }),
        VpcConnectionInfo = setmetatable({ traits = {
            json_name = "vpcConnectionInfo",
        } }, { __index = M.VpcConnectionInfo }),
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
                timestamp_format = "date-time",
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                json_name = "endTime",
                timestamp_format = "date-time",
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
            member = { type = "string" },
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
                timestamp_format = "date-time",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        Revision = {
            type = "long",
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
                timestamp_format = "date-time",
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
            member = { type = "string" },
            traits = {
                json_name = "kafkaVersions",
                required = true,
            },
        },
        LatestRevision = setmetatable({ traits = {
            json_name = "latestRevision",
            required = true,
        } }, { __index = M.ConfigurationRevision }),
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
        SaslScram = setmetatable({ traits = {
            json_name = "saslScram",
            required = true,
        } }, { __index = M.KafkaClusterSaslScramAuthentication }),
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
            member = { type = "string" },
            traits = {
                json_name = "securityGroupIds",
            },
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
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
        AmazonMskCluster = setmetatable({ traits = {
            json_name = "amazonMskCluster",
        } }, { __index = M.AmazonMskCluster }),
        ApacheKafkaCluster = setmetatable({ traits = {
            json_name = "apacheKafkaCluster",
        } }, { __index = M.ApacheKafkaCluster }),
        VpcConfig = setmetatable({ traits = {
            json_name = "vpcConfig",
        } }, { __index = M.KafkaClusterClientVpcConfig }),
        ClientAuthentication = setmetatable({ traits = {
            json_name = "clientAuthentication",
        } }, { __index = M.KafkaClusterClientAuthentication }),
        EncryptionInTransit = setmetatable({ traits = {
            json_name = "encryptionInTransit",
        } }, { __index = M.KafkaClusterEncryptionInTransit }),
    },
}

M.KafkaClusterDescription = {
    type = "structure",
    members = {
        AmazonMskCluster = setmetatable({ traits = {
            json_name = "amazonMskCluster",
        } }, { __index = M.AmazonMskCluster }),
        ApacheKafkaCluster = setmetatable({ traits = {
            json_name = "apacheKafkaCluster",
        } }, { __index = M.ApacheKafkaCluster }),
        KafkaClusterAlias = {
            type = "string",
            traits = {
                json_name = "kafkaClusterAlias",
            },
        },
        VpcConfig = setmetatable({ traits = {
            json_name = "vpcConfig",
        } }, { __index = M.KafkaClusterClientVpcConfig }),
        ClientAuthentication = setmetatable({ traits = {
            json_name = "clientAuthentication",
        } }, { __index = M.KafkaClusterClientAuthentication }),
        EncryptionInTransit = setmetatable({ traits = {
            json_name = "encryptionInTransit",
        } }, { __index = M.KafkaClusterEncryptionInTransit }),
    },
}

M.KafkaClusterSummary = {
    type = "structure",
    members = {
        AmazonMskCluster = setmetatable({ traits = {
            json_name = "amazonMskCluster",
        } }, { __index = M.AmazonMskCluster }),
        ApacheKafkaCluster = setmetatable({ traits = {
            json_name = "apacheKafkaCluster",
        } }, { __index = M.ApacheKafkaCluster }),
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
            type = "double",
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
        CurrentBrokerSoftwareInfo = setmetatable({ traits = {
            json_name = "currentBrokerSoftwareInfo",
        } }, { __index = M.BrokerSoftwareInfo }),
        Endpoints = {
            type = "list",
            member = { type = "string" },
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
            member = { type = "string" },
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
            member = { type = "string" },
            traits = {
                json_name = "endpoints",
            },
        },
        ZookeeperId = {
            type = "double",
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
        BrokerNodeInfo = setmetatable({ traits = {
            json_name = "brokerNodeInfo",
        } }, { __index = M.BrokerNodeInfo }),
        ControllerNodeInfo = setmetatable({ traits = {
            json_name = "controllerNodeInfo",
        } }, { __index = M.ControllerNodeInfo }),
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
        ZookeeperNodeInfo = setmetatable({ traits = {
            json_name = "zookeeperNodeInfo",
        } }, { __index = M.ZookeeperNodeInfo }),
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
            member = { type = "string" },
            traits = {
                json_name = "consumerGroupsToExclude",
            },
        },
        ConsumerGroupsToReplicate = {
            type = "list",
            member = { type = "string" },
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
        StartingPosition = setmetatable({ traits = {
            json_name = "startingPosition",
        } }, { __index = M.ReplicationStartingPosition }),
        TopicNameConfiguration = setmetatable({ traits = {
            json_name = "topicNameConfiguration",
        } }, { __index = M.ReplicationTopicNameConfiguration }),
        TopicsToExclude = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "topicsToExclude",
            },
        },
        TopicsToReplicate = {
            type = "list",
            member = { type = "string" },
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
        ConsumerGroupReplication = setmetatable({ traits = {
            json_name = "consumerGroupReplication",
            required = true,
        } }, { __index = M.ConsumerGroupReplication }),
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
        TopicReplication = setmetatable({ traits = {
            json_name = "topicReplication",
            required = true,
        } }, { __index = M.TopicReplication }),
    },
}

M.ReplicationInfoDescription = {
    type = "structure",
    members = {
        ConsumerGroupReplication = setmetatable({ traits = {
            json_name = "consumerGroupReplication",
        } }, { __index = M.ConsumerGroupReplication }),
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
        TopicReplication = setmetatable({ traits = {
            json_name = "topicReplication",
        } }, { __index = M.TopicReplication }),
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
                timestamp_format = "date-time",
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
            member = M.KafkaClusterSummary,
            traits = {
                json_name = "kafkaClustersSummary",
            },
        },
        ReplicationInfoSummaryList = {
            type = "list",
            member = M.ReplicationInfoSummary,
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
            type = "integer",
            traits = {
                json_name = "replicationFactor",
            },
        },
        PartitionCount = {
            type = "integer",
            traits = {
                json_name = "partitionCount",
            },
        },
        OutOfSyncReplicaCount = {
            type = "integer",
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
            type = "integer",
            traits = {
                json_name = "partition",
            },
        },
        Leader = {
            type = "integer",
            traits = {
                json_name = "leader",
            },
        },
        Replicas = {
            type = "list",
            member = { type = "integer" },
            traits = {
                json_name = "replicas",
            },
        },
        Isr = {
            type = "list",
            member = { type = "integer" },
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
                timestamp_format = "date-time",
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
            member = { type = "string" },
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
            member = M.UnprocessedScramSecret,
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
            member = { type = "string" },
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
            member = M.UnprocessedScramSecret,
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
            member = M.ClusterOperationStep,
            traits = {
                json_name = "operationSteps",
            },
        },
        SourceClusterInfo = setmetatable({ traits = {
            json_name = "sourceClusterInfo",
        } }, { __index = M.MutableClusterInfo }),
        TargetClusterInfo = setmetatable({ traits = {
            json_name = "targetClusterInfo",
        } }, { __index = M.MutableClusterInfo }),
        VpcConnectionInfo = setmetatable({ traits = {
            json_name = "vpcConnectionInfo",
        } }, { __index = M.VpcConnectionInfo }),
    },
}

M.VpcConnectionInfoServerless = {
    type = "structure",
    members = {
        CreationTime = {
            type = "timestamp",
            traits = {
                json_name = "creationTime",
                timestamp_format = "date-time",
            },
        },
        Owner = {
            type = "string",
            traits = {
                json_name = "owner",
            },
        },
        UserIdentity = setmetatable({ traits = {
            json_name = "userIdentity",
        } }, { __index = M.UserIdentity }),
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
        SourceClusterInfo = setmetatable({ traits = {
            json_name = "sourceClusterInfo",
        } }, { __index = M.ServerlessConnectivityInfo }),
        TargetClusterInfo = setmetatable({ traits = {
            json_name = "targetClusterInfo",
        } }, { __index = M.ServerlessConnectivityInfo }),
        VpcConnectionInfo = setmetatable({ traits = {
            json_name = "vpcConnectionInfo",
        } }, { __index = M.VpcConnectionInfoServerless }),
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
                timestamp_format = "date-time",
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                json_name = "endTime",
                timestamp_format = "date-time",
            },
        },
        ErrorInfo = setmetatable({ traits = {
            json_name = "errorInfo",
        } }, { __index = M.ErrorInfo }),
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
        Provisioned = setmetatable({ traits = {
            json_name = "provisioned",
        } }, { __index = M.ClusterOperationV2Provisioned }),
        Serverless = setmetatable({ traits = {
            json_name = "serverless",
        } }, { __index = M.ClusterOperationV2Serverless }),
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
            member = { type = "string" },
            traits = {
                json_name = "consumerGroupsToExclude",
                required = true,
            },
        },
        ConsumerGroupsToReplicate = {
            type = "list",
            member = { type = "string" },
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
        BrokerNodeGroupInfo = setmetatable({ traits = {
            json_name = "brokerNodeGroupInfo",
            required = true,
        } }, { __index = M.BrokerNodeGroupInfo }),
        Rebalancing = setmetatable({ traits = {
            json_name = "rebalancing",
        } }, { __index = M.Rebalancing }),
        ClientAuthentication = setmetatable({ traits = {
            json_name = "clientAuthentication",
        } }, { __index = M.ClientAuthentication }),
        ClusterName = {
            type = "string",
            traits = {
                json_name = "clusterName",
                required = true,
            },
        },
        ConfigurationInfo = setmetatable({ traits = {
            json_name = "configurationInfo",
        } }, { __index = M.ConfigurationInfo }),
        EncryptionInfo = setmetatable({ traits = {
            json_name = "encryptionInfo",
        } }, { __index = M.EncryptionInfo }),
        EnhancedMonitoring = {
            type = "string",
            traits = {
                json_name = "enhancedMonitoring",
            },
        },
        OpenMonitoring = setmetatable({ traits = {
            json_name = "openMonitoring",
        } }, { __index = M.OpenMonitoringInfo }),
        KafkaVersion = {
            type = "string",
            traits = {
                json_name = "kafkaVersion",
                required = true,
            },
        },
        LoggingInfo = setmetatable({ traits = {
            json_name = "loggingInfo",
        } }, { __index = M.LoggingInfo }),
        NumberOfBrokerNodes = {
            type = "integer",
            traits = {
                json_name = "numberOfBrokerNodes",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
        BrokerNodeGroupInfo = setmetatable({ traits = {
            json_name = "brokerNodeGroupInfo",
            required = true,
        } }, { __index = M.BrokerNodeGroupInfo }),
        Rebalancing = setmetatable({ traits = {
            json_name = "rebalancing",
        } }, { __index = M.Rebalancing }),
        ClientAuthentication = setmetatable({ traits = {
            json_name = "clientAuthentication",
        } }, { __index = M.ClientAuthentication }),
        ConfigurationInfo = setmetatable({ traits = {
            json_name = "configurationInfo",
        } }, { __index = M.ConfigurationInfo }),
        EncryptionInfo = setmetatable({ traits = {
            json_name = "encryptionInfo",
        } }, { __index = M.EncryptionInfo }),
        EnhancedMonitoring = {
            type = "string",
            traits = {
                json_name = "enhancedMonitoring",
            },
        },
        OpenMonitoring = setmetatable({ traits = {
            json_name = "openMonitoring",
        } }, { __index = M.OpenMonitoringInfo }),
        KafkaVersion = {
            type = "string",
            traits = {
                json_name = "kafkaVersion",
                required = true,
            },
        },
        LoggingInfo = setmetatable({ traits = {
            json_name = "loggingInfo",
        } }, { __index = M.LoggingInfo }),
        NumberOfBrokerNodes = {
            type = "integer",
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
            member = M.VpcConfig,
            traits = {
                json_name = "vpcConfigs",
                required = true,
            },
        },
        ClientAuthentication = setmetatable({ traits = {
            json_name = "clientAuthentication",
        } }, { __index = M.ServerlessClientAuthentication }),
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        Provisioned = setmetatable({ traits = {
            json_name = "provisioned",
        } }, { __index = M.ProvisionedRequest }),
        Serverless = setmetatable({ traits = {
            json_name = "serverless",
        } }, { __index = M.ServerlessRequest }),
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
            member = { type = "string" },
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
                timestamp_format = "date-time",
            },
        },
        LatestRevision = setmetatable({ traits = {
            json_name = "latestRevision",
        } }, { __index = M.ConfigurationRevision }),
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
        CloudWatchLogs = setmetatable({ traits = {
            json_name = "cloudWatchLogs",
        } }, { __index = M.ReplicatorCloudWatchLogs }),
        Firehose = setmetatable({ traits = {
            json_name = "firehose",
        } }, { __index = M.ReplicatorFirehose }),
        S3 = setmetatable({ traits = {
            json_name = "s3",
        } }, { __index = M.ReplicatorS3 }),
    },
}

M.LogDelivery = {
    type = "structure",
    members = {
        ReplicatorLogDelivery = setmetatable({ traits = {
            json_name = "replicatorLogDelivery",
        } }, { __index = M.ReplicatorLogDelivery }),
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
            member = M.KafkaCluster,
            traits = {
                json_name = "kafkaClusters",
                required = true,
            },
        },
        ReplicationInfoList = {
            type = "list",
            member = M.ReplicationInfo,
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        LogDelivery = setmetatable({ traits = {
            json_name = "logDelivery",
        } }, { __index = M.LogDelivery }),
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
            type = "integer",
            traits = {
                json_name = "partitionCount",
                required = true,
            },
        },
        ReplicationFactor = {
            type = "integer",
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
            member = { type = "string" },
            traits = {
                json_name = "clientSubnets",
                required = true,
            },
        },
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "securityGroups",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            member = { type = "string" },
            traits = {
                json_name = "clientSubnets",
            },
        },
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "securityGroups",
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                json_name = "creationTime",
                timestamp_format = "date-time",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
        ClusterInfo = setmetatable({ traits = {
            json_name = "clusterInfo",
        } }, { __index = M.ClusterInfo }),
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
        ClusterOperationInfo = setmetatable({ traits = {
            json_name = "clusterOperationInfo",
        } }, { __index = M.ClusterOperationInfo }),
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
        ClusterOperationInfo = setmetatable({ traits = {
            json_name = "clusterOperationInfo",
        } }, { __index = M.ClusterOperationV2 }),
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
        ClusterInfo = setmetatable({ traits = {
            json_name = "clusterInfo",
        } }, { __index = M.Cluster }),
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
                timestamp_format = "date-time",
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
            member = { type = "string" },
            traits = {
                json_name = "kafkaVersions",
            },
        },
        LatestRevision = setmetatable({ traits = {
            json_name = "latestRevision",
        } }, { __index = M.ConfigurationRevision }),
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
            type = "long",
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
                timestamp_format = "date-time",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        Revision = {
            type = "long",
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
                timestamp_format = "date-time",
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
            member = M.KafkaClusterDescription,
            traits = {
                json_name = "kafkaClusters",
            },
        },
        ReplicationInfoList = {
            type = "list",
            member = M.ReplicationInfoDescription,
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
        StateInfo = setmetatable({ traits = {
            json_name = "stateInfo",
        } }, { __index = M.ReplicationStateInfo }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        LogDelivery = setmetatable({ traits = {
            json_name = "logDelivery",
        } }, { __index = M.LogDelivery }),
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
            type = "integer",
            traits = {
                json_name = "replicationFactor",
            },
        },
        PartitionCount = {
            type = "integer",
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
            type = "integer",
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
            member = M.TopicPartitionInfo,
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
            member = { type = "string" },
            traits = {
                json_name = "subnets",
            },
        },
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "securityGroups",
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                json_name = "creationTime",
                timestamp_format = "date-time",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            member = M.CompatibleKafkaVersion,
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
            type = "integer",
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
            member = M.ClientVpcConnection,
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
            type = "integer",
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
            member = M.ClusterOperationInfo,
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
            type = "integer",
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
            member = M.ClusterOperationV2Summary,
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
            type = "integer",
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
            member = M.ClusterInfo,
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
            type = "integer",
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
            member = M.Cluster,
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
            type = "integer",
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
            member = M.ConfigurationRevision,
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
            type = "integer",
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
            member = M.Configuration,
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
            type = "integer",
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
            member = M.KafkaVersion,
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
            type = "integer",
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
            member = M.NodeInfo,
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
            type = "integer",
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
            member = M.ReplicatorSummary,
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
            type = "integer",
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
            member = { type = "string" },
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
            key = { type = "string" },
            value = { type = "string" },
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
            type = "integer",
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
            member = M.TopicInfo,
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
            type = "integer",
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
            member = M.VpcConnection,
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
            member = { type = "string" },
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
            key = { type = "string" },
            value = { type = "string" },
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
            member = { type = "string" },
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
            type = "integer",
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
            member = M.BrokerEBSVolumeInfo,
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
        ConfigurationInfo = setmetatable({ traits = {
            json_name = "configurationInfo",
            required = true,
        } }, { __index = M.ConfigurationInfo }),
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
        ConfigurationInfo = setmetatable({ traits = {
            json_name = "configurationInfo",
        } }, { __index = M.ConfigurationInfo }),
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
        LatestRevision = setmetatable({ traits = {
            json_name = "latestRevision",
        } }, { __index = M.ConfigurationRevision }),
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
        ConnectivityInfo = setmetatable({ traits = {
            json_name = "connectivityInfo",
        } }, { __index = M.ConnectivityInfo }),
        CurrentVersion = {
            type = "string",
            traits = {
                json_name = "currentVersion",
                required = true,
            },
        },
        ZookeeperAccess = setmetatable({ traits = {
            json_name = "zookeeperAccess",
        } }, { __index = M.ZookeeperAccess }),
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
        OpenMonitoring = setmetatable({ traits = {
            json_name = "openMonitoring",
        } }, { __index = M.OpenMonitoringInfo }),
        LoggingInfo = setmetatable({ traits = {
            json_name = "loggingInfo",
        } }, { __index = M.LoggingInfo }),
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
        Rebalancing = setmetatable({ traits = {
            json_name = "rebalancing",
            required = true,
        } }, { __index = M.Rebalancing }),
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
            member = { type = "string" },
            traits = {
                json_name = "topicsToExclude",
                required = true,
            },
        },
        TopicsToReplicate = {
            type = "list",
            member = { type = "string" },
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
        ConsumerGroupReplication = setmetatable({ traits = {
            json_name = "consumerGroupReplication",
        } }, { __index = M.ConsumerGroupReplicationUpdate }),
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
        TopicReplication = setmetatable({ traits = {
            json_name = "topicReplication",
        } }, { __index = M.TopicReplicationUpdate }),
        LogDelivery = setmetatable({ traits = {
            json_name = "logDelivery",
        } }, { __index = M.LogDelivery }),
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
        ClientAuthentication = setmetatable({ traits = {
            json_name = "clientAuthentication",
        } }, { __index = M.ClientAuthentication }),
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
        EncryptionInfo = setmetatable({ traits = {
            json_name = "encryptionInfo",
        } }, { __index = M.EncryptionInfo }),
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
        ProvisionedThroughput = setmetatable({ traits = {
            json_name = "provisionedThroughput",
        } }, { __index = M.ProvisionedThroughput }),
        StorageMode = {
            type = "string",
            traits = {
                json_name = "storageMode",
            },
        },
        VolumeSizeGB = {
            type = "integer",
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
            type = "integer",
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
