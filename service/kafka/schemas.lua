local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.kafka"

local M = {}

M.__listOf__string = schema.new({ type = "list", list_member = prelude.String })

M.__listOfUnprocessedScramSecret = schema.new({ type = "list", list_member = M.UnprocessedScramSecret })

M.__mapOf__string = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.__listOfKafkaCluster = schema.new({ type = "list", list_member = M.KafkaCluster })

M.__listOfReplicationInfo = schema.new({ type = "list", list_member = M.ReplicationInfo })

M.__listOfKafkaClusterDescription = schema.new({ type = "list", list_member = M.KafkaClusterDescription })

M.__listOfReplicationInfoDescription = schema.new({ type = "list", list_member = M.ReplicationInfoDescription })

M.__listOfTopicPartitionInfo = schema.new({ type = "list", list_member = M.TopicPartitionInfo })

M.__listOfCompatibleKafkaVersion = schema.new({ type = "list", list_member = M.CompatibleKafkaVersion })

M.__listOfClientVpcConnection = schema.new({ type = "list", list_member = M.ClientVpcConnection })

M.__listOfClusterOperationInfo = schema.new({ type = "list", list_member = M.ClusterOperationInfo })

M.__listOfClusterOperationV2Summary = schema.new({ type = "list", list_member = M.ClusterOperationV2Summary })

M.__listOfClusterInfo = schema.new({ type = "list", list_member = M.ClusterInfo })

M.__listOfCluster = schema.new({ type = "list", list_member = M.Cluster })

M.__listOfConfigurationRevision = schema.new({ type = "list", list_member = M.ConfigurationRevision })

M.__listOfConfiguration = schema.new({ type = "list", list_member = M.Configuration })

M.__listOfKafkaVersion = schema.new({ type = "list", list_member = M.KafkaVersion })

M.__listOfNodeInfo = schema.new({ type = "list", list_member = M.NodeInfo })

M.__listOfReplicatorSummary = schema.new({ type = "list", list_member = M.ReplicatorSummary })

M.__listOfTopicInfo = schema.new({ type = "list", list_member = M.TopicInfo })

M.__listOfVpcConnection = schema.new({ type = "list", list_member = M.VpcConnection })

M.__listOfBrokerEBSVolumeInfo = schema.new({ type = "list", list_member = M.BrokerEBSVolumeInfo })

M.__listOfVpcConfig = schema.new({ type = "list", list_member = M.VpcConfig })

M.__listOfClusterOperationStep = schema.new({ type = "list", list_member = M.ClusterOperationStep })

M.__listOf__stringMax256 = schema.new({ type = "list", list_member = prelude.String })

M.__listOf__stringMax249 = schema.new({ type = "list", list_member = prelude.String })

M.__listOf__integer = schema.new({ type = "list", list_member = prelude.Integer })

M.__listOfKafkaClusterSummary = schema.new({ type = "list", list_member = M.KafkaClusterSummary })

M.__listOfReplicationInfoSummary = schema.new({ type = "list", list_member = M.ReplicationInfoSummary })

M.__listOf__double = schema.new({ type = "list", list_member = prelude.Double })

M.ProvisionedThroughput = schema.new({
    id = id.from(_N, "ProvisionedThroughput"),
    type = "structure",
    members = {
        Enabled = schema.new({
            id = id.from(_N, "ProvisionedThroughput", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "enabled" },
            },
        }),
        VolumeThroughput = schema.new({
            id = id.from(_N, "ProvisionedThroughput", "VolumeThroughput"),
            type = "integer",
            name = "VolumeThroughput",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "volumeThroughput" },
            },
        }),
    },
})

M.BrokerEBSVolumeInfo = schema.new({
    id = id.from(_N, "BrokerEBSVolumeInfo"),
    type = "structure",
    members = {
        KafkaBrokerNodeId = schema.new({
            id = id.from(_N, "BrokerEBSVolumeInfo", "KafkaBrokerNodeId"),
            type = "string",
            name = "KafkaBrokerNodeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "kafkaBrokerNodeId" },
            },
        }),
        ProvisionedThroughput = schema.new({
            id = id.from(_N, "BrokerEBSVolumeInfo", "ProvisionedThroughput"),
            type = "structure",
            name = "ProvisionedThroughput",
            target_id = id.from(_N, "ProvisionedThroughput"),
            target = M.ProvisionedThroughput,
            traits = {
                [traits.JSON_NAME] = { name = "provisionedThroughput" },
            },
        }),
        VolumeSizeGB = schema.new({
            id = id.from(_N, "BrokerEBSVolumeInfo", "VolumeSizeGB"),
            type = "integer",
            name = "VolumeSizeGB",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "volumeSizeGB" },
            },
        }),
    },
})

M.ClientVpcConnection = schema.new({
    id = id.from(_N, "ClientVpcConnection"),
    type = "structure",
    members = {
        Authentication = schema.new({
            id = id.from(_N, "ClientVpcConnection", "Authentication"),
            type = "string",
            name = "Authentication",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "authentication" },
            },
        }),
        CreationTime = schema.new({
            id = id.from(_N, "ClientVpcConnection", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.JSON_NAME] = { name = "creationTime" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.JSON_NAME] = { name = "creationTime" },
            },
        }),
        State = schema.new({
            id = id.from(_N, "ClientVpcConnection", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "state" },
            },
        }),
        VpcConnectionArn = schema.new({
            id = id.from(_N, "ClientVpcConnection", "VpcConnectionArn"),
            type = "string",
            name = "VpcConnectionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "vpcConnectionArn" },
            },
        }),
        Owner = schema.new({
            id = id.from(_N, "ClientVpcConnection", "Owner"),
            type = "string",
            name = "Owner",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "owner" },
            },
        }),
    },
})

M.PublicAccess = schema.new({
    id = id.from(_N, "PublicAccess"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "PublicAccess", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "type" },
            },
        }),
    },
})

M.VpcConnectivityIam = schema.new({
    id = id.from(_N, "VpcConnectivityIam"),
    type = "structure",
    members = {
        Enabled = schema.new({
            id = id.from(_N, "VpcConnectivityIam", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "enabled" },
            },
        }),
    },
})

M.VpcConnectivityScram = schema.new({
    id = id.from(_N, "VpcConnectivityScram"),
    type = "structure",
    members = {
        Enabled = schema.new({
            id = id.from(_N, "VpcConnectivityScram", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "enabled" },
            },
        }),
    },
})

M.VpcConnectivitySasl = schema.new({
    id = id.from(_N, "VpcConnectivitySasl"),
    type = "structure",
    members = {
        Scram = schema.new({
            id = id.from(_N, "VpcConnectivitySasl", "Scram"),
            type = "structure",
            name = "Scram",
            target_id = id.from(_N, "VpcConnectivityScram"),
            target = M.VpcConnectivityScram,
            traits = {
                [traits.JSON_NAME] = { name = "scram" },
            },
        }),
        Iam = schema.new({
            id = id.from(_N, "VpcConnectivitySasl", "Iam"),
            type = "structure",
            name = "Iam",
            target_id = id.from(_N, "VpcConnectivityIam"),
            target = M.VpcConnectivityIam,
            traits = {
                [traits.JSON_NAME] = { name = "iam" },
            },
        }),
    },
})

M.VpcConnectivityTls = schema.new({
    id = id.from(_N, "VpcConnectivityTls"),
    type = "structure",
    members = {
        Enabled = schema.new({
            id = id.from(_N, "VpcConnectivityTls", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "enabled" },
            },
        }),
    },
})

M.VpcConnectivityClientAuthentication = schema.new({
    id = id.from(_N, "VpcConnectivityClientAuthentication"),
    type = "structure",
    members = {
        Sasl = schema.new({
            id = id.from(_N, "VpcConnectivityClientAuthentication", "Sasl"),
            type = "structure",
            name = "Sasl",
            target_id = id.from(_N, "VpcConnectivitySasl"),
            target = M.VpcConnectivitySasl,
            traits = {
                [traits.JSON_NAME] = { name = "sasl" },
            },
        }),
        Tls = schema.new({
            id = id.from(_N, "VpcConnectivityClientAuthentication", "Tls"),
            type = "structure",
            name = "Tls",
            target_id = id.from(_N, "VpcConnectivityTls"),
            target = M.VpcConnectivityTls,
            traits = {
                [traits.JSON_NAME] = { name = "tls" },
            },
        }),
    },
})

M.VpcConnectivity = schema.new({
    id = id.from(_N, "VpcConnectivity"),
    type = "structure",
    members = {
        ClientAuthentication = schema.new({
            id = id.from(_N, "VpcConnectivity", "ClientAuthentication"),
            type = "structure",
            name = "ClientAuthentication",
            target_id = id.from(_N, "VpcConnectivityClientAuthentication"),
            target = M.VpcConnectivityClientAuthentication,
            traits = {
                [traits.JSON_NAME] = { name = "clientAuthentication" },
            },
        }),
    },
})

M.ConnectivityInfo = schema.new({
    id = id.from(_N, "ConnectivityInfo"),
    type = "structure",
    members = {
        PublicAccess = schema.new({
            id = id.from(_N, "ConnectivityInfo", "PublicAccess"),
            type = "structure",
            name = "PublicAccess",
            target_id = id.from(_N, "PublicAccess"),
            target = M.PublicAccess,
            traits = {
                [traits.JSON_NAME] = { name = "publicAccess" },
            },
        }),
        VpcConnectivity = schema.new({
            id = id.from(_N, "ConnectivityInfo", "VpcConnectivity"),
            type = "structure",
            name = "VpcConnectivity",
            target_id = id.from(_N, "VpcConnectivity"),
            target = M.VpcConnectivity,
            traits = {
                [traits.JSON_NAME] = { name = "vpcConnectivity" },
            },
        }),
        NetworkType = schema.new({
            id = id.from(_N, "ConnectivityInfo", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "networkType" },
            },
        }),
    },
})

M.EBSStorageInfo = schema.new({
    id = id.from(_N, "EBSStorageInfo"),
    type = "structure",
    members = {
        ProvisionedThroughput = schema.new({
            id = id.from(_N, "EBSStorageInfo", "ProvisionedThroughput"),
            type = "structure",
            name = "ProvisionedThroughput",
            target_id = id.from(_N, "ProvisionedThroughput"),
            target = M.ProvisionedThroughput,
            traits = {
                [traits.JSON_NAME] = { name = "provisionedThroughput" },
            },
        }),
        VolumeSize = schema.new({
            id = id.from(_N, "EBSStorageInfo", "VolumeSize"),
            type = "integer",
            name = "VolumeSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "volumeSize" },
            },
        }),
    },
})

M.StorageInfo = schema.new({
    id = id.from(_N, "StorageInfo"),
    type = "structure",
    members = {
        EbsStorageInfo = schema.new({
            id = id.from(_N, "StorageInfo", "EbsStorageInfo"),
            type = "structure",
            name = "EbsStorageInfo",
            target_id = id.from(_N, "EBSStorageInfo"),
            target = M.EBSStorageInfo,
            traits = {
                [traits.JSON_NAME] = { name = "ebsStorageInfo" },
            },
        }),
    },
})

M.BrokerNodeGroupInfo = schema.new({
    id = id.from(_N, "BrokerNodeGroupInfo"),
    type = "structure",
    members = {
        BrokerAZDistribution = schema.new({
            id = id.from(_N, "BrokerNodeGroupInfo", "BrokerAZDistribution"),
            type = "string",
            name = "BrokerAZDistribution",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "brokerAZDistribution" },
            },
        }),
        ClientSubnets = schema.new({
            id = id.from(_N, "BrokerNodeGroupInfo", "ClientSubnets"),
            type = "list",
            name = "ClientSubnets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "clientSubnets" },
            },
        }),
        InstanceType = schema.new({
            id = id.from(_N, "BrokerNodeGroupInfo", "InstanceType"),
            type = "string",
            name = "InstanceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "instanceType" },
            },
        }),
        SecurityGroups = schema.new({
            id = id.from(_N, "BrokerNodeGroupInfo", "SecurityGroups"),
            type = "list",
            name = "SecurityGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "securityGroups" },
            },
        }),
        StorageInfo = schema.new({
            id = id.from(_N, "BrokerNodeGroupInfo", "StorageInfo"),
            type = "structure",
            name = "StorageInfo",
            target_id = id.from(_N, "StorageInfo"),
            target = M.StorageInfo,
            traits = {
                [traits.JSON_NAME] = { name = "storageInfo" },
            },
        }),
        ConnectivityInfo = schema.new({
            id = id.from(_N, "BrokerNodeGroupInfo", "ConnectivityInfo"),
            type = "structure",
            name = "ConnectivityInfo",
            target_id = id.from(_N, "ConnectivityInfo"),
            target = M.ConnectivityInfo,
            traits = {
                [traits.JSON_NAME] = { name = "connectivityInfo" },
            },
        }),
        ZoneIds = schema.new({
            id = id.from(_N, "BrokerNodeGroupInfo", "ZoneIds"),
            type = "list",
            name = "ZoneIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "zoneIds" },
            },
        }),
    },
})

M.Iam = schema.new({
    id = id.from(_N, "Iam"),
    type = "structure",
    members = {
        Enabled = schema.new({
            id = id.from(_N, "Iam", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "enabled" },
            },
        }),
    },
})

M.Scram = schema.new({
    id = id.from(_N, "Scram"),
    type = "structure",
    members = {
        Enabled = schema.new({
            id = id.from(_N, "Scram", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "enabled" },
            },
        }),
    },
})

M.Sasl = schema.new({
    id = id.from(_N, "Sasl"),
    type = "structure",
    members = {
        Scram = schema.new({
            id = id.from(_N, "Sasl", "Scram"),
            type = "structure",
            name = "Scram",
            target_id = id.from(_N, "Scram"),
            target = M.Scram,
            traits = {
                [traits.JSON_NAME] = { name = "scram" },
            },
        }),
        Iam = schema.new({
            id = id.from(_N, "Sasl", "Iam"),
            type = "structure",
            name = "Iam",
            target_id = id.from(_N, "Iam"),
            target = M.Iam,
            traits = {
                [traits.JSON_NAME] = { name = "iam" },
            },
        }),
    },
})

M.Tls = schema.new({
    id = id.from(_N, "Tls"),
    type = "structure",
    members = {
        CertificateAuthorityArnList = schema.new({
            id = id.from(_N, "Tls", "CertificateAuthorityArnList"),
            type = "list",
            name = "CertificateAuthorityArnList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "certificateAuthorityArnList" },
            },
        }),
        Enabled = schema.new({
            id = id.from(_N, "Tls", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "enabled" },
            },
        }),
    },
})

M.Unauthenticated = schema.new({
    id = id.from(_N, "Unauthenticated"),
    type = "structure",
    members = {
        Enabled = schema.new({
            id = id.from(_N, "Unauthenticated", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "enabled" },
            },
        }),
    },
})

M.ClientAuthentication = schema.new({
    id = id.from(_N, "ClientAuthentication"),
    type = "structure",
    members = {
        Sasl = schema.new({
            id = id.from(_N, "ClientAuthentication", "Sasl"),
            type = "structure",
            name = "Sasl",
            target_id = id.from(_N, "Sasl"),
            target = M.Sasl,
            traits = {
                [traits.JSON_NAME] = { name = "sasl" },
            },
        }),
        Tls = schema.new({
            id = id.from(_N, "ClientAuthentication", "Tls"),
            type = "structure",
            name = "Tls",
            target_id = id.from(_N, "Tls"),
            target = M.Tls,
            traits = {
                [traits.JSON_NAME] = { name = "tls" },
            },
        }),
        Unauthenticated = schema.new({
            id = id.from(_N, "ClientAuthentication", "Unauthenticated"),
            type = "structure",
            name = "Unauthenticated",
            target_id = id.from(_N, "Unauthenticated"),
            target = M.Unauthenticated,
            traits = {
                [traits.JSON_NAME] = { name = "unauthenticated" },
            },
        }),
    },
})

M.BrokerSoftwareInfo = schema.new({
    id = id.from(_N, "BrokerSoftwareInfo"),
    type = "structure",
    members = {
        ConfigurationArn = schema.new({
            id = id.from(_N, "BrokerSoftwareInfo", "ConfigurationArn"),
            type = "string",
            name = "ConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "configurationArn" },
            },
        }),
        ConfigurationRevision = schema.new({
            id = id.from(_N, "BrokerSoftwareInfo", "ConfigurationRevision"),
            type = "long",
            name = "ConfigurationRevision",
            target_id = prelude.Long.id,
            traits = {
                [traits.JSON_NAME] = { name = "configurationRevision" },
            },
        }),
        KafkaVersion = schema.new({
            id = id.from(_N, "BrokerSoftwareInfo", "KafkaVersion"),
            type = "string",
            name = "KafkaVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "kafkaVersion" },
            },
        }),
    },
})

M.EncryptionAtRest = schema.new({
    id = id.from(_N, "EncryptionAtRest"),
    type = "structure",
    members = {
        DataVolumeKMSKeyId = schema.new({
            id = id.from(_N, "EncryptionAtRest", "DataVolumeKMSKeyId"),
            type = "string",
            name = "DataVolumeKMSKeyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "dataVolumeKMSKeyId" },
            },
        }),
    },
})

M.EncryptionInTransit = schema.new({
    id = id.from(_N, "EncryptionInTransit"),
    type = "structure",
    members = {
        ClientBroker = schema.new({
            id = id.from(_N, "EncryptionInTransit", "ClientBroker"),
            type = "string",
            name = "ClientBroker",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clientBroker" },
            },
        }),
        InCluster = schema.new({
            id = id.from(_N, "EncryptionInTransit", "InCluster"),
            type = "boolean",
            name = "InCluster",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "inCluster" },
            },
        }),
    },
})

M.EncryptionInfo = schema.new({
    id = id.from(_N, "EncryptionInfo"),
    type = "structure",
    members = {
        EncryptionAtRest = schema.new({
            id = id.from(_N, "EncryptionInfo", "EncryptionAtRest"),
            type = "structure",
            name = "EncryptionAtRest",
            target_id = id.from(_N, "EncryptionAtRest"),
            target = M.EncryptionAtRest,
            traits = {
                [traits.JSON_NAME] = { name = "encryptionAtRest" },
            },
        }),
        EncryptionInTransit = schema.new({
            id = id.from(_N, "EncryptionInfo", "EncryptionInTransit"),
            type = "structure",
            name = "EncryptionInTransit",
            target_id = id.from(_N, "EncryptionInTransit"),
            target = M.EncryptionInTransit,
            traits = {
                [traits.JSON_NAME] = { name = "encryptionInTransit" },
            },
        }),
    },
})

M.CloudWatchLogs = schema.new({
    id = id.from(_N, "CloudWatchLogs"),
    type = "structure",
    members = {
        Enabled = schema.new({
            id = id.from(_N, "CloudWatchLogs", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "enabled" },
            },
        }),
        LogGroup = schema.new({
            id = id.from(_N, "CloudWatchLogs", "LogGroup"),
            type = "string",
            name = "LogGroup",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "logGroup" },
            },
        }),
    },
})

M.Firehose = schema.new({
    id = id.from(_N, "Firehose"),
    type = "structure",
    members = {
        DeliveryStream = schema.new({
            id = id.from(_N, "Firehose", "DeliveryStream"),
            type = "string",
            name = "DeliveryStream",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "deliveryStream" },
            },
        }),
        Enabled = schema.new({
            id = id.from(_N, "Firehose", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "enabled" },
            },
        }),
    },
})

M.S3 = schema.new({
    id = id.from(_N, "S3"),
    type = "structure",
    members = {
        Bucket = schema.new({
            id = id.from(_N, "S3", "Bucket"),
            type = "string",
            name = "Bucket",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "bucket" },
            },
        }),
        Enabled = schema.new({
            id = id.from(_N, "S3", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "enabled" },
            },
        }),
        Prefix = schema.new({
            id = id.from(_N, "S3", "Prefix"),
            type = "string",
            name = "Prefix",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "prefix" },
            },
        }),
    },
})

M.BrokerLogs = schema.new({
    id = id.from(_N, "BrokerLogs"),
    type = "structure",
    members = {
        CloudWatchLogs = schema.new({
            id = id.from(_N, "BrokerLogs", "CloudWatchLogs"),
            type = "structure",
            name = "CloudWatchLogs",
            target_id = id.from(_N, "CloudWatchLogs"),
            target = M.CloudWatchLogs,
            traits = {
                [traits.JSON_NAME] = { name = "cloudWatchLogs" },
            },
        }),
        Firehose = schema.new({
            id = id.from(_N, "BrokerLogs", "Firehose"),
            type = "structure",
            name = "Firehose",
            target_id = id.from(_N, "Firehose"),
            target = M.Firehose,
            traits = {
                [traits.JSON_NAME] = { name = "firehose" },
            },
        }),
        S3 = schema.new({
            id = id.from(_N, "BrokerLogs", "S3"),
            type = "structure",
            name = "S3",
            target_id = id.from(_N, "S3"),
            target = M.S3,
            traits = {
                [traits.JSON_NAME] = { name = "s3" },
            },
        }),
    },
})

M.LoggingInfo = schema.new({
    id = id.from(_N, "LoggingInfo"),
    type = "structure",
    members = {
        BrokerLogs = schema.new({
            id = id.from(_N, "LoggingInfo", "BrokerLogs"),
            type = "structure",
            name = "BrokerLogs",
            target_id = id.from(_N, "BrokerLogs"),
            target = M.BrokerLogs,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "brokerLogs" },
            },
        }),
    },
})

M.JmxExporterInfo = schema.new({
    id = id.from(_N, "JmxExporterInfo"),
    type = "structure",
    members = {
        EnabledInBroker = schema.new({
            id = id.from(_N, "JmxExporterInfo", "EnabledInBroker"),
            type = "boolean",
            name = "EnabledInBroker",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "enabledInBroker" },
            },
        }),
    },
})

M.NodeExporterInfo = schema.new({
    id = id.from(_N, "NodeExporterInfo"),
    type = "structure",
    members = {
        EnabledInBroker = schema.new({
            id = id.from(_N, "NodeExporterInfo", "EnabledInBroker"),
            type = "boolean",
            name = "EnabledInBroker",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "enabledInBroker" },
            },
        }),
    },
})

