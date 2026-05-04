local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Address = {
    type = "structure",
    id = "Address",
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
    id = "AssetLocation",
    members = {
        RackElevation = {
            type = "float",
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
    id = "AssetInstanceTypeCapacity",
    members = {
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Count = {
            type = "integer",
            traits = {
                default = 0,
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
    id = "ComputeAttributes",
    members = {
        HostId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        InstanceFamilies = {
            type = "list",
            member = { type = "string" },
        },
        InstanceTypeCapacities = {
            type = "list",
            member = M.AssetInstanceTypeCapacity,
        },
        MaxVcpus = {
            type = "integer",
        },
    },
}

M.AssetInfo = {
    type = "structure",
    id = "AssetInfo",
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
        ComputeAttributes = M.ComputeAttributes,
        AssetLocation = M.AssetLocation,
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
    id = "AssetInstance",
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
    id = "BlockingInstance",
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
    id = "CancelCapacityTaskInput",
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
    id = "CancelCapacityTaskOutput",
}

M.ResourceType = {
    OUTPOST = "OUTPOST",
    ORDER = "ORDER",
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
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
    id = "InternalServerException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NotFoundException = {
    type = "structure",
    id = "NotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CancelOrderInput = {
    type = "structure",
    id = "CancelOrderInput",
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
    id = "CancelOrderOutput",
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
    id = "CapacityTaskFailure",
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
    id = "CapacityTaskSummary",
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
    id = "EC2Capacity",
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
    id = "CatalogItem",
    members = {
        CatalogItemId = {
            type = "string",
        },
        ItemStatus = {
            type = "string",
        },
        EC2Capacities = {
            type = "list",
            member = M.EC2Capacity,
        },
        PowerKva = {
            type = "float",
        },
        WeightLbs = {
            type = "integer",
        },
        SupportedUplinkGbps = {
            type = "list",
            member = { type = "integer" },
        },
        SupportedStorage = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CatalogItemClass = {
    RACK = "RACK",
    SERVER = "SERVER",
}

M.ConnectionDetails = {
    type = "structure",
    id = "ConnectionDetails",
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
            member = { type = "string" },
        },
    },
}

M.LineItemRequest = {
    type = "structure",
    id = "LineItemRequest",
    members = {
        CatalogItemId = {
            type = "string",
        },
        Quantity = {
            type = "integer",
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
    id = "CreateOrderInput",
    members = {
        OutpostIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LineItems = {
            type = "list",
            member = M.LineItemRequest,
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
    id = "LineItemAssetInformation",
    members = {
        AssetId = {
            type = "string",
        },
        MacAddressList = {
            type = "list",
            member = { type = "string" },
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
    id = "ShipmentInformation",
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
    id = "LineItem",
    members = {
        CatalogItemId = {
            type = "string",
        },
        LineItemId = {
            type = "string",
        },
        Quantity = {
            type = "integer",
        },
        Status = {
            type = "string",
        },
        ShipmentInformation = M.ShipmentInformation,
        AssetInformationList = {
            type = "list",
            member = M.LineItemAssetInformation,
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
    id = "Order",
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
            member = M.LineItem,
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
    id = "CreateOrderOutput",
    members = {
        Order = M.Order,
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
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
    id = "CreateOutpostInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        SupportedHardwareType = {
            type = "string",
        },
    },
}

M.Outpost = {
    type = "structure",
    id = "Outpost",
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
            key = { type = "string" },
            value = { type = "string" },
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
    id = "CreateOutpostOutput",
    members = {
        Outpost = M.Outpost,
    },
}

M.CreateRenewalInput = {
    type = "structure",
    id = "CreateRenewalInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateRenewalOutput = {
    type = "structure",
    id = "CreateRenewalOutput",
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
            type = "float",
        },
        MonthlyRecurringPrice = {
            type = "float",
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
    id = "RackPhysicalProperties",
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
    id = "CreateSiteInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        OperatingAddress = M.Address,
        ShippingAddress = M.Address,
        RackPhysicalProperties = M.RackPhysicalProperties,
    },
}

M.Site = {
    type = "structure",
    id = "Site",
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
            key = { type = "string" },
            value = { type = "string" },
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
        RackPhysicalProperties = M.RackPhysicalProperties,
    },
}

M.CreateSiteOutput = {
    type = "structure",
    id = "CreateSiteOutput",
    members = {
        Site = M.Site,
    },
}

M.DecommissionRequestStatus = {
    SKIPPED = "SKIPPED",
    BLOCKED = "BLOCKED",
    REQUESTED = "REQUESTED",
}

M.DeleteOutpostInput = {
    type = "structure",
    id = "DeleteOutpostInput",
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
    id = "DeleteOutpostOutput",
}

M.DeleteSiteInput = {
    type = "structure",
    id = "DeleteSiteInput",
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
    id = "DeleteSiteOutput",
}

M.GetCapacityTaskInput = {
    type = "structure",
    id = "GetCapacityTaskInput",
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
    id = "InstancesToExclude",
    members = {
        Instances = {
            type = "list",
            member = { type = "string" },
        },
        AccountIds = {
            type = "list",
            member = { type = "string" },
        },
        Services = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.InstanceTypeCapacity = {
    type = "structure",
    id = "InstanceTypeCapacity",
    members = {
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Count = {
            type = "integer",
            traits = {
                default = 0,
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
    id = "GetCapacityTaskOutput",
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
            member = M.InstanceTypeCapacity,
        },
        InstancesToExclude = M.InstancesToExclude,
        DryRun = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CapacityTaskStatus = {
            type = "string",
        },
        Failed = M.CapacityTaskFailure,
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
    id = "GetCatalogItemInput",
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
    id = "GetCatalogItemOutput",
    members = {
        CatalogItem = M.CatalogItem,
    },
}

M.GetConnectionInput = {
    type = "structure",
    id = "GetConnectionInput",
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
    id = "GetConnectionOutput",
    members = {
        ConnectionId = {
            type = "string",
        },
        ConnectionDetails = M.ConnectionDetails,
    },
}

M.GetOrderInput = {
    type = "structure",
    id = "GetOrderInput",
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
    id = "GetOrderOutput",
    members = {
        Order = M.Order,
    },
}

M.GetOutpostInput = {
    type = "structure",
    id = "GetOutpostInput",
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
    id = "GetOutpostOutput",
    members = {
        Outpost = M.Outpost,
    },
}

M.GetOutpostBillingInformationInput = {
    type = "structure",
    id = "GetOutpostBillingInformationInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
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
    id = "Subscription",
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
            member = { type = "string" },
        },
        BeginDate = {
            type = "timestamp",
        },
        EndDate = {
            type = "timestamp",
        },
        MonthlyRecurringPrice = {
            type = "double",
        },
        UpfrontPrice = {
            type = "double",
        },
    },
}

M.GetOutpostBillingInformationOutput = {
    type = "structure",
    id = "GetOutpostBillingInformationOutput",
    members = {
        NextToken = {
            type = "string",
        },
        Subscriptions = {
            type = "list",
            member = M.Subscription,
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
    id = "GetOutpostInstanceTypesInput",
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
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.InstanceTypeItem = {
    type = "structure",
    id = "InstanceTypeItem",
    members = {
        InstanceType = {
            type = "string",
        },
        VCPUs = {
            type = "integer",
        },
    },
}

M.GetOutpostInstanceTypesOutput = {
    type = "structure",
    id = "GetOutpostInstanceTypesOutput",
    members = {
        InstanceTypes = {
            type = "list",
            member = M.InstanceTypeItem,
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
    id = "GetOutpostSupportedInstanceTypesInput",
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
            type = "integer",
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
    id = "GetOutpostSupportedInstanceTypesOutput",
    members = {
        InstanceTypes = {
            type = "list",
            member = M.InstanceTypeItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetRenewalPricingInput = {
    type = "structure",
    id = "GetRenewalPricingInput",
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
    id = "SubscriptionPricingDetails",
    members = {
        PaymentOption = {
            type = "string",
        },
        PaymentTerm = {
            type = "string",
        },
        UpfrontPrice = {
            type = "float",
        },
        MonthlyRecurringPrice = {
            type = "float",
        },
    },
}

M.PricingOption = {
    type = "structure",
    id = "PricingOption",
    members = {
        PricingType = {
            type = "string",
        },
        SubscriptionPricingDetails = M.SubscriptionPricingDetails,
    },
}

M.PricingResult = {
    PRICED = "PRICED",
    UNABLE_TO_PRICE = "UNABLE_TO_PRICE",
}

M.GetRenewalPricingOutput = {
    type = "structure",
    id = "GetRenewalPricingOutput",
    members = {
        PricingResult = {
            type = "string",
        },
        PricingOptions = {
            type = "list",
            member = M.PricingOption,
        },
    },
}

M.GetSiteInput = {
    type = "structure",
    id = "GetSiteInput",
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
    id = "GetSiteOutput",
    members = {
        Site = M.Site,
    },
}

M.GetSiteAddressInput = {
    type = "structure",
    id = "GetSiteAddressInput",
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
    id = "GetSiteAddressOutput",
    members = {
        SiteId = {
            type = "string",
        },
        AddressType = {
            type = "string",
        },
        Address = M.Address,
    },
}

M.ListAssetInstancesInput = {
    type = "structure",
    id = "ListAssetInstancesInput",
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
            member = { type = "string" },
            traits = {
                http_query = "AssetIdFilter",
            },
        },
        InstanceTypeFilter = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "InstanceTypeFilter",
            },
        },
        AccountIdFilter = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "AccountIdFilter",
            },
        },
        AwsServiceFilter = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "AwsServiceFilter",
            },
        },
        MaxResults = {
            type = "integer",
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
    id = "ListAssetInstancesOutput",
    members = {
        AssetInstances = {
            type = "list",
            member = M.AssetInstance,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAssetsInput = {
    type = "structure",
    id = "ListAssetsInput",
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
            member = { type = "string" },
            traits = {
                http_query = "HostIdFilter",
            },
        },
        MaxResults = {
            type = "integer",
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
            member = { type = "string" },
            traits = {
                http_query = "StatusFilter",
            },
        },
        AssetTypeFilter = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "AssetTypeFilter",
            },
        },
    },
}

M.ListAssetsOutput = {
    type = "structure",
    id = "ListAssetsOutput",
    members = {
        Assets = {
            type = "list",
            member = M.AssetInfo,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListBlockingInstancesForCapacityTaskInput = {
    type = "structure",
    id = "ListBlockingInstancesForCapacityTaskInput",
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
            type = "integer",
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
    id = "ListBlockingInstancesForCapacityTaskOutput",
    members = {
        BlockingInstances = {
            type = "list",
            member = M.BlockingInstance,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCapacityTasksInput = {
    type = "structure",
    id = "ListCapacityTasksInput",
    members = {
        OutpostIdentifierFilter = {
            type = "string",
            traits = {
                http_query = "OutpostIdentifierFilter",
            },
        },
        MaxResults = {
            type = "integer",
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
            member = { type = "string" },
            traits = {
                http_query = "CapacityTaskStatusFilter",
            },
        },
    },
}

M.ListCapacityTasksOutput = {
    type = "structure",
    id = "ListCapacityTasksOutput",
    members = {
        CapacityTasks = {
            type = "list",
            member = M.CapacityTaskSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCatalogItemsInput = {
    type = "structure",
    id = "ListCatalogItemsInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        ItemClassFilter = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "ItemClassFilter",
            },
        },
        SupportedStorageFilter = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "SupportedStorageFilter",
            },
        },
        EC2FamilyFilter = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "EC2FamilyFilter",
            },
        },
    },
}

M.ListCatalogItemsOutput = {
    type = "structure",
    id = "ListCatalogItemsOutput",
    members = {
        CatalogItems = {
            type = "list",
            member = M.CatalogItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListOrdersInput = {
    type = "structure",
    id = "ListOrdersInput",
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
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.OrderSummary = {
    type = "structure",
    id = "OrderSummary",
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
            key = { type = "string" },
            value = { type = "integer" },
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
    id = "ListOrdersOutput",
    members = {
        Orders = {
            type = "list",
            member = M.OrderSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListOutpostsInput = {
    type = "structure",
    id = "ListOutpostsInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        LifeCycleStatusFilter = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "LifeCycleStatusFilter",
            },
        },
        AvailabilityZoneFilter = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "AvailabilityZoneFilter",
            },
        },
        AvailabilityZoneIdFilter = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "AvailabilityZoneIdFilter",
            },
        },
    },
}

M.ListOutpostsOutput = {
    type = "structure",
    id = "ListOutpostsOutput",
    members = {
        Outposts = {
            type = "list",
            member = M.Outpost,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSitesInput = {
    type = "structure",
    id = "ListSitesInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        OperatingAddressCountryCodeFilter = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "OperatingAddressCountryCodeFilter",
            },
        },
        OperatingAddressStateOrRegionFilter = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "OperatingAddressStateOrRegionFilter",
            },
        },
        OperatingAddressCityFilter = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "OperatingAddressCityFilter",
            },
        },
    },
}

M.ListSitesOutput = {
    type = "structure",
    id = "ListSitesOutput",
    members = {
        Sites = {
            type = "list",
            member = M.Site,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartCapacityTaskInput = {
    type = "structure",
    id = "StartCapacityTaskInput",
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
            member = M.InstanceTypeCapacity,
            traits = {
                required = true,
            },
        },
        InstancesToExclude = M.InstancesToExclude,
        DryRun = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        TaskActionOnBlockingInstances = {
            type = "string",
        },
    },
}

M.StartCapacityTaskOutput = {
    type = "structure",
    id = "StartCapacityTaskOutput",
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
            member = M.InstanceTypeCapacity,
        },
        InstancesToExclude = M.InstancesToExclude,
        DryRun = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CapacityTaskStatus = {
            type = "string",
        },
        Failed = M.CapacityTaskFailure,
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
    id = "StartConnectionInput",
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
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.StartConnectionOutput = {
    type = "structure",
    id = "StartConnectionOutput",
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
    id = "StartOutpostDecommissionInput",
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
            traits = {
                default = false,
            },
        },
    },
}

M.StartOutpostDecommissionOutput = {
    type = "structure",
    id = "StartOutpostDecommissionOutput",
    members = {
        Status = {
            type = "string",
        },
        BlockingResourceTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

M.UpdateOutpostInput = {
    type = "structure",
    id = "UpdateOutpostInput",
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
    id = "UpdateOutpostOutput",
    members = {
        Outpost = M.Outpost,
    },
}

M.UpdateSiteInput = {
    type = "structure",
    id = "UpdateSiteInput",
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
    id = "UpdateSiteOutput",
    members = {
        Site = M.Site,
    },
}

M.UpdateSiteAddressInput = {
    type = "structure",
    id = "UpdateSiteAddressInput",
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
        Address = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Address }),
    },
}

M.UpdateSiteAddressOutput = {
    type = "structure",
    id = "UpdateSiteAddressOutput",
    members = {
        AddressType = {
            type = "string",
        },
        Address = M.Address,
    },
}

M.UpdateSiteRackPhysicalPropertiesInput = {
    type = "structure",
    id = "UpdateSiteRackPhysicalPropertiesInput",
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
    id = "UpdateSiteRackPhysicalPropertiesOutput",
    members = {
        Site = M.Site,
    },
}

return M
