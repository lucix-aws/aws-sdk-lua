local M = {}

M.AddressType = {
    CUST_PICKUP = "CUST_PICKUP",
    AWS_SHIP = "AWS_SHIP",
}

M.Address = {
    type = "structure",
    members = {
        AddressId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Company = {
            type = "string",
        },
        Street1 = {
            type = "string",
        },
        Street2 = {
            type = "string",
        },
        Street3 = {
            type = "string",
        },
        City = {
            type = "string",
        },
        StateOrProvince = {
            type = "string",
        },
        PrefectureOrDistrict = {
            type = "string",
        },
        Landmark = {
            type = "string",
        },
        Country = {
            type = "string",
        },
        PostalCode = {
            type = "string",
        },
        PhoneNumber = {
            type = "string",
        },
        IsRestricted = {
            type = "boolean",
        },
        Type = {
            type = "string",
        },
    },
}

M.CancelClusterInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelClusterOutput = {
    type = "structure",
}

M.InvalidJobStateException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidResourceException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.KMSRequestFailedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CancelJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelJobOutput = {
    type = "structure",
}

M.CreateAddressInput = {
    type = "structure",
    members = {
        Address = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAddressOutput = {
    type = "structure",
    members = {
        AddressId = {
            type = "string",
        },
    },
}

M.InvalidAddressException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedAddressException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.JobType = {
    IMPORT = "IMPORT",
    EXPORT = "EXPORT",
    LOCAL_USE = "LOCAL_USE",
}

M.JobState = {
    NEW = "New",
    PREPARING_APPLIANCE = "PreparingAppliance",
    PREPARING_SHIPMENT = "PreparingShipment",
    IN_TRANSIT_TO_CUSTOMER = "InTransitToCustomer",
    WITH_CUSTOMER = "WithCustomer",
    IN_TRANSIT_TO_AWS = "InTransitToAWS",
    WITH_AWS_SORTING_FACILITY = "WithAWSSortingFacility",
    WITH_AWS = "WithAWS",
    IN_PROGRESS = "InProgress",
    COMPLETE = "Complete",
    CANCELLED = "Cancelled",
    LISTING = "Listing",
    PENDING = "Pending",
}

M.Notification = {
    type = "structure",
    members = {
        SnsTopicARN = {
            type = "string",
        },
        JobStatesToNotify = {
            type = "list",
            member_type = "string",
        },
        NotifyAll = {
            type = "boolean",
        },
        DevicePickupSnsTopicARN = {
            type = "string",
        },
    },
}

M.EKSOnDeviceServiceConfiguration = {
    type = "structure",
    members = {
        KubernetesVersion = {
            type = "string",
        },
        EKSAnywhereVersion = {
            type = "string",
        },
    },
}

M.StorageUnit = {
    TB = "TB",
}

M.NFSOnDeviceServiceConfiguration = {
    type = "structure",
    members = {
        StorageLimit = {
            type = "number",
        },
        StorageUnit = {
            type = "string",
        },
    },
}

M.S3OnDeviceServiceConfiguration = {
    type = "structure",
    members = {
        StorageLimit = {
            type = "number",
        },
        StorageUnit = {
            type = "string",
        },
        ServiceSize = {
            type = "number",
        },
        FaultTolerance = {
            type = "number",
        },
    },
}

M.TGWOnDeviceServiceConfiguration = {
    type = "structure",
    members = {
        StorageLimit = {
            type = "number",
        },
        StorageUnit = {
            type = "string",
        },
    },
}

M.OnDeviceServiceConfiguration = {
    type = "structure",
    members = {
        NFSOnDeviceService = {
            type = "structure",
        },
        TGWOnDeviceService = {
            type = "structure",
        },
        EKSOnDeviceService = {
            type = "structure",
        },
        S3OnDeviceService = {
            type = "structure",
        },
    },
}

M.RemoteManagement = {
    INSTALLED_ONLY = "INSTALLED_ONLY",
    INSTALLED_AUTOSTART = "INSTALLED_AUTOSTART",
    NOT_INSTALLED = "NOT_INSTALLED",
}

M.Ec2AmiResource = {
    type = "structure",
    members = {
        AmiId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnowballAmiId = {
            type = "string",
        },
    },
}

M.EventTriggerDefinition = {
    type = "structure",
    members = {
        EventResourceARN = {
            type = "string",
        },
    },
}

M.LambdaResource = {
    type = "structure",
    members = {
        LambdaArn = {
            type = "string",
        },
        EventTriggers = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.KeyRange = {
    type = "structure",
    members = {
        BeginMarker = {
            type = "string",
        },
        EndMarker = {
            type = "string",
        },
    },
}

M.DeviceServiceName = {
    NFS_ON_DEVICE_SERVICE = "NFS_ON_DEVICE_SERVICE",
    S3_ON_DEVICE_SERVICE = "S3_ON_DEVICE_SERVICE",
}

M.TransferOption = {
    IMPORT = "IMPORT",
    EXPORT = "EXPORT",
    LOCAL_USE = "LOCAL_USE",
}

M.TargetOnDeviceService = {
    type = "structure",
    members = {
        ServiceName = {
            type = "string",
        },
        TransferOption = {
            type = "string",
        },
    },
}

M.S3Resource = {
    type = "structure",
    members = {
        BucketArn = {
            type = "string",
        },
        KeyRange = {
            type = "structure",
        },
        TargetOnDeviceServices = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.JobResource = {
    type = "structure",
    members = {
        S3Resources = {
            type = "list",
            member_type = "structure",
        },
        LambdaResources = {
            type = "list",
            member_type = "structure",
        },
        Ec2AmiResources = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ShippingOption = {
    SECOND_DAY = "SECOND_DAY",
    NEXT_DAY = "NEXT_DAY",
    EXPRESS = "EXPRESS",
    STANDARD = "STANDARD",
}

M.SnowballCapacity = {
    T50 = "T50",
    T80 = "T80",
    T100 = "T100",
    T42 = "T42",
    T98 = "T98",
    T8 = "T8",
    T14 = "T14",
    T32 = "T32",
    NO_PREFERENCE = "NoPreference",
    T240 = "T240",
    T13 = "T13",
}

M.SnowballType = {
    STANDARD = "STANDARD",
    EDGE = "EDGE",
    EDGE_C = "EDGE_C",
    EDGE_CG = "EDGE_CG",
    EDGE_S = "EDGE_S",
    SNC1_HDD = "SNC1_HDD",
    SNC1_SSD = "SNC1_SSD",
    V3_5C = "V3_5C",
    V3_5S = "V3_5S",
    RACK_5U_C = "RACK_5U_C",
}

M.INDTaxDocuments = {
    type = "structure",
    members = {
        GSTIN = {
            type = "string",
        },
    },
}

M.TaxDocuments = {
    type = "structure",
    members = {
        IND = {
            type = "structure",
        },
    },
}

M.CreateClusterInput = {
    type = "structure",
    members = {
        JobType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Resources = {
            type = "structure",
        },
        OnDeviceServiceConfiguration = {
            type = "structure",
        },
        Description = {
            type = "string",
        },
        AddressId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyARN = {
            type = "string",
        },
        RoleARN = {
            type = "string",
        },
        SnowballType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ShippingOption = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Notification = {
            type = "structure",
        },
        ForwardingAddressId = {
            type = "string",
        },
        TaxDocuments = {
            type = "structure",
        },
        RemoteManagement = {
            type = "string",
        },
        InitialClusterSize = {
            type = "number",
        },
        ForceCreateJobs = {
            type = "boolean",
        },
        LongTermPricingIds = {
            type = "list",
            member_type = "string",
        },
        SnowballCapacityPreference = {
            type = "string",
        },
    },
}

M.JobListEntry = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobState = {
            type = "string",
        },
        IsMaster = {
            type = "boolean",
        },
        JobType = {
            type = "string",
        },
        SnowballType = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
    },
}

M.CreateClusterOutput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
        },
        JobListEntries = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Ec2RequestFailedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidInputCombinationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ClusterLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.WirelessConnection = {
    type = "structure",
    members = {
        IsWifiEnabled = {
            type = "boolean",
        },
    },
}

M.SnowconeDeviceConfiguration = {
    type = "structure",
    members = {
        WirelessConnection = {
            type = "structure",
        },
    },
}

M.DeviceConfiguration = {
    type = "structure",
    members = {
        SnowconeDeviceConfiguration = {
            type = "structure",
        },
    },
}

M.ImpactLevel = {
    IL2 = "IL2",
    IL4 = "IL4",
    IL5 = "IL5",
    IL6 = "IL6",
    IL99 = "IL99",
}

M.PickupDetails = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        PhoneNumber = {
            type = "string",
        },
        Email = {
            type = "string",
        },
        IdentificationNumber = {
            type = "string",
        },
        IdentificationExpirationDate = {
            type = "timestamp",
        },
        IdentificationIssuingOrg = {
            type = "string",
        },
        DevicePickupId = {
            type = "string",
        },
    },
}

M.CreateJobInput = {
    type = "structure",
    members = {
        JobType = {
            type = "string",
        },
        Resources = {
            type = "structure",
        },
        OnDeviceServiceConfiguration = {
            type = "structure",
        },
        Description = {
            type = "string",
        },
        AddressId = {
            type = "string",
        },
        KmsKeyARN = {
            type = "string",
        },
        RoleARN = {
            type = "string",
        },
        SnowballCapacityPreference = {
            type = "string",
        },
        ShippingOption = {
            type = "string",
        },
        Notification = {
            type = "structure",
        },
        ClusterId = {
            type = "string",
        },
        SnowballType = {
            type = "string",
        },
        ForwardingAddressId = {
            type = "string",
        },
        TaxDocuments = {
            type = "structure",
        },
        DeviceConfiguration = {
            type = "structure",
        },
        RemoteManagement = {
            type = "string",
        },
        LongTermPricingId = {
            type = "string",
        },
        ImpactLevel = {
            type = "string",
        },
        PickupDetails = {
            type = "structure",
        },
    },
}

M.CreateJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.LongTermPricingType = {
    ONE_YEAR = "OneYear",
    THREE_YEAR = "ThreeYear",
    ONE_MONTH = "OneMonth",
}

M.CreateLongTermPricingInput = {
    type = "structure",
    members = {
        LongTermPricingType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsLongTermPricingAutoRenew = {
            type = "boolean",
        },
        SnowballType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateLongTermPricingOutput = {
    type = "structure",
    members = {
        LongTermPricingId = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        ConflictResource = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.CreateReturnShippingLabelInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ShippingOption = {
            type = "string",
        },
    },
}

M.ShippingLabelStatus = {
    IN_PROGRESS = "InProgress",
    TIMED_OUT = "TimedOut",
    SUCCEEDED = "Succeeded",
    FAILED = "Failed",
}

M.CreateReturnShippingLabelOutput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.ReturnShippingLabelAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeAddressInput = {
    type = "structure",
    members = {
        AddressId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAddressOutput = {
    type = "structure",
    members = {
        Address = {
            type = "structure",
        },
    },
}

M.DescribeAddressesInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeAddressesOutput = {
    type = "structure",
    members = {
        Addresses = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeClusterInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ClusterState = {
    AWAITING_QUORUM = "AwaitingQuorum",
    PENDING = "Pending",
    IN_USE = "InUse",
    COMPLETE = "Complete",
    CANCELLED = "Cancelled",
}

M.ClusterMetadata = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        KmsKeyARN = {
            type = "string",
        },
        RoleARN = {
            type = "string",
        },
        ClusterState = {
            type = "string",
        },
        JobType = {
            type = "string",
        },
        SnowballType = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        Resources = {
            type = "structure",
        },
        AddressId = {
            type = "string",
        },
        ShippingOption = {
            type = "string",
        },
        Notification = {
            type = "structure",
        },
        ForwardingAddressId = {
            type = "string",
        },
        TaxDocuments = {
            type = "structure",
        },
        OnDeviceServiceConfiguration = {
            type = "structure",
        },
    },
}

M.DescribeClusterOutput = {
    type = "structure",
    members = {
        ClusterMetadata = {
            type = "structure",
        },
    },
}

M.DescribeJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataTransfer = {
    type = "structure",
    members = {
        BytesTransferred = {
            type = "number",
        },
        ObjectsTransferred = {
            type = "number",
        },
        TotalBytes = {
            type = "number",
        },
        TotalObjects = {
            type = "number",
        },
    },
}

M.JobLogs = {
    type = "structure",
    members = {
        JobCompletionReportURI = {
            type = "string",
        },
        JobSuccessLogURI = {
            type = "string",
        },
        JobFailureLogURI = {
            type = "string",
        },
    },
}

M.Shipment = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        TrackingNumber = {
            type = "string",
        },
    },
}

M.ShippingDetails = {
    type = "structure",
    members = {
        ShippingOption = {
            type = "string",
        },
        InboundShipment = {
            type = "structure",
        },
        OutboundShipment = {
            type = "structure",
        },
    },
}

M.JobMetadata = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobState = {
            type = "string",
        },
        JobType = {
            type = "string",
        },
        SnowballType = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        Resources = {
            type = "structure",
        },
        Description = {
            type = "string",
        },
        KmsKeyARN = {
            type = "string",
        },
        RoleARN = {
            type = "string",
        },
        AddressId = {
            type = "string",
        },
        ShippingDetails = {
            type = "structure",
        },
        SnowballCapacityPreference = {
            type = "string",
        },
        Notification = {
            type = "structure",
        },
        DataTransferProgress = {
            type = "structure",
        },
        JobLogInfo = {
            type = "structure",
        },
        ClusterId = {
            type = "string",
        },
        ForwardingAddressId = {
            type = "string",
        },
        TaxDocuments = {
            type = "structure",
        },
        DeviceConfiguration = {
            type = "structure",
        },
        RemoteManagement = {
            type = "string",
        },
        LongTermPricingId = {
            type = "string",
        },
        OnDeviceServiceConfiguration = {
            type = "structure",
        },
        ImpactLevel = {
            type = "string",
        },
        PickupDetails = {
            type = "structure",
        },
        SnowballId = {
            type = "string",
        },
    },
}

M.DescribeJobOutput = {
    type = "structure",
    members = {
        JobMetadata = {
            type = "structure",
        },
        SubJobMetadata = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeReturnShippingLabelInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeReturnShippingLabelOutput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        ExpirationDate = {
            type = "timestamp",
        },
        ReturnShippingLabelURI = {
            type = "string",
        },
    },
}

M.GetJobManifestInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetJobManifestOutput = {
    type = "structure",
    members = {
        ManifestURI = {
            type = "string",
        },
    },
}

M.GetJobUnlockCodeInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetJobUnlockCodeOutput = {
    type = "structure",
    members = {
        UnlockCode = {
            type = "string",
        },
    },
}

M.GetSnowballUsageInput = {
    type = "structure",
}

M.GetSnowballUsageOutput = {
    type = "structure",
    members = {
        SnowballLimit = {
            type = "number",
        },
        SnowballsInUse = {
            type = "number",
        },
    },
}

M.GetSoftwareUpdatesInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSoftwareUpdatesOutput = {
    type = "structure",
    members = {
        UpdatesURI = {
            type = "string",
        },
    },
}

M.ListClusterJobsInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListClusterJobsOutput = {
    type = "structure",
    members = {
        JobListEntries = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListClustersInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ClusterListEntry = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
        },
        ClusterState = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
    },
}

M.ListClustersOutput = {
    type = "structure",
    members = {
        ClusterListEntries = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCompatibleImagesInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.CompatibleImage = {
    type = "structure",
    members = {
        AmiId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.ListCompatibleImagesOutput = {
    type = "structure",
    members = {
        CompatibleImages = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListJobsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListJobsOutput = {
    type = "structure",
    members = {
        JobListEntries = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLongTermPricingInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.LongTermPricingListEntry = {
    type = "structure",
    members = {
        LongTermPricingId = {
            type = "string",
        },
        LongTermPricingEndDate = {
            type = "timestamp",
        },
        LongTermPricingStartDate = {
            type = "timestamp",
        },
        LongTermPricingType = {
            type = "string",
        },
        CurrentActiveJob = {
            type = "string",
        },
        ReplacementJob = {
            type = "string",
        },
        IsLongTermPricingAutoRenew = {
            type = "boolean",
        },
        LongTermPricingStatus = {
            type = "string",
        },
        SnowballType = {
            type = "string",
        },
        JobIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListLongTermPricingOutput = {
    type = "structure",
    members = {
        LongTermPricingEntries = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPickupLocationsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPickupLocationsOutput = {
    type = "structure",
    members = {
        Addresses = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ServiceName = {
    KUBERNETES = "KUBERNETES",
    EKS_ANYWHERE = "EKS_ANYWHERE",
}

M.ServiceVersion = {
    type = "structure",
    members = {
        Version = {
            type = "string",
        },
    },
}

M.DependentService = {
    type = "structure",
    members = {
        ServiceName = {
            type = "string",
        },
        ServiceVersion = {
            type = "structure",
        },
    },
}

M.ListServiceVersionsInput = {
    type = "structure",
    members = {
        ServiceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DependentServices = {
            type = "list",
            member_type = "structure",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListServiceVersionsOutput = {
    type = "structure",
    members = {
        ServiceVersions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ServiceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DependentServices = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateClusterInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleARN = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Resources = {
            type = "structure",
        },
        OnDeviceServiceConfiguration = {
            type = "structure",
        },
        AddressId = {
            type = "string",
        },
        ShippingOption = {
            type = "string",
        },
        Notification = {
            type = "structure",
        },
        ForwardingAddressId = {
            type = "string",
        },
    },
}

M.UpdateClusterOutput = {
    type = "structure",
}

M.UpdateJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleARN = {
            type = "string",
        },
        Notification = {
            type = "structure",
        },
        Resources = {
            type = "structure",
        },
        OnDeviceServiceConfiguration = {
            type = "structure",
        },
        AddressId = {
            type = "string",
        },
        ShippingOption = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        SnowballCapacityPreference = {
            type = "string",
        },
        ForwardingAddressId = {
            type = "string",
        },
        PickupDetails = {
            type = "structure",
        },
    },
}

M.UpdateJobOutput = {
    type = "structure",
}

M.ShipmentState = {
    RECEIVED = "RECEIVED",
    RETURNED = "RETURNED",
}

M.UpdateJobShipmentStateInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ShipmentState = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateJobShipmentStateOutput = {
    type = "structure",
}

M.UpdateLongTermPricingInput = {
    type = "structure",
    members = {
        LongTermPricingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReplacementJob = {
            type = "string",
        },
        IsLongTermPricingAutoRenew = {
            type = "boolean",
        },
    },
}

M.UpdateLongTermPricingOutput = {
    type = "structure",
}

return M