M.PrometheusInfo = schema.new({
    id = id.from(_N, "PrometheusInfo"),
    type = "structure",
    members = {
        JmxExporter = schema.new({
            id = id.from(_N, "PrometheusInfo", "JmxExporter"),
            type = "structure",
            name = "JmxExporter",
            target_id = id.from(_N, "JmxExporterInfo"),
            target = M.JmxExporterInfo,
            traits = {
                [traits.JSON_NAME] = { name = "jmxExporter" },
            },
        }),
        NodeExporter = schema.new({
            id = id.from(_N, "PrometheusInfo", "NodeExporter"),
            type = "structure",
            name = "NodeExporter",
            target_id = id.from(_N, "NodeExporterInfo"),
            target = M.NodeExporterInfo,
            traits = {
                [traits.JSON_NAME] = { name = "nodeExporter" },
            },
        }),
    },
})

M.OpenMonitoringInfo = schema.new({
    id = id.from(_N, "OpenMonitoringInfo"),
    type = "structure",
    members = {
        Prometheus = schema.new({
            id = id.from(_N, "OpenMonitoringInfo", "Prometheus"),
            type = "structure",
            name = "Prometheus",
            target_id = id.from(_N, "PrometheusInfo"),
            target = M.PrometheusInfo,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "prometheus" },
            },
        }),
    },
})

M.Rebalancing = schema.new({
    id = id.from(_N, "Rebalancing"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "Rebalancing", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "status" },
            },
        }),
    },
})

M.Provisioned = schema.new({
    id = id.from(_N, "Provisioned"),
    type = "structure",
    members = {
        BrokerNodeGroupInfo = schema.new({
            id = id.from(_N, "Provisioned", "BrokerNodeGroupInfo"),
            type = "structure",
            name = "BrokerNodeGroupInfo",
            target_id = id.from(_N, "BrokerNodeGroupInfo"),
            target = M.BrokerNodeGroupInfo,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "brokerNodeGroupInfo" },
            },
        }),
        Rebalancing = schema.new({
            id = id.from(_N, "Provisioned", "Rebalancing"),
            type = "structure",
            name = "Rebalancing",
            target_id = id.from(_N, "Rebalancing"),
            target = M.Rebalancing,
            traits = {
                [traits.JSON_NAME] = { name = "rebalancing" },
            },
        }),
        CurrentBrokerSoftwareInfo = schema.new({
            id = id.from(_N, "Provisioned", "CurrentBrokerSoftwareInfo"),
            type = "structure",
            name = "CurrentBrokerSoftwareInfo",
            target_id = id.from(_N, "BrokerSoftwareInfo"),
            target = M.BrokerSoftwareInfo,
            traits = {
                [traits.JSON_NAME] = { name = "currentBrokerSoftwareInfo" },
            },
        }),
        ClientAuthentication = schema.new({
            id = id.from(_N, "Provisioned", "ClientAuthentication"),
            type = "structure",
            name = "ClientAuthentication",
            target_id = id.from(_N, "ClientAuthentication"),
            target = M.ClientAuthentication,
            traits = {
                [traits.JSON_NAME] = { name = "clientAuthentication" },
            },
        }),
        EncryptionInfo = schema.new({
            id = id.from(_N, "Provisioned", "EncryptionInfo"),
            type = "structure",
            name = "EncryptionInfo",
            target_id = id.from(_N, "EncryptionInfo"),
            target = M.EncryptionInfo,
            traits = {
                [traits.JSON_NAME] = { name = "encryptionInfo" },
            },
        }),
        EnhancedMonitoring = schema.new({
            id = id.from(_N, "Provisioned", "EnhancedMonitoring"),
            type = "string",
            name = "EnhancedMonitoring",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "enhancedMonitoring" },
            },
        }),
        OpenMonitoring = schema.new({
            id = id.from(_N, "Provisioned", "OpenMonitoring"),
            type = "structure",
            name = "OpenMonitoring",
            target_id = id.from(_N, "OpenMonitoringInfo"),
            target = M.OpenMonitoringInfo,
            traits = {
                [traits.JSON_NAME] = { name = "openMonitoring" },
            },
        }),
        LoggingInfo = schema.new({
            id = id.from(_N, "Provisioned", "LoggingInfo"),
            type = "structure",
            name = "LoggingInfo",
            target_id = id.from(_N, "LoggingInfo"),
            target = M.LoggingInfo,
            traits = {
                [traits.JSON_NAME] = { name = "loggingInfo" },
            },
        }),
        NumberOfBrokerNodes = schema.new({
            id = id.from(_N, "Provisioned", "NumberOfBrokerNodes"),
            type = "integer",
            name = "NumberOfBrokerNodes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "numberOfBrokerNodes" },
            },
        }),
        ZookeeperConnectString = schema.new({
            id = id.from(_N, "Provisioned", "ZookeeperConnectString"),
            type = "string",
            name = "ZookeeperConnectString",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "zookeeperConnectString" },
            },
        }),
        ZookeeperConnectStringTls = schema.new({
            id = id.from(_N, "Provisioned", "ZookeeperConnectStringTls"),
            type = "string",
            name = "ZookeeperConnectStringTls",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "zookeeperConnectStringTls" },
            },
        }),
        StorageMode = schema.new({
            id = id.from(_N, "Provisioned", "StorageMode"),
            type = "string",
            name = "StorageMode",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "storageMode" },
            },
        }),
        CustomerActionStatus = schema.new({
            id = id.from(_N, "Provisioned", "CustomerActionStatus"),
            type = "string",
            name = "CustomerActionStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "customerActionStatus" },
            },
        }),
    },
})

M.ServerlessSasl = schema.new({
    id = id.from(_N, "ServerlessSasl"),
    type = "structure",
    members = {
        Iam = schema.new({
            id = id.from(_N, "ServerlessSasl", "Iam"),
            type = "structure",
            name = "Iam",
            target_id = id.from(_N, "Iam"),
            target = M.Iam,
            traits = {
                [traits.JSON_NAME] = { name = "iam" },
            },
        }),
    },
})

M.ServerlessClientAuthentication = schema.new({
    id = id.from(_N, "ServerlessClientAuthentication"),
    type = "structure",
    members = {
        Sasl = schema.new({
            id = id.from(_N, "ServerlessClientAuthentication", "Sasl"),
            type = "structure",
            name = "Sasl",
            target_id = id.from(_N, "ServerlessSasl"),
            target = M.ServerlessSasl,
            traits = {
                [traits.JSON_NAME] = { name = "sasl" },
            },
        }),
    },
})

M.ServerlessConnectivityInfo = schema.new({
    id = id.from(_N, "ServerlessConnectivityInfo"),
    type = "structure",
    members = {
        NetworkType = schema.new({
            id = id.from(_N, "ServerlessConnectivityInfo", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "networkType" },
            },
        }),
    },
})

M.VpcConfig = schema.new({
    id = id.from(_N, "VpcConfig"),
    type = "structure",
    members = {
        SubnetIds = schema.new({
            id = id.from(_N, "VpcConfig", "SubnetIds"),
            type = "list",
            name = "SubnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "subnetIds" },
            },
        }),
        SecurityGroupIds = schema.new({
            id = id.from(_N, "VpcConfig", "SecurityGroupIds"),
            type = "list",
            name = "SecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "securityGroupIds" },
            },
        }),
    },
})

M.Serverless = schema.new({
    id = id.from(_N, "Serverless"),
    type = "structure",
    members = {
        VpcConfigs = schema.new({
            id = id.from(_N, "Serverless", "VpcConfigs"),
            type = "list",
            name = "VpcConfigs",
            target_id = prelude.Document.id,
            list_member = M.VpcConfig,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "vpcConfigs" },
            },
        }),
        ClientAuthentication = schema.new({
            id = id.from(_N, "Serverless", "ClientAuthentication"),
            type = "structure",
            name = "ClientAuthentication",
            target_id = id.from(_N, "ServerlessClientAuthentication"),
            target = M.ServerlessClientAuthentication,
            traits = {
                [traits.JSON_NAME] = { name = "clientAuthentication" },
            },
        }),
        ConnectivityInfo = schema.new({
            id = id.from(_N, "Serverless", "ConnectivityInfo"),
            type = "structure",
            name = "ConnectivityInfo",
            target_id = id.from(_N, "ServerlessConnectivityInfo"),
            target = M.ServerlessConnectivityInfo,
            traits = {
                [traits.JSON_NAME] = { name = "connectivityInfo" },
            },
        }),
    },
})

M.StateInfo = schema.new({
    id = id.from(_N, "StateInfo"),
    type = "structure",
    members = {
        Code = schema.new({
            id = id.from(_N, "StateInfo", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "code" },
            },
        }),
        Message = schema.new({
            id = id.from(_N, "StateInfo", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.Cluster = schema.new({
    id = id.from(_N, "Cluster"),
    type = "structure",
    members = {
        ActiveOperationArn = schema.new({
            id = id.from(_N, "Cluster", "ActiveOperationArn"),
            type = "string",
            name = "ActiveOperationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "activeOperationArn" },
            },
        }),
        ClusterType = schema.new({
            id = id.from(_N, "Cluster", "ClusterType"),
            type = "string",
            name = "ClusterType",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterType" },
            },
        }),
        ClusterArn = schema.new({
            id = id.from(_N, "Cluster", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterArn" },
            },
        }),
        ClusterName = schema.new({
            id = id.from(_N, "Cluster", "ClusterName"),
            type = "string",
            name = "ClusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterName" },
            },
        }),
        CreationTime = schema.new({
            id = id.from(_N, "Cluster", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.JSON_NAME] = { name = "creationTime" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.JSON_NAME] = { name = "creationTime" },
            },
        }),
        CurrentVersion = schema.new({
            id = id.from(_N, "Cluster", "CurrentVersion"),
            type = "string",
            name = "CurrentVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "currentVersion" },
            },
        }),
        State = schema.new({
            id = id.from(_N, "Cluster", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "state" },
            },
        }),
        StateInfo = schema.new({
            id = id.from(_N, "Cluster", "StateInfo"),
            type = "structure",
            name = "StateInfo",
            target_id = id.from(_N, "StateInfo"),
            target = M.StateInfo,
            traits = {
                [traits.JSON_NAME] = { name = "stateInfo" },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "Cluster", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        Provisioned = schema.new({
            id = id.from(_N, "Cluster", "Provisioned"),
            type = "structure",
            name = "Provisioned",
            target_id = id.from(_N, "Provisioned"),
            target = M.Provisioned,
            traits = {
                [traits.JSON_NAME] = { name = "provisioned" },
            },
        }),
        Serverless = schema.new({
            id = id.from(_N, "Cluster", "Serverless"),
            type = "structure",
            name = "Serverless",
            target_id = id.from(_N, "Serverless"),
            target = M.Serverless,
            traits = {
                [traits.JSON_NAME] = { name = "serverless" },
            },
        }),
    },
})

M.JmxExporter = schema.new({
    id = id.from(_N, "JmxExporter"),
    type = "structure",
    members = {
        EnabledInBroker = schema.new({
            id = id.from(_N, "JmxExporter", "EnabledInBroker"),
            type = "boolean",
            name = "EnabledInBroker",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "enabledInBroker" },
            },
        }),
    },
})

M.NodeExporter = schema.new({
    id = id.from(_N, "NodeExporter"),
    type = "structure",
    members = {
        EnabledInBroker = schema.new({
            id = id.from(_N, "NodeExporter", "EnabledInBroker"),
            type = "boolean",
            name = "EnabledInBroker",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "enabledInBroker" },
            },
        }),
    },
})

M.Prometheus = schema.new({
    id = id.from(_N, "Prometheus"),
    type = "structure",
    members = {
        JmxExporter = schema.new({
            id = id.from(_N, "Prometheus", "JmxExporter"),
            type = "structure",
            name = "JmxExporter",
            target_id = id.from(_N, "JmxExporter"),
            target = M.JmxExporter,
            traits = {
                [traits.JSON_NAME] = { name = "jmxExporter" },
            },
        }),
        NodeExporter = schema.new({
            id = id.from(_N, "Prometheus", "NodeExporter"),
            type = "structure",
            name = "NodeExporter",
            target_id = id.from(_N, "NodeExporter"),
            target = M.NodeExporter,
            traits = {
                [traits.JSON_NAME] = { name = "nodeExporter" },
            },
        }),
    },
})

M.OpenMonitoring = schema.new({
    id = id.from(_N, "OpenMonitoring"),
    type = "structure",
    members = {
        Prometheus = schema.new({
            id = id.from(_N, "OpenMonitoring", "Prometheus"),
            type = "structure",
            name = "Prometheus",
            target_id = id.from(_N, "Prometheus"),
            target = M.Prometheus,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "prometheus" },
            },
        }),
    },
})

M.ClusterInfo = schema.new({
    id = id.from(_N, "ClusterInfo"),
    type = "structure",
    members = {
        ActiveOperationArn = schema.new({
            id = id.from(_N, "ClusterInfo", "ActiveOperationArn"),
            type = "string",
            name = "ActiveOperationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "activeOperationArn" },
            },
        }),
        BrokerNodeGroupInfo = schema.new({
            id = id.from(_N, "ClusterInfo", "BrokerNodeGroupInfo"),
            type = "structure",
            name = "BrokerNodeGroupInfo",
            target_id = id.from(_N, "BrokerNodeGroupInfo"),
            target = M.BrokerNodeGroupInfo,
            traits = {
                [traits.JSON_NAME] = { name = "brokerNodeGroupInfo" },
            },
        }),
        Rebalancing = schema.new({
            id = id.from(_N, "ClusterInfo", "Rebalancing"),
            type = "structure",
            name = "Rebalancing",
            target_id = id.from(_N, "Rebalancing"),
            target = M.Rebalancing,
            traits = {
                [traits.JSON_NAME] = { name = "rebalancing" },
            },
        }),
        ClientAuthentication = schema.new({
            id = id.from(_N, "ClusterInfo", "ClientAuthentication"),
            type = "structure",
            name = "ClientAuthentication",
            target_id = id.from(_N, "ClientAuthentication"),
            target = M.ClientAuthentication,
            traits = {
                [traits.JSON_NAME] = { name = "clientAuthentication" },
            },
        }),
        ClusterArn = schema.new({
            id = id.from(_N, "ClusterInfo", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterArn" },
            },
        }),
        ClusterName = schema.new({
            id = id.from(_N, "ClusterInfo", "ClusterName"),
            type = "string",
            name = "ClusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterName" },
            },
        }),
        CreationTime = schema.new({
            id = id.from(_N, "ClusterInfo", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.JSON_NAME] = { name = "creationTime" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.JSON_NAME] = { name = "creationTime" },
            },
        }),
        CurrentBrokerSoftwareInfo = schema.new({
            id = id.from(_N, "ClusterInfo", "CurrentBrokerSoftwareInfo"),
            type = "structure",
            name = "CurrentBrokerSoftwareInfo",
            target_id = id.from(_N, "BrokerSoftwareInfo"),
            target = M.BrokerSoftwareInfo,
            traits = {
                [traits.JSON_NAME] = { name = "currentBrokerSoftwareInfo" },
            },
        }),
        CurrentVersion = schema.new({
            id = id.from(_N, "ClusterInfo", "CurrentVersion"),
            type = "string",
            name = "CurrentVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "currentVersion" },
            },
        }),
        EncryptionInfo = schema.new({
            id = id.from(_N, "ClusterInfo", "EncryptionInfo"),
            type = "structure",
            name = "EncryptionInfo",
            target_id = id.from(_N, "EncryptionInfo"),
            target = M.EncryptionInfo,
            traits = {
                [traits.JSON_NAME] = { name = "encryptionInfo" },
            },
        }),
        EnhancedMonitoring = schema.new({
            id = id.from(_N, "ClusterInfo", "EnhancedMonitoring"),
            type = "string",
            name = "EnhancedMonitoring",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "enhancedMonitoring" },
            },
        }),
        OpenMonitoring = schema.new({
            id = id.from(_N, "ClusterInfo", "OpenMonitoring"),
            type = "structure",
            name = "OpenMonitoring",
            target_id = id.from(_N, "OpenMonitoring"),
            target = M.OpenMonitoring,
            traits = {
                [traits.JSON_NAME] = { name = "openMonitoring" },
            },
        }),
        LoggingInfo = schema.new({
            id = id.from(_N, "ClusterInfo", "LoggingInfo"),
            type = "structure",
            name = "LoggingInfo",
            target_id = id.from(_N, "LoggingInfo"),
            target = M.LoggingInfo,
            traits = {
                [traits.JSON_NAME] = { name = "loggingInfo" },
            },
        }),
        NumberOfBrokerNodes = schema.new({
            id = id.from(_N, "ClusterInfo", "NumberOfBrokerNodes"),
            type = "integer",
            name = "NumberOfBrokerNodes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "numberOfBrokerNodes" },
            },
        }),
        State = schema.new({
            id = id.from(_N, "ClusterInfo", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "state" },
            },
        }),
        StateInfo = schema.new({
            id = id.from(_N, "ClusterInfo", "StateInfo"),
            type = "structure",
            name = "StateInfo",
            target_id = id.from(_N, "StateInfo"),
            target = M.StateInfo,
            traits = {
                [traits.JSON_NAME] = { name = "stateInfo" },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "ClusterInfo", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        ZookeeperConnectString = schema.new({
            id = id.from(_N, "ClusterInfo", "ZookeeperConnectString"),
            type = "string",
            name = "ZookeeperConnectString",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "zookeeperConnectString" },
            },
        }),
        ZookeeperConnectStringTls = schema.new({
            id = id.from(_N, "ClusterInfo", "ZookeeperConnectStringTls"),
            type = "string",
            name = "ZookeeperConnectStringTls",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "zookeeperConnectStringTls" },
            },
        }),
        StorageMode = schema.new({
            id = id.from(_N, "ClusterInfo", "StorageMode"),
            type = "string",
            name = "StorageMode",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "storageMode" },
            },
        }),
        CustomerActionStatus = schema.new({
            id = id.from(_N, "ClusterInfo", "CustomerActionStatus"),
            type = "string",
            name = "CustomerActionStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "customerActionStatus" },
            },
        }),
    },
})

M.ErrorInfo = schema.new({
    id = id.from(_N, "ErrorInfo"),
    type = "structure",
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "ErrorInfo", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "errorCode" },
            },
        }),
        ErrorString = schema.new({
            id = id.from(_N, "ErrorInfo", "ErrorString"),
            type = "string",
            name = "ErrorString",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "errorString" },
            },
        }),
    },
})

M.ClusterOperationStepInfo = schema.new({
    id = id.from(_N, "ClusterOperationStepInfo"),
    type = "structure",
    members = {
        StepStatus = schema.new({
            id = id.from(_N, "ClusterOperationStepInfo", "StepStatus"),
            type = "string",
            name = "StepStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "stepStatus" },
            },
        }),
    },
})

M.ClusterOperationStep = schema.new({
    id = id.from(_N, "ClusterOperationStep"),
    type = "structure",
    members = {
        StepInfo = schema.new({
            id = id.from(_N, "ClusterOperationStep", "StepInfo"),
            type = "structure",
            name = "StepInfo",
            target_id = id.from(_N, "ClusterOperationStepInfo"),
            target = M.ClusterOperationStepInfo,
            traits = {
                [traits.JSON_NAME] = { name = "stepInfo" },
            },
        }),
        StepName = schema.new({
            id = id.from(_N, "ClusterOperationStep", "StepName"),
            type = "string",
            name = "StepName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "stepName" },
            },
        }),
    },
})

M.BrokerCountUpdateInfo = schema.new({
    id = id.from(_N, "BrokerCountUpdateInfo"),
    type = "structure",
    members = {
        CreatedBrokerIds = schema.new({
            id = id.from(_N, "BrokerCountUpdateInfo", "CreatedBrokerIds"),
            type = "list",
            name = "CreatedBrokerIds",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
            traits = {
                [traits.JSON_NAME] = { name = "createdBrokerIds" },
            },
        }),
        DeletedBrokerIds = schema.new({
            id = id.from(_N, "BrokerCountUpdateInfo", "DeletedBrokerIds"),
            type = "list",
            name = "DeletedBrokerIds",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
            traits = {
                [traits.JSON_NAME] = { name = "deletedBrokerIds" },
            },
        }),
    },
})

M.ConfigurationInfo = schema.new({
    id = id.from(_N, "ConfigurationInfo"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "ConfigurationInfo", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "arn" },
            },
        }),
        Revision = schema.new({
            id = id.from(_N, "ConfigurationInfo", "Revision"),
            type = "long",
            name = "Revision",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "revision" },
            },
        }),
    },
})

M.ZookeeperAccess = schema.new({
    id = id.from(_N, "ZookeeperAccess"),
    type = "structure",
    members = {
        Enabled = schema.new({
            id = id.from(_N, "ZookeeperAccess", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "enabled" },
            },
        }),
    },
})

