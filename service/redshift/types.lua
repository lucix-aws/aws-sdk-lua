local M = {}

M.AcceptReservedNodeExchangeInput = {
    type = "structure",
    id = "AcceptReservedNodeExchangeInput",
    members = {
        ReservedNodeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetReservedNodeOfferingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RecurringCharge = {
    type = "structure",
    id = "RecurringCharge",
    members = {
        RecurringChargeAmount = {
            type = "double",
        },
        RecurringChargeFrequency = {
            type = "string",
        },
    },
}

M.ReservedNodeOfferingType = {
    Regular = "Regular",
    Upgradable = "Upgradable",
}

M.ReservedNode = {
    type = "structure",
    id = "ReservedNode",
    members = {
        ReservedNodeId = {
            type = "string",
        },
        ReservedNodeOfferingId = {
            type = "string",
        },
        NodeType = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        Duration = {
            type = "integer",
        },
        FixedPrice = {
            type = "double",
        },
        UsagePrice = {
            type = "double",
        },
        CurrencyCode = {
            type = "string",
        },
        NodeCount = {
            type = "integer",
        },
        State = {
            type = "string",
        },
        OfferingType = {
            type = "string",
        },
        RecurringCharges = {
            type = "list",
            member = M.RecurringCharge,
        },
        ReservedNodeOfferingType = {
            type = "string",
        },
    },
}

M.AcceptReservedNodeExchangeOutput = {
    type = "structure",
    id = "AcceptReservedNodeExchangeOutput",
    members = {
        ExchangedReservedNode = M.ReservedNode,
    },
}

M.DependentServiceUnavailableFault = {
    type = "structure",
    id = "DependentServiceUnavailableFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidReservedNodeStateFault = {
    type = "structure",
    id = "InvalidReservedNodeStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReservedNodeAlreadyExistsFault = {
    type = "structure",
    id = "ReservedNodeAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReservedNodeAlreadyMigratedFault = {
    type = "structure",
    id = "ReservedNodeAlreadyMigratedFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReservedNodeNotFoundFault = {
    type = "structure",
    id = "ReservedNodeNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReservedNodeOfferingNotFoundFault = {
    type = "structure",
    id = "ReservedNodeOfferingNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnsupportedOperationFault = {
    type = "structure",
    id = "UnsupportedOperationFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AccessToClusterDeniedFault = {
    type = "structure",
    id = "AccessToClusterDeniedFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AccessToSnapshotDeniedFault = {
    type = "structure",
    id = "AccessToSnapshotDeniedFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AttributeValueTarget = {
    type = "structure",
    id = "AttributeValueTarget",
    members = {
        AttributeValue = {
            type = "string",
        },
    },
}

M.AccountAttribute = {
    type = "structure",
    id = "AccountAttribute",
    members = {
        AttributeName = {
            type = "string",
        },
        AttributeValues = {
            type = "list",
            member = M.AttributeValueTarget,
        },
    },
}

M.AccountWithRestoreAccess = {
    type = "structure",
    id = "AccountWithRestoreAccess",
    members = {
        AccountId = {
            type = "string",
        },
        AccountAlias = {
            type = "string",
        },
    },
}

M.ActionType = {
    RESTORE_CLUSTER = "restore-cluster",
    RECOMMEND_NODE_CONFIG = "recommend-node-config",
    RESIZE_CLUSTER = "resize-cluster",
}

M.AddPartnerInput = {
    type = "structure",
    id = "AddPartnerInput",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PartnerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AddPartnerOutput = {
    type = "structure",
    id = "AddPartnerOutput",
    members = {
        DatabaseName = {
            type = "string",
        },
        PartnerName = {
            type = "string",
        },
    },
}

M.ClusterNotFoundFault = {
    type = "structure",
    id = "ClusterNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PartnerNotFoundFault = {
    type = "structure",
    id = "PartnerNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnauthorizedPartnerIntegrationFault = {
    type = "structure",
    id = "UnauthorizedPartnerIntegrationFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApplicationType = {
    NONE = "None",
    LAKEHOUSE = "Lakehouse",
}

M.AquaConfigurationStatus = {
    ENABLED = "enabled",
    DISABLED = "disabled",
    AUTO = "auto",
}

M.AquaStatus = {
    ENABLED = "enabled",
    DISABLED = "disabled",
    APPLYING = "applying",
}

M.AquaConfiguration = {
    type = "structure",
    id = "AquaConfiguration",
    members = {
        AquaStatus = {
            type = "string",
        },
        AquaConfigurationStatus = {
            type = "string",
        },
    },
}

M.AssociateDataShareConsumerInput = {
    type = "structure",
    id = "AssociateDataShareConsumerInput",
    members = {
        DataShareArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AssociateEntireAccount = {
            type = "boolean",
        },
        ConsumerArn = {
            type = "string",
        },
        ConsumerRegion = {
            type = "string",
        },
        AllowWrites = {
            type = "boolean",
        },
    },
}

M.DataShareStatus = {
    ACTIVE = "ACTIVE",
    PENDING_AUTHORIZATION = "PENDING_AUTHORIZATION",
    AUTHORIZED = "AUTHORIZED",
    DEAUTHORIZED = "DEAUTHORIZED",
    REJECTED = "REJECTED",
    AVAILABLE = "AVAILABLE",
}

M.DataShareAssociation = {
    type = "structure",
    id = "DataShareAssociation",
    members = {
        ConsumerIdentifier = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ConsumerRegion = {
            type = "string",
        },
        CreatedDate = {
            type = "timestamp",
        },
        StatusChangeDate = {
            type = "timestamp",
        },
        ProducerAllowedWrites = {
            type = "boolean",
        },
        ConsumerAcceptedWrites = {
            type = "boolean",
        },
    },
}

M.DataShareType = {
    INTERNAL = "INTERNAL",
}

M.AssociateDataShareConsumerOutput = {
    type = "structure",
    id = "AssociateDataShareConsumerOutput",
    members = {
        DataShareArn = {
            type = "string",
        },
        ProducerArn = {
            type = "string",
        },
        AllowPubliclyAccessibleConsumers = {
            type = "boolean",
        },
        DataShareAssociations = {
            type = "list",
            member = M.DataShareAssociation,
        },
        ManagedBy = {
            type = "string",
        },
        DataShareType = {
            type = "string",
        },
    },
}

M.InvalidDataShareFault = {
    type = "structure",
    id = "InvalidDataShareFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidNamespaceFault = {
    type = "structure",
    id = "InvalidNamespaceFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ScheduleState = {
    MODIFYING = "MODIFYING",
    ACTIVE = "ACTIVE",
    FAILED = "FAILED",
}

M.ClusterAssociatedToSchedule = {
    type = "structure",
    id = "ClusterAssociatedToSchedule",
    members = {
        ClusterIdentifier = {
            type = "string",
        },
        ScheduleAssociationState = {
            type = "string",
        },
    },
}

M.CertificateAssociation = {
    type = "structure",
    id = "CertificateAssociation",
    members = {
        CustomDomainName = {
            type = "string",
        },
        ClusterIdentifier = {
            type = "string",
        },
    },
}

M.Association = {
    type = "structure",
    id = "Association",
    members = {
        CustomDomainCertificateArn = {
            type = "string",
        },
        CustomDomainCertificateExpiryDate = {
            type = "timestamp",
        },
        CertificateAssociations = {
            type = "list",
            member = M.CertificateAssociation,
        },
    },
}

M.AuthenticationProfile = {
    type = "structure",
    id = "AuthenticationProfile",
    members = {
        AuthenticationProfileName = {
            type = "string",
        },
        AuthenticationProfileContent = {
            type = "string",
        },
    },
}

M.AuthenticationProfileAlreadyExistsFault = {
    type = "structure",
    id = "AuthenticationProfileAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AuthenticationProfileNotFoundFault = {
    type = "structure",
    id = "AuthenticationProfileNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AuthenticationProfileQuotaExceededFault = {
    type = "structure",
    id = "AuthenticationProfileQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AuthorizationAlreadyExistsFault = {
    type = "structure",
    id = "AuthorizationAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AuthorizationNotFoundFault = {
    type = "structure",
    id = "AuthorizationNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AuthorizationQuotaExceededFault = {
    type = "structure",
    id = "AuthorizationQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AuthorizationStatus = {
    AUTHORIZED = "Authorized",
    REVOKING = "Revoking",
}

M.AuthorizeClusterSecurityGroupIngressInput = {
    type = "structure",
    id = "AuthorizeClusterSecurityGroupIngressInput",
    members = {
        ClusterSecurityGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CIDRIP = {
            type = "string",
        },
        EC2SecurityGroupName = {
            type = "string",
        },
        EC2SecurityGroupOwnerId = {
            type = "string",
        },
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.EC2SecurityGroup = {
    type = "structure",
    id = "EC2SecurityGroup",
    members = {
        Status = {
            type = "string",
        },
        EC2SecurityGroupName = {
            type = "string",
        },
        EC2SecurityGroupOwnerId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.IPRange = {
    type = "structure",
    id = "IPRange",
    members = {
        Status = {
            type = "string",
        },
        CIDRIP = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ClusterSecurityGroup = {
    type = "structure",
    id = "ClusterSecurityGroup",
    members = {
        ClusterSecurityGroupName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        EC2SecurityGroups = {
            type = "list",
            member = M.EC2SecurityGroup,
        },
        IPRanges = {
            type = "list",
            member = M.IPRange,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.AuthorizeClusterSecurityGroupIngressOutput = {
    type = "structure",
    id = "AuthorizeClusterSecurityGroupIngressOutput",
    members = {
        ClusterSecurityGroup = M.ClusterSecurityGroup,
    },
}

M.ClusterSecurityGroupNotFoundFault = {
    type = "structure",
    id = "ClusterSecurityGroupNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidClusterSecurityGroupStateFault = {
    type = "structure",
    id = "InvalidClusterSecurityGroupStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AuthorizeDataShareInput = {
    type = "structure",
    id = "AuthorizeDataShareInput",
    members = {
        DataShareArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConsumerIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AllowWrites = {
            type = "boolean",
        },
    },
}

M.AuthorizeDataShareOutput = {
    type = "structure",
    id = "AuthorizeDataShareOutput",
    members = {
        DataShareArn = {
            type = "string",
        },
        ProducerArn = {
            type = "string",
        },
        AllowPubliclyAccessibleConsumers = {
            type = "boolean",
        },
        DataShareAssociations = {
            type = "list",
            member = M.DataShareAssociation,
        },
        ManagedBy = {
            type = "string",
        },
        DataShareType = {
            type = "string",
        },
    },
}

M.AuthorizedTokenIssuer = {
    type = "structure",
    id = "AuthorizedTokenIssuer",
    members = {
        TrustedTokenIssuerArn = {
            type = "string",
        },
        AuthorizedAudiencesList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AuthorizeEndpointAccessInput = {
    type = "structure",
    id = "AuthorizeEndpointAccessInput",
    members = {
        ClusterIdentifier = {
            type = "string",
        },
        Account = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AuthorizeEndpointAccessOutput = {
    type = "structure",
    id = "AuthorizeEndpointAccessOutput",
    members = {
        Grantor = {
            type = "string",
        },
        Grantee = {
            type = "string",
        },
        ClusterIdentifier = {
            type = "string",
        },
        AuthorizeTime = {
            type = "timestamp",
        },
        ClusterStatus = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        AllowedAllVPCs = {
            type = "boolean",
        },
        AllowedVPCs = {
            type = "list",
            member = { type = "string" },
        },
        EndpointCount = {
            type = "integer",
        },
    },
}

M.EndpointAuthorizationAlreadyExistsFault = {
    type = "structure",
    id = "EndpointAuthorizationAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EndpointAuthorizationsPerClusterLimitExceededFault = {
    type = "structure",
    id = "EndpointAuthorizationsPerClusterLimitExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidAuthorizationStateFault = {
    type = "structure",
    id = "InvalidAuthorizationStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidClusterStateFault = {
    type = "structure",
    id = "InvalidClusterStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AuthorizeSnapshotAccessInput = {
    type = "structure",
    id = "AuthorizeSnapshotAccessInput",
    members = {
        SnapshotIdentifier = {
            type = "string",
        },
        SnapshotArn = {
            type = "string",
        },
        SnapshotClusterIdentifier = {
            type = "string",
        },
        AccountWithRestoreAccess = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Snapshot = {
    type = "structure",
    id = "Snapshot",
    members = {
        SnapshotIdentifier = {
            type = "string",
        },
        ClusterIdentifier = {
            type = "string",
        },
        SnapshotCreateTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        AvailabilityZone = {
            type = "string",
        },
        ClusterCreateTime = {
            type = "timestamp",
        },
        MasterUsername = {
            type = "string",
        },
        ClusterVersion = {
            type = "string",
        },
        EngineFullVersion = {
            type = "string",
        },
        SnapshotType = {
            type = "string",
        },
        NodeType = {
            type = "string",
        },
        NumberOfNodes = {
            type = "integer",
        },
        DBName = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        Encrypted = {
            type = "boolean",
        },
        KmsKeyId = {
            type = "string",
        },
        EncryptedWithHSM = {
            type = "boolean",
        },
        AccountsWithRestoreAccess = {
            type = "list",
            member = M.AccountWithRestoreAccess,
        },
        OwnerAccount = {
            type = "string",
        },
        TotalBackupSizeInMegaBytes = {
            type = "double",
        },
        ActualIncrementalBackupSizeInMegaBytes = {
            type = "double",
        },
        BackupProgressInMegaBytes = {
            type = "double",
        },
        CurrentBackupRateInMegaBytesPerSecond = {
            type = "double",
        },
        EstimatedSecondsToCompletion = {
            type = "long",
        },
        ElapsedTimeInSeconds = {
            type = "long",
        },
        SourceRegion = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        RestorableNodeTypes = {
            type = "list",
            member = { type = "string" },
        },
        EnhancedVpcRouting = {
            type = "boolean",
        },
        MaintenanceTrackName = {
            type = "string",
        },
        ManualSnapshotRetentionPeriod = {
            type = "integer",
        },
        ManualSnapshotRemainingDays = {
            type = "integer",
        },
        SnapshotRetentionStartTime = {
            type = "timestamp",
        },
        MasterPasswordSecretArn = {
            type = "string",
        },
        MasterPasswordSecretKmsKeyId = {
            type = "string",
        },
        SnapshotArn = {
            type = "string",
        },
    },
}

M.AuthorizeSnapshotAccessOutput = {
    type = "structure",
    id = "AuthorizeSnapshotAccessOutput",
    members = {
        Snapshot = M.Snapshot,
    },
}

M.ClusterSnapshotNotFoundFault = {
    type = "structure",
    id = "ClusterSnapshotNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DependentServiceRequestThrottlingFault = {
    type = "structure",
    id = "DependentServiceRequestThrottlingFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidClusterSnapshotStateFault = {
    type = "structure",
    id = "InvalidClusterSnapshotStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LimitExceededFault = {
    type = "structure",
    id = "LimitExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SupportedPlatform = {
    type = "structure",
    id = "SupportedPlatform",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.AvailabilityZone = {
    type = "structure",
    id = "AvailabilityZone",
    members = {
        Name = {
            type = "string",
        },
        SupportedPlatforms = {
            type = "list",
            member = M.SupportedPlatform,
        },
    },
}

M.DeleteClusterSnapshotMessage = {
    type = "structure",
    id = "DeleteClusterSnapshotMessage",
    members = {
        SnapshotIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnapshotClusterIdentifier = {
            type = "string",
        },
    },
}

M.BatchDeleteClusterSnapshotsInput = {
    type = "structure",
    id = "BatchDeleteClusterSnapshotsInput",
    members = {
        Identifiers = {
            type = "list",
            member = M.DeleteClusterSnapshotMessage,
            traits = {
                required = true,
            },
        },
    },
}

M.SnapshotErrorMessage = {
    type = "structure",
    id = "SnapshotErrorMessage",
    members = {
        SnapshotIdentifier = {
            type = "string",
        },
        SnapshotClusterIdentifier = {
            type = "string",
        },
        FailureCode = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
    },
}

M.BatchDeleteClusterSnapshotsOutput = {
    type = "structure",
    id = "BatchDeleteClusterSnapshotsOutput",
    members = {
        Resources = {
            type = "list",
            member = { type = "string" },
        },
        Errors = {
            type = "list",
            member = M.SnapshotErrorMessage,
        },
    },
}

M.BatchDeleteRequestSizeExceededFault = {
    type = "structure",
    id = "BatchDeleteRequestSizeExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchModifyClusterSnapshotsInput = {
    type = "structure",
    id = "BatchModifyClusterSnapshotsInput",
    members = {
        SnapshotIdentifierList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ManualSnapshotRetentionPeriod = {
            type = "integer",
        },
        Force = {
            type = "boolean",
        },
    },
}

M.BatchModifyClusterSnapshotsLimitExceededFault = {
    type = "structure",
    id = "BatchModifyClusterSnapshotsLimitExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchModifyClusterSnapshotsOutput = {
    type = "structure",
    id = "BatchModifyClusterSnapshotsOutput",
    members = {
        Resources = {
            type = "list",
            member = { type = "string" },
        },
        Errors = {
            type = "list",
            member = M.SnapshotErrorMessage,
        },
    },
}

M.InvalidRetentionPeriodFault = {
    type = "structure",
    id = "InvalidRetentionPeriodFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BucketNotFoundFault = {
    type = "structure",
    id = "BucketNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CancelResizeInput = {
    type = "structure",
    id = "CancelResizeInput",
    members = {
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelResizeOutput = {
    type = "structure",
    id = "CancelResizeOutput",
    members = {
        TargetNodeType = {
            type = "string",
        },
        TargetNumberOfNodes = {
            type = "integer",
        },
        TargetClusterType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ImportTablesCompleted = {
            type = "list",
            member = { type = "string" },
        },
        ImportTablesInProgress = {
            type = "list",
            member = { type = "string" },
        },
        ImportTablesNotStarted = {
            type = "list",
            member = { type = "string" },
        },
        AvgResizeRateInMegaBytesPerSecond = {
            type = "double",
        },
        TotalResizeDataInMegaBytes = {
            type = "long",
        },
        ProgressInMegaBytes = {
            type = "long",
        },
        ElapsedTimeInSeconds = {
            type = "long",
        },
        EstimatedTimeToCompletionInSeconds = {
            type = "long",
        },
        ResizeType = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        TargetEncryptionType = {
            type = "string",
        },
        DataTransferProgressPercent = {
            type = "double",
        },
    },
}

M.ResizeNotFoundFault = {
    type = "structure",
    id = "ResizeNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterNode = {
    type = "structure",
    id = "ClusterNode",
    members = {
        NodeRole = {
            type = "string",
        },
        PrivateIPAddress = {
            type = "string",
        },
        PublicIPAddress = {
            type = "string",
        },
    },
}

M.ClusterParameterStatus = {
    type = "structure",
    id = "ClusterParameterStatus",
    members = {
        ParameterName = {
            type = "string",
        },
        ParameterApplyStatus = {
            type = "string",
        },
        ParameterApplyErrorDescription = {
            type = "string",
        },
    },
}

M.ClusterParameterGroupStatus = {
    type = "structure",
    id = "ClusterParameterGroupStatus",
    members = {
        ParameterGroupName = {
            type = "string",
        },
        ParameterApplyStatus = {
            type = "string",
        },
        ClusterParameterStatusList = {
            type = "list",
            member = M.ClusterParameterStatus,
        },
    },
}

M.ClusterSecurityGroupMembership = {
    type = "structure",
    id = "ClusterSecurityGroupMembership",
    members = {
        ClusterSecurityGroupName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.ClusterSnapshotCopyStatus = {
    type = "structure",
    id = "ClusterSnapshotCopyStatus",
    members = {
        DestinationRegion = {
            type = "string",
        },
        RetentionPeriod = {
            type = "long",
        },
        ManualSnapshotRetentionPeriod = {
            type = "integer",
        },
        SnapshotCopyGrantName = {
            type = "string",
        },
    },
}

M.DataTransferProgress = {
    type = "structure",
    id = "DataTransferProgress",
    members = {
        Status = {
            type = "string",
        },
        CurrentRateInMegaBytesPerSecond = {
            type = "double",
        },
        TotalDataInMegaBytes = {
            type = "long",
        },
        DataTransferredInMegaBytes = {
            type = "long",
        },
        EstimatedTimeToCompletionInSeconds = {
            type = "long",
        },
        ElapsedTimeInSeconds = {
            type = "long",
        },
    },
}

M.DeferredMaintenanceWindow = {
    type = "structure",
    id = "DeferredMaintenanceWindow",
    members = {
        DeferMaintenanceIdentifier = {
            type = "string",
        },
        DeferMaintenanceStartTime = {
            type = "timestamp",
        },
        DeferMaintenanceEndTime = {
            type = "timestamp",
        },
    },
}

M.ElasticIpStatus = {
    type = "structure",
    id = "ElasticIpStatus",
    members = {
        ElasticIp = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.NetworkInterface = {
    type = "structure",
    id = "NetworkInterface",
    members = {
        NetworkInterfaceId = {
            type = "string",
        },
        SubnetId = {
            type = "string",
        },
        PrivateIpAddress = {
            type = "string",
        },
        AvailabilityZone = {
            type = "string",
        },
        Ipv6Address = {
            type = "string",
        },
    },
}

M.VpcEndpoint = {
    type = "structure",
    id = "VpcEndpoint",
    members = {
        VpcEndpointId = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        NetworkInterfaces = {
            type = "list",
            member = M.NetworkInterface,
        },
    },
}

M.Endpoint = {
    type = "structure",
    id = "Endpoint",
    members = {
        Address = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        VpcEndpoints = {
            type = "list",
            member = M.VpcEndpoint,
        },
    },
}

M.HsmStatus = {
    type = "structure",
    id = "HsmStatus",
    members = {
        HsmClientCertificateIdentifier = {
            type = "string",
        },
        HsmConfigurationIdentifier = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.ClusterIamRole = {
    type = "structure",
    id = "ClusterIamRole",
    members = {
        IamRoleArn = {
            type = "string",
        },
        ApplyStatus = {
            type = "string",
        },
    },
}

M.SecondaryClusterInfo = {
    type = "structure",
    id = "SecondaryClusterInfo",
    members = {
        AvailabilityZone = {
            type = "string",
        },
        ClusterNodes = {
            type = "list",
            member = M.ClusterNode,
        },
    },
}

M.PendingModifiedValues = {
    type = "structure",
    id = "PendingModifiedValues",
    members = {
        MasterUserPassword = {
            type = "string",
        },
        NodeType = {
            type = "string",
        },
        NumberOfNodes = {
            type = "integer",
        },
        ClusterType = {
            type = "string",
        },
        ClusterVersion = {
            type = "string",
        },
        AutomatedSnapshotRetentionPeriod = {
            type = "integer",
        },
        ClusterIdentifier = {
            type = "string",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        EnhancedVpcRouting = {
            type = "boolean",
        },
        MaintenanceTrackName = {
            type = "string",
        },
        EncryptionType = {
            type = "string",
        },
    },
}

M.ReservedNodeExchangeStatusType = {
    REQUESTED = "REQUESTED",
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    RETRYING = "RETRYING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.ReservedNodeExchangeStatus = {
    type = "structure",
    id = "ReservedNodeExchangeStatus",
    members = {
        ReservedNodeExchangeRequestId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        RequestTime = {
            type = "timestamp",
        },
        SourceReservedNodeId = {
            type = "string",
        },
        SourceReservedNodeType = {
            type = "string",
        },
        SourceReservedNodeCount = {
            type = "integer",
        },
        TargetReservedNodeOfferingId = {
            type = "string",
        },
        TargetReservedNodeType = {
            type = "string",
        },
        TargetReservedNodeCount = {
            type = "integer",
        },
    },
}

M.ResizeInfo = {
    type = "structure",
    id = "ResizeInfo",
    members = {
        ResizeType = {
            type = "string",
        },
        AllowCancelResize = {
            type = "boolean",
        },
    },
}

M.RestoreStatus = {
    type = "structure",
    id = "RestoreStatus",
    members = {
        Status = {
            type = "string",
        },
        CurrentRestoreRateInMegaBytesPerSecond = {
            type = "double",
        },
        SnapshotSizeInMegaBytes = {
            type = "long",
        },
        ProgressInMegaBytes = {
            type = "long",
        },
        ElapsedTimeInSeconds = {
            type = "long",
        },
        EstimatedTimeToCompletionInSeconds = {
            type = "long",
        },
    },
}

M.VpcSecurityGroupMembership = {
    type = "structure",
    id = "VpcSecurityGroupMembership",
    members = {
        VpcSecurityGroupId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.Cluster = {
    type = "structure",
    id = "Cluster",
    members = {
        ClusterIdentifier = {
            type = "string",
        },
        NodeType = {
            type = "string",
        },
        ClusterStatus = {
            type = "string",
        },
        ClusterAvailabilityStatus = {
            type = "string",
        },
        ModifyStatus = {
            type = "string",
        },
        MasterUsername = {
            type = "string",
        },
        DBName = {
            type = "string",
        },
        Endpoint = M.Endpoint,
        ClusterCreateTime = {
            type = "timestamp",
        },
        AutomatedSnapshotRetentionPeriod = {
            type = "integer",
        },
        ManualSnapshotRetentionPeriod = {
            type = "integer",
        },
        ClusterSecurityGroups = {
            type = "list",
            member = M.ClusterSecurityGroupMembership,
        },
        VpcSecurityGroups = {
            type = "list",
            member = M.VpcSecurityGroupMembership,
        },
        ClusterParameterGroups = {
            type = "list",
            member = M.ClusterParameterGroupStatus,
        },
        ClusterSubnetGroupName = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        AvailabilityZone = {
            type = "string",
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        PendingModifiedValues = M.PendingModifiedValues,
        ClusterVersion = {
            type = "string",
        },
        AllowVersionUpgrade = {
            type = "boolean",
        },
        NumberOfNodes = {
            type = "integer",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        Encrypted = {
            type = "boolean",
        },
        RestoreStatus = M.RestoreStatus,
        DataTransferProgress = M.DataTransferProgress,
        HsmStatus = M.HsmStatus,
        ClusterSnapshotCopyStatus = M.ClusterSnapshotCopyStatus,
        ClusterPublicKey = {
            type = "string",
        },
        ClusterNodes = {
            type = "list",
            member = M.ClusterNode,
        },
        ElasticIpStatus = M.ElasticIpStatus,
        ClusterRevisionNumber = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        KmsKeyId = {
            type = "string",
        },
        EnhancedVpcRouting = {
            type = "boolean",
        },
        IamRoles = {
            type = "list",
            member = M.ClusterIamRole,
        },
        PendingActions = {
            type = "list",
            member = { type = "string" },
        },
        MaintenanceTrackName = {
            type = "string",
        },
        ElasticResizeNumberOfNodeOptions = {
            type = "string",
        },
        DeferredMaintenanceWindows = {
            type = "list",
            member = M.DeferredMaintenanceWindow,
        },
        SnapshotScheduleIdentifier = {
            type = "string",
        },
        SnapshotScheduleState = {
            type = "string",
        },
        ExpectedNextSnapshotScheduleTime = {
            type = "timestamp",
        },
        ExpectedNextSnapshotScheduleTimeStatus = {
            type = "string",
        },
        NextMaintenanceWindowStartTime = {
            type = "timestamp",
        },
        ResizeInfo = M.ResizeInfo,
        AvailabilityZoneRelocationStatus = {
            type = "string",
        },
        ClusterNamespaceArn = {
            type = "string",
        },
        TotalStorageCapacityInMegaBytes = {
            type = "long",
        },
        AquaConfiguration = M.AquaConfiguration,
        DefaultIamRoleArn = {
            type = "string",
        },
        ReservedNodeExchangeStatus = M.ReservedNodeExchangeStatus,
        CustomDomainName = {
            type = "string",
        },
        CustomDomainCertificateArn = {
            type = "string",
        },
        CustomDomainCertificateExpiryDate = {
            type = "timestamp",
        },
        MasterPasswordSecretArn = {
            type = "string",
        },
        MasterPasswordSecretKmsKeyId = {
            type = "string",
        },
        IpAddressType = {
            type = "string",
        },
        MultiAZ = {
            type = "string",
        },
        MultiAZSecondary = M.SecondaryClusterInfo,
        LakehouseRegistrationStatus = {
            type = "string",
        },
        CatalogArn = {
            type = "string",
        },
        ExtraComputeForAutomaticOptimization = {
            type = "string",
        },
    },
}

M.ClusterAlreadyExistsFault = {
    type = "structure",
    id = "ClusterAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RevisionTarget = {
    type = "structure",
    id = "RevisionTarget",
    members = {
        DatabaseRevision = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DatabaseRevisionReleaseDate = {
            type = "timestamp",
        },
    },
}

M.ClusterDbRevision = {
    type = "structure",
    id = "ClusterDbRevision",
    members = {
        ClusterIdentifier = {
            type = "string",
        },
        CurrentDatabaseRevision = {
            type = "string",
        },
        DatabaseRevisionReleaseDate = {
            type = "timestamp",
        },
        RevisionTargets = {
            type = "list",
            member = M.RevisionTarget,
        },
    },
}

M.ClusterOnLatestRevisionFault = {
    type = "structure",
    id = "ClusterOnLatestRevisionFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterParameterGroup = {
    type = "structure",
    id = "ClusterParameterGroup",
    members = {
        ParameterGroupName = {
            type = "string",
        },
        ParameterGroupFamily = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ClusterParameterGroupAlreadyExistsFault = {
    type = "structure",
    id = "ClusterParameterGroupAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterParameterGroupNotFoundFault = {
    type = "structure",
    id = "ClusterParameterGroupNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterParameterGroupQuotaExceededFault = {
    type = "structure",
    id = "ClusterParameterGroupQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterQuotaExceededFault = {
    type = "structure",
    id = "ClusterQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterSecurityGroupAlreadyExistsFault = {
    type = "structure",
    id = "ClusterSecurityGroupAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterSecurityGroupQuotaExceededFault = {
    type = "structure",
    id = "ClusterSecurityGroupQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterSnapshotAlreadyExistsFault = {
    type = "structure",
    id = "ClusterSnapshotAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterSnapshotQuotaExceededFault = {
    type = "structure",
    id = "ClusterSnapshotQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Subnet = {
    type = "structure",
    id = "Subnet",
    members = {
        SubnetIdentifier = {
            type = "string",
        },
        SubnetAvailabilityZone = M.AvailabilityZone,
        SubnetStatus = {
            type = "string",
        },
    },
}

M.ClusterSubnetGroup = {
    type = "structure",
    id = "ClusterSubnetGroup",
    members = {
        ClusterSubnetGroupName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        SubnetGroupStatus = {
            type = "string",
        },
        Subnets = {
            type = "list",
            member = M.Subnet,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        SupportedClusterIpAddressTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ClusterSubnetGroupAlreadyExistsFault = {
    type = "structure",
    id = "ClusterSubnetGroupAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterSubnetGroupNotFoundFault = {
    type = "structure",
    id = "ClusterSubnetGroupNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterSubnetGroupQuotaExceededFault = {
    type = "structure",
    id = "ClusterSubnetGroupQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterSubnetQuotaExceededFault = {
    type = "structure",
    id = "ClusterSubnetQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterVersion = {
    type = "structure",
    id = "ClusterVersion",
    members = {
        ClusterVersion = {
            type = "string",
        },
        ClusterParameterGroupFamily = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.ConflictPolicyUpdateFault = {
    type = "structure",
    id = "ConflictPolicyUpdateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceAuthorization = {
    ENABLED = "Enabled",
    DISABLED = "Disabled",
}

M.Connect = {
    type = "structure",
    id = "Connect",
    members = {
        Authorization = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CopyClusterSnapshotInput = {
    type = "structure",
    id = "CopyClusterSnapshotInput",
    members = {
        SourceSnapshotIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceSnapshotClusterIdentifier = {
            type = "string",
        },
        TargetSnapshotIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ManualSnapshotRetentionPeriod = {
            type = "integer",
        },
    },
}

M.CopyClusterSnapshotOutput = {
    type = "structure",
    id = "CopyClusterSnapshotOutput",
    members = {
        Snapshot = M.Snapshot,
    },
}

M.CopyToRegionDisabledFault = {
    type = "structure",
    id = "CopyToRegionDisabledFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateAuthenticationProfileInput = {
    type = "structure",
    id = "CreateAuthenticationProfileInput",
    members = {
        AuthenticationProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthenticationProfileContent = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAuthenticationProfileOutput = {
    type = "structure",
    id = "CreateAuthenticationProfileOutput",
    members = {
        AuthenticationProfileName = {
            type = "string",
        },
        AuthenticationProfileContent = {
            type = "string",
        },
    },
}

M.InvalidAuthenticationProfileRequestFault = {
    type = "structure",
    id = "InvalidAuthenticationProfileRequestFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateClusterInput = {
    type = "structure",
    id = "CreateClusterInput",
    members = {
        DBName = {
            type = "string",
        },
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterType = {
            type = "string",
        },
        NodeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MasterUsername = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MasterUserPassword = {
            type = "string",
        },
        ClusterSecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        VpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        ClusterSubnetGroupName = {
            type = "string",
        },
        AvailabilityZone = {
            type = "string",
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        ClusterParameterGroupName = {
            type = "string",
        },
        AutomatedSnapshotRetentionPeriod = {
            type = "integer",
        },
        ManualSnapshotRetentionPeriod = {
            type = "integer",
        },
        Port = {
            type = "integer",
        },
        ClusterVersion = {
            type = "string",
        },
        AllowVersionUpgrade = {
            type = "boolean",
        },
        NumberOfNodes = {
            type = "integer",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        Encrypted = {
            type = "boolean",
        },
        HsmClientCertificateIdentifier = {
            type = "string",
        },
        HsmConfigurationIdentifier = {
            type = "string",
        },
        ElasticIp = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        KmsKeyId = {
            type = "string",
        },
        EnhancedVpcRouting = {
            type = "boolean",
        },
        AdditionalInfo = {
            type = "string",
        },
        IamRoles = {
            type = "list",
            member = { type = "string" },
        },
        MaintenanceTrackName = {
            type = "string",
        },
        SnapshotScheduleIdentifier = {
            type = "string",
        },
        AvailabilityZoneRelocation = {
            type = "boolean",
        },
        AquaConfigurationStatus = {
            type = "string",
        },
        DefaultIamRoleArn = {
            type = "string",
        },
        LoadSampleData = {
            type = "string",
        },
        ManageMasterPassword = {
            type = "boolean",
        },
        MasterPasswordSecretKmsKeyId = {
            type = "string",
        },
        IpAddressType = {
            type = "string",
        },
        MultiAZ = {
            type = "boolean",
        },
        RedshiftIdcApplicationArn = {
            type = "string",
        },
        CatalogName = {
            type = "string",
        },
        ExtraComputeForAutomaticOptimization = {
            type = "boolean",
        },
    },
}

M.CreateClusterOutput = {
    type = "structure",
    id = "CreateClusterOutput",
    members = {
        Cluster = M.Cluster,
    },
}

M.DependentServiceAccessDeniedFault = {
    type = "structure",
    id = "DependentServiceAccessDeniedFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.HsmClientCertificateNotFoundFault = {
    type = "structure",
    id = "HsmClientCertificateNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.HsmConfigurationNotFoundFault = {
    type = "structure",
    id = "HsmConfigurationNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InsufficientClusterCapacityFault = {
    type = "structure",
    id = "InsufficientClusterCapacityFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidClusterSubnetGroupStateFault = {
    type = "structure",
    id = "InvalidClusterSubnetGroupStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidClusterTrackFault = {
    type = "structure",
    id = "InvalidClusterTrackFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidElasticIpFault = {
    type = "structure",
    id = "InvalidElasticIpFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidSubnet = {
    type = "structure",
    id = "InvalidSubnet",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTagFault = {
    type = "structure",
    id = "InvalidTagFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidVPCNetworkStateFault = {
    type = "structure",
    id = "InvalidVPCNetworkStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Ipv6CidrBlockNotFoundFault = {
    type = "structure",
    id = "Ipv6CidrBlockNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NumberOfNodesPerClusterLimitExceededFault = {
    type = "structure",
    id = "NumberOfNodesPerClusterLimitExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NumberOfNodesQuotaExceededFault = {
    type = "structure",
    id = "NumberOfNodesQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RedshiftIdcApplicationNotExistsFault = {
    type = "structure",
    id = "RedshiftIdcApplicationNotExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SnapshotScheduleNotFoundFault = {
    type = "structure",
    id = "SnapshotScheduleNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TagLimitExceededFault = {
    type = "structure",
    id = "TagLimitExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnauthorizedOperation = {
    type = "structure",
    id = "UnauthorizedOperation",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateClusterParameterGroupInput = {
    type = "structure",
    id = "CreateClusterParameterGroupInput",
    members = {
        ParameterGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParameterGroupFamily = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateClusterParameterGroupOutput = {
    type = "structure",
    id = "CreateClusterParameterGroupOutput",
    members = {
        ClusterParameterGroup = M.ClusterParameterGroup,
    },
}

M.CreateClusterSecurityGroupInput = {
    type = "structure",
    id = "CreateClusterSecurityGroupInput",
    members = {
        ClusterSecurityGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateClusterSecurityGroupOutput = {
    type = "structure",
    id = "CreateClusterSecurityGroupOutput",
    members = {
        ClusterSecurityGroup = M.ClusterSecurityGroup,
    },
}

M.CreateClusterSnapshotInput = {
    type = "structure",
    id = "CreateClusterSnapshotInput",
    members = {
        SnapshotIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ManualSnapshotRetentionPeriod = {
            type = "integer",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateClusterSnapshotOutput = {
    type = "structure",
    id = "CreateClusterSnapshotOutput",
    members = {
        Snapshot = M.Snapshot,
    },
}

M.CreateClusterSubnetGroupInput = {
    type = "structure",
    id = "CreateClusterSubnetGroupInput",
    members = {
        ClusterSubnetGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateClusterSubnetGroupOutput = {
    type = "structure",
    id = "CreateClusterSubnetGroupOutput",
    members = {
        ClusterSubnetGroup = M.ClusterSubnetGroup,
    },
}

M.CreateCustomDomainAssociationInput = {
    type = "structure",
    id = "CreateCustomDomainAssociationInput",
    members = {
        CustomDomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CustomDomainCertificateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateCustomDomainAssociationOutput = {
    type = "structure",
    id = "CreateCustomDomainAssociationOutput",
    members = {
        CustomDomainName = {
            type = "string",
        },
        CustomDomainCertificateArn = {
            type = "string",
        },
        ClusterIdentifier = {
            type = "string",
        },
        CustomDomainCertExpiryTime = {
            type = "string",
        },
    },
}

M.CustomCnameAssociationFault = {
    type = "structure",
    id = "CustomCnameAssociationFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateEndpointAccessInput = {
    type = "structure",
    id = "CreateEndpointAccessInput",
    members = {
        ClusterIdentifier = {
            type = "string",
        },
        ResourceOwner = {
            type = "string",
        },
        EndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubnetGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateEndpointAccessOutput = {
    type = "structure",
    id = "CreateEndpointAccessOutput",
    members = {
        ClusterIdentifier = {
            type = "string",
        },
        ResourceOwner = {
            type = "string",
        },
        SubnetGroupName = {
            type = "string",
        },
        EndpointStatus = {
            type = "string",
        },
        EndpointName = {
            type = "string",
        },
        EndpointCreateTime = {
            type = "timestamp",
        },
        Port = {
            type = "integer",
        },
        Address = {
            type = "string",
        },
        VpcSecurityGroups = {
            type = "list",
            member = M.VpcSecurityGroupMembership,
        },
        VpcEndpoint = M.VpcEndpoint,
    },
}

M.EndpointAlreadyExistsFault = {
    type = "structure",
    id = "EndpointAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EndpointsPerAuthorizationLimitExceededFault = {
    type = "structure",
    id = "EndpointsPerAuthorizationLimitExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EndpointsPerClusterLimitExceededFault = {
    type = "structure",
    id = "EndpointsPerClusterLimitExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateEventSubscriptionInput = {
    type = "structure",
    id = "CreateEventSubscriptionInput",
    members = {
        SubscriptionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnsTopicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceType = {
            type = "string",
        },
        SourceIds = {
            type = "list",
            member = { type = "string" },
        },
        EventCategories = {
            type = "list",
            member = { type = "string" },
        },
        Severity = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.EventSubscription = {
    type = "structure",
    id = "EventSubscription",
    members = {
        CustomerAwsId = {
            type = "string",
        },
        CustSubscriptionId = {
            type = "string",
        },
        SnsTopicArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        SubscriptionCreationTime = {
            type = "timestamp",
        },
        SourceType = {
            type = "string",
        },
        SourceIdsList = {
            type = "list",
            member = { type = "string" },
        },
        EventCategoriesList = {
            type = "list",
            member = { type = "string" },
        },
        Severity = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateEventSubscriptionOutput = {
    type = "structure",
    id = "CreateEventSubscriptionOutput",
    members = {
        EventSubscription = M.EventSubscription,
    },
}

M.EventSubscriptionQuotaExceededFault = {
    type = "structure",
    id = "EventSubscriptionQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SNSInvalidTopicFault = {
    type = "structure",
    id = "SNSInvalidTopicFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SNSNoAuthorizationFault = {
    type = "structure",
    id = "SNSNoAuthorizationFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SNSTopicArnNotFoundFault = {
    type = "structure",
    id = "SNSTopicArnNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SourceNotFoundFault = {
    type = "structure",
    id = "SourceNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SubscriptionAlreadyExistFault = {
    type = "structure",
    id = "SubscriptionAlreadyExistFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SubscriptionCategoryNotFoundFault = {
    type = "structure",
    id = "SubscriptionCategoryNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SubscriptionEventIdNotFoundFault = {
    type = "structure",
    id = "SubscriptionEventIdNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SubscriptionSeverityNotFoundFault = {
    type = "structure",
    id = "SubscriptionSeverityNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateHsmClientCertificateInput = {
    type = "structure",
    id = "CreateHsmClientCertificateInput",
    members = {
        HsmClientCertificateIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.HsmClientCertificate = {
    type = "structure",
    id = "HsmClientCertificate",
    members = {
        HsmClientCertificateIdentifier = {
            type = "string",
        },
        HsmClientCertificatePublicKey = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateHsmClientCertificateOutput = {
    type = "structure",
    id = "CreateHsmClientCertificateOutput",
    members = {
        HsmClientCertificate = M.HsmClientCertificate,
    },
}

M.HsmClientCertificateAlreadyExistsFault = {
    type = "structure",
    id = "HsmClientCertificateAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.HsmClientCertificateQuotaExceededFault = {
    type = "structure",
    id = "HsmClientCertificateQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateHsmConfigurationInput = {
    type = "structure",
    id = "CreateHsmConfigurationInput",
    members = {
        HsmConfigurationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HsmIpAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HsmPartitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HsmPartitionPassword = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HsmServerPublicCertificate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.HsmConfiguration = {
    type = "structure",
    id = "HsmConfiguration",
    members = {
        HsmConfigurationIdentifier = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        HsmIpAddress = {
            type = "string",
        },
        HsmPartitionName = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateHsmConfigurationOutput = {
    type = "structure",
    id = "CreateHsmConfigurationOutput",
    members = {
        HsmConfiguration = M.HsmConfiguration,
    },
}

M.HsmConfigurationAlreadyExistsFault = {
    type = "structure",
    id = "HsmConfigurationAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.HsmConfigurationQuotaExceededFault = {
    type = "structure",
    id = "HsmConfigurationQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateIntegrationInput = {
    type = "structure",
    id = "CreateIntegrationInput",
    members = {
        SourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IntegrationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KMSKeyId = {
            type = "string",
        },
        TagList = {
            type = "list",
            member = M.Tag,
        },
        AdditionalEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Description = {
            type = "string",
        },
    },
}

M.IntegrationError = {
    type = "structure",
    id = "IntegrationError",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.ZeroETLIntegrationStatus = {
    CREATING = "creating",
    ACTIVE = "active",
    MODIFYING = "modifying",
    FAILED = "failed",
    DELETING = "deleting",
    SYNCING = "syncing",
    NEEDS_ATTENTION = "needs_attention",
}

M.CreateIntegrationOutput = {
    type = "structure",
    id = "CreateIntegrationOutput",
    members = {
        IntegrationArn = {
            type = "string",
        },
        IntegrationName = {
            type = "string",
        },
        SourceArn = {
            type = "string",
        },
        TargetArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Errors = {
            type = "list",
            member = M.IntegrationError,
        },
        CreateTime = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        KMSKeyId = {
            type = "string",
        },
        AdditionalEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.IntegrationAlreadyExistsFault = {
    type = "structure",
    id = "IntegrationAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IntegrationConflictOperationFault = {
    type = "structure",
    id = "IntegrationConflictOperationFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IntegrationQuotaExceededFault = {
    type = "structure",
    id = "IntegrationQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IntegrationSourceNotFoundFault = {
    type = "structure",
    id = "IntegrationSourceNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IntegrationTargetNotFoundFault = {
    type = "structure",
    id = "IntegrationTargetNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LakeFormationQuery = {
    type = "structure",
    id = "LakeFormationQuery",
    members = {
        Authorization = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LakeFormationScopeUnion = {
    type = "union",
    id = "LakeFormationScopeUnion",
    members = {
        LakeFormationQuery = M.LakeFormationQuery,
    },
}

M.RedshiftScopeUnion = {
    type = "union",
    id = "RedshiftScopeUnion",
    members = {
        Connect = M.Connect,
    },
}

M.ReadWriteAccess = {
    type = "structure",
    id = "ReadWriteAccess",
    members = {
        Authorization = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.S3AccessGrantsScopeUnion = {
    type = "union",
    id = "S3AccessGrantsScopeUnion",
    members = {
        ReadWriteAccess = M.ReadWriteAccess,
    },
}

M.ServiceIntegrationsUnion = {
    type = "union",
    id = "ServiceIntegrationsUnion",
    members = {
        LakeFormation = {
            type = "list",
            member = M.LakeFormationScopeUnion,
        },
        S3AccessGrants = {
            type = "list",
            member = M.S3AccessGrantsScopeUnion,
        },
        Redshift = {
            type = "list",
            member = M.RedshiftScopeUnion,
        },
    },
}

M.CreateRedshiftIdcApplicationInput = {
    type = "structure",
    id = "CreateRedshiftIdcApplicationInput",
    members = {
        IdcInstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RedshiftIdcApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityNamespace = {
            type = "string",
        },
        IdcDisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IamRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthorizedTokenIssuerList = {
            type = "list",
            member = M.AuthorizedTokenIssuer,
        },
        ServiceIntegrations = {
            type = "list",
            member = M.ServiceIntegrationsUnion,
        },
        ApplicationType = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        SsoTagKeys = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RedshiftIdcApplication = {
    type = "structure",
    id = "RedshiftIdcApplication",
    members = {
        IdcInstanceArn = {
            type = "string",
        },
        RedshiftIdcApplicationName = {
            type = "string",
        },
        RedshiftIdcApplicationArn = {
            type = "string",
        },
        IdentityNamespace = {
            type = "string",
        },
        IdcDisplayName = {
            type = "string",
        },
        IamRoleArn = {
            type = "string",
        },
        IdcManagedApplicationArn = {
            type = "string",
        },
        IdcOnboardStatus = {
            type = "string",
        },
        AuthorizedTokenIssuerList = {
            type = "list",
            member = M.AuthorizedTokenIssuer,
        },
        ServiceIntegrations = {
            type = "list",
            member = M.ServiceIntegrationsUnion,
        },
        ApplicationType = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        SsoTagKeys = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateRedshiftIdcApplicationOutput = {
    type = "structure",
    id = "CreateRedshiftIdcApplicationOutput",
    members = {
        RedshiftIdcApplication = M.RedshiftIdcApplication,
    },
}

M.RedshiftIdcApplicationAlreadyExistsFault = {
    type = "structure",
    id = "RedshiftIdcApplicationAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RedshiftIdcApplicationQuotaExceededFault = {
    type = "structure",
    id = "RedshiftIdcApplicationQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PauseClusterMessage = {
    type = "structure",
    id = "PauseClusterMessage",
    members = {
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResizeClusterMessage = {
    type = "structure",
    id = "ResizeClusterMessage",
    members = {
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterType = {
            type = "string",
        },
        NodeType = {
            type = "string",
        },
        NumberOfNodes = {
            type = "integer",
        },
        Classic = {
            type = "boolean",
        },
        ReservedNodeId = {
            type = "string",
        },
        TargetReservedNodeOfferingId = {
            type = "string",
        },
    },
}

M.ResumeClusterMessage = {
    type = "structure",
    id = "ResumeClusterMessage",
    members = {
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ScheduledActionType = {
    type = "structure",
    id = "ScheduledActionType",
    members = {
        ResizeCluster = M.ResizeClusterMessage,
        PauseCluster = M.PauseClusterMessage,
        ResumeCluster = M.ResumeClusterMessage,
    },
}

M.CreateScheduledActionInput = {
    type = "structure",
    id = "CreateScheduledActionInput",
    members = {
        ScheduledActionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetAction = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScheduledActionType }),
        Schedule = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IamRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScheduledActionDescription = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Enable = {
            type = "boolean",
        },
    },
}

M.ScheduledActionState = {
    ACTIVE = "ACTIVE",
    DISABLED = "DISABLED",
}

M.CreateScheduledActionOutput = {
    type = "structure",
    id = "CreateScheduledActionOutput",
    members = {
        ScheduledActionName = {
            type = "string",
        },
        TargetAction = M.ScheduledActionType,
        Schedule = {
            type = "string",
        },
        IamRole = {
            type = "string",
        },
        ScheduledActionDescription = {
            type = "string",
        },
        State = {
            type = "string",
        },
        NextInvocations = {
            type = "list",
            member = { type = "timestamp" },
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
    },
}

M.InvalidScheduledActionFault = {
    type = "structure",
    id = "InvalidScheduledActionFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidScheduleFault = {
    type = "structure",
    id = "InvalidScheduleFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ScheduledActionAlreadyExistsFault = {
    type = "structure",
    id = "ScheduledActionAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ScheduledActionQuotaExceededFault = {
    type = "structure",
    id = "ScheduledActionQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ScheduledActionTypeUnsupportedFault = {
    type = "structure",
    id = "ScheduledActionTypeUnsupportedFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateSnapshotCopyGrantInput = {
    type = "structure",
    id = "CreateSnapshotCopyGrantInput",
    members = {
        SnapshotCopyGrantName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.SnapshotCopyGrant = {
    type = "structure",
    id = "SnapshotCopyGrant",
    members = {
        SnapshotCopyGrantName = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateSnapshotCopyGrantOutput = {
    type = "structure",
    id = "CreateSnapshotCopyGrantOutput",
    members = {
        SnapshotCopyGrant = M.SnapshotCopyGrant,
    },
}

M.SnapshotCopyGrantAlreadyExistsFault = {
    type = "structure",
    id = "SnapshotCopyGrantAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SnapshotCopyGrantQuotaExceededFault = {
    type = "structure",
    id = "SnapshotCopyGrantQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateSnapshotScheduleInput = {
    type = "structure",
    id = "CreateSnapshotScheduleInput",
    members = {
        ScheduleDefinitions = {
            type = "list",
            member = { type = "string" },
        },
        ScheduleIdentifier = {
            type = "string",
        },
        ScheduleDescription = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        DryRun = {
            type = "boolean",
        },
        NextInvocations = {
            type = "integer",
        },
    },
}

M.CreateSnapshotScheduleOutput = {
    type = "structure",
    id = "CreateSnapshotScheduleOutput",
    members = {
        ScheduleDefinitions = {
            type = "list",
            member = { type = "string" },
        },
        ScheduleIdentifier = {
            type = "string",
        },
        ScheduleDescription = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        NextInvocations = {
            type = "list",
            member = { type = "timestamp" },
        },
        AssociatedClusterCount = {
            type = "integer",
        },
        AssociatedClusters = {
            type = "list",
            member = M.ClusterAssociatedToSchedule,
        },
    },
}

M.ScheduleDefinitionTypeUnsupportedFault = {
    type = "structure",
    id = "ScheduleDefinitionTypeUnsupportedFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SnapshotScheduleAlreadyExistsFault = {
    type = "structure",
    id = "SnapshotScheduleAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SnapshotScheduleQuotaExceededFault = {
    type = "structure",
    id = "SnapshotScheduleQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateTagsInput = {
    type = "structure",
    id = "CreateTagsInput",
    members = {
        ResourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTagsOutput = {
    type = "structure",
    id = "CreateTagsOutput",
}

M.ResourceNotFoundFault = {
    type = "structure",
    id = "ResourceNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UsageLimitBreachAction = {
    LOG = "log",
    EMIT_METRIC = "emit-metric",
    DISABLE = "disable",
}

M.UsageLimitFeatureType = {
    SPECTRUM = "spectrum",
    CONCURRENCY_SCALING = "concurrency-scaling",
    CROSS_REGION_DATASHARING = "cross-region-datasharing",
    EXTRA_COMPUTE_FOR_AUTOMATIC_OPTIMIZATION = "extra-compute-for-automatic-optimization",
}

M.UsageLimitLimitType = {
    TIME = "time",
    DATA_SCANNED = "data-scanned",
}

M.UsageLimitPeriod = {
    DAILY = "daily",
    WEEKLY = "weekly",
    MONTHLY = "monthly",
}

M.CreateUsageLimitInput = {
    type = "structure",
    id = "CreateUsageLimitInput",
    members = {
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FeatureType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LimitType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Amount = {
            type = "long",
            traits = {
                required = true,
            },
        },
        Period = {
            type = "string",
        },
        BreachAction = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateUsageLimitOutput = {
    type = "structure",
    id = "CreateUsageLimitOutput",
    members = {
        UsageLimitId = {
            type = "string",
        },
        ClusterIdentifier = {
            type = "string",
        },
        FeatureType = {
            type = "string",
        },
        LimitType = {
            type = "string",
        },
        Amount = {
            type = "long",
        },
        Period = {
            type = "string",
        },
        BreachAction = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.InvalidUsageLimitFault = {
    type = "structure",
    id = "InvalidUsageLimitFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UsageLimitAlreadyExistsFault = {
    type = "structure",
    id = "UsageLimitAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CustomDomainAssociationNotFoundFault = {
    type = "structure",
    id = "CustomDomainAssociationNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DataShare = {
    type = "structure",
    id = "DataShare",
    members = {
        DataShareArn = {
            type = "string",
        },
        ProducerArn = {
            type = "string",
        },
        AllowPubliclyAccessibleConsumers = {
            type = "boolean",
        },
        DataShareAssociations = {
            type = "list",
            member = M.DataShareAssociation,
        },
        ManagedBy = {
            type = "string",
        },
        DataShareType = {
            type = "string",
        },
    },
}

M.DataShareStatusForConsumer = {
    ACTIVE = "ACTIVE",
    AVAILABLE = "AVAILABLE",
}

M.DataShareStatusForProducer = {
    ACTIVE = "ACTIVE",
    AUTHORIZED = "AUTHORIZED",
    PENDING_AUTHORIZATION = "PENDING_AUTHORIZATION",
    DEAUTHORIZED = "DEAUTHORIZED",
    REJECTED = "REJECTED",
}

M.DeauthorizeDataShareInput = {
    type = "structure",
    id = "DeauthorizeDataShareInput",
    members = {
        DataShareArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConsumerIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeauthorizeDataShareOutput = {
    type = "structure",
    id = "DeauthorizeDataShareOutput",
    members = {
        DataShareArn = {
            type = "string",
        },
        ProducerArn = {
            type = "string",
        },
        AllowPubliclyAccessibleConsumers = {
            type = "boolean",
        },
        DataShareAssociations = {
            type = "list",
            member = M.DataShareAssociation,
        },
        ManagedBy = {
            type = "string",
        },
        DataShareType = {
            type = "string",
        },
    },
}

M.ParameterApplyType = {
    static = "static",
    dynamic = "dynamic",
}

M.Parameter = {
    type = "structure",
    id = "Parameter",
    members = {
        ParameterName = {
            type = "string",
        },
        ParameterValue = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Source = {
            type = "string",
        },
        DataType = {
            type = "string",
        },
        AllowedValues = {
            type = "string",
        },
        ApplyType = {
            type = "string",
        },
        IsModifiable = {
            type = "boolean",
        },
        MinimumEngineVersion = {
            type = "string",
        },
    },
}

M.DefaultClusterParameters = {
    type = "structure",
    id = "DefaultClusterParameters",
    members = {
        ParameterGroupFamily = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        Parameters = {
            type = "list",
            member = M.Parameter,
        },
    },
}

M.DeleteAuthenticationProfileInput = {
    type = "structure",
    id = "DeleteAuthenticationProfileInput",
    members = {
        AuthenticationProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAuthenticationProfileOutput = {
    type = "structure",
    id = "DeleteAuthenticationProfileOutput",
    members = {
        AuthenticationProfileName = {
            type = "string",
        },
    },
}

M.DeleteClusterInput = {
    type = "structure",
    id = "DeleteClusterInput",
    members = {
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SkipFinalClusterSnapshot = {
            type = "boolean",
        },
        FinalClusterSnapshotIdentifier = {
            type = "string",
        },
        FinalClusterSnapshotRetentionPeriod = {
            type = "integer",
        },
    },
}

M.DeleteClusterOutput = {
    type = "structure",
    id = "DeleteClusterOutput",
    members = {
        Cluster = M.Cluster,
    },
}

M.DeleteClusterParameterGroupInput = {
    type = "structure",
    id = "DeleteClusterParameterGroupInput",
    members = {
        ParameterGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteClusterParameterGroupOutput = {
    type = "structure",
    id = "DeleteClusterParameterGroupOutput",
}

M.InvalidClusterParameterGroupStateFault = {
    type = "structure",
    id = "InvalidClusterParameterGroupStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteClusterSecurityGroupInput = {
    type = "structure",
    id = "DeleteClusterSecurityGroupInput",
    members = {
        ClusterSecurityGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteClusterSecurityGroupOutput = {
    type = "structure",
    id = "DeleteClusterSecurityGroupOutput",
}

M.DeleteClusterSnapshotInput = {
    type = "structure",
    id = "DeleteClusterSnapshotInput",
    members = {
        SnapshotIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnapshotClusterIdentifier = {
            type = "string",
        },
    },
}

M.DeleteClusterSnapshotOutput = {
    type = "structure",
    id = "DeleteClusterSnapshotOutput",
    members = {
        Snapshot = M.Snapshot,
    },
}

M.DeleteClusterSubnetGroupInput = {
    type = "structure",
    id = "DeleteClusterSubnetGroupInput",
    members = {
        ClusterSubnetGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteClusterSubnetGroupOutput = {
    type = "structure",
    id = "DeleteClusterSubnetGroupOutput",
}

M.InvalidClusterSubnetStateFault = {
    type = "structure",
    id = "InvalidClusterSubnetStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteCustomDomainAssociationInput = {
    type = "structure",
    id = "DeleteCustomDomainAssociationInput",
    members = {
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CustomDomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCustomDomainAssociationOutput = {
    type = "structure",
    id = "DeleteCustomDomainAssociationOutput",
}

M.DeleteEndpointAccessInput = {
    type = "structure",
    id = "DeleteEndpointAccessInput",
    members = {
        EndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEndpointAccessOutput = {
    type = "structure",
    id = "DeleteEndpointAccessOutput",
    members = {
        ClusterIdentifier = {
            type = "string",
        },
        ResourceOwner = {
            type = "string",
        },
        SubnetGroupName = {
            type = "string",
        },
        EndpointStatus = {
            type = "string",
        },
        EndpointName = {
            type = "string",
        },
        EndpointCreateTime = {
            type = "timestamp",
        },
        Port = {
            type = "integer",
        },
        Address = {
            type = "string",
        },
        VpcSecurityGroups = {
            type = "list",
            member = M.VpcSecurityGroupMembership,
        },
        VpcEndpoint = M.VpcEndpoint,
    },
}

M.EndpointNotFoundFault = {
    type = "structure",
    id = "EndpointNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidEndpointStateFault = {
    type = "structure",
    id = "InvalidEndpointStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteEventSubscriptionInput = {
    type = "structure",
    id = "DeleteEventSubscriptionInput",
    members = {
        SubscriptionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEventSubscriptionOutput = {
    type = "structure",
    id = "DeleteEventSubscriptionOutput",
}

M.InvalidSubscriptionStateFault = {
    type = "structure",
    id = "InvalidSubscriptionStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SubscriptionNotFoundFault = {
    type = "structure",
    id = "SubscriptionNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteHsmClientCertificateInput = {
    type = "structure",
    id = "DeleteHsmClientCertificateInput",
    members = {
        HsmClientCertificateIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteHsmClientCertificateOutput = {
    type = "structure",
    id = "DeleteHsmClientCertificateOutput",
}

M.InvalidHsmClientCertificateStateFault = {
    type = "structure",
    id = "InvalidHsmClientCertificateStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteHsmConfigurationInput = {
    type = "structure",
    id = "DeleteHsmConfigurationInput",
    members = {
        HsmConfigurationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteHsmConfigurationOutput = {
    type = "structure",
    id = "DeleteHsmConfigurationOutput",
}

M.InvalidHsmConfigurationStateFault = {
    type = "structure",
    id = "InvalidHsmConfigurationStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteIntegrationInput = {
    type = "structure",
    id = "DeleteIntegrationInput",
    members = {
        IntegrationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIntegrationOutput = {
    type = "structure",
    id = "DeleteIntegrationOutput",
    members = {
        IntegrationArn = {
            type = "string",
        },
        IntegrationName = {
            type = "string",
        },
        SourceArn = {
            type = "string",
        },
        TargetArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Errors = {
            type = "list",
            member = M.IntegrationError,
        },
        CreateTime = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        KMSKeyId = {
            type = "string",
        },
        AdditionalEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.IntegrationConflictStateFault = {
    type = "structure",
    id = "IntegrationConflictStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IntegrationNotFoundFault = {
    type = "structure",
    id = "IntegrationNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeletePartnerInput = {
    type = "structure",
    id = "DeletePartnerInput",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PartnerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePartnerOutput = {
    type = "structure",
    id = "DeletePartnerOutput",
    members = {
        DatabaseName = {
            type = "string",
        },
        PartnerName = {
            type = "string",
        },
    },
}

M.DeleteRedshiftIdcApplicationInput = {
    type = "structure",
    id = "DeleteRedshiftIdcApplicationInput",
    members = {
        RedshiftIdcApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRedshiftIdcApplicationOutput = {
    type = "structure",
    id = "DeleteRedshiftIdcApplicationOutput",
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    id = "DeleteResourcePolicyInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteResourcePolicyOutput = {
    type = "structure",
    id = "DeleteResourcePolicyOutput",
}

M.DeleteScheduledActionInput = {
    type = "structure",
    id = "DeleteScheduledActionInput",
    members = {
        ScheduledActionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteScheduledActionOutput = {
    type = "structure",
    id = "DeleteScheduledActionOutput",
}

M.ScheduledActionNotFoundFault = {
    type = "structure",
    id = "ScheduledActionNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteSnapshotCopyGrantInput = {
    type = "structure",
    id = "DeleteSnapshotCopyGrantInput",
    members = {
        SnapshotCopyGrantName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSnapshotCopyGrantOutput = {
    type = "structure",
    id = "DeleteSnapshotCopyGrantOutput",
}

M.InvalidSnapshotCopyGrantStateFault = {
    type = "structure",
    id = "InvalidSnapshotCopyGrantStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SnapshotCopyGrantNotFoundFault = {
    type = "structure",
    id = "SnapshotCopyGrantNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteSnapshotScheduleInput = {
    type = "structure",
    id = "DeleteSnapshotScheduleInput",
    members = {
        ScheduleIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSnapshotScheduleOutput = {
    type = "structure",
    id = "DeleteSnapshotScheduleOutput",
}

M.InvalidClusterSnapshotScheduleStateFault = {
    type = "structure",
    id = "InvalidClusterSnapshotScheduleStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteTagsInput = {
    type = "structure",
    id = "DeleteTagsInput",
    members = {
        ResourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTagsOutput = {
    type = "structure",
    id = "DeleteTagsOutput",
}

M.DeleteUsageLimitInput = {
    type = "structure",
    id = "DeleteUsageLimitInput",
    members = {
        UsageLimitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteUsageLimitOutput = {
    type = "structure",
    id = "DeleteUsageLimitOutput",
}

M.UsageLimitNotFoundFault = {
    type = "structure",
    id = "UsageLimitNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ProvisionedIdentifier = {
    type = "structure",
    id = "ProvisionedIdentifier",
    members = {
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServerlessIdentifier = {
    type = "structure",
    id = "ServerlessIdentifier",
    members = {
        NamespaceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkgroupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NamespaceIdentifierUnion = {
    type = "union",
    id = "NamespaceIdentifierUnion",
    members = {
        ServerlessIdentifier = M.ServerlessIdentifier,
        ProvisionedIdentifier = M.ProvisionedIdentifier,
    },
}

M.DeregisterNamespaceInput = {
    type = "structure",
    id = "DeregisterNamespaceInput",
    members = {
        NamespaceIdentifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NamespaceIdentifierUnion }),
        ConsumerIdentifiers = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.NamespaceRegistrationStatus = {
    REGISTERING = "Registering",
    DEREGISTERING = "Deregistering",
}

M.DeregisterNamespaceOutput = {
    type = "structure",
    id = "DeregisterNamespaceOutput",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.DescribeAccountAttributesInput = {
    type = "structure",
    id = "DescribeAccountAttributesInput",
    members = {
        AttributeNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeAccountAttributesOutput = {
    type = "structure",
    id = "DescribeAccountAttributesOutput",
    members = {
        AccountAttributes = {
            type = "list",
            member = M.AccountAttribute,
        },
    },
}

M.DescribeAuthenticationProfilesInput = {
    type = "structure",
    id = "DescribeAuthenticationProfilesInput",
    members = {
        AuthenticationProfileName = {
            type = "string",
        },
    },
}

M.DescribeAuthenticationProfilesOutput = {
    type = "structure",
    id = "DescribeAuthenticationProfilesOutput",
    members = {
        AuthenticationProfiles = {
            type = "list",
            member = M.AuthenticationProfile,
        },
    },
}

M.DescribeClusterDbRevisionsInput = {
    type = "structure",
    id = "DescribeClusterDbRevisionsInput",
    members = {
        ClusterIdentifier = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeClusterDbRevisionsOutput = {
    type = "structure",
    id = "DescribeClusterDbRevisionsOutput",
    members = {
        Marker = {
            type = "string",
        },
        ClusterDbRevisions = {
            type = "list",
            member = M.ClusterDbRevision,
        },
    },
}

M.DescribeClusterParameterGroupsInput = {
    type = "structure",
    id = "DescribeClusterParameterGroupsInput",
    members = {
        ParameterGroupName = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
        },
        TagValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeClusterParameterGroupsOutput = {
    type = "structure",
    id = "DescribeClusterParameterGroupsOutput",
    members = {
        Marker = {
            type = "string",
        },
        ParameterGroups = {
            type = "list",
            member = M.ClusterParameterGroup,
        },
    },
}

M.DescribeClusterParametersInput = {
    type = "structure",
    id = "DescribeClusterParametersInput",
    members = {
        ParameterGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Source = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeClusterParametersOutput = {
    type = "structure",
    id = "DescribeClusterParametersOutput",
    members = {
        Parameters = {
            type = "list",
            member = M.Parameter,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeClustersInput = {
    type = "structure",
    id = "DescribeClustersInput",
    members = {
        ClusterIdentifier = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
        },
        TagValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeClustersOutput = {
    type = "structure",
    id = "DescribeClustersOutput",
    members = {
        Marker = {
            type = "string",
        },
        Clusters = {
            type = "list",
            member = M.Cluster,
        },
    },
}

M.DescribeClusterSecurityGroupsInput = {
    type = "structure",
    id = "DescribeClusterSecurityGroupsInput",
    members = {
        ClusterSecurityGroupName = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
        },
        TagValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeClusterSecurityGroupsOutput = {
    type = "structure",
    id = "DescribeClusterSecurityGroupsOutput",
    members = {
        Marker = {
            type = "string",
        },
        ClusterSecurityGroups = {
            type = "list",
            member = M.ClusterSecurityGroup,
        },
    },
}

M.SnapshotAttributeToSortBy = {
    SOURCE_TYPE = "SOURCE_TYPE",
    TOTAL_SIZE = "TOTAL_SIZE",
    CREATE_TIME = "CREATE_TIME",
}

M.SortByOrder = {
    ASCENDING = "ASC",
    DESCENDING = "DESC",
}

M.SnapshotSortingEntity = {
    type = "structure",
    id = "SnapshotSortingEntity",
    members = {
        Attribute = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.DescribeClusterSnapshotsInput = {
    type = "structure",
    id = "DescribeClusterSnapshotsInput",
    members = {
        ClusterIdentifier = {
            type = "string",
        },
        SnapshotIdentifier = {
            type = "string",
        },
        SnapshotArn = {
            type = "string",
        },
        SnapshotType = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
        OwnerAccount = {
            type = "string",
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
        },
        TagValues = {
            type = "list",
            member = { type = "string" },
        },
        ClusterExists = {
            type = "boolean",
        },
        SortingEntities = {
            type = "list",
            member = M.SnapshotSortingEntity,
        },
    },
}

M.DescribeClusterSnapshotsOutput = {
    type = "structure",
    id = "DescribeClusterSnapshotsOutput",
    members = {
        Marker = {
            type = "string",
        },
        Snapshots = {
            type = "list",
            member = M.Snapshot,
        },
    },
}

M.DescribeClusterSubnetGroupsInput = {
    type = "structure",
    id = "DescribeClusterSubnetGroupsInput",
    members = {
        ClusterSubnetGroupName = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
        },
        TagValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeClusterSubnetGroupsOutput = {
    type = "structure",
    id = "DescribeClusterSubnetGroupsOutput",
    members = {
        Marker = {
            type = "string",
        },
        ClusterSubnetGroups = {
            type = "list",
            member = M.ClusterSubnetGroup,
        },
    },
}

M.DescribeClusterTracksInput = {
    type = "structure",
    id = "DescribeClusterTracksInput",
    members = {
        MaintenanceTrackName = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.SupportedOperation = {
    type = "structure",
    id = "SupportedOperation",
    members = {
        OperationName = {
            type = "string",
        },
    },
}

M.UpdateTarget = {
    type = "structure",
    id = "UpdateTarget",
    members = {
        MaintenanceTrackName = {
            type = "string",
        },
        DatabaseVersion = {
            type = "string",
        },
        SupportedOperations = {
            type = "list",
            member = M.SupportedOperation,
        },
    },
}

M.MaintenanceTrack = {
    type = "structure",
    id = "MaintenanceTrack",
    members = {
        MaintenanceTrackName = {
            type = "string",
        },
        DatabaseVersion = {
            type = "string",
        },
        UpdateTargets = {
            type = "list",
            member = M.UpdateTarget,
        },
    },
}

M.DescribeClusterTracksOutput = {
    type = "structure",
    id = "DescribeClusterTracksOutput",
    members = {
        MaintenanceTracks = {
            type = "list",
            member = M.MaintenanceTrack,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeClusterVersionsInput = {
    type = "structure",
    id = "DescribeClusterVersionsInput",
    members = {
        ClusterVersion = {
            type = "string",
        },
        ClusterParameterGroupFamily = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeClusterVersionsOutput = {
    type = "structure",
    id = "DescribeClusterVersionsOutput",
    members = {
        Marker = {
            type = "string",
        },
        ClusterVersions = {
            type = "list",
            member = M.ClusterVersion,
        },
    },
}

M.DescribeCustomDomainAssociationsInput = {
    type = "structure",
    id = "DescribeCustomDomainAssociationsInput",
    members = {
        CustomDomainName = {
            type = "string",
        },
        CustomDomainCertificateArn = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeCustomDomainAssociationsOutput = {
    type = "structure",
    id = "DescribeCustomDomainAssociationsOutput",
    members = {
        Marker = {
            type = "string",
        },
        Associations = {
            type = "list",
            member = M.Association,
        },
    },
}

M.DescribeDataSharesInput = {
    type = "structure",
    id = "DescribeDataSharesInput",
    members = {
        DataShareArn = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeDataSharesOutput = {
    type = "structure",
    id = "DescribeDataSharesOutput",
    members = {
        DataShares = {
            type = "list",
            member = M.DataShare,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeDataSharesForConsumerInput = {
    type = "structure",
    id = "DescribeDataSharesForConsumerInput",
    members = {
        ConsumerArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeDataSharesForConsumerOutput = {
    type = "structure",
    id = "DescribeDataSharesForConsumerOutput",
    members = {
        DataShares = {
            type = "list",
            member = M.DataShare,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeDataSharesForProducerInput = {
    type = "structure",
    id = "DescribeDataSharesForProducerInput",
    members = {
        ProducerArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeDataSharesForProducerOutput = {
    type = "structure",
    id = "DescribeDataSharesForProducerOutput",
    members = {
        DataShares = {
            type = "list",
            member = M.DataShare,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeDefaultClusterParametersInput = {
    type = "structure",
    id = "DescribeDefaultClusterParametersInput",
    members = {
        ParameterGroupFamily = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeDefaultClusterParametersOutput = {
    type = "structure",
    id = "DescribeDefaultClusterParametersOutput",
    members = {
        DefaultClusterParameters = M.DefaultClusterParameters,
    },
}

M.DescribeEndpointAccessInput = {
    type = "structure",
    id = "DescribeEndpointAccessInput",
    members = {
        ClusterIdentifier = {
            type = "string",
        },
        ResourceOwner = {
            type = "string",
        },
        EndpointName = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.EndpointAccess = {
    type = "structure",
    id = "EndpointAccess",
    members = {
        ClusterIdentifier = {
            type = "string",
        },
        ResourceOwner = {
            type = "string",
        },
        SubnetGroupName = {
            type = "string",
        },
        EndpointStatus = {
            type = "string",
        },
        EndpointName = {
            type = "string",
        },
        EndpointCreateTime = {
            type = "timestamp",
        },
        Port = {
            type = "integer",
        },
        Address = {
            type = "string",
        },
        VpcSecurityGroups = {
            type = "list",
            member = M.VpcSecurityGroupMembership,
        },
        VpcEndpoint = M.VpcEndpoint,
    },
}

M.DescribeEndpointAccessOutput = {
    type = "structure",
    id = "DescribeEndpointAccessOutput",
    members = {
        EndpointAccessList = {
            type = "list",
            member = M.EndpointAccess,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeEndpointAuthorizationInput = {
    type = "structure",
    id = "DescribeEndpointAuthorizationInput",
    members = {
        ClusterIdentifier = {
            type = "string",
        },
        Account = {
            type = "string",
        },
        Grantee = {
            type = "boolean",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.EndpointAuthorization = {
    type = "structure",
    id = "EndpointAuthorization",
    members = {
        Grantor = {
            type = "string",
        },
        Grantee = {
            type = "string",
        },
        ClusterIdentifier = {
            type = "string",
        },
        AuthorizeTime = {
            type = "timestamp",
        },
        ClusterStatus = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        AllowedAllVPCs = {
            type = "boolean",
        },
        AllowedVPCs = {
            type = "list",
            member = { type = "string" },
        },
        EndpointCount = {
            type = "integer",
        },
    },
}

M.DescribeEndpointAuthorizationOutput = {
    type = "structure",
    id = "DescribeEndpointAuthorizationOutput",
    members = {
        EndpointAuthorizationList = {
            type = "list",
            member = M.EndpointAuthorization,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeEventCategoriesInput = {
    type = "structure",
    id = "DescribeEventCategoriesInput",
    members = {
        SourceType = {
            type = "string",
        },
    },
}

M.EventInfoMap = {
    type = "structure",
    id = "EventInfoMap",
    members = {
        EventId = {
            type = "string",
        },
        EventCategories = {
            type = "list",
            member = { type = "string" },
        },
        EventDescription = {
            type = "string",
        },
        Severity = {
            type = "string",
        },
    },
}

M.EventCategoriesMap = {
    type = "structure",
    id = "EventCategoriesMap",
    members = {
        SourceType = {
            type = "string",
        },
        Events = {
            type = "list",
            member = M.EventInfoMap,
        },
    },
}

M.DescribeEventCategoriesOutput = {
    type = "structure",
    id = "DescribeEventCategoriesOutput",
    members = {
        EventCategoriesMapList = {
            type = "list",
            member = M.EventCategoriesMap,
        },
    },
}

M.SourceType = {
    cluster = "cluster",
    cluster_parameter_group = "cluster-parameter-group",
    cluster_security_group = "cluster-security-group",
    cluster_snapshot = "cluster-snapshot",
    scheduled_action = "scheduled-action",
}

M.DescribeEventsInput = {
    type = "structure",
    id = "DescribeEventsInput",
    members = {
        SourceIdentifier = {
            type = "string",
        },
        SourceType = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Duration = {
            type = "integer",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.Event = {
    type = "structure",
    id = "Event",
    members = {
        SourceIdentifier = {
            type = "string",
        },
        SourceType = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        EventCategories = {
            type = "list",
            member = { type = "string" },
        },
        Severity = {
            type = "string",
        },
        Date = {
            type = "timestamp",
        },
        EventId = {
            type = "string",
        },
    },
}

M.DescribeEventsOutput = {
    type = "structure",
    id = "DescribeEventsOutput",
    members = {
        Marker = {
            type = "string",
        },
        Events = {
            type = "list",
            member = M.Event,
        },
    },
}

M.DescribeEventSubscriptionsInput = {
    type = "structure",
    id = "DescribeEventSubscriptionsInput",
    members = {
        SubscriptionName = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
        },
        TagValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeEventSubscriptionsOutput = {
    type = "structure",
    id = "DescribeEventSubscriptionsOutput",
    members = {
        Marker = {
            type = "string",
        },
        EventSubscriptionsList = {
            type = "list",
            member = M.EventSubscription,
        },
    },
}

M.DescribeHsmClientCertificatesInput = {
    type = "structure",
    id = "DescribeHsmClientCertificatesInput",
    members = {
        HsmClientCertificateIdentifier = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
        },
        TagValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeHsmClientCertificatesOutput = {
    type = "structure",
    id = "DescribeHsmClientCertificatesOutput",
    members = {
        Marker = {
            type = "string",
        },
        HsmClientCertificates = {
            type = "list",
            member = M.HsmClientCertificate,
        },
    },
}

M.DescribeHsmConfigurationsInput = {
    type = "structure",
    id = "DescribeHsmConfigurationsInput",
    members = {
        HsmConfigurationIdentifier = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
        },
        TagValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeHsmConfigurationsOutput = {
    type = "structure",
    id = "DescribeHsmConfigurationsOutput",
    members = {
        Marker = {
            type = "string",
        },
        HsmConfigurations = {
            type = "list",
            member = M.HsmConfiguration,
        },
    },
}

M.DescribeInboundIntegrationsInput = {
    type = "structure",
    id = "DescribeInboundIntegrationsInput",
    members = {
        IntegrationArn = {
            type = "string",
        },
        TargetArn = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.InboundIntegration = {
    type = "structure",
    id = "InboundIntegration",
    members = {
        IntegrationArn = {
            type = "string",
        },
        SourceArn = {
            type = "string",
        },
        TargetArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Errors = {
            type = "list",
            member = M.IntegrationError,
        },
        CreateTime = {
            type = "timestamp",
        },
    },
}

M.DescribeInboundIntegrationsOutput = {
    type = "structure",
    id = "DescribeInboundIntegrationsOutput",
    members = {
        Marker = {
            type = "string",
        },
        InboundIntegrations = {
            type = "list",
            member = M.InboundIntegration,
        },
    },
}

M.DescribeIntegrationsFilterName = {
    INTEGRATION_ARN = "integration-arn",
    SOURCE_ARN = "source-arn",
    SOURCE_TYPES = "source-types",
    STATUS = "status",
}

M.DescribeIntegrationsFilter = {
    type = "structure",
    id = "DescribeIntegrationsFilter",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeIntegrationsInput = {
    type = "structure",
    id = "DescribeIntegrationsInput",
    members = {
        IntegrationArn = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.DescribeIntegrationsFilter,
        },
    },
}

M.Integration = {
    type = "structure",
    id = "Integration",
    members = {
        IntegrationArn = {
            type = "string",
        },
        IntegrationName = {
            type = "string",
        },
        SourceArn = {
            type = "string",
        },
        TargetArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Errors = {
            type = "list",
            member = M.IntegrationError,
        },
        CreateTime = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        KMSKeyId = {
            type = "string",
        },
        AdditionalEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DescribeIntegrationsOutput = {
    type = "structure",
    id = "DescribeIntegrationsOutput",
    members = {
        Marker = {
            type = "string",
        },
        Integrations = {
            type = "list",
            member = M.Integration,
        },
    },
}

M.DescribeLoggingStatusInput = {
    type = "structure",
    id = "DescribeLoggingStatusInput",
    members = {
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LogDestinationType = {
    S3 = "s3",
    CLOUDWATCH = "cloudwatch",
}

M.DescribeLoggingStatusOutput = {
    type = "structure",
    id = "DescribeLoggingStatusOutput",
    members = {
        LoggingEnabled = {
            type = "boolean",
        },
        BucketName = {
            type = "string",
        },
        S3KeyPrefix = {
            type = "string",
        },
        LastSuccessfulDeliveryTime = {
            type = "timestamp",
        },
        LastFailureTime = {
            type = "timestamp",
        },
        LastFailureMessage = {
            type = "string",
        },
        LogDestinationType = {
            type = "string",
        },
        LogExports = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.NodeConfigurationOptionsFilterName = {
    NODE_TYPE = "NodeType",
    NUM_NODES = "NumberOfNodes",
    ESTIMATED_DISK_UTILIZATION_PERCENT = "EstimatedDiskUtilizationPercent",
    MODE = "Mode",
}

M.OperatorType = {
    EQ = "eq",
    LT = "lt",
    GT = "gt",
    LE = "le",
    GE = "ge",
    IN = "in",
    BETWEEN = "between",
}

M.NodeConfigurationOptionsFilter = {
    type = "structure",
    id = "NodeConfigurationOptionsFilter",
    members = {
        Name = {
            type = "string",
        },
        Operator = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                xml_name = "Value",
            },
        },
    },
}

M.DescribeNodeConfigurationOptionsInput = {
    type = "structure",
    id = "DescribeNodeConfigurationOptionsInput",
    members = {
        ActionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterIdentifier = {
            type = "string",
        },
        SnapshotIdentifier = {
            type = "string",
        },
        SnapshotArn = {
            type = "string",
        },
        OwnerAccount = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.NodeConfigurationOptionsFilter,
            traits = {
                xml_name = "Filter",
            },
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
    },
}

M.Mode = {
    STANDARD = "standard",
    HIGH_PERFORMANCE = "high-performance",
}

M.NodeConfigurationOption = {
    type = "structure",
    id = "NodeConfigurationOption",
    members = {
        NodeType = {
            type = "string",
        },
        NumberOfNodes = {
            type = "integer",
        },
        EstimatedDiskUtilizationPercent = {
            type = "double",
        },
        Mode = {
            type = "string",
        },
    },
}

M.DescribeNodeConfigurationOptionsOutput = {
    type = "structure",
    id = "DescribeNodeConfigurationOptionsOutput",
    members = {
        NodeConfigurationOptionList = {
            type = "list",
            member = M.NodeConfigurationOption,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeOrderableClusterOptionsInput = {
    type = "structure",
    id = "DescribeOrderableClusterOptionsInput",
    members = {
        ClusterVersion = {
            type = "string",
        },
        NodeType = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.OrderableClusterOption = {
    type = "structure",
    id = "OrderableClusterOption",
    members = {
        ClusterVersion = {
            type = "string",
        },
        ClusterType = {
            type = "string",
        },
        NodeType = {
            type = "string",
        },
        AvailabilityZones = {
            type = "list",
            member = M.AvailabilityZone,
        },
    },
}

M.DescribeOrderableClusterOptionsOutput = {
    type = "structure",
    id = "DescribeOrderableClusterOptionsOutput",
    members = {
        OrderableClusterOptions = {
            type = "list",
            member = M.OrderableClusterOption,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribePartnersInput = {
    type = "structure",
    id = "DescribePartnersInput",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatabaseName = {
            type = "string",
        },
        PartnerName = {
            type = "string",
        },
    },
}

M.PartnerIntegrationStatus = {
    Active = "Active",
    Inactive = "Inactive",
    RuntimeFailure = "RuntimeFailure",
    ConnectionFailure = "ConnectionFailure",
}

M.PartnerIntegrationInfo = {
    type = "structure",
    id = "PartnerIntegrationInfo",
    members = {
        DatabaseName = {
            type = "string",
        },
        PartnerName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.DescribePartnersOutput = {
    type = "structure",
    id = "DescribePartnersOutput",
    members = {
        PartnerIntegrationInfoList = {
            type = "list",
            member = M.PartnerIntegrationInfo,
        },
    },
}

M.DescribeRedshiftIdcApplicationsInput = {
    type = "structure",
    id = "DescribeRedshiftIdcApplicationsInput",
    members = {
        RedshiftIdcApplicationArn = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeRedshiftIdcApplicationsOutput = {
    type = "structure",
    id = "DescribeRedshiftIdcApplicationsOutput",
    members = {
        RedshiftIdcApplications = {
            type = "list",
            member = M.RedshiftIdcApplication,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeReservedNodeExchangeStatusInput = {
    type = "structure",
    id = "DescribeReservedNodeExchangeStatusInput",
    members = {
        ReservedNodeId = {
            type = "string",
        },
        ReservedNodeExchangeRequestId = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeReservedNodeExchangeStatusOutput = {
    type = "structure",
    id = "DescribeReservedNodeExchangeStatusOutput",
    members = {
        ReservedNodeExchangeStatusDetails = {
            type = "list",
            member = M.ReservedNodeExchangeStatus,
        },
        Marker = {
            type = "string",
        },
    },
}

M.ReservedNodeExchangeNotFoundFault = {
    type = "structure",
    id = "ReservedNodeExchangeNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeReservedNodeOfferingsInput = {
    type = "structure",
    id = "DescribeReservedNodeOfferingsInput",
    members = {
        ReservedNodeOfferingId = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.ReservedNodeOffering = {
    type = "structure",
    id = "ReservedNodeOffering",
    members = {
        ReservedNodeOfferingId = {
            type = "string",
        },
        NodeType = {
            type = "string",
        },
        Duration = {
            type = "integer",
        },
        FixedPrice = {
            type = "double",
        },
        UsagePrice = {
            type = "double",
        },
        CurrencyCode = {
            type = "string",
        },
        OfferingType = {
            type = "string",
        },
        RecurringCharges = {
            type = "list",
            member = M.RecurringCharge,
        },
        ReservedNodeOfferingType = {
            type = "string",
        },
    },
}

M.DescribeReservedNodeOfferingsOutput = {
    type = "structure",
    id = "DescribeReservedNodeOfferingsOutput",
    members = {
        Marker = {
            type = "string",
        },
        ReservedNodeOfferings = {
            type = "list",
            member = M.ReservedNodeOffering,
        },
    },
}

M.DescribeReservedNodesInput = {
    type = "structure",
    id = "DescribeReservedNodesInput",
    members = {
        ReservedNodeId = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeReservedNodesOutput = {
    type = "structure",
    id = "DescribeReservedNodesOutput",
    members = {
        Marker = {
            type = "string",
        },
        ReservedNodes = {
            type = "list",
            member = M.ReservedNode,
        },
    },
}

M.DescribeResizeInput = {
    type = "structure",
    id = "DescribeResizeInput",
    members = {
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeResizeOutput = {
    type = "structure",
    id = "DescribeResizeOutput",
    members = {
        TargetNodeType = {
            type = "string",
        },
        TargetNumberOfNodes = {
            type = "integer",
        },
        TargetClusterType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ImportTablesCompleted = {
            type = "list",
            member = { type = "string" },
        },
        ImportTablesInProgress = {
            type = "list",
            member = { type = "string" },
        },
        ImportTablesNotStarted = {
            type = "list",
            member = { type = "string" },
        },
        AvgResizeRateInMegaBytesPerSecond = {
            type = "double",
        },
        TotalResizeDataInMegaBytes = {
            type = "long",
        },
        ProgressInMegaBytes = {
            type = "long",
        },
        ElapsedTimeInSeconds = {
            type = "long",
        },
        EstimatedTimeToCompletionInSeconds = {
            type = "long",
        },
        ResizeType = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        TargetEncryptionType = {
            type = "string",
        },
        DataTransferProgressPercent = {
            type = "double",
        },
    },
}

M.ScheduledActionFilterName = {
    CLUSTER_IDENTIFIER = "cluster-identifier",
    IAM_ROLE = "iam-role",
}

M.ScheduledActionFilter = {
    type = "structure",
    id = "ScheduledActionFilter",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ScheduledActionTypeValues = {
    RESIZE_CLUSTER = "ResizeCluster",
    PAUSE_CLUSTER = "PauseCluster",
    RESUME_CLUSTER = "ResumeCluster",
}

M.DescribeScheduledActionsInput = {
    type = "structure",
    id = "DescribeScheduledActionsInput",
    members = {
        ScheduledActionName = {
            type = "string",
        },
        TargetActionType = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Active = {
            type = "boolean",
        },
        Filters = {
            type = "list",
            member = M.ScheduledActionFilter,
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
    },
}

M.ScheduledAction = {
    type = "structure",
    id = "ScheduledAction",
    members = {
        ScheduledActionName = {
            type = "string",
        },
        TargetAction = M.ScheduledActionType,
        Schedule = {
            type = "string",
        },
        IamRole = {
            type = "string",
        },
        ScheduledActionDescription = {
            type = "string",
        },
        State = {
            type = "string",
        },
        NextInvocations = {
            type = "list",
            member = { type = "timestamp" },
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
    },
}

M.DescribeScheduledActionsOutput = {
    type = "structure",
    id = "DescribeScheduledActionsOutput",
    members = {
        Marker = {
            type = "string",
        },
        ScheduledActions = {
            type = "list",
            member = M.ScheduledAction,
        },
    },
}

M.DescribeSnapshotCopyGrantsInput = {
    type = "structure",
    id = "DescribeSnapshotCopyGrantsInput",
    members = {
        SnapshotCopyGrantName = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
        },
        TagValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeSnapshotCopyGrantsOutput = {
    type = "structure",
    id = "DescribeSnapshotCopyGrantsOutput",
    members = {
        Marker = {
            type = "string",
        },
        SnapshotCopyGrants = {
            type = "list",
            member = M.SnapshotCopyGrant,
        },
    },
}

M.DescribeSnapshotSchedulesInput = {
    type = "structure",
    id = "DescribeSnapshotSchedulesInput",
    members = {
        ClusterIdentifier = {
            type = "string",
        },
        ScheduleIdentifier = {
            type = "string",
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
        },
        TagValues = {
            type = "list",
            member = { type = "string" },
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
    },
}

M.SnapshotSchedule = {
    type = "structure",
    id = "SnapshotSchedule",
    members = {
        ScheduleDefinitions = {
            type = "list",
            member = { type = "string" },
        },
        ScheduleIdentifier = {
            type = "string",
        },
        ScheduleDescription = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        NextInvocations = {
            type = "list",
            member = { type = "timestamp" },
        },
        AssociatedClusterCount = {
            type = "integer",
        },
        AssociatedClusters = {
            type = "list",
            member = M.ClusterAssociatedToSchedule,
        },
    },
}

M.DescribeSnapshotSchedulesOutput = {
    type = "structure",
    id = "DescribeSnapshotSchedulesOutput",
    members = {
        SnapshotSchedules = {
            type = "list",
            member = M.SnapshotSchedule,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeStorageInput = {
    type = "structure",
    id = "DescribeStorageInput",
}

M.DescribeStorageOutput = {
    type = "structure",
    id = "DescribeStorageOutput",
    members = {
        TotalBackupSizeInMegaBytes = {
            type = "double",
        },
        TotalProvisionedStorageInMegaBytes = {
            type = "double",
        },
    },
}

M.DescribeTableRestoreStatusInput = {
    type = "structure",
    id = "DescribeTableRestoreStatusInput",
    members = {
        ClusterIdentifier = {
            type = "string",
        },
        TableRestoreRequestId = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.TableRestoreStatusType = {
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    CANCELED = "CANCELED",
}

M.TableRestoreStatus = {
    type = "structure",
    id = "TableRestoreStatus",
    members = {
        TableRestoreRequestId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        RequestTime = {
            type = "timestamp",
        },
        ProgressInMegaBytes = {
            type = "long",
        },
        TotalDataInMegaBytes = {
            type = "long",
        },
        ClusterIdentifier = {
            type = "string",
        },
        SnapshotIdentifier = {
            type = "string",
        },
        SourceDatabaseName = {
            type = "string",
        },
        SourceSchemaName = {
            type = "string",
        },
        SourceTableName = {
            type = "string",
        },
        TargetDatabaseName = {
            type = "string",
        },
        TargetSchemaName = {
            type = "string",
        },
        NewTableName = {
            type = "string",
        },
    },
}

M.DescribeTableRestoreStatusOutput = {
    type = "structure",
    id = "DescribeTableRestoreStatusOutput",
    members = {
        TableRestoreStatusDetails = {
            type = "list",
            member = M.TableRestoreStatus,
        },
        Marker = {
            type = "string",
        },
    },
}

M.TableRestoreNotFoundFault = {
    type = "structure",
    id = "TableRestoreNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeTagsInput = {
    type = "structure",
    id = "DescribeTagsInput",
    members = {
        ResourceName = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
        },
        TagValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.TaggedResource = {
    type = "structure",
    id = "TaggedResource",
    members = {
        Tag = M.Tag,
        ResourceName = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.DescribeTagsOutput = {
    type = "structure",
    id = "DescribeTagsOutput",
    members = {
        TaggedResources = {
            type = "list",
            member = M.TaggedResource,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeUsageLimitsInput = {
    type = "structure",
    id = "DescribeUsageLimitsInput",
    members = {
        UsageLimitId = {
            type = "string",
        },
        ClusterIdentifier = {
            type = "string",
        },
        FeatureType = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
        },
        TagValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UsageLimit = {
    type = "structure",
    id = "UsageLimit",
    members = {
        UsageLimitId = {
            type = "string",
        },
        ClusterIdentifier = {
            type = "string",
        },
        FeatureType = {
            type = "string",
        },
        LimitType = {
            type = "string",
        },
        Amount = {
            type = "long",
        },
        Period = {
            type = "string",
        },
        BreachAction = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DescribeUsageLimitsOutput = {
    type = "structure",
    id = "DescribeUsageLimitsOutput",
    members = {
        UsageLimits = {
            type = "list",
            member = M.UsageLimit,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DisableLoggingInput = {
    type = "structure",
    id = "DisableLoggingInput",
    members = {
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisableLoggingOutput = {
    type = "structure",
    id = "DisableLoggingOutput",
    members = {
        LoggingEnabled = {
            type = "boolean",
        },
        BucketName = {
            type = "string",
        },
        S3KeyPrefix = {
            type = "string",
        },
        LastSuccessfulDeliveryTime = {
            type = "timestamp",
        },
        LastFailureTime = {
            type = "timestamp",
        },
        LastFailureMessage = {
            type = "string",
        },
        LogDestinationType = {
            type = "string",
        },
        LogExports = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DisableSnapshotCopyInput = {
    type = "structure",
    id = "DisableSnapshotCopyInput",
    members = {
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisableSnapshotCopyOutput = {
    type = "structure",
    id = "DisableSnapshotCopyOutput",
    members = {
        Cluster = M.Cluster,
    },
}

M.SnapshotCopyAlreadyDisabledFault = {
    type = "structure",
    id = "SnapshotCopyAlreadyDisabledFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DisassociateDataShareConsumerInput = {
    type = "structure",
    id = "DisassociateDataShareConsumerInput",
    members = {
        DataShareArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisassociateEntireAccount = {
            type = "boolean",
        },
        ConsumerArn = {
            type = "string",
        },
        ConsumerRegion = {
            type = "string",
        },
    },
}

M.DisassociateDataShareConsumerOutput = {
    type = "structure",
    id = "DisassociateDataShareConsumerOutput",
    members = {
        DataShareArn = {
            type = "string",
        },
        ProducerArn = {
            type = "string",
        },
        AllowPubliclyAccessibleConsumers = {
            type = "boolean",
        },
        DataShareAssociations = {
            type = "list",
            member = M.DataShareAssociation,
        },
        ManagedBy = {
            type = "string",
        },
        DataShareType = {
            type = "string",
        },
    },
}

M.EnableLoggingInput = {
    type = "structure",
    id = "EnableLoggingInput",
    members = {
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BucketName = {
            type = "string",
        },
        S3KeyPrefix = {
            type = "string",
        },
        LogDestinationType = {
            type = "string",
        },
        LogExports = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EnableLoggingOutput = {
    type = "structure",
    id = "EnableLoggingOutput",
    members = {
        LoggingEnabled = {
            type = "boolean",
        },
        BucketName = {
            type = "string",
        },
        S3KeyPrefix = {
            type = "string",
        },
        LastSuccessfulDeliveryTime = {
            type = "timestamp",
        },
        LastFailureTime = {
            type = "timestamp",
        },
        LastFailureMessage = {
            type = "string",
        },
        LogDestinationType = {
            type = "string",
        },
        LogExports = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.InsufficientS3BucketPolicyFault = {
    type = "structure",
    id = "InsufficientS3BucketPolicyFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidS3BucketNameFault = {
    type = "structure",
    id = "InvalidS3BucketNameFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidS3KeyPrefixFault = {
    type = "structure",
    id = "InvalidS3KeyPrefixFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EnableSnapshotCopyInput = {
    type = "structure",
    id = "EnableSnapshotCopyInput",
    members = {
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetentionPeriod = {
            type = "integer",
        },
        SnapshotCopyGrantName = {
            type = "string",
        },
        ManualSnapshotRetentionPeriod = {
            type = "integer",
        },
    },
}

M.EnableSnapshotCopyOutput = {
    type = "structure",
    id = "EnableSnapshotCopyOutput",
    members = {
        Cluster = M.Cluster,
    },
}

M.IncompatibleOrderableOptions = {
    type = "structure",
    id = "IncompatibleOrderableOptions",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SnapshotCopyAlreadyEnabledFault = {
    type = "structure",
    id = "SnapshotCopyAlreadyEnabledFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnknownSnapshotCopyRegionFault = {
    type = "structure",
    id = "UnknownSnapshotCopyRegionFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EndpointAuthorizationNotFoundFault = {
    type = "structure",
    id = "EndpointAuthorizationNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.FailoverPrimaryComputeInput = {
    type = "structure",
    id = "FailoverPrimaryComputeInput",
    members = {
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FailoverPrimaryComputeOutput = {
    type = "structure",
    id = "FailoverPrimaryComputeOutput",
    members = {
        Cluster = M.Cluster,
    },
}

M.GetClusterCredentialsInput = {
    type = "structure",
    id = "GetClusterCredentialsInput",
    members = {
        DbUser = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DbName = {
            type = "string",
        },
        ClusterIdentifier = {
            type = "string",
        },
        DurationSeconds = {
            type = "integer",
        },
        AutoCreate = {
            type = "boolean",
        },
        DbGroups = {
            type = "list",
            member = { type = "string" },
        },
        CustomDomainName = {
            type = "string",
        },
    },
}

M.GetClusterCredentialsOutput = {
    type = "structure",
    id = "GetClusterCredentialsOutput",
    members = {
        DbUser = {
            type = "string",
        },
        DbPassword = {
            type = "string",
        },
        Expiration = {
            type = "timestamp",
        },
    },
}

M.GetClusterCredentialsWithIAMInput = {
    type = "structure",
    id = "GetClusterCredentialsWithIAMInput",
    members = {
        DbName = {
            type = "string",
        },
        ClusterIdentifier = {
            type = "string",
        },
        DurationSeconds = {
            type = "integer",
        },
        CustomDomainName = {
            type = "string",
        },
    },
}

M.GetClusterCredentialsWithIAMOutput = {
    type = "structure",
    id = "GetClusterCredentialsWithIAMOutput",
    members = {
        DbUser = {
            type = "string",
        },
        DbPassword = {
            type = "string",
        },
        Expiration = {
            type = "timestamp",
        },
        NextRefreshTime = {
            type = "timestamp",
        },
    },
}

M.GetIdentityCenterAuthTokenInput = {
    type = "structure",
    id = "GetIdentityCenterAuthTokenInput",
    members = {
        ClusterIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetIdentityCenterAuthTokenOutput = {
    type = "structure",
    id = "GetIdentityCenterAuthTokenOutput",
    members = {
        Token = {
            type = "string",
        },
        ExpirationTime = {
            type = "timestamp",
        },
    },
}

M.RedshiftInvalidParameterFault = {
    type = "structure",
    id = "RedshiftInvalidParameterFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReservedNodeExchangeActionType = {
    RESTORE_CLUSTER = "restore-cluster",
    RESIZE_CLUSTER = "resize-cluster",
}

M.GetReservedNodeExchangeConfigurationOptionsInput = {
    type = "structure",
    id = "GetReservedNodeExchangeConfigurationOptionsInput",
    members = {
        ActionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterIdentifier = {
            type = "string",
        },
        SnapshotIdentifier = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.ReservedNodeConfigurationOption = {
    type = "structure",
    id = "ReservedNodeConfigurationOption",
    members = {
        SourceReservedNode = M.ReservedNode,
        TargetReservedNodeCount = {
            type = "integer",
        },
        TargetReservedNodeOffering = M.ReservedNodeOffering,
    },
}

M.GetReservedNodeExchangeConfigurationOptionsOutput = {
    type = "structure",
    id = "GetReservedNodeExchangeConfigurationOptionsOutput",
    members = {
        Marker = {
            type = "string",
        },
        ReservedNodeConfigurationOptionList = {
            type = "list",
            member = M.ReservedNodeConfigurationOption,
        },
    },
}

M.GetReservedNodeExchangeOfferingsInput = {
    type = "structure",
    id = "GetReservedNodeExchangeOfferingsInput",
    members = {
        ReservedNodeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.GetReservedNodeExchangeOfferingsOutput = {
    type = "structure",
    id = "GetReservedNodeExchangeOfferingsOutput",
    members = {
        Marker = {
            type = "string",
        },
        ReservedNodeOfferings = {
            type = "list",
            member = M.ReservedNodeOffering,
        },
    },
}

M.GetResourcePolicyInput = {
    type = "structure",
    id = "GetResourcePolicyInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourcePolicy = {
    type = "structure",
    id = "ResourcePolicy",
    members = {
        ResourceArn = {
            type = "string",
        },
        Policy = {
            type = "string",
        },
    },
}

M.GetResourcePolicyOutput = {
    type = "structure",
    id = "GetResourcePolicyOutput",
    members = {
        ResourcePolicy = M.ResourcePolicy,
    },
}

M.InvalidPolicyFault = {
    type = "structure",
    id = "InvalidPolicyFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ImpactRankingType = {
    HIGH = "HIGH",
    MEDIUM = "MEDIUM",
    LOW = "LOW",
}

M.InProgressTableRestoreQuotaExceededFault = {
    type = "structure",
    id = "InProgressTableRestoreQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRestoreFault = {
    type = "structure",
    id = "InvalidRestoreFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTableRestoreArgumentFault = {
    type = "structure",
    id = "InvalidTableRestoreArgumentFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LakehouseIdcRegistration = {
    ASSOCIATE = "Associate",
    DISASSOCIATE = "Disassociate",
}

M.LakehouseRegistration = {
    REGISTER = "Register",
    DEREGISTER = "Deregister",
}

M.ListRecommendationsInput = {
    type = "structure",
    id = "ListRecommendationsInput",
    members = {
        ClusterIdentifier = {
            type = "string",
        },
        NamespaceArn = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.RecommendedActionType = {
    SQL = "SQL",
    CLI = "CLI",
}

M.RecommendedAction = {
    type = "structure",
    id = "RecommendedAction",
    members = {
        Text = {
            type = "string",
        },
        Database = {
            type = "string",
        },
        Command = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.ReferenceLink = {
    type = "structure",
    id = "ReferenceLink",
    members = {
        Text = {
            type = "string",
        },
        Link = {
            type = "string",
        },
    },
}

M.Recommendation = {
    type = "structure",
    id = "Recommendation",
    members = {
        Id = {
            type = "string",
        },
        ClusterIdentifier = {
            type = "string",
        },
        NamespaceArn = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        RecommendationType = {
            type = "string",
        },
        Title = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Observation = {
            type = "string",
        },
        ImpactRanking = {
            type = "string",
        },
        RecommendationText = {
            type = "string",
        },
        RecommendedActions = {
            type = "list",
            member = M.RecommendedAction,
        },
        ReferenceLinks = {
            type = "list",
            member = M.ReferenceLink,
        },
    },
}

M.ListRecommendationsOutput = {
    type = "structure",
    id = "ListRecommendationsOutput",
    members = {
        Recommendations = {
            type = "list",
            member = M.Recommendation,
        },
        Marker = {
            type = "string",
        },
    },
}

M.ModifyAquaConfigurationInput = {
    type = "structure",
    id = "ModifyAquaConfigurationInput",
    members = {
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AquaConfigurationStatus = {
            type = "string",
        },
    },
}

M.ModifyAquaConfigurationOutput = {
    type = "structure",
    id = "ModifyAquaConfigurationOutput",
    members = {
        AquaConfiguration = M.AquaConfiguration,
    },
}

M.ModifyAuthenticationProfileInput = {
    type = "structure",
    id = "ModifyAuthenticationProfileInput",
    members = {
        AuthenticationProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthenticationProfileContent = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ModifyAuthenticationProfileOutput = {
    type = "structure",
    id = "ModifyAuthenticationProfileOutput",
    members = {
        AuthenticationProfileName = {
            type = "string",
        },
        AuthenticationProfileContent = {
            type = "string",
        },
    },
}

M.ModifyClusterInput = {
    type = "structure",
    id = "ModifyClusterInput",
    members = {
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterType = {
            type = "string",
        },
        NodeType = {
            type = "string",
        },
        NumberOfNodes = {
            type = "integer",
        },
        ClusterSecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        VpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        MasterUserPassword = {
            type = "string",
        },
        ClusterParameterGroupName = {
            type = "string",
        },
        AutomatedSnapshotRetentionPeriod = {
            type = "integer",
        },
        ManualSnapshotRetentionPeriod = {
            type = "integer",
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        ClusterVersion = {
            type = "string",
        },
        AllowVersionUpgrade = {
            type = "boolean",
        },
        HsmClientCertificateIdentifier = {
            type = "string",
        },
        HsmConfigurationIdentifier = {
            type = "string",
        },
        NewClusterIdentifier = {
            type = "string",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        ElasticIp = {
            type = "string",
        },
        EnhancedVpcRouting = {
            type = "boolean",
        },
        MaintenanceTrackName = {
            type = "string",
        },
        Encrypted = {
            type = "boolean",
        },
        KmsKeyId = {
            type = "string",
        },
        AvailabilityZoneRelocation = {
            type = "boolean",
        },
        AvailabilityZone = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        ManageMasterPassword = {
            type = "boolean",
        },
        MasterPasswordSecretKmsKeyId = {
            type = "string",
        },
        IpAddressType = {
            type = "string",
        },
        MultiAZ = {
            type = "boolean",
        },
        ExtraComputeForAutomaticOptimization = {
            type = "boolean",
        },
    },
}

M.ModifyClusterOutput = {
    type = "structure",
    id = "ModifyClusterOutput",
    members = {
        Cluster = M.Cluster,
    },
}

M.TableLimitExceededFault = {
    type = "structure",
    id = "TableLimitExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnsupportedOptionFault = {
    type = "structure",
    id = "UnsupportedOptionFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ModifyClusterDbRevisionInput = {
    type = "structure",
    id = "ModifyClusterDbRevisionInput",
    members = {
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RevisionTarget = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ModifyClusterDbRevisionOutput = {
    type = "structure",
    id = "ModifyClusterDbRevisionOutput",
    members = {
        Cluster = M.Cluster,
    },
}

M.ModifyClusterIamRolesInput = {
    type = "structure",
    id = "ModifyClusterIamRolesInput",
    members = {
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AddIamRoles = {
            type = "list",
            member = { type = "string" },
        },
        RemoveIamRoles = {
            type = "list",
            member = { type = "string" },
        },
        DefaultIamRoleArn = {
            type = "string",
        },
    },
}

M.ModifyClusterIamRolesOutput = {
    type = "structure",
    id = "ModifyClusterIamRolesOutput",
    members = {
        Cluster = M.Cluster,
    },
}

M.ModifyClusterMaintenanceInput = {
    type = "structure",
    id = "ModifyClusterMaintenanceInput",
    members = {
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeferMaintenance = {
            type = "boolean",
        },
        DeferMaintenanceIdentifier = {
            type = "string",
        },
        DeferMaintenanceStartTime = {
            type = "timestamp",
        },
        DeferMaintenanceEndTime = {
            type = "timestamp",
        },
        DeferMaintenanceDuration = {
            type = "integer",
        },
    },
}

M.ModifyClusterMaintenanceOutput = {
    type = "structure",
    id = "ModifyClusterMaintenanceOutput",
    members = {
        Cluster = M.Cluster,
    },
}

M.ModifyClusterParameterGroupInput = {
    type = "structure",
    id = "ModifyClusterParameterGroupInput",
    members = {
        ParameterGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "list",
            member = M.Parameter,
            traits = {
                required = true,
            },
        },
    },
}

M.ModifyClusterParameterGroupOutput = {
    type = "structure",
    id = "ModifyClusterParameterGroupOutput",
    members = {
        ParameterGroupName = {
            type = "string",
        },
        ParameterGroupStatus = {
            type = "string",
        },
    },
}

M.ModifyClusterSnapshotInput = {
    type = "structure",
    id = "ModifyClusterSnapshotInput",
    members = {
        SnapshotIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ManualSnapshotRetentionPeriod = {
            type = "integer",
        },
        Force = {
            type = "boolean",
        },
    },
}

M.ModifyClusterSnapshotOutput = {
    type = "structure",
    id = "ModifyClusterSnapshotOutput",
    members = {
        Snapshot = M.Snapshot,
    },
}

M.ModifyClusterSnapshotScheduleInput = {
    type = "structure",
    id = "ModifyClusterSnapshotScheduleInput",
    members = {
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScheduleIdentifier = {
            type = "string",
        },
        DisassociateSchedule = {
            type = "boolean",
        },
    },
}

M.ModifyClusterSnapshotScheduleOutput = {
    type = "structure",
    id = "ModifyClusterSnapshotScheduleOutput",
}

M.ModifyClusterSubnetGroupInput = {
    type = "structure",
    id = "ModifyClusterSubnetGroupInput",
    members = {
        ClusterSubnetGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ModifyClusterSubnetGroupOutput = {
    type = "structure",
    id = "ModifyClusterSubnetGroupOutput",
    members = {
        ClusterSubnetGroup = M.ClusterSubnetGroup,
    },
}

M.SubnetAlreadyInUse = {
    type = "structure",
    id = "SubnetAlreadyInUse",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ModifyCustomDomainAssociationInput = {
    type = "structure",
    id = "ModifyCustomDomainAssociationInput",
    members = {
        CustomDomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CustomDomainCertificateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ModifyCustomDomainAssociationOutput = {
    type = "structure",
    id = "ModifyCustomDomainAssociationOutput",
    members = {
        CustomDomainName = {
            type = "string",
        },
        CustomDomainCertificateArn = {
            type = "string",
        },
        ClusterIdentifier = {
            type = "string",
        },
        CustomDomainCertExpiryTime = {
            type = "string",
        },
    },
}

M.ModifyEndpointAccessInput = {
    type = "structure",
    id = "ModifyEndpointAccessInput",
    members = {
        EndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ModifyEndpointAccessOutput = {
    type = "structure",
    id = "ModifyEndpointAccessOutput",
    members = {
        ClusterIdentifier = {
            type = "string",
        },
        ResourceOwner = {
            type = "string",
        },
        SubnetGroupName = {
            type = "string",
        },
        EndpointStatus = {
            type = "string",
        },
        EndpointName = {
            type = "string",
        },
        EndpointCreateTime = {
            type = "timestamp",
        },
        Port = {
            type = "integer",
        },
        Address = {
            type = "string",
        },
        VpcSecurityGroups = {
            type = "list",
            member = M.VpcSecurityGroupMembership,
        },
        VpcEndpoint = M.VpcEndpoint,
    },
}

M.ModifyEventSubscriptionInput = {
    type = "structure",
    id = "ModifyEventSubscriptionInput",
    members = {
        SubscriptionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnsTopicArn = {
            type = "string",
        },
        SourceType = {
            type = "string",
        },
        SourceIds = {
            type = "list",
            member = { type = "string" },
        },
        EventCategories = {
            type = "list",
            member = { type = "string" },
        },
        Severity = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
    },
}

M.ModifyEventSubscriptionOutput = {
    type = "structure",
    id = "ModifyEventSubscriptionOutput",
    members = {
        EventSubscription = M.EventSubscription,
    },
}

M.ModifyIntegrationInput = {
    type = "structure",
    id = "ModifyIntegrationInput",
    members = {
        IntegrationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        IntegrationName = {
            type = "string",
        },
    },
}

M.ModifyIntegrationOutput = {
    type = "structure",
    id = "ModifyIntegrationOutput",
    members = {
        IntegrationArn = {
            type = "string",
        },
        IntegrationName = {
            type = "string",
        },
        SourceArn = {
            type = "string",
        },
        TargetArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Errors = {
            type = "list",
            member = M.IntegrationError,
        },
        CreateTime = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        KMSKeyId = {
            type = "string",
        },
        AdditionalEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ModifyLakehouseConfigurationInput = {
    type = "structure",
    id = "ModifyLakehouseConfigurationInput",
    members = {
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LakehouseRegistration = {
            type = "string",
        },
        CatalogName = {
            type = "string",
        },
        LakehouseIdcRegistration = {
            type = "string",
        },
        LakehouseIdcApplicationArn = {
            type = "string",
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.ModifyLakehouseConfigurationOutput = {
    type = "structure",
    id = "ModifyLakehouseConfigurationOutput",
    members = {
        ClusterIdentifier = {
            type = "string",
        },
        LakehouseIdcApplicationArn = {
            type = "string",
        },
        LakehouseRegistrationStatus = {
            type = "string",
        },
        CatalogArn = {
            type = "string",
        },
    },
}

M.ModifyRedshiftIdcApplicationInput = {
    type = "structure",
    id = "ModifyRedshiftIdcApplicationInput",
    members = {
        RedshiftIdcApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityNamespace = {
            type = "string",
        },
        IamRoleArn = {
            type = "string",
        },
        IdcDisplayName = {
            type = "string",
        },
        AuthorizedTokenIssuerList = {
            type = "list",
            member = M.AuthorizedTokenIssuer,
        },
        ServiceIntegrations = {
            type = "list",
            member = M.ServiceIntegrationsUnion,
        },
    },
}

M.ModifyRedshiftIdcApplicationOutput = {
    type = "structure",
    id = "ModifyRedshiftIdcApplicationOutput",
    members = {
        RedshiftIdcApplication = M.RedshiftIdcApplication,
    },
}

M.ModifyScheduledActionInput = {
    type = "structure",
    id = "ModifyScheduledActionInput",
    members = {
        ScheduledActionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetAction = M.ScheduledActionType,
        Schedule = {
            type = "string",
        },
        IamRole = {
            type = "string",
        },
        ScheduledActionDescription = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Enable = {
            type = "boolean",
        },
    },
}

M.ModifyScheduledActionOutput = {
    type = "structure",
    id = "ModifyScheduledActionOutput",
    members = {
        ScheduledActionName = {
            type = "string",
        },
        TargetAction = M.ScheduledActionType,
        Schedule = {
            type = "string",
        },
        IamRole = {
            type = "string",
        },
        ScheduledActionDescription = {
            type = "string",
        },
        State = {
            type = "string",
        },
        NextInvocations = {
            type = "list",
            member = { type = "timestamp" },
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
    },
}

M.ModifySnapshotCopyRetentionPeriodInput = {
    type = "structure",
    id = "ModifySnapshotCopyRetentionPeriodInput",
    members = {
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetentionPeriod = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Manual = {
            type = "boolean",
        },
    },
}

M.ModifySnapshotCopyRetentionPeriodOutput = {
    type = "structure",
    id = "ModifySnapshotCopyRetentionPeriodOutput",
    members = {
        Cluster = M.Cluster,
    },
}

M.SnapshotCopyDisabledFault = {
    type = "structure",
    id = "SnapshotCopyDisabledFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ModifySnapshotScheduleInput = {
    type = "structure",
    id = "ModifySnapshotScheduleInput",
    members = {
        ScheduleIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScheduleDefinitions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ModifySnapshotScheduleOutput = {
    type = "structure",
    id = "ModifySnapshotScheduleOutput",
    members = {
        ScheduleDefinitions = {
            type = "list",
            member = { type = "string" },
        },
        ScheduleIdentifier = {
            type = "string",
        },
        ScheduleDescription = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        NextInvocations = {
            type = "list",
            member = { type = "timestamp" },
        },
        AssociatedClusterCount = {
            type = "integer",
        },
        AssociatedClusters = {
            type = "list",
            member = M.ClusterAssociatedToSchedule,
        },
    },
}

M.SnapshotScheduleUpdateInProgressFault = {
    type = "structure",
    id = "SnapshotScheduleUpdateInProgressFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ModifyUsageLimitInput = {
    type = "structure",
    id = "ModifyUsageLimitInput",
    members = {
        UsageLimitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Amount = {
            type = "long",
        },
        BreachAction = {
            type = "string",
        },
    },
}

M.ModifyUsageLimitOutput = {
    type = "structure",
    id = "ModifyUsageLimitOutput",
    members = {
        UsageLimitId = {
            type = "string",
        },
        ClusterIdentifier = {
            type = "string",
        },
        FeatureType = {
            type = "string",
        },
        LimitType = {
            type = "string",
        },
        Amount = {
            type = "long",
        },
        Period = {
            type = "string",
        },
        BreachAction = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PauseClusterInput = {
    type = "structure",
    id = "PauseClusterInput",
    members = {
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PauseClusterOutput = {
    type = "structure",
    id = "PauseClusterOutput",
    members = {
        Cluster = M.Cluster,
    },
}

M.PurchaseReservedNodeOfferingInput = {
    type = "structure",
    id = "PurchaseReservedNodeOfferingInput",
    members = {
        ReservedNodeOfferingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NodeCount = {
            type = "integer",
        },
    },
}

M.PurchaseReservedNodeOfferingOutput = {
    type = "structure",
    id = "PurchaseReservedNodeOfferingOutput",
    members = {
        ReservedNode = M.ReservedNode,
    },
}

M.ReservedNodeQuotaExceededFault = {
    type = "structure",
    id = "ReservedNodeQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    id = "PutResourcePolicyInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutResourcePolicyOutput = {
    type = "structure",
    id = "PutResourcePolicyOutput",
    members = {
        ResourcePolicy = M.ResourcePolicy,
    },
}

M.RebootClusterInput = {
    type = "structure",
    id = "RebootClusterInput",
    members = {
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RebootClusterOutput = {
    type = "structure",
    id = "RebootClusterOutput",
    members = {
        Cluster = M.Cluster,
    },
}

M.RegisterNamespaceInput = {
    type = "structure",
    id = "RegisterNamespaceInput",
    members = {
        NamespaceIdentifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NamespaceIdentifierUnion }),
        ConsumerIdentifiers = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterNamespaceOutput = {
    type = "structure",
    id = "RegisterNamespaceOutput",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.RejectDataShareInput = {
    type = "structure",
    id = "RejectDataShareInput",
    members = {
        DataShareArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RejectDataShareOutput = {
    type = "structure",
    id = "RejectDataShareOutput",
    members = {
        DataShareArn = {
            type = "string",
        },
        ProducerArn = {
            type = "string",
        },
        AllowPubliclyAccessibleConsumers = {
            type = "boolean",
        },
        DataShareAssociations = {
            type = "list",
            member = M.DataShareAssociation,
        },
        ManagedBy = {
            type = "string",
        },
        DataShareType = {
            type = "string",
        },
    },
}

M.ResetClusterParameterGroupInput = {
    type = "structure",
    id = "ResetClusterParameterGroupInput",
    members = {
        ParameterGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResetAllParameters = {
            type = "boolean",
        },
        Parameters = {
            type = "list",
            member = M.Parameter,
        },
    },
}

M.ResetClusterParameterGroupOutput = {
    type = "structure",
    id = "ResetClusterParameterGroupOutput",
    members = {
        ParameterGroupName = {
            type = "string",
        },
        ParameterGroupStatus = {
            type = "string",
        },
    },
}

M.ResizeClusterInput = {
    type = "structure",
    id = "ResizeClusterInput",
    members = {
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterType = {
            type = "string",
        },
        NodeType = {
            type = "string",
        },
        NumberOfNodes = {
            type = "integer",
        },
        Classic = {
            type = "boolean",
        },
        ReservedNodeId = {
            type = "string",
        },
        TargetReservedNodeOfferingId = {
            type = "string",
        },
    },
}

M.ResizeClusterOutput = {
    type = "structure",
    id = "ResizeClusterOutput",
    members = {
        Cluster = M.Cluster,
    },
}

M.RestoreFromClusterSnapshotInput = {
    type = "structure",
    id = "RestoreFromClusterSnapshotInput",
    members = {
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnapshotIdentifier = {
            type = "string",
        },
        SnapshotArn = {
            type = "string",
        },
        SnapshotClusterIdentifier = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        AvailabilityZone = {
            type = "string",
        },
        AllowVersionUpgrade = {
            type = "boolean",
        },
        ClusterSubnetGroupName = {
            type = "string",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        OwnerAccount = {
            type = "string",
        },
        HsmClientCertificateIdentifier = {
            type = "string",
        },
        HsmConfigurationIdentifier = {
            type = "string",
        },
        ElasticIp = {
            type = "string",
        },
        ClusterParameterGroupName = {
            type = "string",
        },
        ClusterSecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        VpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        AutomatedSnapshotRetentionPeriod = {
            type = "integer",
        },
        ManualSnapshotRetentionPeriod = {
            type = "integer",
        },
        KmsKeyId = {
            type = "string",
        },
        NodeType = {
            type = "string",
        },
        EnhancedVpcRouting = {
            type = "boolean",
        },
        AdditionalInfo = {
            type = "string",
        },
        IamRoles = {
            type = "list",
            member = { type = "string" },
        },
        MaintenanceTrackName = {
            type = "string",
        },
        SnapshotScheduleIdentifier = {
            type = "string",
        },
        NumberOfNodes = {
            type = "integer",
        },
        AvailabilityZoneRelocation = {
            type = "boolean",
        },
        AquaConfigurationStatus = {
            type = "string",
        },
        DefaultIamRoleArn = {
            type = "string",
        },
        ReservedNodeId = {
            type = "string",
        },
        TargetReservedNodeOfferingId = {
            type = "string",
        },
        Encrypted = {
            type = "boolean",
        },
        ManageMasterPassword = {
            type = "boolean",
        },
        MasterPasswordSecretKmsKeyId = {
            type = "string",
        },
        IpAddressType = {
            type = "string",
        },
        MultiAZ = {
            type = "boolean",
        },
        CatalogName = {
            type = "string",
        },
        RedshiftIdcApplicationArn = {
            type = "string",
        },
    },
}

M.RestoreFromClusterSnapshotOutput = {
    type = "structure",
    id = "RestoreFromClusterSnapshotOutput",
    members = {
        Cluster = M.Cluster,
    },
}

M.RestoreTableFromClusterSnapshotInput = {
    type = "structure",
    id = "RestoreTableFromClusterSnapshotInput",
    members = {
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnapshotIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceDatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceSchemaName = {
            type = "string",
        },
        SourceTableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetDatabaseName = {
            type = "string",
        },
        TargetSchemaName = {
            type = "string",
        },
        NewTableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EnableCaseSensitiveIdentifier = {
            type = "boolean",
        },
    },
}

M.RestoreTableFromClusterSnapshotOutput = {
    type = "structure",
    id = "RestoreTableFromClusterSnapshotOutput",
    members = {
        TableRestoreStatus = M.TableRestoreStatus,
    },
}

M.ResumeClusterInput = {
    type = "structure",
    id = "ResumeClusterInput",
    members = {
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResumeClusterOutput = {
    type = "structure",
    id = "ResumeClusterOutput",
    members = {
        Cluster = M.Cluster,
    },
}

M.RevokeClusterSecurityGroupIngressInput = {
    type = "structure",
    id = "RevokeClusterSecurityGroupIngressInput",
    members = {
        ClusterSecurityGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CIDRIP = {
            type = "string",
        },
        EC2SecurityGroupName = {
            type = "string",
        },
        EC2SecurityGroupOwnerId = {
            type = "string",
        },
    },
}

M.RevokeClusterSecurityGroupIngressOutput = {
    type = "structure",
    id = "RevokeClusterSecurityGroupIngressOutput",
    members = {
        ClusterSecurityGroup = M.ClusterSecurityGroup,
    },
}

M.RevokeEndpointAccessInput = {
    type = "structure",
    id = "RevokeEndpointAccessInput",
    members = {
        ClusterIdentifier = {
            type = "string",
        },
        Account = {
            type = "string",
        },
        VpcIds = {
            type = "list",
            member = { type = "string" },
        },
        Force = {
            type = "boolean",
        },
    },
}

M.RevokeEndpointAccessOutput = {
    type = "structure",
    id = "RevokeEndpointAccessOutput",
    members = {
        Grantor = {
            type = "string",
        },
        Grantee = {
            type = "string",
        },
        ClusterIdentifier = {
            type = "string",
        },
        AuthorizeTime = {
            type = "timestamp",
        },
        ClusterStatus = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        AllowedAllVPCs = {
            type = "boolean",
        },
        AllowedVPCs = {
            type = "list",
            member = { type = "string" },
        },
        EndpointCount = {
            type = "integer",
        },
    },
}

M.RevokeSnapshotAccessInput = {
    type = "structure",
    id = "RevokeSnapshotAccessInput",
    members = {
        SnapshotIdentifier = {
            type = "string",
        },
        SnapshotArn = {
            type = "string",
        },
        SnapshotClusterIdentifier = {
            type = "string",
        },
        AccountWithRestoreAccess = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RevokeSnapshotAccessOutput = {
    type = "structure",
    id = "RevokeSnapshotAccessOutput",
    members = {
        Snapshot = M.Snapshot,
    },
}

M.RotateEncryptionKeyInput = {
    type = "structure",
    id = "RotateEncryptionKeyInput",
    members = {
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RotateEncryptionKeyOutput = {
    type = "structure",
    id = "RotateEncryptionKeyOutput",
    members = {
        Cluster = M.Cluster,
    },
}

M.UpdatePartnerStatusInput = {
    type = "structure",
    id = "UpdatePartnerStatusInput",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PartnerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StatusMessage = {
            type = "string",
        },
    },
}

M.UpdatePartnerStatusOutput = {
    type = "structure",
    id = "UpdatePartnerStatusOutput",
    members = {
        DatabaseName = {
            type = "string",
        },
        PartnerName = {
            type = "string",
        },
    },
}

return M
