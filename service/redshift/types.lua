local M = {}

M.AcceptReservedNodeExchangeInput = {
    type = "structure",
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
    members = {
        ExchangedReservedNode = M.ReservedNode,
    },
}

M.DependentServiceUnavailableFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidReservedNodeStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReservedNodeAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReservedNodeAlreadyMigratedFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReservedNodeNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReservedNodeOfferingNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnsupportedOperationFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AccessToClusterDeniedFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AccessToSnapshotDeniedFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AttributeValueTarget = {
    type = "structure",
    members = {
        AttributeValue = {
            type = "string",
        },
    },
}

M.AccountAttribute = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PartnerNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnauthorizedPartnerIntegrationFault = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidNamespaceFault = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AuthenticationProfileNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AuthenticationProfileQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AuthorizationAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AuthorizationNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AuthorizationQuotaExceededFault = {
    type = "structure",
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
    members = {
        ClusterSecurityGroup = M.ClusterSecurityGroup,
    },
}

M.ClusterSecurityGroupNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidClusterSecurityGroupStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AuthorizeDataShareInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EndpointAuthorizationsPerClusterLimitExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidAuthorizationStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidClusterStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AuthorizeSnapshotAccessInput = {
    type = "structure",
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
    members = {
        Snapshot = M.Snapshot,
    },
}

M.ClusterSnapshotNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DependentServiceRequestThrottlingFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidClusterSnapshotStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LimitExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SupportedPlatform = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.AvailabilityZone = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchModifyClusterSnapshotsInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchModifyClusterSnapshotsOutput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BucketNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CancelResizeInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterNode = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RevisionTarget = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterParameterGroup = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterParameterGroupNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterParameterGroupQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterSecurityGroupAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterSecurityGroupQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterSnapshotAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterSnapshotQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Subnet = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterSubnetGroupNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterSubnetGroupQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterSubnetQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterVersion = {
    type = "structure",
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
    members = {
        Snapshot = M.Snapshot,
    },
}

M.CopyToRegionDisabledFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateAuthenticationProfileInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateClusterInput = {
    type = "structure",
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
    members = {
        Cluster = M.Cluster,
    },
}

M.DependentServiceAccessDeniedFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.HsmClientCertificateNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.HsmConfigurationNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InsufficientClusterCapacityFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidClusterSubnetGroupStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidClusterTrackFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidElasticIpFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidSubnet = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTagFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidVPCNetworkStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Ipv6CidrBlockNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NumberOfNodesPerClusterLimitExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NumberOfNodesQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RedshiftIdcApplicationNotExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SnapshotScheduleNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TagLimitExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnauthorizedOperation = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateClusterParameterGroupInput = {
    type = "structure",
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
    members = {
        ClusterParameterGroup = M.ClusterParameterGroup,
    },
}

M.CreateClusterSecurityGroupInput = {
    type = "structure",
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
    members = {
        ClusterSecurityGroup = M.ClusterSecurityGroup,
    },
}

M.CreateClusterSnapshotInput = {
    type = "structure",
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
    members = {
        Snapshot = M.Snapshot,
    },
}

M.CreateClusterSubnetGroupInput = {
    type = "structure",
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
    members = {
        ClusterSubnetGroup = M.ClusterSubnetGroup,
    },
}

M.CreateCustomDomainAssociationInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateEndpointAccessInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EndpointsPerAuthorizationLimitExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EndpointsPerClusterLimitExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateEventSubscriptionInput = {
    type = "structure",
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
    members = {
        EventSubscription = M.EventSubscription,
    },
}

M.EventSubscriptionQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SNSInvalidTopicFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SNSNoAuthorizationFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SNSTopicArnNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SourceNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SubscriptionAlreadyExistFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SubscriptionCategoryNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SubscriptionEventIdNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SubscriptionSeverityNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateHsmClientCertificateInput = {
    type = "structure",
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
    members = {
        HsmClientCertificate = M.HsmClientCertificate,
    },
}

M.HsmClientCertificateAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.HsmClientCertificateQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateHsmConfigurationInput = {
    type = "structure",
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
    members = {
        HsmConfiguration = M.HsmConfiguration,
    },
}

M.HsmConfigurationAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.HsmConfigurationQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateIntegrationInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IntegrationConflictOperationFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IntegrationQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IntegrationSourceNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IntegrationTargetNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LakeFormationQuery = {
    type = "structure",
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
    members = {
        LakeFormationQuery = M.LakeFormationQuery,
    },
}