M.MutableClusterInfo = schema.new({
    id = id.from(_N, "MutableClusterInfo"),
    type = "structure",
    members = {
        BrokerEBSVolumeInfo = schema.new({
            id = id.from(_N, "MutableClusterInfo", "BrokerEBSVolumeInfo"),
            type = "list",
            name = "BrokerEBSVolumeInfo",
            target_id = prelude.Document.id,
            list_member = M.BrokerEBSVolumeInfo,
            traits = {
                [traits.JSON_NAME] = { name = "brokerEBSVolumeInfo" },
            },
        }),
        ConfigurationInfo = schema.new({
            id = id.from(_N, "MutableClusterInfo", "ConfigurationInfo"),
            type = "structure",
            name = "ConfigurationInfo",
            target_id = id.from(_N, "ConfigurationInfo"),
            target = M.ConfigurationInfo,
            traits = {
                [traits.JSON_NAME] = { name = "configurationInfo" },
            },
        }),
        NumberOfBrokerNodes = schema.new({
            id = id.from(_N, "MutableClusterInfo", "NumberOfBrokerNodes"),
            type = "integer",
            name = "NumberOfBrokerNodes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "numberOfBrokerNodes" },
            },
        }),
        EnhancedMonitoring = schema.new({
            id = id.from(_N, "MutableClusterInfo", "EnhancedMonitoring"),
            type = "string",
            name = "EnhancedMonitoring",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "enhancedMonitoring" },
            },
        }),
        OpenMonitoring = schema.new({
            id = id.from(_N, "MutableClusterInfo", "OpenMonitoring"),
            type = "structure",
            name = "OpenMonitoring",
            target_id = id.from(_N, "OpenMonitoring"),
            target = M.OpenMonitoring,
            traits = {
                [traits.JSON_NAME] = { name = "openMonitoring" },
            },
        }),
        ZookeeperAccess = schema.new({
            id = id.from(_N, "MutableClusterInfo", "ZookeeperAccess"),
            type = "structure",
            name = "ZookeeperAccess",
            target_id = id.from(_N, "ZookeeperAccess"),
            target = M.ZookeeperAccess,
            traits = {
                [traits.JSON_NAME] = { name = "zookeeperAccess" },
            },
        }),
        KafkaVersion = schema.new({
            id = id.from(_N, "MutableClusterInfo", "KafkaVersion"),
            type = "string",
            name = "KafkaVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "kafkaVersion" },
            },
        }),
        LoggingInfo = schema.new({
            id = id.from(_N, "MutableClusterInfo", "LoggingInfo"),
            type = "structure",
            name = "LoggingInfo",
            target_id = id.from(_N, "LoggingInfo"),
            target = M.LoggingInfo,
            traits = {
                [traits.JSON_NAME] = { name = "loggingInfo" },
            },
        }),
        InstanceType = schema.new({
            id = id.from(_N, "MutableClusterInfo", "InstanceType"),
            type = "string",
            name = "InstanceType",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "instanceType" },
            },
        }),
        ClientAuthentication = schema.new({
            id = id.from(_N, "MutableClusterInfo", "ClientAuthentication"),
            type = "structure",
            name = "ClientAuthentication",
            target_id = id.from(_N, "ClientAuthentication"),
            target = M.ClientAuthentication,
            traits = {
                [traits.JSON_NAME] = { name = "clientAuthentication" },
            },
        }),
        EncryptionInfo = schema.new({
            id = id.from(_N, "MutableClusterInfo", "EncryptionInfo"),
            type = "structure",
            name = "EncryptionInfo",
            target_id = id.from(_N, "EncryptionInfo"),
            target = M.EncryptionInfo,
            traits = {
                [traits.JSON_NAME] = { name = "encryptionInfo" },
            },
        }),
        ConnectivityInfo = schema.new({
            id = id.from(_N, "MutableClusterInfo", "ConnectivityInfo"),
            type = "structure",
            name = "ConnectivityInfo",
            target_id = id.from(_N, "ConnectivityInfo"),
            target = M.ConnectivityInfo,
            traits = {
                [traits.JSON_NAME] = { name = "connectivityInfo" },
            },
        }),
        StorageMode = schema.new({
            id = id.from(_N, "MutableClusterInfo", "StorageMode"),
            type = "string",
            name = "StorageMode",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "storageMode" },
            },
        }),
        BrokerCountUpdateInfo = schema.new({
            id = id.from(_N, "MutableClusterInfo", "BrokerCountUpdateInfo"),
            type = "structure",
            name = "BrokerCountUpdateInfo",
            target_id = id.from(_N, "BrokerCountUpdateInfo"),
            target = M.BrokerCountUpdateInfo,
            traits = {
                [traits.JSON_NAME] = { name = "brokerCountUpdateInfo" },
            },
        }),
        Rebalancing = schema.new({
            id = id.from(_N, "MutableClusterInfo", "Rebalancing"),
            type = "structure",
            name = "Rebalancing",
            target_id = id.from(_N, "Rebalancing"),
            target = M.Rebalancing,
            traits = {
                [traits.JSON_NAME] = { name = "rebalancing" },
            },
        }),
    },
})

M.UserIdentity = schema.new({
    id = id.from(_N, "UserIdentity"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "UserIdentity", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "type" },
            },
        }),
        PrincipalId = schema.new({
            id = id.from(_N, "UserIdentity", "PrincipalId"),
            type = "string",
            name = "PrincipalId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "principalId" },
            },
        }),
    },
})

M.VpcConnectionInfo = schema.new({
    id = id.from(_N, "VpcConnectionInfo"),
    type = "structure",
    members = {
        VpcConnectionArn = schema.new({
            id = id.from(_N, "VpcConnectionInfo", "VpcConnectionArn"),
            type = "string",
            name = "VpcConnectionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "vpcConnectionArn" },
            },
        }),
        Owner = schema.new({
            id = id.from(_N, "VpcConnectionInfo", "Owner"),
            type = "string",
            name = "Owner",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "owner" },
            },
        }),
        UserIdentity = schema.new({
            id = id.from(_N, "VpcConnectionInfo", "UserIdentity"),
            type = "structure",
            name = "UserIdentity",
            target_id = id.from(_N, "UserIdentity"),
            target = M.UserIdentity,
            traits = {
                [traits.JSON_NAME] = { name = "userIdentity" },
            },
        }),
        CreationTime = schema.new({
            id = id.from(_N, "VpcConnectionInfo", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.JSON_NAME] = { name = "creationTime" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.JSON_NAME] = { name = "creationTime" },
            },
        }),
    },
})

M.ClusterOperationInfo = schema.new({
    id = id.from(_N, "ClusterOperationInfo"),
    type = "structure",
    members = {
        ClientRequestId = schema.new({
            id = id.from(_N, "ClusterOperationInfo", "ClientRequestId"),
            type = "string",
            name = "ClientRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clientRequestId" },
            },
        }),
        ClusterArn = schema.new({
            id = id.from(_N, "ClusterOperationInfo", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterArn" },
            },
        }),
        CreationTime = schema.new({
            id = id.from(_N, "ClusterOperationInfo", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.JSON_NAME] = { name = "creationTime" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.JSON_NAME] = { name = "creationTime" },
            },
        }),
        EndTime = schema.new({
            id = id.from(_N, "ClusterOperationInfo", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.JSON_NAME] = { name = "endTime" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.JSON_NAME] = { name = "endTime" },
            },
        }),
        ErrorInfo = schema.new({
            id = id.from(_N, "ClusterOperationInfo", "ErrorInfo"),
            type = "structure",
            name = "ErrorInfo",
            target_id = id.from(_N, "ErrorInfo"),
            target = M.ErrorInfo,
            traits = {
                [traits.JSON_NAME] = { name = "errorInfo" },
            },
        }),
        OperationArn = schema.new({
            id = id.from(_N, "ClusterOperationInfo", "OperationArn"),
            type = "string",
            name = "OperationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "operationArn" },
            },
        }),
        OperationState = schema.new({
            id = id.from(_N, "ClusterOperationInfo", "OperationState"),
            type = "string",
            name = "OperationState",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "operationState" },
            },
        }),
        OperationSteps = schema.new({
            id = id.from(_N, "ClusterOperationInfo", "OperationSteps"),
            type = "list",
            name = "OperationSteps",
            target_id = prelude.Document.id,
            list_member = M.ClusterOperationStep,
            traits = {
                [traits.JSON_NAME] = { name = "operationSteps" },
            },
        }),
        OperationType = schema.new({
            id = id.from(_N, "ClusterOperationInfo", "OperationType"),
            type = "string",
            name = "OperationType",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "operationType" },
            },
        }),
        SourceClusterInfo = schema.new({
            id = id.from(_N, "ClusterOperationInfo", "SourceClusterInfo"),
            type = "structure",
            name = "SourceClusterInfo",
            target_id = id.from(_N, "MutableClusterInfo"),
            target = M.MutableClusterInfo,
            traits = {
                [traits.JSON_NAME] = { name = "sourceClusterInfo" },
            },
        }),
        TargetClusterInfo = schema.new({
            id = id.from(_N, "ClusterOperationInfo", "TargetClusterInfo"),
            type = "structure",
            name = "TargetClusterInfo",
            target_id = id.from(_N, "MutableClusterInfo"),
            target = M.MutableClusterInfo,
            traits = {
                [traits.JSON_NAME] = { name = "targetClusterInfo" },
            },
        }),
        VpcConnectionInfo = schema.new({
            id = id.from(_N, "ClusterOperationInfo", "VpcConnectionInfo"),
            type = "structure",
            name = "VpcConnectionInfo",
            target_id = id.from(_N, "VpcConnectionInfo"),
            target = M.VpcConnectionInfo,
            traits = {
                [traits.JSON_NAME] = { name = "vpcConnectionInfo" },
            },
        }),
    },
})

M.ClusterOperationV2Summary = schema.new({
    id = id.from(_N, "ClusterOperationV2Summary"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "ClusterOperationV2Summary", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterArn" },
            },
        }),
        ClusterType = schema.new({
            id = id.from(_N, "ClusterOperationV2Summary", "ClusterType"),
            type = "string",
            name = "ClusterType",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterType" },
            },
        }),
        StartTime = schema.new({
            id = id.from(_N, "ClusterOperationV2Summary", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.JSON_NAME] = { name = "startTime" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.JSON_NAME] = { name = "startTime" },
            },
        }),
        EndTime = schema.new({
            id = id.from(_N, "ClusterOperationV2Summary", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.JSON_NAME] = { name = "endTime" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.JSON_NAME] = { name = "endTime" },
            },
        }),
        OperationArn = schema.new({
            id = id.from(_N, "ClusterOperationV2Summary", "OperationArn"),
            type = "string",
            name = "OperationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "operationArn" },
            },
        }),
        OperationState = schema.new({
            id = id.from(_N, "ClusterOperationV2Summary", "OperationState"),
            type = "string",
            name = "OperationState",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "operationState" },
            },
        }),
        OperationType = schema.new({
            id = id.from(_N, "ClusterOperationV2Summary", "OperationType"),
            type = "string",
            name = "OperationType",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "operationType" },
            },
        }),
    },
})

M.CompatibleKafkaVersion = schema.new({
    id = id.from(_N, "CompatibleKafkaVersion"),
    type = "structure",
    members = {
        SourceVersion = schema.new({
            id = id.from(_N, "CompatibleKafkaVersion", "SourceVersion"),
            type = "string",
            name = "SourceVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "sourceVersion" },
            },
        }),
        TargetVersions = schema.new({
            id = id.from(_N, "CompatibleKafkaVersion", "TargetVersions"),
            type = "list",
            name = "TargetVersions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "targetVersions" },
            },
        }),
    },
})

M.ConfigurationRevision = schema.new({
    id = id.from(_N, "ConfigurationRevision"),
    type = "structure",
    members = {
        CreationTime = schema.new({
            id = id.from(_N, "ConfigurationRevision", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "creationTime" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "creationTime" },
            },
        }),
        Description = schema.new({
            id = id.from(_N, "ConfigurationRevision", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "description" },
            },
        }),
        Revision = schema.new({
            id = id.from(_N, "ConfigurationRevision", "Revision"),
            type = "long",
            name = "Revision",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "revision" },
            },
        }),
    },
})

M.Configuration = schema.new({
    id = id.from(_N, "Configuration"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "Configuration", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "arn" },
            },
        }),
        CreationTime = schema.new({
            id = id.from(_N, "Configuration", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "creationTime" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "creationTime" },
            },
        }),
        Description = schema.new({
            id = id.from(_N, "Configuration", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "description" },
            },
        }),
        KafkaVersions = schema.new({
            id = id.from(_N, "Configuration", "KafkaVersions"),
            type = "list",
            name = "KafkaVersions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "kafkaVersions" },
            },
        }),
        LatestRevision = schema.new({
            id = id.from(_N, "Configuration", "LatestRevision"),
            type = "structure",
            name = "LatestRevision",
            target_id = id.from(_N, "ConfigurationRevision"),
            target = M.ConfigurationRevision,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "latestRevision" },
            },
        }),
        Name = schema.new({
            id = id.from(_N, "Configuration", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "name" },
            },
        }),
        State = schema.new({
            id = id.from(_N, "Configuration", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "state" },
            },
        }),
    },
})

M.AmazonMskCluster = schema.new({
    id = id.from(_N, "AmazonMskCluster"),
    type = "structure",
    members = {
        MskClusterArn = schema.new({
            id = id.from(_N, "AmazonMskCluster", "MskClusterArn"),
            type = "string",
            name = "MskClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "mskClusterArn" },
            },
        }),
    },
})

M.ApacheKafkaCluster = schema.new({
    id = id.from(_N, "ApacheKafkaCluster"),
    type = "structure",
    members = {
        ApacheKafkaClusterId = schema.new({
            id = id.from(_N, "ApacheKafkaCluster", "ApacheKafkaClusterId"),
            type = "string",
            name = "ApacheKafkaClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "apacheKafkaClusterId" },
            },
        }),
        BootstrapBrokerString = schema.new({
            id = id.from(_N, "ApacheKafkaCluster", "BootstrapBrokerString"),
            type = "string",
            name = "BootstrapBrokerString",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "bootstrapBrokerString" },
            },
        }),
    },
})

M.KafkaClusterSaslScramAuthentication = schema.new({
    id = id.from(_N, "KafkaClusterSaslScramAuthentication"),
    type = "structure",
    members = {
        Mechanism = schema.new({
            id = id.from(_N, "KafkaClusterSaslScramAuthentication", "Mechanism"),
            type = "string",
            name = "Mechanism",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "mechanism" },
            },
        }),
        SecretArn = schema.new({
            id = id.from(_N, "KafkaClusterSaslScramAuthentication", "SecretArn"),
            type = "string",
            name = "SecretArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "secretArn" },
            },
        }),
    },
})

M.KafkaClusterClientAuthentication = schema.new({
    id = id.from(_N, "KafkaClusterClientAuthentication"),
    type = "structure",
    members = {
        SaslScram = schema.new({
            id = id.from(_N, "KafkaClusterClientAuthentication", "SaslScram"),
            type = "structure",
            name = "SaslScram",
            target_id = id.from(_N, "KafkaClusterSaslScramAuthentication"),
            target = M.KafkaClusterSaslScramAuthentication,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "saslScram" },
            },
        }),
    },
})

M.KafkaClusterEncryptionInTransit = schema.new({
    id = id.from(_N, "KafkaClusterEncryptionInTransit"),
    type = "structure",
    members = {
        EncryptionType = schema.new({
            id = id.from(_N, "KafkaClusterEncryptionInTransit", "EncryptionType"),
            type = "string",
            name = "EncryptionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "encryptionType" },
            },
        }),
        RootCaCertificate = schema.new({
            id = id.from(_N, "KafkaClusterEncryptionInTransit", "RootCaCertificate"),
            type = "string",
            name = "RootCaCertificate",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "rootCaCertificate" },
            },
        }),
    },
})

M.KafkaClusterClientVpcConfig = schema.new({
    id = id.from(_N, "KafkaClusterClientVpcConfig"),
    type = "structure",
    members = {
        SecurityGroupIds = schema.new({
            id = id.from(_N, "KafkaClusterClientVpcConfig", "SecurityGroupIds"),
            type = "list",
            name = "SecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "securityGroupIds" },
            },
        }),
        SubnetIds = schema.new({
            id = id.from(_N, "KafkaClusterClientVpcConfig", "SubnetIds"),
            type = "list",
            name = "SubnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "subnetIds" },
            },
        }),
    },
})

M.KafkaCluster = schema.new({
    id = id.from(_N, "KafkaCluster"),
    type = "structure",
    members = {
        AmazonMskCluster = schema.new({
            id = id.from(_N, "KafkaCluster", "AmazonMskCluster"),
            type = "structure",
            name = "AmazonMskCluster",
            target_id = id.from(_N, "AmazonMskCluster"),
            target = M.AmazonMskCluster,
            traits = {
                [traits.JSON_NAME] = { name = "amazonMskCluster" },
            },
        }),
        ApacheKafkaCluster = schema.new({
            id = id.from(_N, "KafkaCluster", "ApacheKafkaCluster"),
            type = "structure",
            name = "ApacheKafkaCluster",
            target_id = id.from(_N, "ApacheKafkaCluster"),
            target = M.ApacheKafkaCluster,
            traits = {
                [traits.JSON_NAME] = { name = "apacheKafkaCluster" },
            },
        }),
        VpcConfig = schema.new({
            id = id.from(_N, "KafkaCluster", "VpcConfig"),
            type = "structure",
            name = "VpcConfig",
            target_id = id.from(_N, "KafkaClusterClientVpcConfig"),
            target = M.KafkaClusterClientVpcConfig,
            traits = {
                [traits.JSON_NAME] = { name = "vpcConfig" },
            },
        }),
        ClientAuthentication = schema.new({
            id = id.from(_N, "KafkaCluster", "ClientAuthentication"),
            type = "structure",
            name = "ClientAuthentication",
            target_id = id.from(_N, "KafkaClusterClientAuthentication"),
            target = M.KafkaClusterClientAuthentication,
            traits = {
                [traits.JSON_NAME] = { name = "clientAuthentication" },
            },
        }),
        EncryptionInTransit = schema.new({
            id = id.from(_N, "KafkaCluster", "EncryptionInTransit"),
            type = "structure",
            name = "EncryptionInTransit",
            target_id = id.from(_N, "KafkaClusterEncryptionInTransit"),
            target = M.KafkaClusterEncryptionInTransit,
            traits = {
                [traits.JSON_NAME] = { name = "encryptionInTransit" },
            },
        }),
    },
})

M.KafkaClusterDescription = schema.new({
    id = id.from(_N, "KafkaClusterDescription"),
    type = "structure",
    members = {
        AmazonMskCluster = schema.new({
            id = id.from(_N, "KafkaClusterDescription", "AmazonMskCluster"),
            type = "structure",
            name = "AmazonMskCluster",
            target_id = id.from(_N, "AmazonMskCluster"),
            target = M.AmazonMskCluster,
            traits = {
                [traits.JSON_NAME] = { name = "amazonMskCluster" },
            },
        }),
        ApacheKafkaCluster = schema.new({
            id = id.from(_N, "KafkaClusterDescription", "ApacheKafkaCluster"),
            type = "structure",
            name = "ApacheKafkaCluster",
            target_id = id.from(_N, "ApacheKafkaCluster"),
            target = M.ApacheKafkaCluster,
            traits = {
                [traits.JSON_NAME] = { name = "apacheKafkaCluster" },
            },
        }),
        KafkaClusterAlias = schema.new({
            id = id.from(_N, "KafkaClusterDescription", "KafkaClusterAlias"),
            type = "string",
            name = "KafkaClusterAlias",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "kafkaClusterAlias" },
            },
        }),
        VpcConfig = schema.new({
            id = id.from(_N, "KafkaClusterDescription", "VpcConfig"),
            type = "structure",
            name = "VpcConfig",
            target_id = id.from(_N, "KafkaClusterClientVpcConfig"),
            target = M.KafkaClusterClientVpcConfig,
            traits = {
                [traits.JSON_NAME] = { name = "vpcConfig" },
            },
        }),
        ClientAuthentication = schema.new({
            id = id.from(_N, "KafkaClusterDescription", "ClientAuthentication"),
            type = "structure",
            name = "ClientAuthentication",
            target_id = id.from(_N, "KafkaClusterClientAuthentication"),
            target = M.KafkaClusterClientAuthentication,
            traits = {
                [traits.JSON_NAME] = { name = "clientAuthentication" },
            },
        }),
        EncryptionInTransit = schema.new({
            id = id.from(_N, "KafkaClusterDescription", "EncryptionInTransit"),
            type = "structure",
            name = "EncryptionInTransit",
            target_id = id.from(_N, "KafkaClusterEncryptionInTransit"),
            target = M.KafkaClusterEncryptionInTransit,
            traits = {
                [traits.JSON_NAME] = { name = "encryptionInTransit" },
            },
        }),
    },
})

M.KafkaClusterSummary = schema.new({
    id = id.from(_N, "KafkaClusterSummary"),
    type = "structure",
    members = {
        AmazonMskCluster = schema.new({
            id = id.from(_N, "KafkaClusterSummary", "AmazonMskCluster"),
            type = "structure",
            name = "AmazonMskCluster",
            target_id = id.from(_N, "AmazonMskCluster"),
            target = M.AmazonMskCluster,
            traits = {
                [traits.JSON_NAME] = { name = "amazonMskCluster" },
            },
        }),
        ApacheKafkaCluster = schema.new({
            id = id.from(_N, "KafkaClusterSummary", "ApacheKafkaCluster"),
            type = "structure",
            name = "ApacheKafkaCluster",
            target_id = id.from(_N, "ApacheKafkaCluster"),
            target = M.ApacheKafkaCluster,
            traits = {
                [traits.JSON_NAME] = { name = "apacheKafkaCluster" },
            },
        }),
        KafkaClusterAlias = schema.new({
            id = id.from(_N, "KafkaClusterSummary", "KafkaClusterAlias"),
            type = "string",
            name = "KafkaClusterAlias",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "kafkaClusterAlias" },
            },
        }),
    },
})

M.KafkaVersion = schema.new({
    id = id.from(_N, "KafkaVersion"),
    type = "structure",
    members = {
        Version = schema.new({
            id = id.from(_N, "KafkaVersion", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "version" },
            },
        }),
        Status = schema.new({
            id = id.from(_N, "KafkaVersion", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "status" },
            },
        }),
    },
})

M.BrokerNodeInfo = schema.new({
    id = id.from(_N, "BrokerNodeInfo"),
    type = "structure",
    members = {
        AttachedENIId = schema.new({
            id = id.from(_N, "BrokerNodeInfo", "AttachedENIId"),
            type = "string",
            name = "AttachedENIId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "attachedENIId" },
            },
        }),
        BrokerId = schema.new({
            id = id.from(_N, "BrokerNodeInfo", "BrokerId"),
            type = "double",
            name = "BrokerId",
            target_id = prelude.Double.id,
            traits = {
                [traits.JSON_NAME] = { name = "brokerId" },
            },
        }),
        ClientSubnet = schema.new({
            id = id.from(_N, "BrokerNodeInfo", "ClientSubnet"),
            type = "string",
            name = "ClientSubnet",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clientSubnet" },
            },
        }),
        ClientVpcIpAddress = schema.new({
            id = id.from(_N, "BrokerNodeInfo", "ClientVpcIpAddress"),
            type = "string",
            name = "ClientVpcIpAddress",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clientVpcIpAddress" },
            },
        }),
        CurrentBrokerSoftwareInfo = schema.new({
            id = id.from(_N, "BrokerNodeInfo", "CurrentBrokerSoftwareInfo"),
            type = "structure",
            name = "CurrentBrokerSoftwareInfo",
            target_id = id.from(_N, "BrokerSoftwareInfo"),
            target = M.BrokerSoftwareInfo,
            traits = {
                [traits.JSON_NAME] = { name = "currentBrokerSoftwareInfo" },
            },
        }),
        Endpoints = schema.new({
            id = id.from(_N, "BrokerNodeInfo", "Endpoints"),
            type = "list",
            name = "Endpoints",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "endpoints" },
            },
        }),
    },
})

M.ControllerNodeInfo = schema.new({
    id = id.from(_N, "ControllerNodeInfo"),
    type = "structure",
    members = {
        Endpoints = schema.new({
            id = id.from(_N, "ControllerNodeInfo", "Endpoints"),
            type = "list",
            name = "Endpoints",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "endpoints" },
            },
        }),
    },
})

