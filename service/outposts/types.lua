local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Address = {
    type = "structure",
    members = {
        ContactName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactPhoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AddressLine1 = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AddressLine2 = {
            type = "string",
        },
        AddressLine3 = {
            type = "string",
        },
        City = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StateOrRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DistrictOrCounty = {
            type = "string",
        },
        PostalCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CountryCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Municipality = {
            type = "string",
        },
    },
}

M.AddressType = {
    SHIPPING_ADDRESS = "SHIPPING_ADDRESS",
    OPERATING_ADDRESS = "OPERATING_ADDRESS",
}

M.AssetLocation = {
    type = "structure",
    members = {
        RackElevation = {
            type = "number",
        },
    },
}

M.AssetType = {
    COMPUTE = "COMPUTE",
    STORAGE = "STORAGE",
    POWERSHELF = "POWERSHELF",
    SWITCH = "SWITCH",
    NETWORKING = "NETWORKING",
}

M.AssetInstanceTypeCapacity = {
    type = "structure",
    members = {
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Count = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ComputeAssetState = {
    ACTIVE = "ACTIVE",
    ISOLATED = "ISOLATED",
    RETIRING = "RETIRING",
    INSTALLING = "INSTALLING",
}

M.ComputeAttributes = {
    type = "structure",
    members = {
        HostId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        InstanceFamilies = {
            type = "list",
            member_type = "string",
        },
        InstanceTypeCapacities = {
            type = "list",
            member_type = "structure",
        },
        MaxVcpus = {
            type = "number",
        },
    },
}

M.AssetInfo = {
    type = "structure",
    members = {
        AssetId = {
            type = "string",
        },
        RackId = {
            type = "string",
        },
        AssetType = {
            type = "string",
        },
        ComputeAttributes = {
            type = "structure",
        },
        AssetLocation = {
            type = "structure",
        },
    },
}

M.AWSServiceName = {
    AWS = "AWS",
    EC2 = "EC2",
    ELASTICACHE = "ELASTICACHE",
    ELB = "ELB",
    RDS = "RDS",
    ROUTE53 = "ROUTE53",
}

M.AssetInstance = {
    type = "structure",
    members = {
        InstanceId = {
            type = "string",
        },
        InstanceType = {
            type = "string",
        },
        AssetId = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        AwsServiceName = {
            type = "string",
        },
    },
}

M.AssetState = {
    ACTIVE = "ACTIVE",
    RETIRING = "RETIRING",
    ISOLATED = "ISOLATED",
    INSTALLING = "INSTALLING",
}

M.BlockingInstance = {
    type = "structure",
    members = {
        InstanceId = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        AwsServiceName = {
            type = "string",
        },
    },
}

M.BlockingResourceType = {
    EC2_INSTANCE = "EC2_INSTANCE",
    OUTPOST_RAM_SHARE = "OUTPOST_RAM_SHARE",
    LGW_ROUTING_DOMAIN = "LGW_ROUTING_DOMAIN",
    LGW_ROUTE_TABLE = "LGW_ROUTE_TABLE",
    LGW_VIRTUAL_INTERFACE_GROUP = "LGW_VIRTUAL_INTERFACE_GROUP",
    OUTPOST_ORDER_CANCELLABLE = "OUTPOST_ORDER_CANCELLABLE",
    OUTPOST_ORDER_INTERVENTION_REQUIRED = "OUTPOST_ORDER_INTERVENTION_REQUIRED",
}

M.CancelCapacityTaskInput = {
    type = "structure",
    members = {
        CapacityTaskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        OutpostIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancelCapacityTaskOutput = {
    type = "structure",
}

M.ResourceType = {
    OUTPOST = "OUTPOST",
    ORDER = "ORDER",
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CancelOrderInput = {
    type = "structure",
    members = {
        OrderId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancelOrderOutput = {
    type = "structure",
}

M.CapacityTaskFailureType = {
    UNSUPPORTED_CAPACITY_CONFIGURATION = "UNSUPPORTED_CAPACITY_CONFIGURATION",
    UNEXPECTED_ASSET_STATE = "UNEXPECTED_ASSET_STATE",
    BLOCKING_INSTANCES_NOT_EVACUATED = "BLOCKING_INSTANCES_NOT_EVACUATED",
    INTERNAL_SERVER_ERROR = "INTERNAL_SERVER_ERROR",
    RESOURCE_NOT_FOUND = "RESOURCE_NOT_FOUND",
}

M.CapacityTaskFailure = {
    type = "structure",
    members = {
        Reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
        },
    },
}

M.CapacityTaskStatus = {
    REQUESTED = "REQUESTED",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
    WAITING_FOR_EVACUATION = "WAITING_FOR_EVACUATION",
    CANCELLATION_IN_PROGRESS = "CANCELLATION_IN_PROGRESS",
    CANCELLED = "CANCELLED",
}

M.CapacityTaskSummary = {
    type = "structure",
    members = {
        CapacityTaskId = {
            type = "string",
        },
        OutpostId = {
            type = "string",
        },
        OrderId = {
            type = "string",
        },
        AssetId = {
            type = "string",
        },
        CapacityTaskStatus = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        CompletionDate = {
            type = "timestamp",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
    },
}

M.EC2Capacity = {
    type = "structure",
    members = {
        Family = {
            type = "string",
        },
        MaxSize = {
            type = "string",
        },
        Quantity = {
            type = "string",
        },
    },
}

M.CatalogItemStatus = {
    AVAILABLE = "AVAILABLE",
    DISCONTINUED = "DISCONTINUED",
}

M.SupportedStorageEnum = {
    EBS = "EBS",
    S3 = "S3",
}

M.CatalogItem = {
    type = "structure",
    members = {
        CatalogItemId = {
            type = "string",
        },
        ItemStatus = {
            type = "string",
        },
        EC2Capacities = {
            type = "list",
            member_type = "structure",
        },
        PowerKva = {
            type = "number",
        },
        WeightLbs = {
            type = "number",
        },
        SupportedUplinkGbps = {
            type = "list",
            member_type = "number",
        },
        SupportedStorage = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CatalogItemClass = {
    RACK = "RACK",
    SERVER = "SERVER",
}

M.ConnectionDetails = {
    type = "structure",
    members = {
        ClientPublicKey = {
            type = "string",
        },
        ServerPublicKey = {
            type = "string",
        },
        ServerEndpoint = {
            type = "string",
        },
        ClientTunnelAddress = {
            type = "string",
        },
        ServerTunnelAddress = {
            type = "string",
        },
        AllowedIps = {
            type = "list",
            member_type = "string",
        },
    },
}

M.LineItemRequest = {
    type = "structure",
    members = {
        CatalogItemId = {
            type = "string",
        },
        Quantity = {
            type = "number",
        },
    },
}

M.PaymentOption = {
    ALL_UPFRONT = "ALL_UPFRONT",
    NO_UPFRONT = "NO_UPFRONT",
    PARTIAL_UPFRONT = "PARTIAL_UPFRONT",
}

M.PaymentTerm = {
    THREE_YEARS = "THREE_YEARS",
    ONE_YEAR = "ONE_YEAR",
    FIVE_YEARS = "FIVE_YEARS",
}

M.CreateOrderInput = {
    type = "structure",
    members = {
        OutpostIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LineItems = {
            type = "list",
            member_type = "structure",
        },
        PaymentOption = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PaymentTerm = {
            type = "string",
        },
    },
}

M.LineItemAssetInformation = {
    type = "structure",
    members = {
        AssetId = {
            type = "string",
        },
        MacAddressList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ShipmentCarrier = {
    DHL = "DHL",
    DBS = "DBS",
    FEDEX = "FEDEX",
    UPS = "UPS",
    EXPEDITORS = "EXPEDITORS",
}

M.ShipmentInformation = {
    type = "structure",
    members = {
        ShipmentTrackingNumber = {
            type = "string",
        },
        ShipmentCarrier = {
            type = "string",
        },
    },
}

M.LineItemStatus = {
    PREPARING = "PREPARING",
    BUILDING = "BUILDING",
    SHIPPED = "SHIPPED",
    DELIVERED = "DELIVERED",
    INSTALLING = "INSTALLING",
    INSTALLED = "INSTALLED",
    ERROR = "ERROR",
    CANCELLED = "CANCELLED",
    REPLACED = "REPLACED",
}

M.LineItem = {
    type = "structure",
    members = {
        CatalogItemId = {
            type = "string",
        },
        LineItemId = {
            type = "string",
        },
        Quantity = {
            type = "number",
        },
        Status = {
            type = "string",
        },
        ShipmentInformation = {
            type = "structure",
        },
        AssetInformationList = {
            type = "list",
            member_type = "structure",
        },
        PreviousLineItemId = {
            type = "string",
        },
        PreviousOrderId = {
            type = "string",
        },
    },
}

M.OrderType = {
    OUTPOST = "OUTPOST",
    REPLACEMENT = "REPLACEMENT",
}

M.OrderStatus = {
    RECEIVED = "RECEIVED",
    PENDING = "PENDING",
    PROCESSING = "PROCESSING",
    INSTALLING = "INSTALLING",
    FULFILLED = "FULFILLED",
    CANCELLED = "CANCELLED",
    PREPARING = "PREPARING",
    IN_PROGRESS = "IN_PROGRESS",
    DELIVERED = "DELIVERED",
    COMPLETED = "COMPLETED",
    ERROR = "ERROR",
}

M.Order = {
    type = "structure",
    members = {
        OutpostId = {
            type = "string",
        },
        OrderId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        LineItems = {
            type = "list",
            member_type = "structure",
        },
        PaymentOption = {
            type = "string",
        },
        OrderSubmissionDate = {
            type = "timestamp",
        },
        OrderFulfilledDate = {
            type = "timestamp",
        },
        PaymentTerm = {
            type = "string",
        },
        OrderType = {
            type = "string",
        },
    },
}

M.CreateOrderOutput = {
    type = "structure",
    members = {
        Order = {
            type = "structure",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SupportedHardwareType = {
    RACK = "RACK",
    SERVER = "SERVER",
}

M.CreateOutpostInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        SiteId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AvailabilityZone = {
            type = "string",
        },
        AvailabilityZoneId = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        SupportedHardwareType = {
            type = "string",
        },
    },
}

M.Outpost = {
    type = "structure",
    members = {
        OutpostId = {
            type = "string",
        },
        OwnerId = {
            type = "string",
        },
        OutpostArn = {
            type = "string",
        },
        SiteId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        LifeCycleStatus = {
            type = "string",
        },
        AvailabilityZone = {
            type = "string",
        },
        AvailabilityZoneId = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        SiteArn = {
            type = "string",
        },
        SupportedHardwareType = {
            type = "string",
        },
    },
}

M.CreateOutpostOutput = {
    type = "structure",
    members = {
        Outpost = {
            type = "structure",
        },
    },
}

M.CreateRenewalInput = {
    type = "structure",
    members = {
        PaymentOption = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PaymentTerm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutpostIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.CreateRenewalOutput = {
    type = "structure",
    members = {
        PaymentOption = {
            type = "string",
        },
        PaymentTerm = {
            type = "string",
        },
        OutpostId = {
            type = "string",
        },
        UpfrontPrice = {
            type = "number",
        },
        MonthlyRecurringPrice = {
            type = "number",
        },
    },
}

M.FiberOpticCableType = {
    SINGLE_MODE = "SINGLE_MODE",
    MULTI_MODE = "MULTI_MODE",
}

M.MaximumSupportedWeightLbs = {
    NO_LIMIT = "NO_LIMIT",
    MAX_1400_LBS = "MAX_1400_LBS",
    MAX_1600_LBS = "MAX_1600_LBS",
    MAX_1800_LBS = "MAX_1800_LBS",
    MAX_2000_LBS = "MAX_2000_LBS",
}

M.OpticalStandard = {
    OPTIC_10GBASE_SR = "OPTIC_10GBASE_SR",
    OPTIC_10GBASE_IR = "OPTIC_10GBASE_IR",
    OPTIC_10GBASE_LR = "OPTIC_10GBASE_LR",
    OPTIC_40GBASE_SR = "OPTIC_40GBASE_SR",
    OPTIC_40GBASE_ESR = "OPTIC_40GBASE_ESR",
    OPTIC_40GBASE_IR4_LR4L = "OPTIC_40GBASE_IR4_LR4L",
    OPTIC_40GBASE_LR4 = "OPTIC_40GBASE_LR4",
    OPTIC_100GBASE_SR4 = "OPTIC_100GBASE_SR4",
    OPTIC_100GBASE_CWDM4 = "OPTIC_100GBASE_CWDM4",
    OPTIC_100GBASE_LR4 = "OPTIC_100GBASE_LR4",
    OPTIC_100G_PSM4_MSA = "OPTIC_100G_PSM4_MSA",
    OPTIC_1000BASE_LX = "OPTIC_1000BASE_LX",
    OPTIC_1000BASE_SX = "OPTIC_1000BASE_SX",
}

M.PowerConnector = {
    L6_30P = "L6_30P",
    IEC309 = "IEC309",
    AH530P7W = "AH530P7W",
    AH532P6W = "AH532P6W",
    CS8365C = "CS8365C",
}

M.PowerDrawKva = {
    POWER_5_KVA = "POWER_5_KVA",
    POWER_10_KVA = "POWER_10_KVA",
    POWER_15_KVA = "POWER_15_KVA",
    POWER_30_KVA = "POWER_30_KVA",
}

M.PowerFeedDrop = {
    ABOVE_RACK = "ABOVE_RACK",
    BELOW_RACK = "BELOW_RACK",
}

M.PowerPhase = {
    SINGLE_PHASE = "SINGLE_PHASE",
    THREE_PHASE = "THREE_PHASE",
}

M.UplinkCount = {
    UPLINK_COUNT_1 = "UPLINK_COUNT_1",
    UPLINK_COUNT_2 = "UPLINK_COUNT_2",
    UPLINK_COUNT_3 = "UPLINK_COUNT_3",
    UPLINK_COUNT_4 = "UPLINK_COUNT_4",
    UPLINK_COUNT_5 = "UPLINK_COUNT_5",
    UPLINK_COUNT_6 = "UPLINK_COUNT_6",
    UPLINK_COUNT_7 = "UPLINK_COUNT_7",
    UPLINK_COUNT_8 = "UPLINK_COUNT_8",
    UPLINK_COUNT_12 = "UPLINK_COUNT_12",
    UPLINK_COUNT_16 = "UPLINK_COUNT_16",
}

M.UplinkGbps = {
    UPLINK_1G = "UPLINK_1G",
    UPLINK_10G = "UPLINK_10G",
    UPLINK_40G = "UPLINK_40G",
    UPLINK_100G = "UPLINK_100G",
}

M.RackPhysicalProperties = {
    type = "structure",
    members = {
        PowerDrawKva = {
            type = "string",
        },
        PowerPhase = {
            type = "string",
        },
        PowerConnector = {
            type = "string",
        },
        PowerFeedDrop = {
            type = "string",
        },
        UplinkGbps = {
            type = "string",
        },
        UplinkCount = {
            type = "string",
        },
        FiberOpticCableType = {
            type = "string",
        },
        OpticalStandard = {
            type = "string",
        },
        MaximumSupportedWeightLbs = {
            type = "string",
        },
    },
}

M.CreateSiteInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Notes = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        OperatingAddress = {
            type = "structure",
        },
        ShippingAddress = {
            type = "structure",
        },
        RackPhysicalProperties = {
            type = "structure",
        },
    },
}

M.Site = {
    type = "structure",
    members = {
        SiteId = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        SiteArn = {
            type = "string",
        },
        Notes = {
            type = "string",
        },
        OperatingAddressCountryCode = {
            type = "string",
        },
        OperatingAddressStateOrRegion = {
            type = "string",
        },
        OperatingAddressCity = {
            type = "string",
        },
        RackPhysicalProperties = {
            type = "structure",
        },
    },
}

M.CreateSiteOutput = {
    type = "structure",
    members = {
        Site = {
            type = "structure",
        },
    },
}

M.DecommissionRequestStatus = {
    SKIPPED = "SKIPPED",
    BLOCKED = "BLOCKED",
    REQUESTED = "REQUESTED",
}

M.DeleteOutpostInput = {
    type = "structure",
    members = {
        OutpostId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteOutpostOutput = {
    type = "structure",
}

M.DeleteSiteInput = {
    type = "structure",
    members = {
        SiteId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSiteOutput = {
    type = "structure",
}

M.GetCapacityTaskInput = {
    type = "structure",
    members = {
        CapacityTaskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        OutpostIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.InstancesToExclude = {
    type = "structure",
    members = {
        Instances = {
            type = "list",
            member_type = "string",
        },
        AccountIds = {
            type = "list",
            member_type = "string",
        },
        Services = {
            type = "list",
            member_type = "string",
        },
    },
}

M.InstanceTypeCapacity = {
    type = "structure",
    members = {
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Count = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.TaskActionOnBlockingInstances = {
    WAIT_FOR_EVACUATION = "WAIT_FOR_EVACUATION",
    FAIL_TASK = "FAIL_TASK",
}

M.GetCapacityTaskOutput = {
    type = "structure",
    members = {
        CapacityTaskId = {
            type = "string",
        },
        OutpostId = {
            type = "string",
        },
        OrderId = {
            type = "string",
        },
        AssetId = {
            type = "string",
        },
        RequestedInstancePools = {
            type = "list",
            member_type = "structure",
        },
        InstancesToExclude = {
            type = "structure",
        },
        DryRun = {
            type = "boolean",
        },
        CapacityTaskStatus = {
            type = "string",
        },
        Failed = {
            type = "structure",
        },
        CreationDate = {
            type = "timestamp",
        },
        CompletionDate = {
            type = "timestamp",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
        TaskActionOnBlockingInstances = {
            type = "string",
        },
    },
}

M.GetCatalogItemInput = {
    type = "structure",
    members = {
        CatalogItemId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCatalogItemOutput = {
    type = "structure",
    members = {
        CatalogItem = {
            type = "structure",
        },
    },
}

M.GetConnectionInput = {
    type = "structure",
    members = {
        ConnectionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetConnectionOutput = {
    type = "structure",
    members = {
        ConnectionId = {
            type = "string",
        },
        ConnectionDetails = {
            type = "structure",
        },
    },
}

M.GetOrderInput = {
    type = "structure",
    members = {
        OrderId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetOrderOutput = {
    type = "structure",
    members = {
        Order = {
            type = "structure",
        },
    },
}

M.GetOutpostInput = {
    type = "structure",
    members = {
        OutpostId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetOutpostOutput = {
    type = "structure",
    members = {
        Outpost = {
            type = "structure",
        },
    },
}

M.GetOutpostBillingInformationInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
        OutpostIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SubscriptionStatus = {
    ACTIVE = "ACTIVE",
    PENDING = "PENDING",
    INACTIVE = "INACTIVE",
    CANCELLED = "CANCELLED",
}

M.SubscriptionType = {
    ORIGINAL = "ORIGINAL",
    RENEWAL = "RENEWAL",
    CAPACITY_INCREASE = "CAPACITY_INCREASE",
}

M.Subscription = {
    type = "structure",
    members = {
        SubscriptionId = {
            type = "string",
        },
        SubscriptionType = {
            type = "string",
        },
        SubscriptionStatus = {
            type = "string",
        },
        OrderIds = {
            type = "list",
            member_type = "string",
        },
        BeginDate = {
            type = "timestamp",
        },
        EndDate = {
            type = "timestamp",
        },
        MonthlyRecurringPrice = {
            type = "number",
        },
        UpfrontPrice = {
            type = "number",
        },
    },
}

M.GetOutpostBillingInformationOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Subscriptions = {
            type = "list",
            member_type = "structure",
        },
        ContractEndDate = {
            type = "string",
        },
        PaymentTerm = {
            type = "string",
        },
        PaymentOption = {
            type = "string",
        },
    },
}

M.GetOutpostInstanceTypesInput = {
    type = "structure",
    members = {
        OutpostId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.InstanceTypeItem = {
    type = "structure",
    members = {
        InstanceType = {
            type = "string",
        },
        VCPUs = {
            type = "number",
        },
    },
}

M.GetOutpostInstanceTypesOutput = {
    type = "structure",
    members = {
        InstanceTypes = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        OutpostId = {
            type = "string",
        },
        OutpostArn = {
            type = "string",
        },
    },
}

M.GetOutpostSupportedInstanceTypesInput = {
    type = "structure",
    members = {
        OutpostIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        OrderId = {
            type = "string",
            traits = {
                http_query = "OrderId",
            },
        },
        AssetId = {
            type = "string",
            traits = {
                http_query = "AssetId",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.GetOutpostSupportedInstanceTypesOutput = {
    type = "structure",
    members = {
        InstanceTypes = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetRenewalPricingInput = {
    type = "structure",
    members = {
        OutpostIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.QuotePricingType = {
    SUBSCRIPTION = "SUBSCRIPTION",
}

M.SubscriptionPricingDetails = {
    type = "structure",
    members = {
        PaymentOption = {
            type = "string",
        },
        PaymentTerm = {
            type = "string",
        },
        UpfrontPrice = {
            type = "number",
        },
        MonthlyRecurringPrice = {
            type = "number",
        },
    },
}

M.PricingOption = {
    type = "structure",
    members = {
        PricingType = {
            type = "string",
        },
        SubscriptionPricingDetails = {
            type = "structure",
        },
    },
}

M.PricingResult = {
    PRICED = "PRICED",
    UNABLE_TO_PRICE = "UNABLE_TO_PRICE",
}

M.GetRenewalPricingOutput = {
    type = "structure",
    members = {
        PricingResult = {
            type = "string",
        },
        PricingOptions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetSiteInput = {
    type = "structure",
    members = {
        SiteId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSiteOutput = {
    type = "structure",
    members = {
        Site = {
            type = "structure",
        },
    },
}

M.GetSiteAddressInput = {
    type = "structure",
    members = {
        SiteId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AddressType = {
            type = "string",
            traits = {
                http_query = "AddressType",
                required = true,
            },
        },
    },
}

M.GetSiteAddressOutput = {
    type = "structure",
    members = {
        SiteId = {
            type = "string",
        },
        AddressType = {
            type = "string",
        },
        Address = {
            type = "structure",
        },
    },
}

M.ListAssetInstancesInput = {
    type = "structure",
    members = {
        OutpostIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AssetIdFilter = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "AssetIdFilter",
            },
        },
        InstanceTypeFilter = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "InstanceTypeFilter",
            },
        },
        AccountIdFilter = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "AccountIdFilter",
            },
        },
        AwsServiceFilter = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "AwsServiceFilter",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListAssetInstancesOutput = {
    type = "structure",
    members = {
        AssetInstances = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAssetsInput = {
    type = "structure",
    members = {
        OutpostIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        HostIdFilter = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "HostIdFilter",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        StatusFilter = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "StatusFilter",
            },
        },
        AssetTypeFilter = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "AssetTypeFilter",
            },
        },
    },
}

M.ListAssetsOutput = {
    type = "structure",
    members = {
        Assets = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListBlockingInstancesForCapacityTaskInput = {
    type = "structure",
    members = {
        OutpostIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CapacityTaskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListBlockingInstancesForCapacityTaskOutput = {
    type = "structure",
    members = {
        BlockingInstances = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCapacityTasksInput = {
    type = "structure",
    members = {
        OutpostIdentifierFilter = {
            type = "string",
            traits = {
                http_query = "OutpostIdentifierFilter",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        CapacityTaskStatusFilter = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "CapacityTaskStatusFilter",
            },
        },
    },
}

M.ListCapacityTasksOutput = {
    type = "structure",
    members = {
        CapacityTasks = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCatalogItemsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
        ItemClassFilter = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "ItemClassFilter",
            },
        },
        SupportedStorageFilter = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "SupportedStorageFilter",
            },
        },
        EC2FamilyFilter = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "EC2FamilyFilter",
            },
        },
    },
}

M.ListCatalogItemsOutput = {
    type = "structure",
    members = {
        CatalogItems = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListOrdersInput = {
    type = "structure",
    members = {
        OutpostIdentifierFilter = {
            type = "string",
            traits = {
                http_query = "OutpostIdentifierFilter",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.OrderSummary = {
    type = "structure",
    members = {
        OutpostId = {
            type = "string",
        },
        OrderId = {
            type = "string",
        },
        OrderType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        LineItemCountsByStatus = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
        OrderSubmissionDate = {
            type = "timestamp",
        },
        OrderFulfilledDate = {
            type = "timestamp",
        },
    },
}

M.ListOrdersOutput = {
    type = "structure",
    members = {
        Orders = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListOutpostsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
        LifeCycleStatusFilter = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "LifeCycleStatusFilter",
            },
        },
        AvailabilityZoneFilter = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "AvailabilityZoneFilter",
            },
        },
        AvailabilityZoneIdFilter = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "AvailabilityZoneIdFilter",
            },
        },
    },
}

M.ListOutpostsOutput = {
    type = "structure",
    members = {
        Outposts = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSitesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
        OperatingAddressCountryCodeFilter = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "OperatingAddressCountryCodeFilter",
            },
        },
        OperatingAddressStateOrRegionFilter = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "OperatingAddressStateOrRegionFilter",
            },
        },
        OperatingAddressCityFilter = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "OperatingAddressCityFilter",
            },
        },
    },
}

M.ListSitesOutput = {
    type = "structure",
    members = {
        Sites = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
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
        },
    },
}

M.StartCapacityTaskInput = {
    type = "structure",
    members = {
        OutpostIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        OrderId = {
            type = "string",
        },
        AssetId = {
            type = "string",
        },
        InstancePools = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        InstancesToExclude = {
            type = "structure",
        },
        DryRun = {
            type = "boolean",
        },
        TaskActionOnBlockingInstances = {
            type = "string",
        },
    },
}

M.StartCapacityTaskOutput = {
    type = "structure",
    members = {
        CapacityTaskId = {
            type = "string",
        },
        OutpostId = {
            type = "string",
        },
        OrderId = {
            type = "string",
        },
        AssetId = {
            type = "string",
        },
        RequestedInstancePools = {
            type = "list",
            member_type = "structure",
        },
        InstancesToExclude = {
            type = "structure",
        },
        DryRun = {
            type = "boolean",
        },
        CapacityTaskStatus = {
            type = "string",
        },
        Failed = {
            type = "structure",
        },
        CreationDate = {
            type = "timestamp",
        },
        CompletionDate = {
            type = "timestamp",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
        TaskActionOnBlockingInstances = {
            type = "string",
        },
    },
}

M.StartConnectionInput = {
    type = "structure",
    members = {
        DeviceSerialNumber = {
            type = "string",
        },
        AssetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientPublicKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NetworkInterfaceDeviceIndex = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.StartConnectionOutput = {
    type = "structure",
    members = {
        ConnectionId = {
            type = "string",
        },
        UnderlayIpAddress = {
            type = "string",
        },
    },
}

M.StartOutpostDecommissionInput = {
    type = "structure",
    members = {
        OutpostIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ValidateOnly = {
            type = "boolean",
        },
    },
}

M.StartOutpostDecommissionOutput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        BlockingResourceTypes = {
            type = "list",
            member_type = "string",
        },
    },
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

M.UpdateOutpostInput = {
    type = "structure",
    members = {
        OutpostId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        SupportedHardwareType = {
            type = "string",
        },
    },
}

M.UpdateOutpostOutput = {
    type = "structure",
    members = {
        Outpost = {
            type = "structure",
        },
    },
}

M.UpdateSiteInput = {
    type = "structure",
    members = {
        SiteId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Notes = {
            type = "string",
        },
    },
}

M.UpdateSiteOutput = {
    type = "structure",
    members = {
        Site = {
            type = "structure",
        },
    },
}

M.UpdateSiteAddressInput = {
    type = "structure",
    members = {
        SiteId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AddressType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Address = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSiteAddressOutput = {
    type = "structure",
    members = {
        AddressType = {
            type = "string",
        },
        Address = {
            type = "structure",
        },
    },
}

M.UpdateSiteRackPhysicalPropertiesInput = {
    type = "structure",
    members = {
        SiteId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PowerDrawKva = {
            type = "string",
        },
        PowerPhase = {
            type = "string",
        },
        PowerConnector = {
            type = "string",
        },
        PowerFeedDrop = {
            type = "string",
        },
        UplinkGbps = {
            type = "string",
        },
        UplinkCount = {
            type = "string",
        },
        FiberOpticCableType = {
            type = "string",
        },
        OpticalStandard = {
            type = "string",
        },
        MaximumSupportedWeightLbs = {
            type = "string",
        },
    },
}

M.UpdateSiteRackPhysicalPropertiesOutput = {
    type = "structure",
    members = {
        Site = {
            type = "structure",
        },
    },
}

return M