M.RedshiftScopeUnion = {
    type = "union",
    members = {
        Connect = M.Connect,
    },
}

M.ReadWriteAccess = {
    type = "structure",
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
    members = {
        ReadWriteAccess = M.ReadWriteAccess,
    },
}

M.ServiceIntegrationsUnion = {
    type = "union",
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
    members = {
        RedshiftIdcApplication = M.RedshiftIdcApplication,
    },
}

M.RedshiftIdcApplicationAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RedshiftIdcApplicationQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PauseClusterMessage = {
    type = "structure",
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
    members = {
        ResizeCluster = M.ResizeClusterMessage,
        PauseCluster = M.PauseClusterMessage,
        ResumeCluster = M.ResumeClusterMessage,
    },
}

M.CreateScheduledActionInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidScheduleFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ScheduledActionAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ScheduledActionQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ScheduledActionTypeUnsupportedFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateSnapshotCopyGrantInput = {
    type = "structure",
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
    members = {
        SnapshotCopyGrant = M.SnapshotCopyGrant,
    },
}

M.SnapshotCopyGrantAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SnapshotCopyGrantQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateSnapshotScheduleInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SnapshotScheduleAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SnapshotScheduleQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateTagsInput = {
    type = "structure",
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
}

M.ResourceNotFoundFault = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UsageLimitAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CustomDomainAssociationNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DataShare = {
    type = "structure",
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
    members = {
        AuthenticationProfileName = {
            type = "string",
        },
    },
}

M.DeleteClusterInput = {
    type = "structure",
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
    members = {
        Cluster = M.Cluster,
    },
}

M.DeleteClusterParameterGroupInput = {
    type = "structure",
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
}

M.InvalidClusterParameterGroupStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteClusterSecurityGroupInput = {
    type = "structure",
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
}

M.DeleteClusterSnapshotInput = {
    type = "structure",
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
    members = {
        Snapshot = M.Snapshot,
    },
}

M.DeleteClusterSubnetGroupInput = {
    type = "structure",
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
}

M.InvalidClusterSubnetStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteCustomDomainAssociationInput = {
    type = "structure",
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
}

M.DeleteEndpointAccessInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidEndpointStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteEventSubscriptionInput = {
    type = "structure",
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
}

M.InvalidSubscriptionStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SubscriptionNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteHsmClientCertificateInput = {
    type = "structure",
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
}

M.InvalidHsmClientCertificateStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteHsmConfigurationInput = {
    type = "structure",
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
}

M.InvalidHsmConfigurationStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteIntegrationInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IntegrationNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeletePartnerInput = {
    type = "structure",
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
}

M.DeleteResourcePolicyInput = {
    type = "structure",
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
}

M.DeleteScheduledActionInput = {
    type = "structure",
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
}

M.ScheduledActionNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteSnapshotCopyGrantInput = {
    type = "structure",
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
}

M.InvalidSnapshotCopyGrantStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SnapshotCopyGrantNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteSnapshotScheduleInput = {
    type = "structure",
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
}

M.InvalidClusterSnapshotScheduleStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteTagsInput = {
    type = "structure",
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
}

M.DeleteUsageLimitInput = {
    type = "structure",
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
}

M.UsageLimitNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ProvisionedIdentifier = {
    type = "structure",
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
    members = {
        ServerlessIdentifier = M.ServerlessIdentifier,
        ProvisionedIdentifier = M.ProvisionedIdentifier,
    },
}

M.DeregisterNamespaceInput = {
    type = "structure",
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
    members = {
        Status = {
            type = "string",
        },
    },
}