M.ZookeeperNodeInfo = schema.new({
    id = id.from(_N, "ZookeeperNodeInfo"),
    type = "structure",
    members = {
        AttachedENIId = schema.new({
            id = id.from(_N, "ZookeeperNodeInfo", "AttachedENIId"),
            type = "string",
            name = "AttachedENIId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "attachedENIId" },
            },
        }),
        ClientVpcIpAddress = schema.new({
            id = id.from(_N, "ZookeeperNodeInfo", "ClientVpcIpAddress"),
            type = "string",
            name = "ClientVpcIpAddress",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clientVpcIpAddress" },
            },
        }),
        Endpoints = schema.new({
            id = id.from(_N, "ZookeeperNodeInfo", "Endpoints"),
            type = "list",
            name = "Endpoints",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "endpoints" },
            },
        }),
        ZookeeperId = schema.new({
            id = id.from(_N, "ZookeeperNodeInfo", "ZookeeperId"),
            type = "double",
            name = "ZookeeperId",
            target_id = prelude.Double.id,
            traits = {
                [traits.JSON_NAME] = { name = "zookeeperId" },
            },
        }),
        ZookeeperVersion = schema.new({
            id = id.from(_N, "ZookeeperNodeInfo", "ZookeeperVersion"),
            type = "string",
            name = "ZookeeperVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "zookeeperVersion" },
            },
        }),
    },
})

M.NodeInfo = schema.new({
    id = id.from(_N, "NodeInfo"),
    type = "structure",
    members = {
        AddedToClusterTime = schema.new({
            id = id.from(_N, "NodeInfo", "AddedToClusterTime"),
            type = "string",
            name = "AddedToClusterTime",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "addedToClusterTime" },
            },
        }),
        BrokerNodeInfo = schema.new({
            id = id.from(_N, "NodeInfo", "BrokerNodeInfo"),
            type = "structure",
            name = "BrokerNodeInfo",
            target_id = id.from(_N, "BrokerNodeInfo"),
            target = M.BrokerNodeInfo,
            traits = {
                [traits.JSON_NAME] = { name = "brokerNodeInfo" },
            },
        }),
        ControllerNodeInfo = schema.new({
            id = id.from(_N, "NodeInfo", "ControllerNodeInfo"),
            type = "structure",
            name = "ControllerNodeInfo",
            target_id = id.from(_N, "ControllerNodeInfo"),
            target = M.ControllerNodeInfo,
            traits = {
                [traits.JSON_NAME] = { name = "controllerNodeInfo" },
            },
        }),
        InstanceType = schema.new({
            id = id.from(_N, "NodeInfo", "InstanceType"),
            type = "string",
            name = "InstanceType",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "instanceType" },
            },
        }),
        NodeARN = schema.new({
            id = id.from(_N, "NodeInfo", "NodeARN"),
            type = "string",
            name = "NodeARN",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "nodeARN" },
            },
        }),
        NodeType = schema.new({
            id = id.from(_N, "NodeInfo", "NodeType"),
            type = "string",
            name = "NodeType",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "nodeType" },
            },
        }),
        ZookeeperNodeInfo = schema.new({
            id = id.from(_N, "NodeInfo", "ZookeeperNodeInfo"),
            type = "structure",
            name = "ZookeeperNodeInfo",
            target_id = id.from(_N, "ZookeeperNodeInfo"),
            target = M.ZookeeperNodeInfo,
            traits = {
                [traits.JSON_NAME] = { name = "zookeeperNodeInfo" },
            },
        }),
    },
})

M.ConsumerGroupReplication = schema.new({
    id = id.from(_N, "ConsumerGroupReplication"),
    type = "structure",
    members = {
        ConsumerGroupsToExclude = schema.new({
            id = id.from(_N, "ConsumerGroupReplication", "ConsumerGroupsToExclude"),
            type = "list",
            name = "ConsumerGroupsToExclude",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "consumerGroupsToExclude" },
            },
        }),
        ConsumerGroupsToReplicate = schema.new({
            id = id.from(_N, "ConsumerGroupReplication", "ConsumerGroupsToReplicate"),
            type = "list",
            name = "ConsumerGroupsToReplicate",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "consumerGroupsToReplicate" },
            },
        }),
        DetectAndCopyNewConsumerGroups = schema.new({
            id = id.from(_N, "ConsumerGroupReplication", "DetectAndCopyNewConsumerGroups"),
            type = "boolean",
            name = "DetectAndCopyNewConsumerGroups",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "detectAndCopyNewConsumerGroups" },
            },
        }),
        SynchroniseConsumerGroupOffsets = schema.new({
            id = id.from(_N, "ConsumerGroupReplication", "SynchroniseConsumerGroupOffsets"),
            type = "boolean",
            name = "SynchroniseConsumerGroupOffsets",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "synchroniseConsumerGroupOffsets" },
            },
        }),
        ConsumerGroupOffsetSyncMode = schema.new({
            id = id.from(_N, "ConsumerGroupReplication", "ConsumerGroupOffsetSyncMode"),
            type = "string",
            name = "ConsumerGroupOffsetSyncMode",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "consumerGroupOffsetSyncMode" },
            },
        }),
    },
})

M.ReplicationStartingPosition = schema.new({
    id = id.from(_N, "ReplicationStartingPosition"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "ReplicationStartingPosition", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "type" },
            },
        }),
    },
})

M.ReplicationTopicNameConfiguration = schema.new({
    id = id.from(_N, "ReplicationTopicNameConfiguration"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "ReplicationTopicNameConfiguration", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "type" },
            },
        }),
    },
})

M.TopicReplication = schema.new({
    id = id.from(_N, "TopicReplication"),
    type = "structure",
    members = {
        CopyAccessControlListsForTopics = schema.new({
            id = id.from(_N, "TopicReplication", "CopyAccessControlListsForTopics"),
            type = "boolean",
            name = "CopyAccessControlListsForTopics",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "copyAccessControlListsForTopics" },
            },
        }),
        CopyTopicConfigurations = schema.new({
            id = id.from(_N, "TopicReplication", "CopyTopicConfigurations"),
            type = "boolean",
            name = "CopyTopicConfigurations",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "copyTopicConfigurations" },
            },
        }),
        DetectAndCopyNewTopics = schema.new({
            id = id.from(_N, "TopicReplication", "DetectAndCopyNewTopics"),
            type = "boolean",
            name = "DetectAndCopyNewTopics",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "detectAndCopyNewTopics" },
            },
        }),
        StartingPosition = schema.new({
            id = id.from(_N, "TopicReplication", "StartingPosition"),
            type = "structure",
            name = "StartingPosition",
            target_id = id.from(_N, "ReplicationStartingPosition"),
            target = M.ReplicationStartingPosition,
            traits = {
                [traits.JSON_NAME] = { name = "startingPosition" },
            },
        }),
        TopicNameConfiguration = schema.new({
            id = id.from(_N, "TopicReplication", "TopicNameConfiguration"),
            type = "structure",
            name = "TopicNameConfiguration",
            target_id = id.from(_N, "ReplicationTopicNameConfiguration"),
            target = M.ReplicationTopicNameConfiguration,
            traits = {
                [traits.JSON_NAME] = { name = "topicNameConfiguration" },
            },
        }),
        TopicsToExclude = schema.new({
            id = id.from(_N, "TopicReplication", "TopicsToExclude"),
            type = "list",
            name = "TopicsToExclude",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "topicsToExclude" },
            },
        }),
        TopicsToReplicate = schema.new({
            id = id.from(_N, "TopicReplication", "TopicsToReplicate"),
            type = "list",
            name = "TopicsToReplicate",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "topicsToReplicate" },
            },
        }),
    },
})

M.ReplicationInfo = schema.new({
    id = id.from(_N, "ReplicationInfo"),
    type = "structure",
    members = {
        ConsumerGroupReplication = schema.new({
            id = id.from(_N, "ReplicationInfo", "ConsumerGroupReplication"),
            type = "structure",
            name = "ConsumerGroupReplication",
            target_id = id.from(_N, "ConsumerGroupReplication"),
            target = M.ConsumerGroupReplication,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "consumerGroupReplication" },
            },
        }),
        SourceKafkaClusterArn = schema.new({
            id = id.from(_N, "ReplicationInfo", "SourceKafkaClusterArn"),
            type = "string",
            name = "SourceKafkaClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "sourceKafkaClusterArn" },
            },
        }),
        SourceKafkaClusterId = schema.new({
            id = id.from(_N, "ReplicationInfo", "SourceKafkaClusterId"),
            type = "string",
            name = "SourceKafkaClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "sourceKafkaClusterId" },
            },
        }),
        TargetCompressionType = schema.new({
            id = id.from(_N, "ReplicationInfo", "TargetCompressionType"),
            type = "string",
            name = "TargetCompressionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "targetCompressionType" },
            },
        }),
        TargetKafkaClusterArn = schema.new({
            id = id.from(_N, "ReplicationInfo", "TargetKafkaClusterArn"),
            type = "string",
            name = "TargetKafkaClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "targetKafkaClusterArn" },
            },
        }),
        TargetKafkaClusterId = schema.new({
            id = id.from(_N, "ReplicationInfo", "TargetKafkaClusterId"),
            type = "string",
            name = "TargetKafkaClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "targetKafkaClusterId" },
            },
        }),
        TopicReplication = schema.new({
            id = id.from(_N, "ReplicationInfo", "TopicReplication"),
            type = "structure",
            name = "TopicReplication",
            target_id = id.from(_N, "TopicReplication"),
            target = M.TopicReplication,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "topicReplication" },
            },
        }),
    },
})

M.ReplicationInfoDescription = schema.new({
    id = id.from(_N, "ReplicationInfoDescription"),
    type = "structure",
    members = {
        ConsumerGroupReplication = schema.new({
            id = id.from(_N, "ReplicationInfoDescription", "ConsumerGroupReplication"),
            type = "structure",
            name = "ConsumerGroupReplication",
            target_id = id.from(_N, "ConsumerGroupReplication"),
            target = M.ConsumerGroupReplication,
            traits = {
                [traits.JSON_NAME] = { name = "consumerGroupReplication" },
            },
        }),
        SourceKafkaClusterAlias = schema.new({
            id = id.from(_N, "ReplicationInfoDescription", "SourceKafkaClusterAlias"),
            type = "string",
            name = "SourceKafkaClusterAlias",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "sourceKafkaClusterAlias" },
            },
        }),
        TargetCompressionType = schema.new({
            id = id.from(_N, "ReplicationInfoDescription", "TargetCompressionType"),
            type = "string",
            name = "TargetCompressionType",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "targetCompressionType" },
            },
        }),
        TargetKafkaClusterAlias = schema.new({
            id = id.from(_N, "ReplicationInfoDescription", "TargetKafkaClusterAlias"),
            type = "string",
            name = "TargetKafkaClusterAlias",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "targetKafkaClusterAlias" },
            },
        }),
        TopicReplication = schema.new({
            id = id.from(_N, "ReplicationInfoDescription", "TopicReplication"),
            type = "structure",
            name = "TopicReplication",
            target_id = id.from(_N, "TopicReplication"),
            target = M.TopicReplication,
            traits = {
                [traits.JSON_NAME] = { name = "topicReplication" },
            },
        }),
    },
})

M.ReplicationInfoSummary = schema.new({
    id = id.from(_N, "ReplicationInfoSummary"),
    type = "structure",
    members = {
        SourceKafkaClusterAlias = schema.new({
            id = id.from(_N, "ReplicationInfoSummary", "SourceKafkaClusterAlias"),
            type = "string",
            name = "SourceKafkaClusterAlias",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "sourceKafkaClusterAlias" },
            },
        }),
        TargetKafkaClusterAlias = schema.new({
            id = id.from(_N, "ReplicationInfoSummary", "TargetKafkaClusterAlias"),
            type = "string",
            name = "TargetKafkaClusterAlias",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "targetKafkaClusterAlias" },
            },
        }),
    },
})

M.ReplicatorSummary = schema.new({
    id = id.from(_N, "ReplicatorSummary"),
    type = "structure",
    members = {
        CreationTime = schema.new({
            id = id.from(_N, "ReplicatorSummary", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.JSON_NAME] = { name = "creationTime" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.JSON_NAME] = { name = "creationTime" },
            },
        }),
        CurrentVersion = schema.new({
            id = id.from(_N, "ReplicatorSummary", "CurrentVersion"),
            type = "string",
            name = "CurrentVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "currentVersion" },
            },
        }),
        IsReplicatorReference = schema.new({
            id = id.from(_N, "ReplicatorSummary", "IsReplicatorReference"),
            type = "boolean",
            name = "IsReplicatorReference",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "isReplicatorReference" },
            },
        }),
        KafkaClustersSummary = schema.new({
            id = id.from(_N, "ReplicatorSummary", "KafkaClustersSummary"),
            type = "list",
            name = "KafkaClustersSummary",
            target_id = prelude.Document.id,
            list_member = M.KafkaClusterSummary,
            traits = {
                [traits.JSON_NAME] = { name = "kafkaClustersSummary" },
            },
        }),
        ReplicationInfoSummaryList = schema.new({
            id = id.from(_N, "ReplicatorSummary", "ReplicationInfoSummaryList"),
            type = "list",
            name = "ReplicationInfoSummaryList",
            target_id = prelude.Document.id,
            list_member = M.ReplicationInfoSummary,
            traits = {
                [traits.JSON_NAME] = { name = "replicationInfoSummaryList" },
            },
        }),
        ReplicatorArn = schema.new({
            id = id.from(_N, "ReplicatorSummary", "ReplicatorArn"),
            type = "string",
            name = "ReplicatorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "replicatorArn" },
            },
        }),
        ReplicatorName = schema.new({
            id = id.from(_N, "ReplicatorSummary", "ReplicatorName"),
            type = "string",
            name = "ReplicatorName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "replicatorName" },
            },
        }),
        ReplicatorResourceArn = schema.new({
            id = id.from(_N, "ReplicatorSummary", "ReplicatorResourceArn"),
            type = "string",
            name = "ReplicatorResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "replicatorResourceArn" },
            },
        }),
        ReplicatorState = schema.new({
            id = id.from(_N, "ReplicatorSummary", "ReplicatorState"),
            type = "string",
            name = "ReplicatorState",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "replicatorState" },
            },
        }),
    },
})

M.TopicInfo = schema.new({
    id = id.from(_N, "TopicInfo"),
    type = "structure",
    members = {
        TopicArn = schema.new({
            id = id.from(_N, "TopicInfo", "TopicArn"),
            type = "string",
            name = "TopicArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "topicArn" },
            },
        }),
        TopicName = schema.new({
            id = id.from(_N, "TopicInfo", "TopicName"),
            type = "string",
            name = "TopicName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "topicName" },
            },
        }),
        ReplicationFactor = schema.new({
            id = id.from(_N, "TopicInfo", "ReplicationFactor"),
            type = "integer",
            name = "ReplicationFactor",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "replicationFactor" },
            },
        }),
        PartitionCount = schema.new({
            id = id.from(_N, "TopicInfo", "PartitionCount"),
            type = "integer",
            name = "PartitionCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "partitionCount" },
            },
        }),
        OutOfSyncReplicaCount = schema.new({
            id = id.from(_N, "TopicInfo", "OutOfSyncReplicaCount"),
            type = "integer",
            name = "OutOfSyncReplicaCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "outOfSyncReplicaCount" },
            },
        }),
    },
})

M.TopicPartitionInfo = schema.new({
    id = id.from(_N, "TopicPartitionInfo"),
    type = "structure",
    members = {
        Partition = schema.new({
            id = id.from(_N, "TopicPartitionInfo", "Partition"),
            type = "integer",
            name = "Partition",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "partition" },
            },
        }),
        Leader = schema.new({
            id = id.from(_N, "TopicPartitionInfo", "Leader"),
            type = "integer",
            name = "Leader",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "leader" },
            },
        }),
        Replicas = schema.new({
            id = id.from(_N, "TopicPartitionInfo", "Replicas"),
            type = "list",
            name = "Replicas",
            target_id = prelude.Document.id,
            list_member = prelude.Integer,
            traits = {
                [traits.JSON_NAME] = { name = "replicas" },
            },
        }),
        Isr = schema.new({
            id = id.from(_N, "TopicPartitionInfo", "Isr"),
            type = "list",
            name = "Isr",
            target_id = prelude.Document.id,
            list_member = prelude.Integer,
            traits = {
                [traits.JSON_NAME] = { name = "isr" },
            },
        }),
    },
})

M.UnprocessedScramSecret = schema.new({
    id = id.from(_N, "UnprocessedScramSecret"),
    type = "structure",
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "UnprocessedScramSecret", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "errorCode" },
            },
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "UnprocessedScramSecret", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "errorMessage" },
            },
        }),
        SecretArn = schema.new({
            id = id.from(_N, "UnprocessedScramSecret", "SecretArn"),
            type = "string",
            name = "SecretArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "secretArn" },
            },
        }),
    },
})

M.VpcConnection = schema.new({
    id = id.from(_N, "VpcConnection"),
    type = "structure",
    members = {
        VpcConnectionArn = schema.new({
            id = id.from(_N, "VpcConnection", "VpcConnectionArn"),
            type = "string",
            name = "VpcConnectionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "vpcConnectionArn" },
            },
        }),
        TargetClusterArn = schema.new({
            id = id.from(_N, "VpcConnection", "TargetClusterArn"),
            type = "string",
            name = "TargetClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "targetClusterArn" },
            },
        }),
        CreationTime = schema.new({
            id = id.from(_N, "VpcConnection", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.JSON_NAME] = { name = "creationTime" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.JSON_NAME] = { name = "creationTime" },
            },
        }),
        Authentication = schema.new({
            id = id.from(_N, "VpcConnection", "Authentication"),
            type = "string",
            name = "Authentication",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "authentication" },
            },
        }),
        VpcId = schema.new({
            id = id.from(_N, "VpcConnection", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "vpcId" },
            },
        }),
        State = schema.new({
            id = id.from(_N, "VpcConnection", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "state" },
            },
        }),
    },
})

M.BadRequestException = schema.new({
    id = id.from(_N, "BadRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        InvalidParameter = schema.new({
            id = id.from(_N, "BadRequestException", "InvalidParameter"),
            type = "string",
            name = "InvalidParameter",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "invalidParameter" },
            },
        }),
        Message = schema.new({
            id = id.from(_N, "BadRequestException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.BatchAssociateScramSecretInput = schema.new({
    id = id.from(_N, "BatchAssociateScramSecretRequest"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "BatchAssociateScramSecretInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SecretArnList = schema.new({
            id = id.from(_N, "BatchAssociateScramSecretInput", "SecretArnList"),
            type = "list",
            name = "SecretArnList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "secretArnList" },
            },
        }),
    },
})

M.BatchAssociateScramSecretOutput = schema.new({
    id = id.from(_N, "BatchAssociateScramSecretResponse"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "BatchAssociateScramSecretOutput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterArn" },
            },
        }),
        UnprocessedScramSecrets = schema.new({
            id = id.from(_N, "BatchAssociateScramSecretOutput", "UnprocessedScramSecrets"),
            type = "list",
            name = "UnprocessedScramSecrets",
            target_id = prelude.Document.id,
            list_member = M.UnprocessedScramSecret,
            traits = {
                [traits.JSON_NAME] = { name = "unprocessedScramSecrets" },
            },
        }),
    },
})

M.ForbiddenException = schema.new({
    id = id.from(_N, "ForbiddenException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        InvalidParameter = schema.new({
            id = id.from(_N, "ForbiddenException", "InvalidParameter"),
            type = "string",
            name = "InvalidParameter",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "invalidParameter" },
            },
        }),
        Message = schema.new({
            id = id.from(_N, "ForbiddenException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.InternalServerErrorException = schema.new({
    id = id.from(_N, "InternalServerErrorException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        InvalidParameter = schema.new({
            id = id.from(_N, "InternalServerErrorException", "InvalidParameter"),
            type = "string",
            name = "InvalidParameter",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "invalidParameter" },
            },
        }),
        Message = schema.new({
            id = id.from(_N, "InternalServerErrorException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.NotFoundException = schema.new({
    id = id.from(_N, "NotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        InvalidParameter = schema.new({
            id = id.from(_N, "NotFoundException", "InvalidParameter"),
            type = "string",
            name = "InvalidParameter",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "invalidParameter" },
            },
        }),
        Message = schema.new({
            id = id.from(_N, "NotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.ServiceUnavailableException = schema.new({
    id = id.from(_N, "ServiceUnavailableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        InvalidParameter = schema.new({
            id = id.from(_N, "ServiceUnavailableException", "InvalidParameter"),
            type = "string",
            name = "InvalidParameter",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "invalidParameter" },
            },
        }),
        Message = schema.new({
            id = id.from(_N, "ServiceUnavailableException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.TooManyRequestsException = schema.new({
    id = id.from(_N, "TooManyRequestsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        InvalidParameter = schema.new({
            id = id.from(_N, "TooManyRequestsException", "InvalidParameter"),
            type = "string",
            name = "InvalidParameter",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "invalidParameter" },
            },
        }),
        Message = schema.new({
            id = id.from(_N, "TooManyRequestsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.UnauthorizedException = schema.new({
    id = id.from(_N, "UnauthorizedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        InvalidParameter = schema.new({
            id = id.from(_N, "UnauthorizedException", "InvalidParameter"),
            type = "string",
            name = "InvalidParameter",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "invalidParameter" },
            },
        }),
        Message = schema.new({
            id = id.from(_N, "UnauthorizedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.BatchDisassociateScramSecretInput = schema.new({
    id = id.from(_N, "BatchDisassociateScramSecretRequest"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "BatchDisassociateScramSecretInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SecretArnList = schema.new({
            id = id.from(_N, "BatchDisassociateScramSecretInput", "SecretArnList"),
            type = "list",
            name = "SecretArnList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "secretArnList" },
            },
        }),
    },
})

M.BatchDisassociateScramSecretOutput = schema.new({
    id = id.from(_N, "BatchDisassociateScramSecretResponse"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "BatchDisassociateScramSecretOutput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterArn" },
            },
        }),
        UnprocessedScramSecrets = schema.new({
            id = id.from(_N, "BatchDisassociateScramSecretOutput", "UnprocessedScramSecrets"),
            type = "list",
            name = "UnprocessedScramSecrets",
            target_id = prelude.Document.id,
            list_member = M.UnprocessedScramSecret,
            traits = {
                [traits.JSON_NAME] = { name = "unprocessedScramSecrets" },
            },
        }),
    },
})

