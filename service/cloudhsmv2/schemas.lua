local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.cloudhsmv2"

local M = {}

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "Tag", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "Tag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Backup = schema.new({
    id = id.from(_N, "Backup"),
    type = "structure",
    members = {
        BackupId = schema.new({
            id = id.from(_N, "Backup", "BackupId"),
            type = "string",
            name = "BackupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BackupArn = schema.new({
            id = id.from(_N, "Backup", "BackupArn"),
            type = "string",
            name = "BackupArn",
            target_id = prelude.String.id,
        }),
        BackupState = schema.new({
            id = id.from(_N, "Backup", "BackupState"),
            type = "string",
            name = "BackupState",
            target_id = prelude.String.id,
        }),
        ClusterId = schema.new({
            id = id.from(_N, "Backup", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
        }),
        CreateTimestamp = schema.new({
            id = id.from(_N, "Backup", "CreateTimestamp"),
            type = "timestamp",
            name = "CreateTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        CopyTimestamp = schema.new({
            id = id.from(_N, "Backup", "CopyTimestamp"),
            type = "timestamp",
            name = "CopyTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        NeverExpires = schema.new({
            id = id.from(_N, "Backup", "NeverExpires"),
            type = "boolean",
            name = "NeverExpires",
            target_id = prelude.Boolean.id,
        }),
        SourceRegion = schema.new({
            id = id.from(_N, "Backup", "SourceRegion"),
            type = "string",
            name = "SourceRegion",
            target_id = prelude.String.id,
        }),
        SourceBackup = schema.new({
            id = id.from(_N, "Backup", "SourceBackup"),
            type = "string",
            name = "SourceBackup",
            target_id = prelude.String.id,
        }),
        SourceCluster = schema.new({
            id = id.from(_N, "Backup", "SourceCluster"),
            type = "string",
            name = "SourceCluster",
            target_id = prelude.String.id,
        }),
        DeleteTimestamp = schema.new({
            id = id.from(_N, "Backup", "DeleteTimestamp"),
            type = "timestamp",
            name = "DeleteTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        TagList = schema.new({
            id = id.from(_N, "Backup", "TagList"),
            type = "list",
            name = "TagList",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        HsmType = schema.new({
            id = id.from(_N, "Backup", "HsmType"),
            type = "string",
            name = "HsmType",
            target_id = prelude.String.id,
        }),
        Mode = schema.new({
            id = id.from(_N, "Backup", "Mode"),
            type = "string",
            name = "Mode",
            target_id = prelude.String.id,
        }),
    },
})

M.BackupRetentionPolicy = schema.new({
    id = id.from(_N, "BackupRetentionPolicy"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "BackupRetentionPolicy", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "BackupRetentionPolicy", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.CloudHsmAccessDeniedException = schema.new({
    id = id.from(_N, "CloudHsmAccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CloudHsmAccessDeniedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CloudHsmInternalFailureException = schema.new({
    id = id.from(_N, "CloudHsmInternalFailureException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CloudHsmInternalFailureException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CloudHsmInvalidRequestException = schema.new({
    id = id.from(_N, "CloudHsmInvalidRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CloudHsmInvalidRequestException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CloudHsmResourceNotFoundException = schema.new({
    id = id.from(_N, "CloudHsmResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CloudHsmResourceNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CloudHsmServiceException = schema.new({
    id = id.from(_N, "CloudHsmServiceException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CloudHsmServiceException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CloudHsmTagException = schema.new({
    id = id.from(_N, "CloudHsmTagException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CloudHsmTagException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CopyBackupToRegionInput = schema.new({
    id = id.from(_N, "CopyBackupToRegionInput"),
    type = "structure",
    members = {
        DestinationRegion = schema.new({
            id = id.from(_N, "CopyBackupToRegionInput", "DestinationRegion"),
            type = "string",
            name = "DestinationRegion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BackupId = schema.new({
            id = id.from(_N, "CopyBackupToRegionInput", "BackupId"),
            type = "string",
            name = "BackupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagList = schema.new({
            id = id.from(_N, "CopyBackupToRegionInput", "TagList"),
            type = "list",
            name = "TagList",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.DestinationBackup = schema.new({
    id = id.from(_N, "DestinationBackup"),
    type = "structure",
    members = {
        CreateTimestamp = schema.new({
            id = id.from(_N, "DestinationBackup", "CreateTimestamp"),
            type = "timestamp",
            name = "CreateTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        SourceRegion = schema.new({
            id = id.from(_N, "DestinationBackup", "SourceRegion"),
            type = "string",
            name = "SourceRegion",
            target_id = prelude.String.id,
        }),
        SourceBackup = schema.new({
            id = id.from(_N, "DestinationBackup", "SourceBackup"),
            type = "string",
            name = "SourceBackup",
            target_id = prelude.String.id,
        }),
        SourceCluster = schema.new({
            id = id.from(_N, "DestinationBackup", "SourceCluster"),
            type = "string",
            name = "SourceCluster",
            target_id = prelude.String.id,
        }),
    },
})

M.CopyBackupToRegionOutput = schema.new({
    id = id.from(_N, "CopyBackupToRegionOutput"),
    type = "structure",
    members = {
        DestinationBackup = schema.new({
            id = id.from(_N, "CopyBackupToRegionOutput", "DestinationBackup"),
            type = "structure",
            name = "DestinationBackup",
            target_id = id.from(_N, "DestinationBackup"),
            target = M.DestinationBackup,
        }),
    },
})

M.CreateClusterInput = schema.new({
    id = id.from(_N, "CreateClusterInput"),
    type = "structure",
    members = {
        BackupRetentionPolicy = schema.new({
            id = id.from(_N, "CreateClusterInput", "BackupRetentionPolicy"),
            type = "structure",
            name = "BackupRetentionPolicy",
            target_id = id.from(_N, "BackupRetentionPolicy"),
            target = M.BackupRetentionPolicy,
        }),
        HsmType = schema.new({
            id = id.from(_N, "CreateClusterInput", "HsmType"),
            type = "string",
            name = "HsmType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceBackupId = schema.new({
            id = id.from(_N, "CreateClusterInput", "SourceBackupId"),
            type = "string",
            name = "SourceBackupId",
            target_id = prelude.String.id,
        }),
        SubnetIds = schema.new({
            id = id.from(_N, "CreateClusterInput", "SubnetIds"),
            type = "list",
            name = "SubnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NetworkType = schema.new({
            id = id.from(_N, "CreateClusterInput", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
        }),
        TagList = schema.new({
            id = id.from(_N, "CreateClusterInput", "TagList"),
            type = "list",
            name = "TagList",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        Mode = schema.new({
            id = id.from(_N, "CreateClusterInput", "Mode"),
            type = "string",
            name = "Mode",
            target_id = prelude.String.id,
        }),
    },
})

M.Certificates = schema.new({
    id = id.from(_N, "Certificates"),
    type = "structure",
    members = {
        ClusterCsr = schema.new({
            id = id.from(_N, "Certificates", "ClusterCsr"),
            type = "string",
            name = "ClusterCsr",
            target_id = prelude.String.id,
        }),
        HsmCertificate = schema.new({
            id = id.from(_N, "Certificates", "HsmCertificate"),
            type = "string",
            name = "HsmCertificate",
            target_id = prelude.String.id,
        }),
        AwsHardwareCertificate = schema.new({
            id = id.from(_N, "Certificates", "AwsHardwareCertificate"),
            type = "string",
            name = "AwsHardwareCertificate",
            target_id = prelude.String.id,
        }),
        ManufacturerHardwareCertificate = schema.new({
            id = id.from(_N, "Certificates", "ManufacturerHardwareCertificate"),
            type = "string",
            name = "ManufacturerHardwareCertificate",
            target_id = prelude.String.id,
        }),
        ClusterCertificate = schema.new({
            id = id.from(_N, "Certificates", "ClusterCertificate"),
            type = "string",
            name = "ClusterCertificate",
            target_id = prelude.String.id,
        }),
    },
})

M.Hsm = schema.new({
    id = id.from(_N, "Hsm"),
    type = "structure",
    members = {
        AvailabilityZone = schema.new({
            id = id.from(_N, "Hsm", "AvailabilityZone"),
            type = "string",
            name = "AvailabilityZone",
            target_id = prelude.String.id,
        }),
        ClusterId = schema.new({
            id = id.from(_N, "Hsm", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
        }),
        SubnetId = schema.new({
            id = id.from(_N, "Hsm", "SubnetId"),
            type = "string",
            name = "SubnetId",
            target_id = prelude.String.id,
        }),
        EniId = schema.new({
            id = id.from(_N, "Hsm", "EniId"),
            type = "string",
            name = "EniId",
            target_id = prelude.String.id,
        }),
        EniIp = schema.new({
            id = id.from(_N, "Hsm", "EniIp"),
            type = "string",
            name = "EniIp",
            target_id = prelude.String.id,
        }),
        EniIpV6 = schema.new({
            id = id.from(_N, "Hsm", "EniIpV6"),
            type = "string",
            name = "EniIpV6",
            target_id = prelude.String.id,
        }),
        HsmId = schema.new({
            id = id.from(_N, "Hsm", "HsmId"),
            type = "string",
            name = "HsmId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HsmType = schema.new({
            id = id.from(_N, "Hsm", "HsmType"),
            type = "string",
            name = "HsmType",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "Hsm", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        StateMessage = schema.new({
            id = id.from(_N, "Hsm", "StateMessage"),
            type = "string",
            name = "StateMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.Cluster = schema.new({
    id = id.from(_N, "Cluster"),
    type = "structure",
    members = {
        BackupPolicy = schema.new({
            id = id.from(_N, "Cluster", "BackupPolicy"),
            type = "string",
            name = "BackupPolicy",
            target_id = prelude.String.id,
        }),
        BackupRetentionPolicy = schema.new({
            id = id.from(_N, "Cluster", "BackupRetentionPolicy"),
            type = "structure",
            name = "BackupRetentionPolicy",
            target_id = id.from(_N, "BackupRetentionPolicy"),
            target = M.BackupRetentionPolicy,
        }),
        ClusterId = schema.new({
            id = id.from(_N, "Cluster", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
        }),
        CreateTimestamp = schema.new({
            id = id.from(_N, "Cluster", "CreateTimestamp"),
            type = "timestamp",
            name = "CreateTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        Hsms = schema.new({
            id = id.from(_N, "Cluster", "Hsms"),
            type = "list",
            name = "Hsms",
            target_id = prelude.Document.id,
            list_member = M.Hsm,
        }),
        HsmType = schema.new({
            id = id.from(_N, "Cluster", "HsmType"),
            type = "string",
            name = "HsmType",
            target_id = prelude.String.id,
        }),
        HsmTypeRollbackExpiration = schema.new({
            id = id.from(_N, "Cluster", "HsmTypeRollbackExpiration"),
            type = "timestamp",
            name = "HsmTypeRollbackExpiration",
            target_id = prelude.Timestamp.id,
        }),
        PreCoPassword = schema.new({
            id = id.from(_N, "Cluster", "PreCoPassword"),
            type = "string",
            name = "PreCoPassword",
            target_id = prelude.String.id,
        }),
        SecurityGroup = schema.new({
            id = id.from(_N, "Cluster", "SecurityGroup"),
            type = "string",
            name = "SecurityGroup",
            target_id = prelude.String.id,
        }),
        SourceBackupId = schema.new({
            id = id.from(_N, "Cluster", "SourceBackupId"),
            type = "string",
            name = "SourceBackupId",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "Cluster", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        StateMessage = schema.new({
            id = id.from(_N, "Cluster", "StateMessage"),
            type = "string",
            name = "StateMessage",
            target_id = prelude.String.id,
        }),
        SubnetMapping = schema.new({
            id = id.from(_N, "Cluster", "SubnetMapping"),
            type = "map",
            name = "SubnetMapping",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        VpcId = schema.new({
            id = id.from(_N, "Cluster", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
        NetworkType = schema.new({
            id = id.from(_N, "Cluster", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
        }),
        Certificates = schema.new({
            id = id.from(_N, "Cluster", "Certificates"),
            type = "structure",
            name = "Certificates",
            target_id = id.from(_N, "Certificates"),
            target = M.Certificates,
        }),
        TagList = schema.new({
            id = id.from(_N, "Cluster", "TagList"),
            type = "list",
            name = "TagList",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        Mode = schema.new({
            id = id.from(_N, "Cluster", "Mode"),
            type = "string",
            name = "Mode",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateClusterOutput = schema.new({
    id = id.from(_N, "CreateClusterOutput"),
    type = "structure",
    members = {
        Cluster = schema.new({
            id = id.from(_N, "CreateClusterOutput", "Cluster"),
            type = "structure",
            name = "Cluster",
            target_id = id.from(_N, "Cluster"),
            target = M.Cluster,
        }),
    },
})

M.CreateHsmInput = schema.new({
    id = id.from(_N, "CreateHsmInput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "CreateHsmInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AvailabilityZone = schema.new({
            id = id.from(_N, "CreateHsmInput", "AvailabilityZone"),
            type = "string",
            name = "AvailabilityZone",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IpAddress = schema.new({
            id = id.from(_N, "CreateHsmInput", "IpAddress"),
            type = "string",
            name = "IpAddress",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateHsmOutput = schema.new({
    id = id.from(_N, "CreateHsmOutput"),
    type = "structure",
    members = {
        Hsm = schema.new({
            id = id.from(_N, "CreateHsmOutput", "Hsm"),
            type = "structure",
            name = "Hsm",
            target_id = id.from(_N, "Hsm"),
            target = M.Hsm,
        }),
    },
})

M.DeleteBackupInput = schema.new({
    id = id.from(_N, "DeleteBackupInput"),
    type = "structure",
    members = {
        BackupId = schema.new({
            id = id.from(_N, "DeleteBackupInput", "BackupId"),
            type = "string",
            name = "BackupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteBackupOutput = schema.new({
    id = id.from(_N, "DeleteBackupOutput"),
    type = "structure",
    members = {
        Backup = schema.new({
            id = id.from(_N, "DeleteBackupOutput", "Backup"),
            type = "structure",
            name = "Backup",
            target_id = id.from(_N, "Backup"),
            target = M.Backup,
        }),
    },
})

M.DeleteClusterInput = schema.new({
    id = id.from(_N, "DeleteClusterInput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "DeleteClusterInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteClusterOutput = schema.new({
    id = id.from(_N, "DeleteClusterOutput"),
    type = "structure",
    members = {
        Cluster = schema.new({
            id = id.from(_N, "DeleteClusterOutput", "Cluster"),
            type = "structure",
            name = "Cluster",
            target_id = id.from(_N, "Cluster"),
            target = M.Cluster,
        }),
    },
})

M.DeleteHsmInput = schema.new({
    id = id.from(_N, "DeleteHsmInput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "DeleteHsmInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HsmId = schema.new({
            id = id.from(_N, "DeleteHsmInput", "HsmId"),
            type = "string",
            name = "HsmId",
            target_id = prelude.String.id,
        }),
        EniId = schema.new({
            id = id.from(_N, "DeleteHsmInput", "EniId"),
            type = "string",
            name = "EniId",
            target_id = prelude.String.id,
        }),
        EniIp = schema.new({
            id = id.from(_N, "DeleteHsmInput", "EniIp"),
            type = "string",
            name = "EniIp",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteHsmOutput = schema.new({
    id = id.from(_N, "DeleteHsmOutput"),
    type = "structure",
    members = {
        HsmId = schema.new({
            id = id.from(_N, "DeleteHsmOutput", "HsmId"),
            type = "string",
            name = "HsmId",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteResourcePolicyInput = schema.new({
    id = id.from(_N, "DeleteResourcePolicyInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "DeleteResourcePolicyInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteResourcePolicyOutput = schema.new({
    id = id.from(_N, "DeleteResourcePolicyOutput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "DeleteResourcePolicyOutput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        Policy = schema.new({
            id = id.from(_N, "DeleteResourcePolicyOutput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeBackupsInput = schema.new({
    id = id.from(_N, "DescribeBackupsInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "DescribeBackupsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeBackupsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeBackupsInput", "Filters"),
            type = "map",
            name = "Filters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
        Shared = schema.new({
            id = id.from(_N, "DescribeBackupsInput", "Shared"),
            type = "boolean",
            name = "Shared",
            target_id = prelude.Boolean.id,
        }),
        SortAscending = schema.new({
            id = id.from(_N, "DescribeBackupsInput", "SortAscending"),
            type = "boolean",
            name = "SortAscending",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DescribeBackupsOutput = schema.new({
    id = id.from(_N, "DescribeBackupsOutput"),
    type = "structure",
    members = {
        Backups = schema.new({
            id = id.from(_N, "DescribeBackupsOutput", "Backups"),
            type = "list",
            name = "Backups",
            target_id = prelude.Document.id,
            list_member = M.Backup,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeBackupsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeClustersInput = schema.new({
    id = id.from(_N, "DescribeClustersInput"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "DescribeClustersInput", "Filters"),
            type = "map",
            name = "Filters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeClustersInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeClustersInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DescribeClustersOutput = schema.new({
    id = id.from(_N, "DescribeClustersOutput"),
    type = "structure",
    members = {
        Clusters = schema.new({
            id = id.from(_N, "DescribeClustersOutput", "Clusters"),
            type = "list",
            name = "Clusters",
            target_id = prelude.Document.id,
            list_member = M.Cluster,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeClustersOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetResourcePolicyInput = schema.new({
    id = id.from(_N, "GetResourcePolicyInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "GetResourcePolicyInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
    },
})

M.GetResourcePolicyOutput = schema.new({
    id = id.from(_N, "GetResourcePolicyOutput"),
    type = "structure",
    members = {
        Policy = schema.new({
            id = id.from(_N, "GetResourcePolicyOutput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
        }),
    },
})

M.InitializeClusterInput = schema.new({
    id = id.from(_N, "InitializeClusterInput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "InitializeClusterInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SignedCert = schema.new({
            id = id.from(_N, "InitializeClusterInput", "SignedCert"),
            type = "string",
            name = "SignedCert",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TrustAnchor = schema.new({
            id = id.from(_N, "InitializeClusterInput", "TrustAnchor"),
            type = "string",
            name = "TrustAnchor",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InitializeClusterOutput = schema.new({
    id = id.from(_N, "InitializeClusterOutput"),
    type = "structure",
    members = {
        State = schema.new({
            id = id.from(_N, "InitializeClusterOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        StateMessage = schema.new({
            id = id.from(_N, "InitializeClusterOutput", "StateMessage"),
            type = "string",
            name = "StateMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsInput = schema.new({
    id = id.from(_N, "ListTagsInput"),
    type = "structure",
    members = {
        ResourceId = schema.new({
            id = id.from(_N, "ListTagsInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTagsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListTagsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListTagsOutput = schema.new({
    id = id.from(_N, "ListTagsOutput"),
    type = "structure",
    members = {
        TagList = schema.new({
            id = id.from(_N, "ListTagsOutput", "TagList"),
            type = "list",
            name = "TagList",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTagsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ModifyBackupAttributesInput = schema.new({
    id = id.from(_N, "ModifyBackupAttributesInput"),
    type = "structure",
    members = {
        BackupId = schema.new({
            id = id.from(_N, "ModifyBackupAttributesInput", "BackupId"),
            type = "string",
            name = "BackupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NeverExpires = schema.new({
            id = id.from(_N, "ModifyBackupAttributesInput", "NeverExpires"),
            type = "boolean",
            name = "NeverExpires",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ModifyBackupAttributesOutput = schema.new({
    id = id.from(_N, "ModifyBackupAttributesOutput"),
    type = "structure",
    members = {
        Backup = schema.new({
            id = id.from(_N, "ModifyBackupAttributesOutput", "Backup"),
            type = "structure",
            name = "Backup",
            target_id = id.from(_N, "Backup"),
            target = M.Backup,
        }),
    },
})

M.ModifyClusterInput = schema.new({
    id = id.from(_N, "ModifyClusterInput"),
    type = "structure",
    members = {
        HsmType = schema.new({
            id = id.from(_N, "ModifyClusterInput", "HsmType"),
            type = "string",
            name = "HsmType",
            target_id = prelude.String.id,
        }),
        BackupRetentionPolicy = schema.new({
            id = id.from(_N, "ModifyClusterInput", "BackupRetentionPolicy"),
            type = "structure",
            name = "BackupRetentionPolicy",
            target_id = id.from(_N, "BackupRetentionPolicy"),
            target = M.BackupRetentionPolicy,
        }),
        ClusterId = schema.new({
            id = id.from(_N, "ModifyClusterInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ModifyClusterOutput = schema.new({
    id = id.from(_N, "ModifyClusterOutput"),
    type = "structure",
    members = {
        Cluster = schema.new({
            id = id.from(_N, "ModifyClusterOutput", "Cluster"),
            type = "structure",
            name = "Cluster",
            target_id = id.from(_N, "Cluster"),
            target = M.Cluster,
        }),
    },
})

M.PutResourcePolicyInput = schema.new({
    id = id.from(_N, "PutResourcePolicyInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        Policy = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
        }),
    },
})

M.PutResourcePolicyOutput = schema.new({
    id = id.from(_N, "PutResourcePolicyOutput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "PutResourcePolicyOutput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        Policy = schema.new({
            id = id.from(_N, "PutResourcePolicyOutput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
        }),
    },
})

M.RestoreBackupInput = schema.new({
    id = id.from(_N, "RestoreBackupInput"),
    type = "structure",
    members = {
        BackupId = schema.new({
            id = id.from(_N, "RestoreBackupInput", "BackupId"),
            type = "string",
            name = "BackupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RestoreBackupOutput = schema.new({
    id = id.from(_N, "RestoreBackupOutput"),
    type = "structure",
    members = {
        Backup = schema.new({
            id = id.from(_N, "RestoreBackupOutput", "Backup"),
            type = "structure",
            name = "Backup",
            target_id = id.from(_N, "Backup"),
            target = M.Backup,
        }),
    },
})

M.CloudHsmResourceLimitExceededException = schema.new({
    id = id.from(_N, "CloudHsmResourceLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CloudHsmResourceLimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        ResourceId = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagList = schema.new({
            id = id.from(_N, "TagResourceInput", "TagList"),
            type = "list",
            name = "TagList",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceOutput"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
    type = "structure",
    members = {
        ResourceId = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKeyList = schema.new({
            id = id.from(_N, "UntagResourceInput", "TagKeyList"),
            type = "list",
            name = "TagKeyList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

return M