M.DescribeAccountAttributesInput = {
    type = "structure",
    members = {
        AttributeNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeAccountAttributesOutput = {
    type = "structure",
    members = {
        AccountAttributes = {
            type = "list",
            member = M.AccountAttribute,
        },
    },
}

M.DescribeAuthenticationProfilesInput = {
    type = "structure",
    members = {
        AuthenticationProfileName = {
            type = "string",
        },
    },
}

M.DescribeAuthenticationProfilesOutput = {
    type = "structure",
    members = {
        AuthenticationProfiles = {
            type = "list",
            member = M.AuthenticationProfile,
        },
    },
}

M.DescribeClusterDbRevisionsInput = {
    type = "structure",
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
    members = {
        OperationName = {
            type = "string",
        },
    },
}

M.UpdateTarget = {
    type = "structure",
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
    members = {
        DefaultClusterParameters = M.DefaultClusterParameters,
    },
}

M.DescribeEndpointAccessInput = {
    type = "structure",
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
    members = {
        SourceType = {
            type = "string",
        },
    },
}

M.EventInfoMap = {
    type = "structure",
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
    members = {
        PartnerIntegrationInfoList = {
            type = "list",
            member = M.PartnerIntegrationInfo,
        },
    },
}

M.DescribeRedshiftIdcApplicationsInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeReservedNodeOfferingsInput = {
    type = "structure",
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
}

M.DescribeStorageOutput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeTagsInput = {
    type = "structure",
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
    members = {
        Cluster = M.Cluster,
    },
}

M.SnapshotCopyAlreadyDisabledFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DisassociateDataShareConsumerInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidS3BucketNameFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidS3KeyPrefixFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EnableSnapshotCopyInput = {
    type = "structure",
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
    members = {
        Cluster = M.Cluster,
    },
}

M.IncompatibleOrderableOptions = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SnapshotCopyAlreadyEnabledFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnknownSnapshotCopyRegionFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EndpointAuthorizationNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.FailoverPrimaryComputeInput = {
    type = "structure",
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
    members = {
        Cluster = M.Cluster,
    },
}

M.GetClusterCredentialsInput = {
    type = "structure",
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
    members = {
        ResourcePolicy = M.ResourcePolicy,
    },
}

M.InvalidPolicyFault = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRestoreFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTableRestoreArgumentFault = {
    type = "structure",
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
    members = {
        AquaConfiguration = M.AquaConfiguration,
    },
}

M.ModifyAuthenticationProfileInput = {
    type = "structure",
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
    members = {
        Cluster = M.Cluster,
    },
}

M.TableLimitExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnsupportedOptionFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ModifyClusterDbRevisionInput = {
    type = "structure",
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
    members = {
        Cluster = M.Cluster,
    },
}

M.ModifyClusterIamRolesInput = {
    type = "structure",
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
    members = {
        Cluster = M.Cluster,
    },
}

M.ModifyClusterMaintenanceInput = {
    type = "structure",
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
    members = {
        Cluster = M.Cluster,
    },
}

M.ModifyClusterParameterGroupInput = {
    type = "structure",
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
    members = {
        Snapshot = M.Snapshot,
    },
}

M.ModifyClusterSnapshotScheduleInput = {
    type = "structure",
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
}

M.ModifyClusterSubnetGroupInput = {
    type = "structure",
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
    members = {
        ClusterSubnetGroup = M.ClusterSubnetGroup,
    },
}

M.SubnetAlreadyInUse = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ModifyCustomDomainAssociationInput = {
    type = "structure",
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
    members = {
        EventSubscription = M.EventSubscription,
    },
}

M.ModifyIntegrationInput = {
    type = "structure",
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
    members = {
        RedshiftIdcApplication = M.RedshiftIdcApplication,
    },
}

M.ModifyScheduledActionInput = {
    type = "structure",
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
    members = {
        Cluster = M.Cluster,
    },
}

M.SnapshotCopyDisabledFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ModifySnapshotScheduleInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ModifyUsageLimitInput = {
    type = "structure",
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
    members = {
        Cluster = M.Cluster,
    },
}

M.PurchaseReservedNodeOfferingInput = {
    type = "structure",
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
    members = {
        ReservedNode = M.ReservedNode,
    },
}

M.ReservedNodeQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
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
    members = {
        ResourcePolicy = M.ResourcePolicy,
    },
}

M.RebootClusterInput = {
    type = "structure",
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
    members = {
        Cluster = M.Cluster,
    },
}

M.RegisterNamespaceInput = {
    type = "structure",
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
    members = {
        Status = {
            type = "string",
        },
    },
}

M.RejectDataShareInput = {
    type = "structure",
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
    members = {
        Cluster = M.Cluster,
    },
}

M.RestoreFromClusterSnapshotInput = {
    type = "structure",
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
    members = {
        Cluster = M.Cluster,
    },
}

M.RestoreTableFromClusterSnapshotInput = {
    type = "structure",
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
    members = {
        TableRestoreStatus = M.TableRestoreStatus,
    },
}

M.ResumeClusterInput = {
    type = "structure",
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
    members = {
        Cluster = M.Cluster,
    },
}

M.RevokeClusterSecurityGroupIngressInput = {
    type = "structure",
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
    members = {
        ClusterSecurityGroup = M.ClusterSecurityGroup,
    },
}

M.RevokeEndpointAccessInput = {
    type = "structure",
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
    members = {
        Snapshot = M.Snapshot,
    },
}

M.RotateEncryptionKeyInput = {
    type = "structure",
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
    members = {
        Cluster = M.Cluster,
    },
}

M.UpdatePartnerStatusInput = {
    type = "structure",
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