M.ClusterConnectivityException = schema.new({
    id = id.from(_N, "ClusterConnectivityException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        InvalidParameter = schema.new({
            id = id.from(_N, "ClusterConnectivityException", "InvalidParameter"),
            type = "string",
            name = "InvalidParameter",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "invalidParameter" },
            },
        }),
        Message = schema.new({
            id = id.from(_N, "ClusterConnectivityException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.ClusterOperationV2Provisioned = schema.new({
    id = id.from(_N, "ClusterOperationV2Provisioned"),
    type = "structure",
    members = {
        OperationSteps = schema.new({
            id = id.from(_N, "ClusterOperationV2Provisioned", "OperationSteps"),
            type = "list",
            name = "OperationSteps",
            target_id = prelude.Document.id,
            list_member = M.ClusterOperationStep,
            traits = {
                [traits.JSON_NAME] = { name = "operationSteps" },
            },
        }),
        SourceClusterInfo = schema.new({
            id = id.from(_N, "ClusterOperationV2Provisioned", "SourceClusterInfo"),
            type = "structure",
            name = "SourceClusterInfo",
            target_id = id.from(_N, "MutableClusterInfo"),
            target = M.MutableClusterInfo,
            traits = {
                [traits.JSON_NAME] = { name = "sourceClusterInfo" },
            },
        }),
        TargetClusterInfo = schema.new({
            id = id.from(_N, "ClusterOperationV2Provisioned", "TargetClusterInfo"),
            type = "structure",
            name = "TargetClusterInfo",
            target_id = id.from(_N, "MutableClusterInfo"),
            target = M.MutableClusterInfo,
            traits = {
                [traits.JSON_NAME] = { name = "targetClusterInfo" },
            },
        }),
        VpcConnectionInfo = schema.new({
            id = id.from(_N, "ClusterOperationV2Provisioned", "VpcConnectionInfo"),
            type = "structure",
            name = "VpcConnectionInfo",
            target_id = id.from(_N, "VpcConnectionInfo"),
            target = M.VpcConnectionInfo,
            traits = {
                [traits.JSON_NAME] = { name = "vpcConnectionInfo" },
            },
        }),
    },
})

M.VpcConnectionInfoServerless = schema.new({
    id = id.from(_N, "VpcConnectionInfoServerless"),
    type = "structure",
    members = {
        CreationTime = schema.new({
            id = id.from(_N, "VpcConnectionInfoServerless", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.JSON_NAME] = { name = "creationTime" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.JSON_NAME] = { name = "creationTime" },
            },
        }),
        Owner = schema.new({
            id = id.from(_N, "VpcConnectionInfoServerless", "Owner"),
            type = "string",
            name = "Owner",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "owner" },
            },
        }),
        UserIdentity = schema.new({
            id = id.from(_N, "VpcConnectionInfoServerless", "UserIdentity"),
            type = "structure",
            name = "UserIdentity",
            target_id = id.from(_N, "UserIdentity"),
            target = M.UserIdentity,
            traits = {
                [traits.JSON_NAME] = { name = "userIdentity" },
            },
        }),
        VpcConnectionArn = schema.new({
            id = id.from(_N, "VpcConnectionInfoServerless", "VpcConnectionArn"),
            type = "string",
            name = "VpcConnectionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "vpcConnectionArn" },
            },
        }),
    },
})

M.ClusterOperationV2Serverless = schema.new({
    id = id.from(_N, "ClusterOperationV2Serverless"),
    type = "structure",
    members = {
        SourceClusterInfo = schema.new({
            id = id.from(_N, "ClusterOperationV2Serverless", "SourceClusterInfo"),
            type = "structure",
            name = "SourceClusterInfo",
            target_id = id.from(_N, "ServerlessConnectivityInfo"),
            target = M.ServerlessConnectivityInfo,
            traits = {
                [traits.JSON_NAME] = { name = "sourceClusterInfo" },
            },
        }),
        TargetClusterInfo = schema.new({
            id = id.from(_N, "ClusterOperationV2Serverless", "TargetClusterInfo"),
            type = "structure",
            name = "TargetClusterInfo",
            target_id = id.from(_N, "ServerlessConnectivityInfo"),
            target = M.ServerlessConnectivityInfo,
            traits = {
                [traits.JSON_NAME] = { name = "targetClusterInfo" },
            },
        }),
        VpcConnectionInfo = schema.new({
            id = id.from(_N, "ClusterOperationV2Serverless", "VpcConnectionInfo"),
            type = "structure",
            name = "VpcConnectionInfo",
            target_id = id.from(_N, "VpcConnectionInfoServerless"),
            target = M.VpcConnectionInfoServerless,
            traits = {
                [traits.JSON_NAME] = { name = "vpcConnectionInfo" },
            },
        }),
    },
})

M.ClusterOperationV2 = schema.new({
    id = id.from(_N, "ClusterOperationV2"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "ClusterOperationV2", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterArn" },
            },
        }),
        ClusterType = schema.new({
            id = id.from(_N, "ClusterOperationV2", "ClusterType"),
            type = "string",
            name = "ClusterType",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterType" },
            },
        }),
        StartTime = schema.new({
            id = id.from(_N, "ClusterOperationV2", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.JSON_NAME] = { name = "startTime" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.JSON_NAME] = { name = "startTime" },
            },
        }),
        EndTime = schema.new({
            id = id.from(_N, "ClusterOperationV2", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.JSON_NAME] = { name = "endTime" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.JSON_NAME] = { name = "endTime" },
            },
        }),
        ErrorInfo = schema.new({
            id = id.from(_N, "ClusterOperationV2", "ErrorInfo"),
            type = "structure",
            name = "ErrorInfo",
            target_id = id.from(_N, "ErrorInfo"),
            target = M.ErrorInfo,
            traits = {
                [traits.JSON_NAME] = { name = "errorInfo" },
            },
        }),
        OperationArn = schema.new({
            id = id.from(_N, "ClusterOperationV2", "OperationArn"),
            type = "string",
            name = "OperationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "operationArn" },
            },
        }),
        OperationState = schema.new({
            id = id.from(_N, "ClusterOperationV2", "OperationState"),
            type = "string",
            name = "OperationState",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "operationState" },
            },
        }),
        OperationType = schema.new({
            id = id.from(_N, "ClusterOperationV2", "OperationType"),
            type = "string",
            name = "OperationType",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "operationType" },
            },
        }),
        Provisioned = schema.new({
            id = id.from(_N, "ClusterOperationV2", "Provisioned"),
            type = "structure",
            name = "Provisioned",
            target_id = id.from(_N, "ClusterOperationV2Provisioned"),
            target = M.ClusterOperationV2Provisioned,
            traits = {
                [traits.JSON_NAME] = { name = "provisioned" },
            },
        }),
        Serverless = schema.new({
            id = id.from(_N, "ClusterOperationV2", "Serverless"),
            type = "structure",
            name = "Serverless",
            target_id = id.from(_N, "ClusterOperationV2Serverless"),
            target = M.ClusterOperationV2Serverless,
            traits = {
                [traits.JSON_NAME] = { name = "serverless" },
            },
        }),
    },
})

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        InvalidParameter = schema.new({
            id = id.from(_N, "ConflictException", "InvalidParameter"),
            type = "string",
            name = "InvalidParameter",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "invalidParameter" },
            },
        }),
        Message = schema.new({
            id = id.from(_N, "ConflictException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.ConsumerGroupReplicationUpdate = schema.new({
    id = id.from(_N, "ConsumerGroupReplicationUpdate"),
    type = "structure",
    members = {
        ConsumerGroupsToExclude = schema.new({
            id = id.from(_N, "ConsumerGroupReplicationUpdate", "ConsumerGroupsToExclude"),
            type = "list",
            name = "ConsumerGroupsToExclude",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "consumerGroupsToExclude" },
            },
        }),
        ConsumerGroupsToReplicate = schema.new({
            id = id.from(_N, "ConsumerGroupReplicationUpdate", "ConsumerGroupsToReplicate"),
            type = "list",
            name = "ConsumerGroupsToReplicate",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "consumerGroupsToReplicate" },
            },
        }),
        DetectAndCopyNewConsumerGroups = schema.new({
            id = id.from(_N, "ConsumerGroupReplicationUpdate", "DetectAndCopyNewConsumerGroups"),
            type = "boolean",
            name = "DetectAndCopyNewConsumerGroups",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "detectAndCopyNewConsumerGroups" },
            },
        }),
        SynchroniseConsumerGroupOffsets = schema.new({
            id = id.from(_N, "ConsumerGroupReplicationUpdate", "SynchroniseConsumerGroupOffsets"),
            type = "boolean",
            name = "SynchroniseConsumerGroupOffsets",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "synchroniseConsumerGroupOffsets" },
            },
        }),
    },
})

M.ControllerMovedException = schema.new({
    id = id.from(_N, "ControllerMovedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        InvalidParameter = schema.new({
            id = id.from(_N, "ControllerMovedException", "InvalidParameter"),
            type = "string",
            name = "InvalidParameter",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "invalidParameter" },
            },
        }),
        Message = schema.new({
            id = id.from(_N, "ControllerMovedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.CreateClusterInput = schema.new({
    id = id.from(_N, "CreateClusterRequest"),
    type = "structure",
    members = {
        BrokerNodeGroupInfo = schema.new({
            id = id.from(_N, "CreateClusterInput", "BrokerNodeGroupInfo"),
            type = "structure",
            name = "BrokerNodeGroupInfo",
            target_id = id.from(_N, "BrokerNodeGroupInfo"),
            target = M.BrokerNodeGroupInfo,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "brokerNodeGroupInfo" },
            },
        }),
        Rebalancing = schema.new({
            id = id.from(_N, "CreateClusterInput", "Rebalancing"),
            type = "structure",
            name = "Rebalancing",
            target_id = id.from(_N, "Rebalancing"),
            target = M.Rebalancing,
            traits = {
                [traits.JSON_NAME] = { name = "rebalancing" },
            },
        }),
        ClientAuthentication = schema.new({
            id = id.from(_N, "CreateClusterInput", "ClientAuthentication"),
            type = "structure",
            name = "ClientAuthentication",
            target_id = id.from(_N, "ClientAuthentication"),
            target = M.ClientAuthentication,
            traits = {
                [traits.JSON_NAME] = { name = "clientAuthentication" },
            },
        }),
        ClusterName = schema.new({
            id = id.from(_N, "CreateClusterInput", "ClusterName"),
            type = "string",
            name = "ClusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "clusterName" },
            },
        }),
        ConfigurationInfo = schema.new({
            id = id.from(_N, "CreateClusterInput", "ConfigurationInfo"),
            type = "structure",
            name = "ConfigurationInfo",
            target_id = id.from(_N, "ConfigurationInfo"),
            target = M.ConfigurationInfo,
            traits = {
                [traits.JSON_NAME] = { name = "configurationInfo" },
            },
        }),
        EncryptionInfo = schema.new({
            id = id.from(_N, "CreateClusterInput", "EncryptionInfo"),
            type = "structure",
            name = "EncryptionInfo",
            target_id = id.from(_N, "EncryptionInfo"),
            target = M.EncryptionInfo,
            traits = {
                [traits.JSON_NAME] = { name = "encryptionInfo" },
            },
        }),
        EnhancedMonitoring = schema.new({
            id = id.from(_N, "CreateClusterInput", "EnhancedMonitoring"),
            type = "string",
            name = "EnhancedMonitoring",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "enhancedMonitoring" },
            },
        }),
        OpenMonitoring = schema.new({
            id = id.from(_N, "CreateClusterInput", "OpenMonitoring"),
            type = "structure",
            name = "OpenMonitoring",
            target_id = id.from(_N, "OpenMonitoringInfo"),
            target = M.OpenMonitoringInfo,
            traits = {
                [traits.JSON_NAME] = { name = "openMonitoring" },
            },
        }),
        KafkaVersion = schema.new({
            id = id.from(_N, "CreateClusterInput", "KafkaVersion"),
            type = "string",
            name = "KafkaVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "kafkaVersion" },
            },
        }),
        LoggingInfo = schema.new({
            id = id.from(_N, "CreateClusterInput", "LoggingInfo"),
            type = "structure",
            name = "LoggingInfo",
            target_id = id.from(_N, "LoggingInfo"),
            target = M.LoggingInfo,
            traits = {
                [traits.JSON_NAME] = { name = "loggingInfo" },
            },
        }),
        NumberOfBrokerNodes = schema.new({
            id = id.from(_N, "CreateClusterInput", "NumberOfBrokerNodes"),
            type = "integer",
            name = "NumberOfBrokerNodes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "numberOfBrokerNodes" },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateClusterInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        StorageMode = schema.new({
            id = id.from(_N, "CreateClusterInput", "StorageMode"),
            type = "string",
            name = "StorageMode",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "storageMode" },
            },
        }),
    },
})

M.CreateClusterOutput = schema.new({
    id = id.from(_N, "CreateClusterResponse"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "CreateClusterOutput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterArn" },
            },
        }),
        ClusterName = schema.new({
            id = id.from(_N, "CreateClusterOutput", "ClusterName"),
            type = "string",
            name = "ClusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterName" },
            },
        }),
        State = schema.new({
            id = id.from(_N, "CreateClusterOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "state" },
            },
        }),
    },
})

M.ProvisionedRequest = schema.new({
    id = id.from(_N, "ProvisionedRequest"),
    type = "structure",
    members = {
        BrokerNodeGroupInfo = schema.new({
            id = id.from(_N, "ProvisionedRequest", "BrokerNodeGroupInfo"),
            type = "structure",
            name = "BrokerNodeGroupInfo",
            target_id = id.from(_N, "BrokerNodeGroupInfo"),
            target = M.BrokerNodeGroupInfo,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "brokerNodeGroupInfo" },
            },
        }),
        Rebalancing = schema.new({
            id = id.from(_N, "ProvisionedRequest", "Rebalancing"),
            type = "structure",
            name = "Rebalancing",
            target_id = id.from(_N, "Rebalancing"),
            target = M.Rebalancing,
            traits = {
                [traits.JSON_NAME] = { name = "rebalancing" },
            },
        }),
        ClientAuthentication = schema.new({
            id = id.from(_N, "ProvisionedRequest", "ClientAuthentication"),
            type = "structure",
            name = "ClientAuthentication",
            target_id = id.from(_N, "ClientAuthentication"),
            target = M.ClientAuthentication,
            traits = {
                [traits.JSON_NAME] = { name = "clientAuthentication" },
            },
        }),
        ConfigurationInfo = schema.new({
            id = id.from(_N, "ProvisionedRequest", "ConfigurationInfo"),
            type = "structure",
            name = "ConfigurationInfo",
            target_id = id.from(_N, "ConfigurationInfo"),
            target = M.ConfigurationInfo,
            traits = {
                [traits.JSON_NAME] = { name = "configurationInfo" },
            },
        }),
        EncryptionInfo = schema.new({
            id = id.from(_N, "ProvisionedRequest", "EncryptionInfo"),
            type = "structure",
            name = "EncryptionInfo",
            target_id = id.from(_N, "EncryptionInfo"),
            target = M.EncryptionInfo,
            traits = {
                [traits.JSON_NAME] = { name = "encryptionInfo" },
            },
        }),
        EnhancedMonitoring = schema.new({
            id = id.from(_N, "ProvisionedRequest", "EnhancedMonitoring"),
            type = "string",
            name = "EnhancedMonitoring",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "enhancedMonitoring" },
            },
        }),
        OpenMonitoring = schema.new({
            id = id.from(_N, "ProvisionedRequest", "OpenMonitoring"),
            type = "structure",
            name = "OpenMonitoring",
            target_id = id.from(_N, "OpenMonitoringInfo"),
            target = M.OpenMonitoringInfo,
            traits = {
                [traits.JSON_NAME] = { name = "openMonitoring" },
            },
        }),
        KafkaVersion = schema.new({
            id = id.from(_N, "ProvisionedRequest", "KafkaVersion"),
            type = "string",
            name = "KafkaVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "kafkaVersion" },
            },
        }),
        LoggingInfo = schema.new({
            id = id.from(_N, "ProvisionedRequest", "LoggingInfo"),
            type = "structure",
            name = "LoggingInfo",
            target_id = id.from(_N, "LoggingInfo"),
            target = M.LoggingInfo,
            traits = {
                [traits.JSON_NAME] = { name = "loggingInfo" },
            },
        }),
        NumberOfBrokerNodes = schema.new({
            id = id.from(_N, "ProvisionedRequest", "NumberOfBrokerNodes"),
            type = "integer",
            name = "NumberOfBrokerNodes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "numberOfBrokerNodes" },
            },
        }),
        StorageMode = schema.new({
            id = id.from(_N, "ProvisionedRequest", "StorageMode"),
            type = "string",
            name = "StorageMode",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "storageMode" },
            },
        }),
    },
})

M.ServerlessRequest = schema.new({
    id = id.from(_N, "ServerlessRequest"),
    type = "structure",
    members = {
        VpcConfigs = schema.new({
            id = id.from(_N, "ServerlessRequest", "VpcConfigs"),
            type = "list",
            name = "VpcConfigs",
            target_id = prelude.Document.id,
            list_member = M.VpcConfig,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "vpcConfigs" },
            },
        }),
        ClientAuthentication = schema.new({
            id = id.from(_N, "ServerlessRequest", "ClientAuthentication"),
            type = "structure",
            name = "ClientAuthentication",
            target_id = id.from(_N, "ServerlessClientAuthentication"),
            target = M.ServerlessClientAuthentication,
            traits = {
                [traits.JSON_NAME] = { name = "clientAuthentication" },
            },
        }),
    },
})

M.CreateClusterV2Input = schema.new({
    id = id.from(_N, "CreateClusterV2Request"),
    type = "structure",
    members = {
        ClusterName = schema.new({
            id = id.from(_N, "CreateClusterV2Input", "ClusterName"),
            type = "string",
            name = "ClusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "clusterName" },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateClusterV2Input", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        Provisioned = schema.new({
            id = id.from(_N, "CreateClusterV2Input", "Provisioned"),
            type = "structure",
            name = "Provisioned",
            target_id = id.from(_N, "ProvisionedRequest"),
            target = M.ProvisionedRequest,
            traits = {
                [traits.JSON_NAME] = { name = "provisioned" },
            },
        }),
        Serverless = schema.new({
            id = id.from(_N, "CreateClusterV2Input", "Serverless"),
            type = "structure",
            name = "Serverless",
            target_id = id.from(_N, "ServerlessRequest"),
            target = M.ServerlessRequest,
            traits = {
                [traits.JSON_NAME] = { name = "serverless" },
            },
        }),
    },
})

M.CreateClusterV2Output = schema.new({
    id = id.from(_N, "CreateClusterV2Response"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "CreateClusterV2Output", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterArn" },
            },
        }),
        ClusterName = schema.new({
            id = id.from(_N, "CreateClusterV2Output", "ClusterName"),
            type = "string",
            name = "ClusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterName" },
            },
        }),
        State = schema.new({
            id = id.from(_N, "CreateClusterV2Output", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "state" },
            },
        }),
        ClusterType = schema.new({
            id = id.from(_N, "CreateClusterV2Output", "ClusterType"),
            type = "string",
            name = "ClusterType",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterType" },
            },
        }),
    },
})

M.CreateConfigurationInput = schema.new({
    id = id.from(_N, "CreateConfigurationRequest"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "CreateConfigurationInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "description" },
            },
        }),
        KafkaVersions = schema.new({
            id = id.from(_N, "CreateConfigurationInput", "KafkaVersions"),
            type = "list",
            name = "KafkaVersions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "kafkaVersions" },
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateConfigurationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "name" },
            },
        }),
        ServerProperties = schema.new({
            id = id.from(_N, "CreateConfigurationInput", "ServerProperties"),
            type = "blob",
            name = "ServerProperties",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "serverProperties" },
            },
        }),
    },
})

M.CreateConfigurationOutput = schema.new({
    id = id.from(_N, "CreateConfigurationResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateConfigurationOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "arn" },
            },
        }),
        CreationTime = schema.new({
            id = id.from(_N, "CreateConfigurationOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.JSON_NAME] = { name = "creationTime" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.JSON_NAME] = { name = "creationTime" },
            },
        }),
        LatestRevision = schema.new({
            id = id.from(_N, "CreateConfigurationOutput", "LatestRevision"),
            type = "structure",
            name = "LatestRevision",
            target_id = id.from(_N, "ConfigurationRevision"),
            target = M.ConfigurationRevision,
            traits = {
                [traits.JSON_NAME] = { name = "latestRevision" },
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateConfigurationOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "name" },
            },
        }),
        State = schema.new({
            id = id.from(_N, "CreateConfigurationOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "state" },
            },
        }),
    },
})

M.ReplicatorCloudWatchLogs = schema.new({
    id = id.from(_N, "ReplicatorCloudWatchLogs"),
    type = "structure",
    members = {
        Enabled = schema.new({
            id = id.from(_N, "ReplicatorCloudWatchLogs", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "enabled" },
            },
        }),
        LogGroup = schema.new({
            id = id.from(_N, "ReplicatorCloudWatchLogs", "LogGroup"),
            type = "string",
            name = "LogGroup",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "logGroup" },
            },
        }),
    },
})

M.ReplicatorFirehose = schema.new({
    id = id.from(_N, "ReplicatorFirehose"),
    type = "structure",
    members = {
        Enabled = schema.new({
            id = id.from(_N, "ReplicatorFirehose", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "enabled" },
            },
        }),
        DeliveryStream = schema.new({
            id = id.from(_N, "ReplicatorFirehose", "DeliveryStream"),
            type = "string",
            name = "DeliveryStream",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "deliveryStream" },
            },
        }),
    },
})

M.ReplicatorS3 = schema.new({
    id = id.from(_N, "ReplicatorS3"),
    type = "structure",
    members = {
        Enabled = schema.new({
            id = id.from(_N, "ReplicatorS3", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "enabled" },
            },
        }),
        Bucket = schema.new({
            id = id.from(_N, "ReplicatorS3", "Bucket"),
            type = "string",
            name = "Bucket",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "bucket" },
            },
        }),
        Prefix = schema.new({
            id = id.from(_N, "ReplicatorS3", "Prefix"),
            type = "string",
            name = "Prefix",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "prefix" },
            },
        }),
    },
})

M.ReplicatorLogDelivery = schema.new({
    id = id.from(_N, "ReplicatorLogDelivery"),
    type = "structure",
    members = {
        CloudWatchLogs = schema.new({
            id = id.from(_N, "ReplicatorLogDelivery", "CloudWatchLogs"),
            type = "structure",
            name = "CloudWatchLogs",
            target_id = id.from(_N, "ReplicatorCloudWatchLogs"),
            target = M.ReplicatorCloudWatchLogs,
            traits = {
                [traits.JSON_NAME] = { name = "cloudWatchLogs" },
            },
        }),
        Firehose = schema.new({
            id = id.from(_N, "ReplicatorLogDelivery", "Firehose"),
            type = "structure",
            name = "Firehose",
            target_id = id.from(_N, "ReplicatorFirehose"),
            target = M.ReplicatorFirehose,
            traits = {
                [traits.JSON_NAME] = { name = "firehose" },
            },
        }),
        S3 = schema.new({
            id = id.from(_N, "ReplicatorLogDelivery", "S3"),
            type = "structure",
            name = "S3",
            target_id = id.from(_N, "ReplicatorS3"),
            target = M.ReplicatorS3,
            traits = {
                [traits.JSON_NAME] = { name = "s3" },
            },
        }),
    },
})

M.LogDelivery = schema.new({
    id = id.from(_N, "LogDelivery"),
    type = "structure",
    members = {
        ReplicatorLogDelivery = schema.new({
            id = id.from(_N, "LogDelivery", "ReplicatorLogDelivery"),
            type = "structure",
            name = "ReplicatorLogDelivery",
            target_id = id.from(_N, "ReplicatorLogDelivery"),
            target = M.ReplicatorLogDelivery,
            traits = {
                [traits.JSON_NAME] = { name = "replicatorLogDelivery" },
            },
        }),
    },
})

M.CreateReplicatorInput = schema.new({
    id = id.from(_N, "CreateReplicatorRequest"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "CreateReplicatorInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "description" },
            },
        }),
        KafkaClusters = schema.new({
            id = id.from(_N, "CreateReplicatorInput", "KafkaClusters"),
            type = "list",
            name = "KafkaClusters",
            target_id = prelude.Document.id,
            list_member = M.KafkaCluster,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "kafkaClusters" },
            },
        }),
        ReplicationInfoList = schema.new({
            id = id.from(_N, "CreateReplicatorInput", "ReplicationInfoList"),
            type = "list",
            name = "ReplicationInfoList",
            target_id = prelude.Document.id,
            list_member = M.ReplicationInfo,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "replicationInfoList" },
            },
        }),
        ReplicatorName = schema.new({
            id = id.from(_N, "CreateReplicatorInput", "ReplicatorName"),
            type = "string",
            name = "ReplicatorName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "replicatorName" },
            },
        }),
        ServiceExecutionRoleArn = schema.new({
            id = id.from(_N, "CreateReplicatorInput", "ServiceExecutionRoleArn"),
            type = "string",
            name = "ServiceExecutionRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "serviceExecutionRoleArn" },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateReplicatorInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        LogDelivery = schema.new({
            id = id.from(_N, "CreateReplicatorInput", "LogDelivery"),
            type = "structure",
            name = "LogDelivery",
            target_id = id.from(_N, "LogDelivery"),
            target = M.LogDelivery,
            traits = {
                [traits.JSON_NAME] = { name = "logDelivery" },
            },
        }),
    },
})

M.CreateReplicatorOutput = schema.new({
    id = id.from(_N, "CreateReplicatorResponse"),
    type = "structure",
    members = {
        ReplicatorArn = schema.new({
            id = id.from(_N, "CreateReplicatorOutput", "ReplicatorArn"),
            type = "string",
            name = "ReplicatorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "replicatorArn" },
            },
        }),
        ReplicatorName = schema.new({
            id = id.from(_N, "CreateReplicatorOutput", "ReplicatorName"),
            type = "string",
            name = "ReplicatorName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "replicatorName" },
            },
        }),
        ReplicatorState = schema.new({
            id = id.from(_N, "CreateReplicatorOutput", "ReplicatorState"),
            type = "string",
            name = "ReplicatorState",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "replicatorState" },
            },
        }),
    },
})

M.CreateTopicInput = schema.new({
    id = id.from(_N, "CreateTopicRequest"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "CreateTopicInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        TopicName = schema.new({
            id = id.from(_N, "CreateTopicInput", "TopicName"),
            type = "string",
            name = "TopicName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "topicName" },
            },
        }),
        PartitionCount = schema.new({
            id = id.from(_N, "CreateTopicInput", "PartitionCount"),
            type = "integer",
            name = "PartitionCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "partitionCount" },
            },
        }),
        ReplicationFactor = schema.new({
            id = id.from(_N, "CreateTopicInput", "ReplicationFactor"),
            type = "integer",
            name = "ReplicationFactor",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "replicationFactor" },
            },
        }),
        Configs = schema.new({
            id = id.from(_N, "CreateTopicInput", "Configs"),
            type = "string",
            name = "Configs",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "configs" },
            },
        }),
    },
})

M.CreateTopicOutput = schema.new({
    id = id.from(_N, "CreateTopicResponse"),
    type = "structure",
    members = {
        TopicArn = schema.new({
            id = id.from(_N, "CreateTopicOutput", "TopicArn"),
            type = "string",
            name = "TopicArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "topicArn" },
            },
        }),
        TopicName = schema.new({
            id = id.from(_N, "CreateTopicOutput", "TopicName"),
            type = "string",
            name = "TopicName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "topicName" },
            },
        }),
        Status = schema.new({
            id = id.from(_N, "CreateTopicOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "status" },
            },
        }),
    },
})

M.GroupSubscribedToTopicException = schema.new({
    id = id.from(_N, "GroupSubscribedToTopicException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        InvalidParameter = schema.new({
            id = id.from(_N, "GroupSubscribedToTopicException", "InvalidParameter"),
            type = "string",
            name = "InvalidParameter",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "invalidParameter" },
            },
        }),
        Message = schema.new({
            id = id.from(_N, "GroupSubscribedToTopicException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.KafkaRequestException = schema.new({
    id = id.from(_N, "KafkaRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        InvalidParameter = schema.new({
            id = id.from(_N, "KafkaRequestException", "InvalidParameter"),
            type = "string",
            name = "InvalidParameter",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "invalidParameter" },
            },
        }),
        Message = schema.new({
            id = id.from(_N, "KafkaRequestException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.KafkaTimeoutException = schema.new({
    id = id.from(_N, "KafkaTimeoutException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        InvalidParameter = schema.new({
            id = id.from(_N, "KafkaTimeoutException", "InvalidParameter"),
            type = "string",
            name = "InvalidParameter",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "invalidParameter" },
            },
        }),
        Message = schema.new({
            id = id.from(_N, "KafkaTimeoutException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.NotControllerException = schema.new({
    id = id.from(_N, "NotControllerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        InvalidParameter = schema.new({
            id = id.from(_N, "NotControllerException", "InvalidParameter"),
            type = "string",
            name = "InvalidParameter",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "invalidParameter" },
            },
        }),
        Message = schema.new({
            id = id.from(_N, "NotControllerException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.ReassignmentInProgressException = schema.new({
    id = id.from(_N, "ReassignmentInProgressException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        InvalidParameter = schema.new({
            id = id.from(_N, "ReassignmentInProgressException", "InvalidParameter"),
            type = "string",
            name = "InvalidParameter",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "invalidParameter" },
            },
        }),
        Message = schema.new({
            id = id.from(_N, "ReassignmentInProgressException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.TopicExistsException = schema.new({
    id = id.from(_N, "TopicExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        InvalidParameter = schema.new({
            id = id.from(_N, "TopicExistsException", "InvalidParameter"),
            type = "string",
            name = "InvalidParameter",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "invalidParameter" },
            },
        }),
        Message = schema.new({
            id = id.from(_N, "TopicExistsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.UnknownTopicOrPartitionException = schema.new({
    id = id.from(_N, "UnknownTopicOrPartitionException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        InvalidParameter = schema.new({
            id = id.from(_N, "UnknownTopicOrPartitionException", "InvalidParameter"),
            type = "string",
            name = "InvalidParameter",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "invalidParameter" },
            },
        }),
        Message = schema.new({
            id = id.from(_N, "UnknownTopicOrPartitionException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.CreateVpcConnectionInput = schema.new({
    id = id.from(_N, "CreateVpcConnectionRequest"),
    type = "structure",
    members = {
        TargetClusterArn = schema.new({
            id = id.from(_N, "CreateVpcConnectionInput", "TargetClusterArn"),
            type = "string",
            name = "TargetClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "targetClusterArn" },
            },
        }),
        Authentication = schema.new({
            id = id.from(_N, "CreateVpcConnectionInput", "Authentication"),
            type = "string",
            name = "Authentication",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "authentication" },
            },
        }),
        VpcId = schema.new({
            id = id.from(_N, "CreateVpcConnectionInput", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "vpcId" },
            },
        }),
        ClientSubnets = schema.new({
            id = id.from(_N, "CreateVpcConnectionInput", "ClientSubnets"),
            type = "list",
            name = "ClientSubnets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "clientSubnets" },
            },
        }),
        SecurityGroups = schema.new({
            id = id.from(_N, "CreateVpcConnectionInput", "SecurityGroups"),
            type = "list",
            name = "SecurityGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "securityGroups" },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateVpcConnectionInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.CreateVpcConnectionOutput = schema.new({
    id = id.from(_N, "CreateVpcConnectionResponse"),
    type = "structure",
    members = {
        VpcConnectionArn = schema.new({
            id = id.from(_N, "CreateVpcConnectionOutput", "VpcConnectionArn"),
            type = "string",
            name = "VpcConnectionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "vpcConnectionArn" },
            },
        }),
        State = schema.new({
            id = id.from(_N, "CreateVpcConnectionOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "state" },
            },
        }),
        Authentication = schema.new({
            id = id.from(_N, "CreateVpcConnectionOutput", "Authentication"),
            type = "string",
            name = "Authentication",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "authentication" },
            },
        }),
        VpcId = schema.new({
            id = id.from(_N, "CreateVpcConnectionOutput", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "vpcId" },
            },
        }),
        ClientSubnets = schema.new({
            id = id.from(_N, "CreateVpcConnectionOutput", "ClientSubnets"),
            type = "list",
            name = "ClientSubnets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "clientSubnets" },
            },
        }),
        SecurityGroups = schema.new({
            id = id.from(_N, "CreateVpcConnectionOutput", "SecurityGroups"),
            type = "list",
            name = "SecurityGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "securityGroups" },
            },
        }),
        CreationTime = schema.new({
            id = id.from(_N, "CreateVpcConnectionOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.JSON_NAME] = { name = "creationTime" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.JSON_NAME] = { name = "creationTime" },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateVpcConnectionOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.DeleteClusterInput = schema.new({
    id = id.from(_N, "DeleteClusterRequest"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "DeleteClusterInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        CurrentVersion = schema.new({
            id = id.from(_N, "DeleteClusterInput", "CurrentVersion"),
            type = "string",
            name = "CurrentVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "currentVersion" },
            },
        }),
    },
})

M.DeleteClusterOutput = schema.new({
    id = id.from(_N, "DeleteClusterResponse"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "DeleteClusterOutput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterArn" },
            },
        }),
        State = schema.new({
            id = id.from(_N, "DeleteClusterOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "state" },
            },
        }),
    },
})

M.DeleteClusterPolicyInput = schema.new({
    id = id.from(_N, "DeleteClusterPolicyRequest"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "DeleteClusterPolicyInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteClusterPolicyOutput = schema.new({
    id = id.from(_N, "DeleteClusterPolicyResponse"),
    type = "structure",
})

M.DeleteConfigurationInput = schema.new({
    id = id.from(_N, "DeleteConfigurationRequest"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "DeleteConfigurationInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteConfigurationResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "DeleteConfigurationOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "arn" },
            },
        }),
        State = schema.new({
            id = id.from(_N, "DeleteConfigurationOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "state" },
            },
        }),
    },
})

M.DeleteReplicatorInput = schema.new({
    id = id.from(_N, "DeleteReplicatorRequest"),
    type = "structure",
    members = {
        CurrentVersion = schema.new({
            id = id.from(_N, "DeleteReplicatorInput", "CurrentVersion"),
            type = "string",
            name = "CurrentVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "currentVersion" },
            },
        }),
        ReplicatorArn = schema.new({
            id = id.from(_N, "DeleteReplicatorInput", "ReplicatorArn"),
            type = "string",
            name = "ReplicatorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteReplicatorOutput = schema.new({
    id = id.from(_N, "DeleteReplicatorResponse"),
    type = "structure",
    members = {
        ReplicatorArn = schema.new({
            id = id.from(_N, "DeleteReplicatorOutput", "ReplicatorArn"),
            type = "string",
            name = "ReplicatorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "replicatorArn" },
            },
        }),
        ReplicatorState = schema.new({
            id = id.from(_N, "DeleteReplicatorOutput", "ReplicatorState"),
            type = "string",
            name = "ReplicatorState",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "replicatorState" },
            },
        }),
    },
})

M.DeleteTopicInput = schema.new({
    id = id.from(_N, "DeleteTopicRequest"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "DeleteTopicInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        TopicName = schema.new({
            id = id.from(_N, "DeleteTopicInput", "TopicName"),
            type = "string",
            name = "TopicName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteTopicOutput = schema.new({
    id = id.from(_N, "DeleteTopicResponse"),
    type = "structure",
    members = {
        TopicArn = schema.new({
            id = id.from(_N, "DeleteTopicOutput", "TopicArn"),
            type = "string",
            name = "TopicArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "topicArn" },
            },
        }),
        TopicName = schema.new({
            id = id.from(_N, "DeleteTopicOutput", "TopicName"),
            type = "string",
            name = "TopicName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "topicName" },
            },
        }),
        Status = schema.new({
            id = id.from(_N, "DeleteTopicOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "status" },
            },
        }),
    },
})

M.DeleteVpcConnectionInput = schema.new({
    id = id.from(_N, "DeleteVpcConnectionRequest"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "DeleteVpcConnectionInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteVpcConnectionOutput = schema.new({
    id = id.from(_N, "DeleteVpcConnectionResponse"),
    type = "structure",
    members = {
        VpcConnectionArn = schema.new({
            id = id.from(_N, "DeleteVpcConnectionOutput", "VpcConnectionArn"),
            type = "string",
            name = "VpcConnectionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "vpcConnectionArn" },
            },
        }),
        State = schema.new({
            id = id.from(_N, "DeleteVpcConnectionOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "state" },
            },
        }),
    },
})

M.DescribeClusterInput = schema.new({
    id = id.from(_N, "DescribeClusterRequest"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "DescribeClusterInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeClusterOutput = schema.new({
    id = id.from(_N, "DescribeClusterResponse"),
    type = "structure",
    members = {
        ClusterInfo = schema.new({
            id = id.from(_N, "DescribeClusterOutput", "ClusterInfo"),
            type = "structure",
            name = "ClusterInfo",
            target_id = id.from(_N, "ClusterInfo"),
            target = M.ClusterInfo,
            traits = {
                [traits.JSON_NAME] = { name = "clusterInfo" },
            },
        }),
    },
})

M.DescribeClusterOperationInput = schema.new({
    id = id.from(_N, "DescribeClusterOperationRequest"),
    type = "structure",
    members = {
        ClusterOperationArn = schema.new({
            id = id.from(_N, "DescribeClusterOperationInput", "ClusterOperationArn"),
            type = "string",
            name = "ClusterOperationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeClusterOperationOutput = schema.new({
    id = id.from(_N, "DescribeClusterOperationResponse"),
    type = "structure",
    members = {
        ClusterOperationInfo = schema.new({
            id = id.from(_N, "DescribeClusterOperationOutput", "ClusterOperationInfo"),
            type = "structure",
            name = "ClusterOperationInfo",
            target_id = id.from(_N, "ClusterOperationInfo"),
            target = M.ClusterOperationInfo,
            traits = {
                [traits.JSON_NAME] = { name = "clusterOperationInfo" },
            },
        }),
    },
})

M.DescribeClusterOperationV2Input = schema.new({
    id = id.from(_N, "DescribeClusterOperationV2Request"),
    type = "structure",
    members = {
        ClusterOperationArn = schema.new({
            id = id.from(_N, "DescribeClusterOperationV2Input", "ClusterOperationArn"),
            type = "string",
            name = "ClusterOperationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeClusterOperationV2Output = schema.new({
    id = id.from(_N, "DescribeClusterOperationV2Response"),
    type = "structure",
    members = {
        ClusterOperationInfo = schema.new({
            id = id.from(_N, "DescribeClusterOperationV2Output", "ClusterOperationInfo"),
            type = "structure",
            name = "ClusterOperationInfo",
            target_id = id.from(_N, "ClusterOperationV2"),
            target = M.ClusterOperationV2,
            traits = {
                [traits.JSON_NAME] = { name = "clusterOperationInfo" },
            },
        }),
    },
})

M.DescribeClusterV2Input = schema.new({
    id = id.from(_N, "DescribeClusterV2Request"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "DescribeClusterV2Input", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeClusterV2Output = schema.new({
    id = id.from(_N, "DescribeClusterV2Response"),
    type = "structure",
    members = {
        ClusterInfo = schema.new({
            id = id.from(_N, "DescribeClusterV2Output", "ClusterInfo"),
            type = "structure",
            name = "ClusterInfo",
            target_id = id.from(_N, "Cluster"),
            target = M.Cluster,
            traits = {
                [traits.JSON_NAME] = { name = "clusterInfo" },
            },
        }),
    },
})

M.DescribeConfigurationInput = schema.new({
    id = id.from(_N, "DescribeConfigurationRequest"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "DescribeConfigurationInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeConfigurationOutput = schema.new({
    id = id.from(_N, "DescribeConfigurationResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "DescribeConfigurationOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "arn" },
            },
        }),
        CreationTime = schema.new({
            id = id.from(_N, "DescribeConfigurationOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.JSON_NAME] = { name = "creationTime" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.JSON_NAME] = { name = "creationTime" },
            },
        }),
        Description = schema.new({
            id = id.from(_N, "DescribeConfigurationOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "description" },
            },
        }),
        KafkaVersions = schema.new({
            id = id.from(_N, "DescribeConfigurationOutput", "KafkaVersions"),
            type = "list",
            name = "KafkaVersions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "kafkaVersions" },
            },
        }),
        LatestRevision = schema.new({
            id = id.from(_N, "DescribeConfigurationOutput", "LatestRevision"),
            type = "structure",
            name = "LatestRevision",
            target_id = id.from(_N, "ConfigurationRevision"),
            target = M.ConfigurationRevision,
            traits = {
                [traits.JSON_NAME] = { name = "latestRevision" },
            },
        }),
        Name = schema.new({
            id = id.from(_N, "DescribeConfigurationOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "name" },
            },
        }),
        State = schema.new({
            id = id.from(_N, "DescribeConfigurationOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "state" },
            },
        }),
    },
})

M.DescribeConfigurationRevisionInput = schema.new({
    id = id.from(_N, "DescribeConfigurationRevisionRequest"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "DescribeConfigurationRevisionInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Revision = schema.new({
            id = id.from(_N, "DescribeConfigurationRevisionInput", "Revision"),
            type = "long",
            name = "Revision",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeConfigurationRevisionOutput = schema.new({
    id = id.from(_N, "DescribeConfigurationRevisionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "DescribeConfigurationRevisionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "arn" },
            },
        }),
        CreationTime = schema.new({
            id = id.from(_N, "DescribeConfigurationRevisionOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.JSON_NAME] = { name = "creationTime" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.JSON_NAME] = { name = "creationTime" },
            },
        }),
        Description = schema.new({
            id = id.from(_N, "DescribeConfigurationRevisionOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "description" },
            },
        }),
        Revision = schema.new({
            id = id.from(_N, "DescribeConfigurationRevisionOutput", "Revision"),
            type = "long",
            name = "Revision",
            target_id = prelude.Long.id,
            traits = {
                [traits.JSON_NAME] = { name = "revision" },
            },
        }),
        ServerProperties = schema.new({
            id = id.from(_N, "DescribeConfigurationRevisionOutput", "ServerProperties"),
            type = "blob",
            name = "ServerProperties",
            target_id = prelude.Blob.id,
            traits = {
                [traits.JSON_NAME] = { name = "serverProperties" },
            },
        }),
    },
})

M.DescribeReplicatorInput = schema.new({
    id = id.from(_N, "DescribeReplicatorRequest"),
    type = "structure",
    members = {
        ReplicatorArn = schema.new({
            id = id.from(_N, "DescribeReplicatorInput", "ReplicatorArn"),
            type = "string",
            name = "ReplicatorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ReplicationStateInfo = schema.new({
    id = id.from(_N, "ReplicationStateInfo"),
    type = "structure",
    members = {
        Code = schema.new({
            id = id.from(_N, "ReplicationStateInfo", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "code" },
            },
        }),
        Message = schema.new({
            id = id.from(_N, "ReplicationStateInfo", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.DescribeReplicatorOutput = schema.new({
    id = id.from(_N, "DescribeReplicatorResponse"),
    type = "structure",
    members = {
        CreationTime = schema.new({
            id = id.from(_N, "DescribeReplicatorOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.JSON_NAME] = { name = "creationTime" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.JSON_NAME] = { name = "creationTime" },
            },
        }),
        CurrentVersion = schema.new({
            id = id.from(_N, "DescribeReplicatorOutput", "CurrentVersion"),
            type = "string",
            name = "CurrentVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "currentVersion" },
            },
        }),
        IsReplicatorReference = schema.new({
            id = id.from(_N, "DescribeReplicatorOutput", "IsReplicatorReference"),
            type = "boolean",
            name = "IsReplicatorReference",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "isReplicatorReference" },
            },
        }),
        KafkaClusters = schema.new({
            id = id.from(_N, "DescribeReplicatorOutput", "KafkaClusters"),
            type = "list",
            name = "KafkaClusters",
            target_id = prelude.Document.id,
            list_member = M.KafkaClusterDescription,
            traits = {
                [traits.JSON_NAME] = { name = "kafkaClusters" },
            },
        }),
        ReplicationInfoList = schema.new({
            id = id.from(_N, "DescribeReplicatorOutput", "ReplicationInfoList"),
            type = "list",
            name = "ReplicationInfoList",
            target_id = prelude.Document.id,
            list_member = M.ReplicationInfoDescription,
            traits = {
                [traits.JSON_NAME] = { name = "replicationInfoList" },
            },
        }),
        ReplicatorArn = schema.new({
            id = id.from(_N, "DescribeReplicatorOutput", "ReplicatorArn"),
            type = "string",
            name = "ReplicatorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "replicatorArn" },
            },
        }),
        ReplicatorDescription = schema.new({
            id = id.from(_N, "DescribeReplicatorOutput", "ReplicatorDescription"),
            type = "string",
            name = "ReplicatorDescription",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "replicatorDescription" },
            },
        }),
        ReplicatorName = schema.new({
            id = id.from(_N, "DescribeReplicatorOutput", "ReplicatorName"),
            type = "string",
            name = "ReplicatorName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "replicatorName" },
            },
        }),
        ReplicatorResourceArn = schema.new({
            id = id.from(_N, "DescribeReplicatorOutput", "ReplicatorResourceArn"),
            type = "string",
            name = "ReplicatorResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "replicatorResourceArn" },
            },
        }),
        ReplicatorState = schema.new({
            id = id.from(_N, "DescribeReplicatorOutput", "ReplicatorState"),
            type = "string",
            name = "ReplicatorState",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "replicatorState" },
            },
        }),
        ServiceExecutionRoleArn = schema.new({
            id = id.from(_N, "DescribeReplicatorOutput", "ServiceExecutionRoleArn"),
            type = "string",
            name = "ServiceExecutionRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "serviceExecutionRoleArn" },
            },
        }),
        StateInfo = schema.new({
            id = id.from(_N, "DescribeReplicatorOutput", "StateInfo"),
            type = "structure",
            name = "StateInfo",
            target_id = id.from(_N, "ReplicationStateInfo"),
            target = M.ReplicationStateInfo,
            traits = {
                [traits.JSON_NAME] = { name = "stateInfo" },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "DescribeReplicatorOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        LogDelivery = schema.new({
            id = id.from(_N, "DescribeReplicatorOutput", "LogDelivery"),
            type = "structure",
            name = "LogDelivery",
            target_id = id.from(_N, "LogDelivery"),
            target = M.LogDelivery,
            traits = {
                [traits.JSON_NAME] = { name = "logDelivery" },
            },
        }),
    },
})

M.DescribeTopicInput = schema.new({
    id = id.from(_N, "DescribeTopicRequest"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "DescribeTopicInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        TopicName = schema.new({
            id = id.from(_N, "DescribeTopicInput", "TopicName"),
            type = "string",
            name = "TopicName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeTopicOutput = schema.new({
    id = id.from(_N, "DescribeTopicResponse"),
    type = "structure",
    members = {
        TopicArn = schema.new({
            id = id.from(_N, "DescribeTopicOutput", "TopicArn"),
            type = "string",
            name = "TopicArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "topicArn" },
            },
        }),
        TopicName = schema.new({
            id = id.from(_N, "DescribeTopicOutput", "TopicName"),
            type = "string",
            name = "TopicName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "topicName" },
            },
        }),
        ReplicationFactor = schema.new({
            id = id.from(_N, "DescribeTopicOutput", "ReplicationFactor"),
            type = "integer",
            name = "ReplicationFactor",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "replicationFactor" },
            },
        }),
        PartitionCount = schema.new({
            id = id.from(_N, "DescribeTopicOutput", "PartitionCount"),
            type = "integer",
            name = "PartitionCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "partitionCount" },
            },
        }),
        Configs = schema.new({
            id = id.from(_N, "DescribeTopicOutput", "Configs"),
            type = "string",
            name = "Configs",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "configs" },
            },
        }),
        Status = schema.new({
            id = id.from(_N, "DescribeTopicOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "status" },
            },
        }),
    },
})

M.DescribeTopicPartitionsInput = schema.new({
    id = id.from(_N, "DescribeTopicPartitionsRequest"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "DescribeTopicPartitionsInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        TopicName = schema.new({
            id = id.from(_N, "DescribeTopicPartitionsInput", "TopicName"),
            type = "string",
            name = "TopicName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeTopicPartitionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeTopicPartitionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.DescribeTopicPartitionsOutput = schema.new({
    id = id.from(_N, "DescribeTopicPartitionsResponse"),
    type = "structure",
    members = {
        Partitions = schema.new({
            id = id.from(_N, "DescribeTopicPartitionsOutput", "Partitions"),
            type = "list",
            name = "Partitions",
            target_id = prelude.Document.id,
            list_member = M.TopicPartitionInfo,
            traits = {
                [traits.JSON_NAME] = { name = "partitions" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeTopicPartitionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "nextToken" },
            },
        }),
    },
})

M.DescribeVpcConnectionInput = schema.new({
    id = id.from(_N, "DescribeVpcConnectionRequest"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "DescribeVpcConnectionInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeVpcConnectionOutput = schema.new({
    id = id.from(_N, "DescribeVpcConnectionResponse"),
    type = "structure",
    members = {
        VpcConnectionArn = schema.new({
            id = id.from(_N, "DescribeVpcConnectionOutput", "VpcConnectionArn"),
            type = "string",
            name = "VpcConnectionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "vpcConnectionArn" },
            },
        }),
        TargetClusterArn = schema.new({
            id = id.from(_N, "DescribeVpcConnectionOutput", "TargetClusterArn"),
            type = "string",
            name = "TargetClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "targetClusterArn" },
            },
        }),
        State = schema.new({
            id = id.from(_N, "DescribeVpcConnectionOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "state" },
            },
        }),
        Authentication = schema.new({
            id = id.from(_N, "DescribeVpcConnectionOutput", "Authentication"),
            type = "string",
            name = "Authentication",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "authentication" },
            },
        }),
        VpcId = schema.new({
            id = id.from(_N, "DescribeVpcConnectionOutput", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "vpcId" },
            },
        }),
        Subnets = schema.new({
            id = id.from(_N, "DescribeVpcConnectionOutput", "Subnets"),
            type = "list",
            name = "Subnets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "subnets" },
            },
        }),
        SecurityGroups = schema.new({
            id = id.from(_N, "DescribeVpcConnectionOutput", "SecurityGroups"),
            type = "list",
            name = "SecurityGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "securityGroups" },
            },
        }),
        CreationTime = schema.new({
            id = id.from(_N, "DescribeVpcConnectionOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.JSON_NAME] = { name = "creationTime" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.JSON_NAME] = { name = "creationTime" },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "DescribeVpcConnectionOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.GetBootstrapBrokersInput = schema.new({
    id = id.from(_N, "GetBootstrapBrokersRequest"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "GetBootstrapBrokersInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetBootstrapBrokersOutput = schema.new({
    id = id.from(_N, "GetBootstrapBrokersResponse"),
    type = "structure",
    members = {
        BootstrapBrokerString = schema.new({
            id = id.from(_N, "GetBootstrapBrokersOutput", "BootstrapBrokerString"),
            type = "string",
            name = "BootstrapBrokerString",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "bootstrapBrokerString" },
            },
        }),
        BootstrapBrokerStringTls = schema.new({
            id = id.from(_N, "GetBootstrapBrokersOutput", "BootstrapBrokerStringTls"),
            type = "string",
            name = "BootstrapBrokerStringTls",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "bootstrapBrokerStringTls" },
            },
        }),
        BootstrapBrokerStringSaslScram = schema.new({
            id = id.from(_N, "GetBootstrapBrokersOutput", "BootstrapBrokerStringSaslScram"),
            type = "string",
            name = "BootstrapBrokerStringSaslScram",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "bootstrapBrokerStringSaslScram" },
            },
        }),
        BootstrapBrokerStringSaslIam = schema.new({
            id = id.from(_N, "GetBootstrapBrokersOutput", "BootstrapBrokerStringSaslIam"),
            type = "string",
            name = "BootstrapBrokerStringSaslIam",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "bootstrapBrokerStringSaslIam" },
            },
        }),
        BootstrapBrokerStringPublicTls = schema.new({
            id = id.from(_N, "GetBootstrapBrokersOutput", "BootstrapBrokerStringPublicTls"),
            type = "string",
            name = "BootstrapBrokerStringPublicTls",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "bootstrapBrokerStringPublicTls" },
            },
        }),
        BootstrapBrokerStringPublicSaslScram = schema.new({
            id = id.from(_N, "GetBootstrapBrokersOutput", "BootstrapBrokerStringPublicSaslScram"),
            type = "string",
            name = "BootstrapBrokerStringPublicSaslScram",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "bootstrapBrokerStringPublicSaslScram" },
            },
        }),
        BootstrapBrokerStringPublicSaslIam = schema.new({
            id = id.from(_N, "GetBootstrapBrokersOutput", "BootstrapBrokerStringPublicSaslIam"),
            type = "string",
            name = "BootstrapBrokerStringPublicSaslIam",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "bootstrapBrokerStringPublicSaslIam" },
            },
        }),
        BootstrapBrokerStringVpcConnectivityTls = schema.new({
            id = id.from(_N, "GetBootstrapBrokersOutput", "BootstrapBrokerStringVpcConnectivityTls"),
            type = "string",
            name = "BootstrapBrokerStringVpcConnectivityTls",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "bootstrapBrokerStringVpcConnectivityTls" },
            },
        }),
        BootstrapBrokerStringVpcConnectivitySaslScram = schema.new({
            id = id.from(_N, "GetBootstrapBrokersOutput", "BootstrapBrokerStringVpcConnectivitySaslScram"),
            type = "string",
            name = "BootstrapBrokerStringVpcConnectivitySaslScram",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "bootstrapBrokerStringVpcConnectivitySaslScram" },
            },
        }),
        BootstrapBrokerStringVpcConnectivitySaslIam = schema.new({
            id = id.from(_N, "GetBootstrapBrokersOutput", "BootstrapBrokerStringVpcConnectivitySaslIam"),
            type = "string",
            name = "BootstrapBrokerStringVpcConnectivitySaslIam",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "bootstrapBrokerStringVpcConnectivitySaslIam" },
            },
        }),
        BootstrapBrokerStringIpv6 = schema.new({
            id = id.from(_N, "GetBootstrapBrokersOutput", "BootstrapBrokerStringIpv6"),
            type = "string",
            name = "BootstrapBrokerStringIpv6",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "bootstrapBrokerStringIpv6" },
            },
        }),
        BootstrapBrokerStringTlsIpv6 = schema.new({
            id = id.from(_N, "GetBootstrapBrokersOutput", "BootstrapBrokerStringTlsIpv6"),
            type = "string",
            name = "BootstrapBrokerStringTlsIpv6",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "bootstrapBrokerStringTlsIpv6" },
            },
        }),
        BootstrapBrokerStringSaslScramIpv6 = schema.new({
            id = id.from(_N, "GetBootstrapBrokersOutput", "BootstrapBrokerStringSaslScramIpv6"),
            type = "string",
            name = "BootstrapBrokerStringSaslScramIpv6",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "bootstrapBrokerStringSaslScramIpv6" },
            },
        }),
        BootstrapBrokerStringSaslIamIpv6 = schema.new({
            id = id.from(_N, "GetBootstrapBrokersOutput", "BootstrapBrokerStringSaslIamIpv6"),
            type = "string",
            name = "BootstrapBrokerStringSaslIamIpv6",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "bootstrapBrokerStringSaslIamIpv6" },
            },
        }),
    },
})

M.GetClusterPolicyInput = schema.new({
    id = id.from(_N, "GetClusterPolicyRequest"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "GetClusterPolicyInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetClusterPolicyOutput = schema.new({
    id = id.from(_N, "GetClusterPolicyResponse"),
    type = "structure",
    members = {
        CurrentVersion = schema.new({
            id = id.from(_N, "GetClusterPolicyOutput", "CurrentVersion"),
            type = "string",
            name = "CurrentVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "currentVersion" },
            },
        }),
        Policy = schema.new({
            id = id.from(_N, "GetClusterPolicyOutput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "policy" },
            },
        }),
    },
})

M.GetCompatibleKafkaVersionsInput = schema.new({
    id = id.from(_N, "GetCompatibleKafkaVersionsRequest"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "GetCompatibleKafkaVersionsInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clusterArn" },
            },
        }),
    },
})

M.GetCompatibleKafkaVersionsOutput = schema.new({
    id = id.from(_N, "GetCompatibleKafkaVersionsResponse"),
    type = "structure",
    members = {
        CompatibleKafkaVersions = schema.new({
            id = id.from(_N, "GetCompatibleKafkaVersionsOutput", "CompatibleKafkaVersions"),
            type = "list",
            name = "CompatibleKafkaVersions",
            target_id = prelude.Document.id,
            list_member = M.CompatibleKafkaVersion,
            traits = {
                [traits.JSON_NAME] = { name = "compatibleKafkaVersions" },
            },
        }),
    },
})

M.ListClientVpcConnectionsInput = schema.new({
    id = id.from(_N, "ListClientVpcConnectionsRequest"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "ListClientVpcConnectionsInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListClientVpcConnectionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListClientVpcConnectionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListClientVpcConnectionsOutput = schema.new({
    id = id.from(_N, "ListClientVpcConnectionsResponse"),
    type = "structure",
    members = {
        ClientVpcConnections = schema.new({
            id = id.from(_N, "ListClientVpcConnectionsOutput", "ClientVpcConnections"),
            type = "list",
            name = "ClientVpcConnections",
            target_id = prelude.Document.id,
            list_member = M.ClientVpcConnection,
            traits = {
                [traits.JSON_NAME] = { name = "clientVpcConnections" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListClientVpcConnectionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "nextToken" },
            },
        }),
    },
})

M.ListClusterOperationsInput = schema.new({
    id = id.from(_N, "ListClusterOperationsRequest"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "ListClusterOperationsInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListClusterOperationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListClusterOperationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListClusterOperationsOutput = schema.new({
    id = id.from(_N, "ListClusterOperationsResponse"),
    type = "structure",
    members = {
        ClusterOperationInfoList = schema.new({
            id = id.from(_N, "ListClusterOperationsOutput", "ClusterOperationInfoList"),
            type = "list",
            name = "ClusterOperationInfoList",
            target_id = prelude.Document.id,
            list_member = M.ClusterOperationInfo,
            traits = {
                [traits.JSON_NAME] = { name = "clusterOperationInfoList" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListClusterOperationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "nextToken" },
            },
        }),
    },
})

M.ListClusterOperationsV2Input = schema.new({
    id = id.from(_N, "ListClusterOperationsV2Request"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "ListClusterOperationsV2Input", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListClusterOperationsV2Input", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListClusterOperationsV2Input", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListClusterOperationsV2Output = schema.new({
    id = id.from(_N, "ListClusterOperationsV2Response"),
    type = "structure",
    members = {
        ClusterOperationInfoList = schema.new({
            id = id.from(_N, "ListClusterOperationsV2Output", "ClusterOperationInfoList"),
            type = "list",
            name = "ClusterOperationInfoList",
            target_id = prelude.Document.id,
            list_member = M.ClusterOperationV2Summary,
            traits = {
                [traits.JSON_NAME] = { name = "clusterOperationInfoList" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListClusterOperationsV2Output", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "nextToken" },
            },
        }),
    },
})

M.ListClustersInput = schema.new({
    id = id.from(_N, "ListClustersRequest"),
    type = "structure",
    members = {
        ClusterNameFilter = schema.new({
            id = id.from(_N, "ListClustersInput", "ClusterNameFilter"),
            type = "string",
            name = "ClusterNameFilter",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clusterNameFilter" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListClustersInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListClustersInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListClustersOutput = schema.new({
    id = id.from(_N, "ListClustersResponse"),
    type = "structure",
    members = {
        ClusterInfoList = schema.new({
            id = id.from(_N, "ListClustersOutput", "ClusterInfoList"),
            type = "list",
            name = "ClusterInfoList",
            target_id = prelude.Document.id,
            list_member = M.ClusterInfo,
            traits = {
                [traits.JSON_NAME] = { name = "clusterInfoList" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListClustersOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "nextToken" },
            },
        }),
    },
})

M.ListClustersV2Input = schema.new({
    id = id.from(_N, "ListClustersV2Request"),
    type = "structure",
    members = {
        ClusterNameFilter = schema.new({
            id = id.from(_N, "ListClustersV2Input", "ClusterNameFilter"),
            type = "string",
            name = "ClusterNameFilter",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clusterNameFilter" },
            },
        }),
        ClusterTypeFilter = schema.new({
            id = id.from(_N, "ListClustersV2Input", "ClusterTypeFilter"),
            type = "string",
            name = "ClusterTypeFilter",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clusterTypeFilter" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListClustersV2Input", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListClustersV2Input", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListClustersV2Output = schema.new({
    id = id.from(_N, "ListClustersV2Response"),
    type = "structure",
    members = {
        ClusterInfoList = schema.new({
            id = id.from(_N, "ListClustersV2Output", "ClusterInfoList"),
            type = "list",
            name = "ClusterInfoList",
            target_id = prelude.Document.id,
            list_member = M.Cluster,
            traits = {
                [traits.JSON_NAME] = { name = "clusterInfoList" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListClustersV2Output", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "nextToken" },
            },
        }),
    },
})

M.ListConfigurationRevisionsInput = schema.new({
    id = id.from(_N, "ListConfigurationRevisionsRequest"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "ListConfigurationRevisionsInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListConfigurationRevisionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListConfigurationRevisionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListConfigurationRevisionsOutput = schema.new({
    id = id.from(_N, "ListConfigurationRevisionsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListConfigurationRevisionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "nextToken" },
            },
        }),
        Revisions = schema.new({
            id = id.from(_N, "ListConfigurationRevisionsOutput", "Revisions"),
            type = "list",
            name = "Revisions",
            target_id = prelude.Document.id,
            list_member = M.ConfigurationRevision,
            traits = {
                [traits.JSON_NAME] = { name = "revisions" },
            },
        }),
    },
})

M.ListConfigurationsInput = schema.new({
    id = id.from(_N, "ListConfigurationsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListConfigurationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListConfigurationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListConfigurationsOutput = schema.new({
    id = id.from(_N, "ListConfigurationsResponse"),
    type = "structure",
    members = {
        Configurations = schema.new({
            id = id.from(_N, "ListConfigurationsOutput", "Configurations"),
            type = "list",
            name = "Configurations",
            target_id = prelude.Document.id,
            list_member = M.Configuration,
            traits = {
                [traits.JSON_NAME] = { name = "configurations" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListConfigurationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "nextToken" },
            },
        }),
    },
})

M.ListKafkaVersionsInput = schema.new({
    id = id.from(_N, "ListKafkaVersionsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListKafkaVersionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListKafkaVersionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListKafkaVersionsOutput = schema.new({
    id = id.from(_N, "ListKafkaVersionsResponse"),
    type = "structure",
    members = {
        KafkaVersions = schema.new({
            id = id.from(_N, "ListKafkaVersionsOutput", "KafkaVersions"),
            type = "list",
            name = "KafkaVersions",
            target_id = prelude.Document.id,
            list_member = M.KafkaVersion,
            traits = {
                [traits.JSON_NAME] = { name = "kafkaVersions" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListKafkaVersionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "nextToken" },
            },
        }),
    },
})

M.ListNodesInput = schema.new({
    id = id.from(_N, "ListNodesRequest"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "ListNodesInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListNodesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListNodesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListNodesOutput = schema.new({
    id = id.from(_N, "ListNodesResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListNodesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "nextToken" },
            },
        }),
        NodeInfoList = schema.new({
            id = id.from(_N, "ListNodesOutput", "NodeInfoList"),
            type = "list",
            name = "NodeInfoList",
            target_id = prelude.Document.id,
            list_member = M.NodeInfo,
            traits = {
                [traits.JSON_NAME] = { name = "nodeInfoList" },
            },
        }),
    },
})

M.ListReplicatorsInput = schema.new({
    id = id.from(_N, "ListReplicatorsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListReplicatorsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListReplicatorsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        ReplicatorNameFilter = schema.new({
            id = id.from(_N, "ListReplicatorsInput", "ReplicatorNameFilter"),
            type = "string",
            name = "ReplicatorNameFilter",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "replicatorNameFilter" },
            },
        }),
    },
})

M.ListReplicatorsOutput = schema.new({
    id = id.from(_N, "ListReplicatorsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListReplicatorsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "nextToken" },
            },
        }),
        Replicators = schema.new({
            id = id.from(_N, "ListReplicatorsOutput", "Replicators"),
            type = "list",
            name = "Replicators",
            target_id = prelude.Document.id,
            list_member = M.ReplicatorSummary,
            traits = {
                [traits.JSON_NAME] = { name = "replicators" },
            },
        }),
    },
})

M.ListScramSecretsInput = schema.new({
    id = id.from(_N, "ListScramSecretsRequest"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "ListScramSecretsInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListScramSecretsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListScramSecretsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListScramSecretsOutput = schema.new({
    id = id.from(_N, "ListScramSecretsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListScramSecretsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "nextToken" },
            },
        }),
        SecretArnList = schema.new({
            id = id.from(_N, "ListScramSecretsOutput", "SecretArnList"),
            type = "list",
            name = "SecretArnList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "secretArnList" },
            },
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceResponse"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.ListTopicsInput = schema.new({
    id = id.from(_N, "ListTopicsRequest"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "ListTopicsInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListTopicsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTopicsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        TopicNameFilter = schema.new({
            id = id.from(_N, "ListTopicsInput", "TopicNameFilter"),
            type = "string",
            name = "TopicNameFilter",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "topicNameFilter" },
            },
        }),
    },
})

M.ListTopicsOutput = schema.new({
    id = id.from(_N, "ListTopicsResponse"),
    type = "structure",
    members = {
        Topics = schema.new({
            id = id.from(_N, "ListTopicsOutput", "Topics"),
            type = "list",
            name = "Topics",
            target_id = prelude.Document.id,
            list_member = M.TopicInfo,
            traits = {
                [traits.JSON_NAME] = { name = "topics" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTopicsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "nextToken" },
            },
        }),
    },
})

M.ListVpcConnectionsInput = schema.new({
    id = id.from(_N, "ListVpcConnectionsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListVpcConnectionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListVpcConnectionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListVpcConnectionsOutput = schema.new({
    id = id.from(_N, "ListVpcConnectionsResponse"),
    type = "structure",
    members = {
        VpcConnections = schema.new({
            id = id.from(_N, "ListVpcConnectionsOutput", "VpcConnections"),
            type = "list",
            name = "VpcConnections",
            target_id = prelude.Document.id,
            list_member = M.VpcConnection,
            traits = {
                [traits.JSON_NAME] = { name = "vpcConnections" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListVpcConnectionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "nextToken" },
            },
        }),
    },
})

M.PutClusterPolicyInput = schema.new({
    id = id.from(_N, "PutClusterPolicyRequest"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "PutClusterPolicyInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        CurrentVersion = schema.new({
            id = id.from(_N, "PutClusterPolicyInput", "CurrentVersion"),
            type = "string",
            name = "CurrentVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "currentVersion" },
            },
        }),
        Policy = schema.new({
            id = id.from(_N, "PutClusterPolicyInput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "policy" },
            },
        }),
    },
})

M.PutClusterPolicyOutput = schema.new({
    id = id.from(_N, "PutClusterPolicyResponse"),
    type = "structure",
    members = {
        CurrentVersion = schema.new({
            id = id.from(_N, "PutClusterPolicyOutput", "CurrentVersion"),
            type = "string",
            name = "CurrentVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "currentVersion" },
            },
        }),
    },
})

M.RebootBrokerInput = schema.new({
    id = id.from(_N, "RebootBrokerRequest"),
    type = "structure",
    members = {
        BrokerIds = schema.new({
            id = id.from(_N, "RebootBrokerInput", "BrokerIds"),
            type = "list",
            name = "BrokerIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "brokerIds" },
            },
        }),
        ClusterArn = schema.new({
            id = id.from(_N, "RebootBrokerInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.RebootBrokerOutput = schema.new({
    id = id.from(_N, "RebootBrokerResponse"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "RebootBrokerOutput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterArn" },
            },
        }),
        ClusterOperationArn = schema.new({
            id = id.from(_N, "RebootBrokerOutput", "ClusterOperationArn"),
            type = "string",
            name = "ClusterOperationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterOperationArn" },
            },
        }),
    },
})

M.RejectClientVpcConnectionInput = schema.new({
    id = id.from(_N, "RejectClientVpcConnectionRequest"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "RejectClientVpcConnectionInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        VpcConnectionArn = schema.new({
            id = id.from(_N, "RejectClientVpcConnectionInput", "VpcConnectionArn"),
            type = "string",
            name = "VpcConnectionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "vpcConnectionArn" },
            },
        }),
    },
})

M.RejectClientVpcConnectionOutput = schema.new({
    id = id.from(_N, "RejectClientVpcConnectionResponse"),
    type = "structure",
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagResourceInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.TagResourceOutput = prelude.Unit

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "TagKeys"),
            type = "list",
            name = "TagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "tagKeys" },
            },
        }),
    },
})

M.UntagResourceOutput = prelude.Unit

M.UpdateBrokerCountInput = schema.new({
    id = id.from(_N, "UpdateBrokerCountRequest"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "UpdateBrokerCountInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        CurrentVersion = schema.new({
            id = id.from(_N, "UpdateBrokerCountInput", "CurrentVersion"),
            type = "string",
            name = "CurrentVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "currentVersion" },
            },
        }),
        TargetNumberOfBrokerNodes = schema.new({
            id = id.from(_N, "UpdateBrokerCountInput", "TargetNumberOfBrokerNodes"),
            type = "integer",
            name = "TargetNumberOfBrokerNodes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "targetNumberOfBrokerNodes" },
            },
        }),
    },
})

M.UpdateBrokerCountOutput = schema.new({
    id = id.from(_N, "UpdateBrokerCountResponse"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "UpdateBrokerCountOutput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterArn" },
            },
        }),
        ClusterOperationArn = schema.new({
            id = id.from(_N, "UpdateBrokerCountOutput", "ClusterOperationArn"),
            type = "string",
            name = "ClusterOperationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterOperationArn" },
            },
        }),
    },
})

M.UpdateBrokerStorageInput = schema.new({
    id = id.from(_N, "UpdateBrokerStorageRequest"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "UpdateBrokerStorageInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        CurrentVersion = schema.new({
            id = id.from(_N, "UpdateBrokerStorageInput", "CurrentVersion"),
            type = "string",
            name = "CurrentVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "currentVersion" },
            },
        }),
        TargetBrokerEBSVolumeInfo = schema.new({
            id = id.from(_N, "UpdateBrokerStorageInput", "TargetBrokerEBSVolumeInfo"),
            type = "list",
            name = "TargetBrokerEBSVolumeInfo",
            target_id = prelude.Document.id,
            list_member = M.BrokerEBSVolumeInfo,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "targetBrokerEBSVolumeInfo" },
            },
        }),
    },
})

M.UpdateBrokerStorageOutput = schema.new({
    id = id.from(_N, "UpdateBrokerStorageResponse"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "UpdateBrokerStorageOutput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterArn" },
            },
        }),
        ClusterOperationArn = schema.new({
            id = id.from(_N, "UpdateBrokerStorageOutput", "ClusterOperationArn"),
            type = "string",
            name = "ClusterOperationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterOperationArn" },
            },
        }),
    },
})

M.UpdateBrokerTypeInput = schema.new({
    id = id.from(_N, "UpdateBrokerTypeRequest"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "UpdateBrokerTypeInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        CurrentVersion = schema.new({
            id = id.from(_N, "UpdateBrokerTypeInput", "CurrentVersion"),
            type = "string",
            name = "CurrentVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "currentVersion" },
            },
        }),
        TargetInstanceType = schema.new({
            id = id.from(_N, "UpdateBrokerTypeInput", "TargetInstanceType"),
            type = "string",
            name = "TargetInstanceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "targetInstanceType" },
            },
        }),
    },
})

M.UpdateBrokerTypeOutput = schema.new({
    id = id.from(_N, "UpdateBrokerTypeResponse"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "UpdateBrokerTypeOutput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterArn" },
            },
        }),
        ClusterOperationArn = schema.new({
            id = id.from(_N, "UpdateBrokerTypeOutput", "ClusterOperationArn"),
            type = "string",
            name = "ClusterOperationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterOperationArn" },
            },
        }),
    },
})

M.UpdateClusterConfigurationInput = schema.new({
    id = id.from(_N, "UpdateClusterConfigurationRequest"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "UpdateClusterConfigurationInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ConfigurationInfo = schema.new({
            id = id.from(_N, "UpdateClusterConfigurationInput", "ConfigurationInfo"),
            type = "structure",
            name = "ConfigurationInfo",
            target_id = id.from(_N, "ConfigurationInfo"),
            target = M.ConfigurationInfo,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "configurationInfo" },
            },
        }),
        CurrentVersion = schema.new({
            id = id.from(_N, "UpdateClusterConfigurationInput", "CurrentVersion"),
            type = "string",
            name = "CurrentVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "currentVersion" },
            },
        }),
    },
})

M.UpdateClusterConfigurationOutput = schema.new({
    id = id.from(_N, "UpdateClusterConfigurationResponse"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "UpdateClusterConfigurationOutput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterArn" },
            },
        }),
        ClusterOperationArn = schema.new({
            id = id.from(_N, "UpdateClusterConfigurationOutput", "ClusterOperationArn"),
            type = "string",
            name = "ClusterOperationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterOperationArn" },
            },
        }),
    },
})

M.UpdateClusterKafkaVersionInput = schema.new({
    id = id.from(_N, "UpdateClusterKafkaVersionRequest"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "UpdateClusterKafkaVersionInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ConfigurationInfo = schema.new({
            id = id.from(_N, "UpdateClusterKafkaVersionInput", "ConfigurationInfo"),
            type = "structure",
            name = "ConfigurationInfo",
            target_id = id.from(_N, "ConfigurationInfo"),
            target = M.ConfigurationInfo,
            traits = {
                [traits.JSON_NAME] = { name = "configurationInfo" },
            },
        }),
        CurrentVersion = schema.new({
            id = id.from(_N, "UpdateClusterKafkaVersionInput", "CurrentVersion"),
            type = "string",
            name = "CurrentVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "currentVersion" },
            },
        }),
        TargetKafkaVersion = schema.new({
            id = id.from(_N, "UpdateClusterKafkaVersionInput", "TargetKafkaVersion"),
            type = "string",
            name = "TargetKafkaVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "targetKafkaVersion" },
            },
        }),
    },
})

M.UpdateClusterKafkaVersionOutput = schema.new({
    id = id.from(_N, "UpdateClusterKafkaVersionResponse"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "UpdateClusterKafkaVersionOutput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterArn" },
            },
        }),
        ClusterOperationArn = schema.new({
            id = id.from(_N, "UpdateClusterKafkaVersionOutput", "ClusterOperationArn"),
            type = "string",
            name = "ClusterOperationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterOperationArn" },
            },
        }),
    },
})

M.UpdateConfigurationInput = schema.new({
    id = id.from(_N, "UpdateConfigurationRequest"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "UpdateConfigurationInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateConfigurationInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "description" },
            },
        }),
        ServerProperties = schema.new({
            id = id.from(_N, "UpdateConfigurationInput", "ServerProperties"),
            type = "blob",
            name = "ServerProperties",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "serverProperties" },
            },
        }),
    },
})

M.UpdateConfigurationOutput = schema.new({
    id = id.from(_N, "UpdateConfigurationResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "UpdateConfigurationOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "arn" },
            },
        }),
        LatestRevision = schema.new({
            id = id.from(_N, "UpdateConfigurationOutput", "LatestRevision"),
            type = "structure",
            name = "LatestRevision",
            target_id = id.from(_N, "ConfigurationRevision"),
            target = M.ConfigurationRevision,
            traits = {
                [traits.JSON_NAME] = { name = "latestRevision" },
            },
        }),
    },
})

M.UpdateConnectivityInput = schema.new({
    id = id.from(_N, "UpdateConnectivityRequest"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "UpdateConnectivityInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ConnectivityInfo = schema.new({
            id = id.from(_N, "UpdateConnectivityInput", "ConnectivityInfo"),
            type = "structure",
            name = "ConnectivityInfo",
            target_id = id.from(_N, "ConnectivityInfo"),
            target = M.ConnectivityInfo,
            traits = {
                [traits.JSON_NAME] = { name = "connectivityInfo" },
            },
        }),
        CurrentVersion = schema.new({
            id = id.from(_N, "UpdateConnectivityInput", "CurrentVersion"),
            type = "string",
            name = "CurrentVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "currentVersion" },
            },
        }),
        ZookeeperAccess = schema.new({
            id = id.from(_N, "UpdateConnectivityInput", "ZookeeperAccess"),
            type = "structure",
            name = "ZookeeperAccess",
            target_id = id.from(_N, "ZookeeperAccess"),
            target = M.ZookeeperAccess,
            traits = {
                [traits.JSON_NAME] = { name = "zookeeperAccess" },
            },
        }),
    },
})

M.UpdateConnectivityOutput = schema.new({
    id = id.from(_N, "UpdateConnectivityResponse"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "UpdateConnectivityOutput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterArn" },
            },
        }),
        ClusterOperationArn = schema.new({
            id = id.from(_N, "UpdateConnectivityOutput", "ClusterOperationArn"),
            type = "string",
            name = "ClusterOperationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterOperationArn" },
            },
        }),
    },
})

M.UpdateMonitoringInput = schema.new({
    id = id.from(_N, "UpdateMonitoringRequest"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "UpdateMonitoringInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        CurrentVersion = schema.new({
            id = id.from(_N, "UpdateMonitoringInput", "CurrentVersion"),
            type = "string",
            name = "CurrentVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "currentVersion" },
            },
        }),
        EnhancedMonitoring = schema.new({
            id = id.from(_N, "UpdateMonitoringInput", "EnhancedMonitoring"),
            type = "string",
            name = "EnhancedMonitoring",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "enhancedMonitoring" },
            },
        }),
        OpenMonitoring = schema.new({
            id = id.from(_N, "UpdateMonitoringInput", "OpenMonitoring"),
            type = "structure",
            name = "OpenMonitoring",
            target_id = id.from(_N, "OpenMonitoringInfo"),
            target = M.OpenMonitoringInfo,
            traits = {
                [traits.JSON_NAME] = { name = "openMonitoring" },
            },
        }),
        LoggingInfo = schema.new({
            id = id.from(_N, "UpdateMonitoringInput", "LoggingInfo"),
            type = "structure",
            name = "LoggingInfo",
            target_id = id.from(_N, "LoggingInfo"),
            target = M.LoggingInfo,
            traits = {
                [traits.JSON_NAME] = { name = "loggingInfo" },
            },
        }),
    },
})

M.UpdateMonitoringOutput = schema.new({
    id = id.from(_N, "UpdateMonitoringResponse"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "UpdateMonitoringOutput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterArn" },
            },
        }),
        ClusterOperationArn = schema.new({
            id = id.from(_N, "UpdateMonitoringOutput", "ClusterOperationArn"),
            type = "string",
            name = "ClusterOperationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterOperationArn" },
            },
        }),
    },
})

M.UpdateRebalancingInput = schema.new({
    id = id.from(_N, "UpdateRebalancingRequest"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "UpdateRebalancingInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        CurrentVersion = schema.new({
            id = id.from(_N, "UpdateRebalancingInput", "CurrentVersion"),
            type = "string",
            name = "CurrentVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "currentVersion" },
            },
        }),
        Rebalancing = schema.new({
            id = id.from(_N, "UpdateRebalancingInput", "Rebalancing"),
            type = "structure",
            name = "Rebalancing",
            target_id = id.from(_N, "Rebalancing"),
            target = M.Rebalancing,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "rebalancing" },
            },
        }),
    },
})

M.UpdateRebalancingOutput = schema.new({
    id = id.from(_N, "UpdateRebalancingResponse"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "UpdateRebalancingOutput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterArn" },
            },
        }),
        ClusterOperationArn = schema.new({
            id = id.from(_N, "UpdateRebalancingOutput", "ClusterOperationArn"),
            type = "string",
            name = "ClusterOperationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterOperationArn" },
            },
        }),
    },
})

M.TopicReplicationUpdate = schema.new({
    id = id.from(_N, "TopicReplicationUpdate"),
    type = "structure",
    members = {
        CopyAccessControlListsForTopics = schema.new({
            id = id.from(_N, "TopicReplicationUpdate", "CopyAccessControlListsForTopics"),
            type = "boolean",
            name = "CopyAccessControlListsForTopics",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "copyAccessControlListsForTopics" },
            },
        }),
        CopyTopicConfigurations = schema.new({
            id = id.from(_N, "TopicReplicationUpdate", "CopyTopicConfigurations"),
            type = "boolean",
            name = "CopyTopicConfigurations",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "copyTopicConfigurations" },
            },
        }),
        DetectAndCopyNewTopics = schema.new({
            id = id.from(_N, "TopicReplicationUpdate", "DetectAndCopyNewTopics"),
            type = "boolean",
            name = "DetectAndCopyNewTopics",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "detectAndCopyNewTopics" },
            },
        }),
        TopicsToExclude = schema.new({
            id = id.from(_N, "TopicReplicationUpdate", "TopicsToExclude"),
            type = "list",
            name = "TopicsToExclude",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "topicsToExclude" },
            },
        }),
        TopicsToReplicate = schema.new({
            id = id.from(_N, "TopicReplicationUpdate", "TopicsToReplicate"),
            type = "list",
            name = "TopicsToReplicate",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "topicsToReplicate" },
            },
        }),
    },
})

M.UpdateReplicationInfoInput = schema.new({
    id = id.from(_N, "UpdateReplicationInfoRequest"),
    type = "structure",
    members = {
        ConsumerGroupReplication = schema.new({
            id = id.from(_N, "UpdateReplicationInfoInput", "ConsumerGroupReplication"),
            type = "structure",
            name = "ConsumerGroupReplication",
            target_id = id.from(_N, "ConsumerGroupReplicationUpdate"),
            target = M.ConsumerGroupReplicationUpdate,
            traits = {
                [traits.JSON_NAME] = { name = "consumerGroupReplication" },
            },
        }),
        CurrentVersion = schema.new({
            id = id.from(_N, "UpdateReplicationInfoInput", "CurrentVersion"),
            type = "string",
            name = "CurrentVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "currentVersion" },
            },
        }),
        ReplicatorArn = schema.new({
            id = id.from(_N, "UpdateReplicationInfoInput", "ReplicatorArn"),
            type = "string",
            name = "ReplicatorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SourceKafkaClusterArn = schema.new({
            id = id.from(_N, "UpdateReplicationInfoInput", "SourceKafkaClusterArn"),
            type = "string",
            name = "SourceKafkaClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "sourceKafkaClusterArn" },
            },
        }),
        SourceKafkaClusterId = schema.new({
            id = id.from(_N, "UpdateReplicationInfoInput", "SourceKafkaClusterId"),
            type = "string",
            name = "SourceKafkaClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "sourceKafkaClusterId" },
            },
        }),
        TargetKafkaClusterArn = schema.new({
            id = id.from(_N, "UpdateReplicationInfoInput", "TargetKafkaClusterArn"),
            type = "string",
            name = "TargetKafkaClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "targetKafkaClusterArn" },
            },
        }),
        TargetKafkaClusterId = schema.new({
            id = id.from(_N, "UpdateReplicationInfoInput", "TargetKafkaClusterId"),
            type = "string",
            name = "TargetKafkaClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "targetKafkaClusterId" },
            },
        }),
        TopicReplication = schema.new({
            id = id.from(_N, "UpdateReplicationInfoInput", "TopicReplication"),
            type = "structure",
            name = "TopicReplication",
            target_id = id.from(_N, "TopicReplicationUpdate"),
            target = M.TopicReplicationUpdate,
            traits = {
                [traits.JSON_NAME] = { name = "topicReplication" },
            },
        }),
        LogDelivery = schema.new({
            id = id.from(_N, "UpdateReplicationInfoInput", "LogDelivery"),
            type = "structure",
            name = "LogDelivery",
            target_id = id.from(_N, "LogDelivery"),
            target = M.LogDelivery,
            traits = {
                [traits.JSON_NAME] = { name = "logDelivery" },
            },
        }),
    },
})

M.UpdateReplicationInfoOutput = schema.new({
    id = id.from(_N, "UpdateReplicationInfoResponse"),
    type = "structure",
    members = {
        ReplicatorArn = schema.new({
            id = id.from(_N, "UpdateReplicationInfoOutput", "ReplicatorArn"),
            type = "string",
            name = "ReplicatorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "replicatorArn" },
            },
        }),
        ReplicatorState = schema.new({
            id = id.from(_N, "UpdateReplicationInfoOutput", "ReplicatorState"),
            type = "string",
            name = "ReplicatorState",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "replicatorState" },
            },
        }),
    },
})

M.UpdateSecurityInput = schema.new({
    id = id.from(_N, "UpdateSecurityRequest"),
    type = "structure",
    members = {
        ClientAuthentication = schema.new({
            id = id.from(_N, "UpdateSecurityInput", "ClientAuthentication"),
            type = "structure",
            name = "ClientAuthentication",
            target_id = id.from(_N, "ClientAuthentication"),
            target = M.ClientAuthentication,
            traits = {
                [traits.JSON_NAME] = { name = "clientAuthentication" },
            },
        }),
        ClusterArn = schema.new({
            id = id.from(_N, "UpdateSecurityInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        CurrentVersion = schema.new({
            id = id.from(_N, "UpdateSecurityInput", "CurrentVersion"),
            type = "string",
            name = "CurrentVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "currentVersion" },
            },
        }),
        EncryptionInfo = schema.new({
            id = id.from(_N, "UpdateSecurityInput", "EncryptionInfo"),
            type = "structure",
            name = "EncryptionInfo",
            target_id = id.from(_N, "EncryptionInfo"),
            target = M.EncryptionInfo,
            traits = {
                [traits.JSON_NAME] = { name = "encryptionInfo" },
            },
        }),
    },
})

M.UpdateSecurityOutput = schema.new({
    id = id.from(_N, "UpdateSecurityResponse"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "UpdateSecurityOutput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterArn" },
            },
        }),
        ClusterOperationArn = schema.new({
            id = id.from(_N, "UpdateSecurityOutput", "ClusterOperationArn"),
            type = "string",
            name = "ClusterOperationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterOperationArn" },
            },
        }),
    },
})

M.UpdateStorageInput = schema.new({
    id = id.from(_N, "UpdateStorageRequest"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "UpdateStorageInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        CurrentVersion = schema.new({
            id = id.from(_N, "UpdateStorageInput", "CurrentVersion"),
            type = "string",
            name = "CurrentVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "currentVersion" },
            },
        }),
        ProvisionedThroughput = schema.new({
            id = id.from(_N, "UpdateStorageInput", "ProvisionedThroughput"),
            type = "structure",
            name = "ProvisionedThroughput",
            target_id = id.from(_N, "ProvisionedThroughput"),
            target = M.ProvisionedThroughput,
            traits = {
                [traits.JSON_NAME] = { name = "provisionedThroughput" },
            },
        }),
        StorageMode = schema.new({
            id = id.from(_N, "UpdateStorageInput", "StorageMode"),
            type = "string",
            name = "StorageMode",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "storageMode" },
            },
        }),
        VolumeSizeGB = schema.new({
            id = id.from(_N, "UpdateStorageInput", "VolumeSizeGB"),
            type = "integer",
            name = "VolumeSizeGB",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "volumeSizeGB" },
            },
        }),
    },
})

M.UpdateStorageOutput = schema.new({
    id = id.from(_N, "UpdateStorageResponse"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "UpdateStorageOutput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterArn" },
            },
        }),
        ClusterOperationArn = schema.new({
            id = id.from(_N, "UpdateStorageOutput", "ClusterOperationArn"),
            type = "string",
            name = "ClusterOperationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "clusterOperationArn" },
            },
        }),
    },
})

M.UpdateTopicInput = schema.new({
    id = id.from(_N, "UpdateTopicRequest"),
    type = "structure",
    members = {
        ClusterArn = schema.new({
            id = id.from(_N, "UpdateTopicInput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        TopicName = schema.new({
            id = id.from(_N, "UpdateTopicInput", "TopicName"),
            type = "string",
            name = "TopicName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Configs = schema.new({
            id = id.from(_N, "UpdateTopicInput", "Configs"),
            type = "string",
            name = "Configs",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "configs" },
            },
        }),
        PartitionCount = schema.new({
            id = id.from(_N, "UpdateTopicInput", "PartitionCount"),
            type = "integer",
            name = "PartitionCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "partitionCount" },
            },
        }),
    },
})

M.UpdateTopicOutput = schema.new({
    id = id.from(_N, "UpdateTopicResponse"),
    type = "structure",
    members = {
        TopicArn = schema.new({
            id = id.from(_N, "UpdateTopicOutput", "TopicArn"),
            type = "string",
            name = "TopicArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "topicArn" },
            },
        }),
        TopicName = schema.new({
            id = id.from(_N, "UpdateTopicOutput", "TopicName"),
            type = "string",
            name = "TopicName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "topicName" },
            },
        }),
        Status = schema.new({
            id = id.from(_N, "UpdateTopicOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "status" },
            },
        }),
    },
})

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
