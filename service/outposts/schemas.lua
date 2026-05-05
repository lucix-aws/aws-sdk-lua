local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.outposts"

local M = {}

M.LineItemRequestListDefinition = schema.new({ type = "list", list_member = M.LineItemRequest })

M.TagMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.RequestedInstancePools = schema.new({ type = "list", list_member = M.InstanceTypeCapacity })

M.SubscriptionList = schema.new({ type = "list", list_member = M.Subscription })

M.InstanceTypeListDefinition = schema.new({ type = "list", list_member = M.InstanceTypeItem })

M.PricingOptionList = schema.new({ type = "list", list_member = M.PricingOption })

M.AssetIdList = schema.new({ type = "list", list_member = prelude.String })

M.OutpostInstanceTypeList = schema.new({ type = "list", list_member = prelude.String })

M.AccountIdList = schema.new({ type = "list", list_member = prelude.String })

M.AWSServiceNameList = schema.new({ type = "list", list_member = prelude.String })

M.AssetInstanceList = schema.new({ type = "list", list_member = M.AssetInstance })

M.HostIdList = schema.new({ type = "list", list_member = prelude.String })

M.StatusList = schema.new({ type = "list", list_member = prelude.String })

M.AssetTypeList = schema.new({ type = "list", list_member = prelude.String })

M.AssetListDefinition = schema.new({ type = "list", list_member = M.AssetInfo })

M.BlockingInstancesList = schema.new({ type = "list", list_member = M.BlockingInstance })

M.CapacityTaskStatusList = schema.new({ type = "list", list_member = prelude.String })

M.CapacityTaskList = schema.new({ type = "list", list_member = M.CapacityTaskSummary })

M.CatalogItemClassList = schema.new({ type = "list", list_member = prelude.String })

M.SupportedStorageList = schema.new({ type = "list", list_member = prelude.String })

M.EC2FamilyList = schema.new({ type = "list", list_member = prelude.String })

M.CatalogItemListDefinition = schema.new({ type = "list", list_member = M.CatalogItem })

M.OrderSummaryListDefinition = schema.new({ type = "list", list_member = M.OrderSummary })

M.LifeCycleStatusList = schema.new({ type = "list", list_member = prelude.String })

M.AvailabilityZoneList = schema.new({ type = "list", list_member = prelude.String })

M.AvailabilityZoneIdList = schema.new({ type = "list", list_member = prelude.String })

M.outpostListDefinition = schema.new({ type = "list", list_member = M.Outpost })

M.CountryCodeList = schema.new({ type = "list", list_member = prelude.String })

M.StateOrRegionList = schema.new({ type = "list", list_member = prelude.String })

M.CityList = schema.new({ type = "list", list_member = prelude.String })

M.siteListDefinition = schema.new({ type = "list", list_member = M.Site })

M.BlockingResourceTypeList = schema.new({ type = "list", list_member = prelude.String })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.LineItemListDefinition = schema.new({ type = "list", list_member = M.LineItem })

M.InstanceIdList = schema.new({ type = "list", list_member = prelude.String })

M.EC2CapacityListDefinition = schema.new({ type = "list", list_member = M.EC2Capacity })

M.SupportedUplinkGbpsListDefinition = schema.new({ type = "list", list_member = prelude.Integer })

M.CIDRList = schema.new({ type = "list", list_member = prelude.String })

M.OrderIdList = schema.new({ type = "list", list_member = prelude.String })

M.LineItemStatusCounts = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.Integer })

M.LineItemAssetInformationList = schema.new({ type = "list", list_member = M.LineItemAssetInformation })

M.InstanceFamilies = schema.new({ type = "list", list_member = prelude.String })

M.AssetInstanceCapacityList = schema.new({ type = "list", list_member = M.AssetInstanceTypeCapacity })

M.MacAddressList = schema.new({ type = "list", list_member = prelude.String })

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "AccessDeniedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.Address = schema.new({
    id = id.from(_N, "Address"),
    type = "structure",
    members = {
        ContactName = schema.new({
            id = id.from(_N, "Address", "ContactName"),
            type = "string",
            name = "ContactName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ContactPhoneNumber = schema.new({
            id = id.from(_N, "Address", "ContactPhoneNumber"),
            type = "string",
            name = "ContactPhoneNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AddressLine1 = schema.new({
            id = id.from(_N, "Address", "AddressLine1"),
            type = "string",
            name = "AddressLine1",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AddressLine2 = schema.new({
            id = id.from(_N, "Address", "AddressLine2"),
            type = "string",
            name = "AddressLine2",
            target_id = prelude.String.id,
        }),
        AddressLine3 = schema.new({
            id = id.from(_N, "Address", "AddressLine3"),
            type = "string",
            name = "AddressLine3",
            target_id = prelude.String.id,
        }),
        City = schema.new({
            id = id.from(_N, "Address", "City"),
            type = "string",
            name = "City",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StateOrRegion = schema.new({
            id = id.from(_N, "Address", "StateOrRegion"),
            type = "string",
            name = "StateOrRegion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DistrictOrCounty = schema.new({
            id = id.from(_N, "Address", "DistrictOrCounty"),
            type = "string",
            name = "DistrictOrCounty",
            target_id = prelude.String.id,
        }),
        PostalCode = schema.new({
            id = id.from(_N, "Address", "PostalCode"),
            type = "string",
            name = "PostalCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CountryCode = schema.new({
            id = id.from(_N, "Address", "CountryCode"),
            type = "string",
            name = "CountryCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Municipality = schema.new({
            id = id.from(_N, "Address", "Municipality"),
            type = "string",
            name = "Municipality",
            target_id = prelude.String.id,
        }),
    },
})

M.AssetLocation = schema.new({
    id = id.from(_N, "AssetLocation"),
    type = "structure",
    members = {
        RackElevation = schema.new({
            id = id.from(_N, "AssetLocation", "RackElevation"),
            type = "float",
            name = "RackElevation",
            target_id = prelude.Float.id,
        }),
    },
})

M.AssetInstanceTypeCapacity = schema.new({
    id = id.from(_N, "AssetInstanceTypeCapacity"),
    type = "structure",
    members = {
        InstanceType = schema.new({
            id = id.from(_N, "AssetInstanceTypeCapacity", "InstanceType"),
            type = "string",
            name = "InstanceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Count = schema.new({
            id = id.from(_N, "AssetInstanceTypeCapacity", "Count"),
            type = "integer",
            name = "Count",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ComputeAttributes = schema.new({
    id = id.from(_N, "ComputeAttributes"),
    type = "structure",
    members = {
        HostId = schema.new({
            id = id.from(_N, "ComputeAttributes", "HostId"),
            type = "string",
            name = "HostId",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "ComputeAttributes", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        InstanceFamilies = schema.new({
            id = id.from(_N, "ComputeAttributes", "InstanceFamilies"),
            type = "list",
            name = "InstanceFamilies",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        InstanceTypeCapacities = schema.new({
            id = id.from(_N, "ComputeAttributes", "InstanceTypeCapacities"),
            type = "list",
            name = "InstanceTypeCapacities",
            target_id = prelude.Document.id,
            list_member = M.AssetInstanceTypeCapacity,
        }),
        MaxVcpus = schema.new({
            id = id.from(_N, "ComputeAttributes", "MaxVcpus"),
            type = "integer",
            name = "MaxVcpus",
            target_id = prelude.Integer.id,
        }),
    },
})

M.AssetInfo = schema.new({
    id = id.from(_N, "AssetInfo"),
    type = "structure",
    members = {
        AssetId = schema.new({
            id = id.from(_N, "AssetInfo", "AssetId"),
            type = "string",
            name = "AssetId",
            target_id = prelude.String.id,
        }),
        RackId = schema.new({
            id = id.from(_N, "AssetInfo", "RackId"),
            type = "string",
            name = "RackId",
            target_id = prelude.String.id,
        }),
        AssetType = schema.new({
            id = id.from(_N, "AssetInfo", "AssetType"),
            type = "string",
            name = "AssetType",
            target_id = prelude.String.id,
        }),
        ComputeAttributes = schema.new({
            id = id.from(_N, "AssetInfo", "ComputeAttributes"),
            type = "structure",
            name = "ComputeAttributes",
            target_id = id.from(_N, "ComputeAttributes"),
            target = M.ComputeAttributes,
        }),
        AssetLocation = schema.new({
            id = id.from(_N, "AssetInfo", "AssetLocation"),
            type = "structure",
            name = "AssetLocation",
            target_id = id.from(_N, "AssetLocation"),
            target = M.AssetLocation,
        }),
    },
})

M.AssetInstance = schema.new({
    id = id.from(_N, "AssetInstance"),
    type = "structure",
    members = {
        InstanceId = schema.new({
            id = id.from(_N, "AssetInstance", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
        }),
        InstanceType = schema.new({
            id = id.from(_N, "AssetInstance", "InstanceType"),
            type = "string",
            name = "InstanceType",
            target_id = prelude.String.id,
        }),
        AssetId = schema.new({
            id = id.from(_N, "AssetInstance", "AssetId"),
            type = "string",
            name = "AssetId",
            target_id = prelude.String.id,
        }),
        AccountId = schema.new({
            id = id.from(_N, "AssetInstance", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        AwsServiceName = schema.new({
            id = id.from(_N, "AssetInstance", "AwsServiceName"),
            type = "string",
            name = "AwsServiceName",
            target_id = prelude.String.id,
        }),
    },
})

M.BlockingInstance = schema.new({
    id = id.from(_N, "BlockingInstance"),
    type = "structure",
    members = {
        InstanceId = schema.new({
            id = id.from(_N, "BlockingInstance", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
        }),
        AccountId = schema.new({
            id = id.from(_N, "BlockingInstance", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        AwsServiceName = schema.new({
            id = id.from(_N, "BlockingInstance", "AwsServiceName"),
            type = "string",
            name = "AwsServiceName",
            target_id = prelude.String.id,
        }),
    },
})

M.CancelCapacityTaskInput = schema.new({
    id = id.from(_N, "CancelCapacityTaskInput"),
    type = "structure",
    members = {
        CapacityTaskId = schema.new({
            id = id.from(_N, "CancelCapacityTaskInput", "CapacityTaskId"),
            type = "string",
            name = "CapacityTaskId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        OutpostIdentifier = schema.new({
            id = id.from(_N, "CancelCapacityTaskInput", "OutpostIdentifier"),
            type = "string",
            name = "OutpostIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.CancelCapacityTaskOutput = schema.new({
    id = id.from(_N, "CancelCapacityTaskOutput"),
    type = "structure",
})

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ConflictException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ConflictException", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ConflictException", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
    },
})

M.InternalServerException = schema.new({
    id = id.from(_N, "InternalServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InternalServerException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
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
        Message = schema.new({
            id = id.from(_N, "NotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ValidationException = schema.new({
    id = id.from(_N, "ValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ValidationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CancelOrderInput = schema.new({
    id = id.from(_N, "CancelOrderInput"),
    type = "structure",
    members = {
        OrderId = schema.new({
            id = id.from(_N, "CancelOrderInput", "OrderId"),
            type = "string",
            name = "OrderId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.CancelOrderOutput = schema.new({
    id = id.from(_N, "CancelOrderOutput"),
    type = "structure",
})

M.CapacityTaskFailure = schema.new({
    id = id.from(_N, "CapacityTaskFailure"),
    type = "structure",
    members = {
        Reason = schema.new({
            id = id.from(_N, "CapacityTaskFailure", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "CapacityTaskFailure", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.CapacityTaskSummary = schema.new({
    id = id.from(_N, "CapacityTaskSummary"),
    type = "structure",
    members = {
        CapacityTaskId = schema.new({
            id = id.from(_N, "CapacityTaskSummary", "CapacityTaskId"),
            type = "string",
            name = "CapacityTaskId",
            target_id = prelude.String.id,
        }),
        OutpostId = schema.new({
            id = id.from(_N, "CapacityTaskSummary", "OutpostId"),
            type = "string",
            name = "OutpostId",
            target_id = prelude.String.id,
        }),
        OrderId = schema.new({
            id = id.from(_N, "CapacityTaskSummary", "OrderId"),
            type = "string",
            name = "OrderId",
            target_id = prelude.String.id,
        }),
        AssetId = schema.new({
            id = id.from(_N, "CapacityTaskSummary", "AssetId"),
            type = "string",
            name = "AssetId",
            target_id = prelude.String.id,
        }),
        CapacityTaskStatus = schema.new({
            id = id.from(_N, "CapacityTaskSummary", "CapacityTaskStatus"),
            type = "string",
            name = "CapacityTaskStatus",
            target_id = prelude.String.id,
        }),
        CreationDate = schema.new({
            id = id.from(_N, "CapacityTaskSummary", "CreationDate"),
            type = "timestamp",
            name = "CreationDate",
            target_id = prelude.Timestamp.id,
        }),
        CompletionDate = schema.new({
            id = id.from(_N, "CapacityTaskSummary", "CompletionDate"),
            type = "timestamp",
            name = "CompletionDate",
            target_id = prelude.Timestamp.id,
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "CapacityTaskSummary", "LastModifiedDate"),
            type = "timestamp",
            name = "LastModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.EC2Capacity = schema.new({
    id = id.from(_N, "EC2Capacity"),
    type = "structure",
    members = {
        Family = schema.new({
            id = id.from(_N, "EC2Capacity", "Family"),
            type = "string",
            name = "Family",
            target_id = prelude.String.id,
        }),
        MaxSize = schema.new({
            id = id.from(_N, "EC2Capacity", "MaxSize"),
            type = "string",
            name = "MaxSize",
            target_id = prelude.String.id,
        }),
        Quantity = schema.new({
            id = id.from(_N, "EC2Capacity", "Quantity"),
            type = "string",
            name = "Quantity",
            target_id = prelude.String.id,
        }),
    },
})

M.CatalogItem = schema.new({
    id = id.from(_N, "CatalogItem"),
    type = "structure",
    members = {
        CatalogItemId = schema.new({
            id = id.from(_N, "CatalogItem", "CatalogItemId"),
            type = "string",
            name = "CatalogItemId",
            target_id = prelude.String.id,
        }),
        ItemStatus = schema.new({
            id = id.from(_N, "CatalogItem", "ItemStatus"),
            type = "string",
            name = "ItemStatus",
            target_id = prelude.String.id,
        }),
        EC2Capacities = schema.new({
            id = id.from(_N, "CatalogItem", "EC2Capacities"),
            type = "list",
            name = "EC2Capacities",
            target_id = prelude.Document.id,
            list_member = M.EC2Capacity,
        }),
        PowerKva = schema.new({
            id = id.from(_N, "CatalogItem", "PowerKva"),
            type = "float",
            name = "PowerKva",
            target_id = prelude.Float.id,
        }),
        WeightLbs = schema.new({
            id = id.from(_N, "CatalogItem", "WeightLbs"),
            type = "integer",
            name = "WeightLbs",
            target_id = prelude.Integer.id,
        }),
        SupportedUplinkGbps = schema.new({
            id = id.from(_N, "CatalogItem", "SupportedUplinkGbps"),
            type = "list",
            name = "SupportedUplinkGbps",
            target_id = prelude.Document.id,
            list_member = prelude.Integer,
        }),
        SupportedStorage = schema.new({
            id = id.from(_N, "CatalogItem", "SupportedStorage"),
            type = "list",
            name = "SupportedStorage",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ConnectionDetails = schema.new({
    id = id.from(_N, "ConnectionDetails"),
    type = "structure",
    members = {
        ClientPublicKey = schema.new({
            id = id.from(_N, "ConnectionDetails", "ClientPublicKey"),
            type = "string",
            name = "ClientPublicKey",
            target_id = prelude.String.id,
        }),
        ServerPublicKey = schema.new({
            id = id.from(_N, "ConnectionDetails", "ServerPublicKey"),
            type = "string",
            name = "ServerPublicKey",
            target_id = prelude.String.id,
        }),
        ServerEndpoint = schema.new({
            id = id.from(_N, "ConnectionDetails", "ServerEndpoint"),
            type = "string",
            name = "ServerEndpoint",
            target_id = prelude.String.id,
        }),
        ClientTunnelAddress = schema.new({
            id = id.from(_N, "ConnectionDetails", "ClientTunnelAddress"),
            type = "string",
            name = "ClientTunnelAddress",
            target_id = prelude.String.id,
        }),
        ServerTunnelAddress = schema.new({
            id = id.from(_N, "ConnectionDetails", "ServerTunnelAddress"),
            type = "string",
            name = "ServerTunnelAddress",
            target_id = prelude.String.id,
        }),
        AllowedIps = schema.new({
            id = id.from(_N, "ConnectionDetails", "AllowedIps"),
            type = "list",
            name = "AllowedIps",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.LineItemRequest = schema.new({
    id = id.from(_N, "LineItemRequest"),
    type = "structure",
    members = {
        CatalogItemId = schema.new({
            id = id.from(_N, "LineItemRequest", "CatalogItemId"),
            type = "string",
            name = "CatalogItemId",
            target_id = prelude.String.id,
        }),
        Quantity = schema.new({
            id = id.from(_N, "LineItemRequest", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CreateOrderInput = schema.new({
    id = id.from(_N, "CreateOrderInput"),
    type = "structure",
    members = {
        OutpostIdentifier = schema.new({
            id = id.from(_N, "CreateOrderInput", "OutpostIdentifier"),
            type = "string",
            name = "OutpostIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LineItems = schema.new({
            id = id.from(_N, "CreateOrderInput", "LineItems"),
            type = "list",
            name = "LineItems",
            target_id = prelude.Document.id,
            list_member = M.LineItemRequest,
        }),
        PaymentOption = schema.new({
            id = id.from(_N, "CreateOrderInput", "PaymentOption"),
            type = "string",
            name = "PaymentOption",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PaymentTerm = schema.new({
            id = id.from(_N, "CreateOrderInput", "PaymentTerm"),
            type = "string",
            name = "PaymentTerm",
            target_id = prelude.String.id,
        }),
    },
})

M.LineItemAssetInformation = schema.new({
    id = id.from(_N, "LineItemAssetInformation"),
    type = "structure",
    members = {
        AssetId = schema.new({
            id = id.from(_N, "LineItemAssetInformation", "AssetId"),
            type = "string",
            name = "AssetId",
            target_id = prelude.String.id,
        }),
        MacAddressList = schema.new({
            id = id.from(_N, "LineItemAssetInformation", "MacAddressList"),
            type = "list",
            name = "MacAddressList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ShipmentInformation = schema.new({
    id = id.from(_N, "ShipmentInformation"),
    type = "structure",
    members = {
        ShipmentTrackingNumber = schema.new({
            id = id.from(_N, "ShipmentInformation", "ShipmentTrackingNumber"),
            type = "string",
            name = "ShipmentTrackingNumber",
            target_id = prelude.String.id,
        }),
        ShipmentCarrier = schema.new({
            id = id.from(_N, "ShipmentInformation", "ShipmentCarrier"),
            type = "string",
            name = "ShipmentCarrier",
            target_id = prelude.String.id,
        }),
    },
})

M.LineItem = schema.new({
    id = id.from(_N, "LineItem"),
    type = "structure",
    members = {
        CatalogItemId = schema.new({
            id = id.from(_N, "LineItem", "CatalogItemId"),
            type = "string",
            name = "CatalogItemId",
            target_id = prelude.String.id,
        }),
        LineItemId = schema.new({
            id = id.from(_N, "LineItem", "LineItemId"),
            type = "string",
            name = "LineItemId",
            target_id = prelude.String.id,
        }),
        Quantity = schema.new({
            id = id.from(_N, "LineItem", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
        }),
        Status = schema.new({
            id = id.from(_N, "LineItem", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        ShipmentInformation = schema.new({
            id = id.from(_N, "LineItem", "ShipmentInformation"),
            type = "structure",
            name = "ShipmentInformation",
            target_id = id.from(_N, "ShipmentInformation"),
            target = M.ShipmentInformation,
        }),
        AssetInformationList = schema.new({
            id = id.from(_N, "LineItem", "AssetInformationList"),
            type = "list",
            name = "AssetInformationList",
            target_id = prelude.Document.id,
            list_member = M.LineItemAssetInformation,
        }),
        PreviousLineItemId = schema.new({
            id = id.from(_N, "LineItem", "PreviousLineItemId"),
            type = "string",
            name = "PreviousLineItemId",
            target_id = prelude.String.id,
        }),
        PreviousOrderId = schema.new({
            id = id.from(_N, "LineItem", "PreviousOrderId"),
            type = "string",
            name = "PreviousOrderId",
            target_id = prelude.String.id,
        }),
    },
})

M.Order = schema.new({
    id = id.from(_N, "Order"),
    type = "structure",
    members = {
        OutpostId = schema.new({
            id = id.from(_N, "Order", "OutpostId"),
            type = "string",
            name = "OutpostId",
            target_id = prelude.String.id,
        }),
        OrderId = schema.new({
            id = id.from(_N, "Order", "OrderId"),
            type = "string",
            name = "OrderId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "Order", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        LineItems = schema.new({
            id = id.from(_N, "Order", "LineItems"),
            type = "list",
            name = "LineItems",
            target_id = prelude.Document.id,
            list_member = M.LineItem,
        }),
        PaymentOption = schema.new({
            id = id.from(_N, "Order", "PaymentOption"),
            type = "string",
            name = "PaymentOption",
            target_id = prelude.String.id,
        }),
        OrderSubmissionDate = schema.new({
            id = id.from(_N, "Order", "OrderSubmissionDate"),
            type = "timestamp",
            name = "OrderSubmissionDate",
            target_id = prelude.Timestamp.id,
        }),
        OrderFulfilledDate = schema.new({
            id = id.from(_N, "Order", "OrderFulfilledDate"),
            type = "timestamp",
            name = "OrderFulfilledDate",
            target_id = prelude.Timestamp.id,
        }),
        PaymentTerm = schema.new({
            id = id.from(_N, "Order", "PaymentTerm"),
            type = "string",
            name = "PaymentTerm",
            target_id = prelude.String.id,
        }),
        OrderType = schema.new({
            id = id.from(_N, "Order", "OrderType"),
            type = "string",
            name = "OrderType",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateOrderOutput = schema.new({
    id = id.from(_N, "CreateOrderOutput"),
    type = "structure",
    members = {
        Order = schema.new({
            id = id.from(_N, "CreateOrderOutput", "Order"),
            type = "structure",
            name = "Order",
            target_id = id.from(_N, "Order"),
            target = M.Order,
        }),
    },
})

M.ServiceQuotaExceededException = schema.new({
    id = id.from(_N, "ServiceQuotaExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateOutpostInput = schema.new({
    id = id.from(_N, "CreateOutpostInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateOutpostInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateOutpostInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        SiteId = schema.new({
            id = id.from(_N, "CreateOutpostInput", "SiteId"),
            type = "string",
            name = "SiteId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AvailabilityZone = schema.new({
            id = id.from(_N, "CreateOutpostInput", "AvailabilityZone"),
            type = "string",
            name = "AvailabilityZone",
            target_id = prelude.String.id,
        }),
        AvailabilityZoneId = schema.new({
            id = id.from(_N, "CreateOutpostInput", "AvailabilityZoneId"),
            type = "string",
            name = "AvailabilityZoneId",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateOutpostInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        SupportedHardwareType = schema.new({
            id = id.from(_N, "CreateOutpostInput", "SupportedHardwareType"),
            type = "string",
            name = "SupportedHardwareType",
            target_id = prelude.String.id,
        }),
    },
})

M.Outpost = schema.new({
    id = id.from(_N, "Outpost"),
    type = "structure",
    members = {
        OutpostId = schema.new({
            id = id.from(_N, "Outpost", "OutpostId"),
            type = "string",
            name = "OutpostId",
            target_id = prelude.String.id,
        }),
        OwnerId = schema.new({
            id = id.from(_N, "Outpost", "OwnerId"),
            type = "string",
            name = "OwnerId",
            target_id = prelude.String.id,
        }),
        OutpostArn = schema.new({
            id = id.from(_N, "Outpost", "OutpostArn"),
            type = "string",
            name = "OutpostArn",
            target_id = prelude.String.id,
        }),
        SiteId = schema.new({
            id = id.from(_N, "Outpost", "SiteId"),
            type = "string",
            name = "SiteId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "Outpost", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "Outpost", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        LifeCycleStatus = schema.new({
            id = id.from(_N, "Outpost", "LifeCycleStatus"),
            type = "string",
            name = "LifeCycleStatus",
            target_id = prelude.String.id,
        }),
        AvailabilityZone = schema.new({
            id = id.from(_N, "Outpost", "AvailabilityZone"),
            type = "string",
            name = "AvailabilityZone",
            target_id = prelude.String.id,
        }),
        AvailabilityZoneId = schema.new({
            id = id.from(_N, "Outpost", "AvailabilityZoneId"),
            type = "string",
            name = "AvailabilityZoneId",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "Outpost", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        SiteArn = schema.new({
            id = id.from(_N, "Outpost", "SiteArn"),
            type = "string",
            name = "SiteArn",
            target_id = prelude.String.id,
        }),
        SupportedHardwareType = schema.new({
            id = id.from(_N, "Outpost", "SupportedHardwareType"),
            type = "string",
            name = "SupportedHardwareType",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateOutpostOutput = schema.new({
    id = id.from(_N, "CreateOutpostOutput"),
    type = "structure",
    members = {
        Outpost = schema.new({
            id = id.from(_N, "CreateOutpostOutput", "Outpost"),
            type = "structure",
            name = "Outpost",
            target_id = id.from(_N, "Outpost"),
            target = M.Outpost,
        }),
    },
})

M.CreateRenewalInput = schema.new({
    id = id.from(_N, "CreateRenewalInput"),
    type = "structure",
    members = {
        PaymentOption = schema.new({
            id = id.from(_N, "CreateRenewalInput", "PaymentOption"),
            type = "string",
            name = "PaymentOption",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PaymentTerm = schema.new({
            id = id.from(_N, "CreateRenewalInput", "PaymentTerm"),
            type = "string",
            name = "PaymentTerm",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OutpostIdentifier = schema.new({
            id = id.from(_N, "CreateRenewalInput", "OutpostIdentifier"),
            type = "string",
            name = "OutpostIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateRenewalInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateRenewalOutput = schema.new({
    id = id.from(_N, "CreateRenewalOutput"),
    type = "structure",
    members = {
        PaymentOption = schema.new({
            id = id.from(_N, "CreateRenewalOutput", "PaymentOption"),
            type = "string",
            name = "PaymentOption",
            target_id = prelude.String.id,
        }),
        PaymentTerm = schema.new({
            id = id.from(_N, "CreateRenewalOutput", "PaymentTerm"),
            type = "string",
            name = "PaymentTerm",
            target_id = prelude.String.id,
        }),
        OutpostId = schema.new({
            id = id.from(_N, "CreateRenewalOutput", "OutpostId"),
            type = "string",
            name = "OutpostId",
            target_id = prelude.String.id,
        }),
        UpfrontPrice = schema.new({
            id = id.from(_N, "CreateRenewalOutput", "UpfrontPrice"),
            type = "float",
            name = "UpfrontPrice",
            target_id = prelude.Float.id,
        }),
        MonthlyRecurringPrice = schema.new({
            id = id.from(_N, "CreateRenewalOutput", "MonthlyRecurringPrice"),
            type = "float",
            name = "MonthlyRecurringPrice",
            target_id = prelude.Float.id,
        }),
    },
})

M.RackPhysicalProperties = schema.new({
    id = id.from(_N, "RackPhysicalProperties"),
    type = "structure",
    members = {
        PowerDrawKva = schema.new({
            id = id.from(_N, "RackPhysicalProperties", "PowerDrawKva"),
            type = "string",
            name = "PowerDrawKva",
            target_id = prelude.String.id,
        }),
        PowerPhase = schema.new({
            id = id.from(_N, "RackPhysicalProperties", "PowerPhase"),
            type = "string",
            name = "PowerPhase",
            target_id = prelude.String.id,
        }),
        PowerConnector = schema.new({
            id = id.from(_N, "RackPhysicalProperties", "PowerConnector"),
            type = "string",
            name = "PowerConnector",
            target_id = prelude.String.id,
        }),
        PowerFeedDrop = schema.new({
            id = id.from(_N, "RackPhysicalProperties", "PowerFeedDrop"),
            type = "string",
            name = "PowerFeedDrop",
            target_id = prelude.String.id,
        }),
        UplinkGbps = schema.new({
            id = id.from(_N, "RackPhysicalProperties", "UplinkGbps"),
            type = "string",
            name = "UplinkGbps",
            target_id = prelude.String.id,
        }),
        UplinkCount = schema.new({
            id = id.from(_N, "RackPhysicalProperties", "UplinkCount"),
            type = "string",
            name = "UplinkCount",
            target_id = prelude.String.id,
        }),
        FiberOpticCableType = schema.new({
            id = id.from(_N, "RackPhysicalProperties", "FiberOpticCableType"),
            type = "string",
            name = "FiberOpticCableType",
            target_id = prelude.String.id,
        }),
        OpticalStandard = schema.new({
            id = id.from(_N, "RackPhysicalProperties", "OpticalStandard"),
            type = "string",
            name = "OpticalStandard",
            target_id = prelude.String.id,
        }),
        MaximumSupportedWeightLbs = schema.new({
            id = id.from(_N, "RackPhysicalProperties", "MaximumSupportedWeightLbs"),
            type = "string",
            name = "MaximumSupportedWeightLbs",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateSiteInput = schema.new({
    id = id.from(_N, "CreateSiteInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateSiteInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateSiteInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Notes = schema.new({
            id = id.from(_N, "CreateSiteInput", "Notes"),
            type = "string",
            name = "Notes",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateSiteInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        OperatingAddress = schema.new({
            id = id.from(_N, "CreateSiteInput", "OperatingAddress"),
            type = "structure",
            name = "OperatingAddress",
            target_id = id.from(_N, "Address"),
            target = M.Address,
        }),
        ShippingAddress = schema.new({
            id = id.from(_N, "CreateSiteInput", "ShippingAddress"),
            type = "structure",
            name = "ShippingAddress",
            target_id = id.from(_N, "Address"),
            target = M.Address,
        }),
        RackPhysicalProperties = schema.new({
            id = id.from(_N, "CreateSiteInput", "RackPhysicalProperties"),
            type = "structure",
            name = "RackPhysicalProperties",
            target_id = id.from(_N, "RackPhysicalProperties"),
            target = M.RackPhysicalProperties,
        }),
    },
})

M.Site = schema.new({
    id = id.from(_N, "Site"),
    type = "structure",
    members = {
        SiteId = schema.new({
            id = id.from(_N, "Site", "SiteId"),
            type = "string",
            name = "SiteId",
            target_id = prelude.String.id,
        }),
        AccountId = schema.new({
            id = id.from(_N, "Site", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "Site", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "Site", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "Site", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        SiteArn = schema.new({
            id = id.from(_N, "Site", "SiteArn"),
            type = "string",
            name = "SiteArn",
            target_id = prelude.String.id,
        }),
        Notes = schema.new({
            id = id.from(_N, "Site", "Notes"),
            type = "string",
            name = "Notes",
            target_id = prelude.String.id,
        }),
        OperatingAddressCountryCode = schema.new({
            id = id.from(_N, "Site", "OperatingAddressCountryCode"),
            type = "string",
            name = "OperatingAddressCountryCode",
            target_id = prelude.String.id,
        }),
        OperatingAddressStateOrRegion = schema.new({
            id = id.from(_N, "Site", "OperatingAddressStateOrRegion"),
            type = "string",
            name = "OperatingAddressStateOrRegion",
            target_id = prelude.String.id,
        }),
        OperatingAddressCity = schema.new({
            id = id.from(_N, "Site", "OperatingAddressCity"),
            type = "string",
            name = "OperatingAddressCity",
            target_id = prelude.String.id,
        }),
        RackPhysicalProperties = schema.new({
            id = id.from(_N, "Site", "RackPhysicalProperties"),
            type = "structure",
            name = "RackPhysicalProperties",
            target_id = id.from(_N, "RackPhysicalProperties"),
            target = M.RackPhysicalProperties,
        }),
    },
})

M.CreateSiteOutput = schema.new({
    id = id.from(_N, "CreateSiteOutput"),
    type = "structure",
    members = {
        Site = schema.new({
            id = id.from(_N, "CreateSiteOutput", "Site"),
            type = "structure",
            name = "Site",
            target_id = id.from(_N, "Site"),
            target = M.Site,
        }),
    },
})

M.DeleteOutpostInput = schema.new({
    id = id.from(_N, "DeleteOutpostInput"),
    type = "structure",
    members = {
        OutpostId = schema.new({
            id = id.from(_N, "DeleteOutpostInput", "OutpostId"),
            type = "string",
            name = "OutpostId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteOutpostOutput = schema.new({
    id = id.from(_N, "DeleteOutpostOutput"),
    type = "structure",
})

M.DeleteSiteInput = schema.new({
    id = id.from(_N, "DeleteSiteInput"),
    type = "structure",
    members = {
        SiteId = schema.new({
            id = id.from(_N, "DeleteSiteInput", "SiteId"),
            type = "string",
            name = "SiteId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteSiteOutput = schema.new({
    id = id.from(_N, "DeleteSiteOutput"),
    type = "structure",
})

M.GetCapacityTaskInput = schema.new({
    id = id.from(_N, "GetCapacityTaskInput"),
    type = "structure",
    members = {
        CapacityTaskId = schema.new({
            id = id.from(_N, "GetCapacityTaskInput", "CapacityTaskId"),
            type = "string",
            name = "CapacityTaskId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        OutpostIdentifier = schema.new({
            id = id.from(_N, "GetCapacityTaskInput", "OutpostIdentifier"),
            type = "string",
            name = "OutpostIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.InstancesToExclude = schema.new({
    id = id.from(_N, "InstancesToExclude"),
    type = "structure",
    members = {
        Instances = schema.new({
            id = id.from(_N, "InstancesToExclude", "Instances"),
            type = "list",
            name = "Instances",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AccountIds = schema.new({
            id = id.from(_N, "InstancesToExclude", "AccountIds"),
            type = "list",
            name = "AccountIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Services = schema.new({
            id = id.from(_N, "InstancesToExclude", "Services"),
            type = "list",
            name = "Services",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.InstanceTypeCapacity = schema.new({
    id = id.from(_N, "InstanceTypeCapacity"),
    type = "structure",
    members = {
        InstanceType = schema.new({
            id = id.from(_N, "InstanceTypeCapacity", "InstanceType"),
            type = "string",
            name = "InstanceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Count = schema.new({
            id = id.from(_N, "InstanceTypeCapacity", "Count"),
            type = "integer",
            name = "Count",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.GetCapacityTaskOutput = schema.new({
    id = id.from(_N, "GetCapacityTaskOutput"),
    type = "structure",
    members = {
        CapacityTaskId = schema.new({
            id = id.from(_N, "GetCapacityTaskOutput", "CapacityTaskId"),
            type = "string",
            name = "CapacityTaskId",
            target_id = prelude.String.id,
        }),
        OutpostId = schema.new({
            id = id.from(_N, "GetCapacityTaskOutput", "OutpostId"),
            type = "string",
            name = "OutpostId",
            target_id = prelude.String.id,
        }),
        OrderId = schema.new({
            id = id.from(_N, "GetCapacityTaskOutput", "OrderId"),
            type = "string",
            name = "OrderId",
            target_id = prelude.String.id,
        }),
        AssetId = schema.new({
            id = id.from(_N, "GetCapacityTaskOutput", "AssetId"),
            type = "string",
            name = "AssetId",
            target_id = prelude.String.id,
        }),
        RequestedInstancePools = schema.new({
            id = id.from(_N, "GetCapacityTaskOutput", "RequestedInstancePools"),
            type = "list",
            name = "RequestedInstancePools",
            target_id = prelude.Document.id,
            list_member = M.InstanceTypeCapacity,
        }),
        InstancesToExclude = schema.new({
            id = id.from(_N, "GetCapacityTaskOutput", "InstancesToExclude"),
            type = "structure",
            name = "InstancesToExclude",
            target_id = id.from(_N, "InstancesToExclude"),
            target = M.InstancesToExclude,
        }),
        DryRun = schema.new({
            id = id.from(_N, "GetCapacityTaskOutput", "DryRun"),
            type = "boolean",
            name = "DryRun",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        CapacityTaskStatus = schema.new({
            id = id.from(_N, "GetCapacityTaskOutput", "CapacityTaskStatus"),
            type = "string",
            name = "CapacityTaskStatus",
            target_id = prelude.String.id,
        }),
        Failed = schema.new({
            id = id.from(_N, "GetCapacityTaskOutput", "Failed"),
            type = "structure",
            name = "Failed",
            target_id = id.from(_N, "CapacityTaskFailure"),
            target = M.CapacityTaskFailure,
        }),
        CreationDate = schema.new({
            id = id.from(_N, "GetCapacityTaskOutput", "CreationDate"),
            type = "timestamp",
            name = "CreationDate",
            target_id = prelude.Timestamp.id,
        }),
        CompletionDate = schema.new({
            id = id.from(_N, "GetCapacityTaskOutput", "CompletionDate"),
            type = "timestamp",
            name = "CompletionDate",
            target_id = prelude.Timestamp.id,
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "GetCapacityTaskOutput", "LastModifiedDate"),
            type = "timestamp",
            name = "LastModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
        TaskActionOnBlockingInstances = schema.new({
            id = id.from(_N, "GetCapacityTaskOutput", "TaskActionOnBlockingInstances"),
            type = "string",
            name = "TaskActionOnBlockingInstances",
            target_id = prelude.String.id,
        }),
    },
})

M.GetCatalogItemInput = schema.new({
    id = id.from(_N, "GetCatalogItemInput"),
    type = "structure",
    members = {
        CatalogItemId = schema.new({
            id = id.from(_N, "GetCatalogItemInput", "CatalogItemId"),
            type = "string",
            name = "CatalogItemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetCatalogItemOutput = schema.new({
    id = id.from(_N, "GetCatalogItemOutput"),
    type = "structure",
    members = {
        CatalogItem = schema.new({
            id = id.from(_N, "GetCatalogItemOutput", "CatalogItem"),
            type = "structure",
            name = "CatalogItem",
            target_id = id.from(_N, "CatalogItem"),
            target = M.CatalogItem,
        }),
    },
})

M.GetConnectionInput = schema.new({
    id = id.from(_N, "GetConnectionRequest"),
    type = "structure",
    members = {
        ConnectionId = schema.new({
            id = id.from(_N, "GetConnectionInput", "ConnectionId"),
            type = "string",
            name = "ConnectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetConnectionOutput = schema.new({
    id = id.from(_N, "GetConnectionResponse"),
    type = "structure",
    members = {
        ConnectionId = schema.new({
            id = id.from(_N, "GetConnectionOutput", "ConnectionId"),
            type = "string",
            name = "ConnectionId",
            target_id = prelude.String.id,
        }),
        ConnectionDetails = schema.new({
            id = id.from(_N, "GetConnectionOutput", "ConnectionDetails"),
            type = "structure",
            name = "ConnectionDetails",
            target_id = id.from(_N, "ConnectionDetails"),
            target = M.ConnectionDetails,
        }),
    },
})

M.GetOrderInput = schema.new({
    id = id.from(_N, "GetOrderInput"),
    type = "structure",
    members = {
        OrderId = schema.new({
            id = id.from(_N, "GetOrderInput", "OrderId"),
            type = "string",
            name = "OrderId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetOrderOutput = schema.new({
    id = id.from(_N, "GetOrderOutput"),
    type = "structure",
    members = {
        Order = schema.new({
            id = id.from(_N, "GetOrderOutput", "Order"),
            type = "structure",
            name = "Order",
            target_id = id.from(_N, "Order"),
            target = M.Order,
        }),
    },
})

M.GetOutpostInput = schema.new({
    id = id.from(_N, "GetOutpostInput"),
    type = "structure",
    members = {
        OutpostId = schema.new({
            id = id.from(_N, "GetOutpostInput", "OutpostId"),
            type = "string",
            name = "OutpostId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetOutpostOutput = schema.new({
    id = id.from(_N, "GetOutpostOutput"),
    type = "structure",
    members = {
        Outpost = schema.new({
            id = id.from(_N, "GetOutpostOutput", "Outpost"),
            type = "structure",
            name = "Outpost",
            target_id = id.from(_N, "Outpost"),
            target = M.Outpost,
        }),
    },
})

M.GetOutpostBillingInformationInput = schema.new({
    id = id.from(_N, "GetOutpostBillingInformationInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "GetOutpostBillingInformationInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetOutpostBillingInformationInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        OutpostIdentifier = schema.new({
            id = id.from(_N, "GetOutpostBillingInformationInput", "OutpostIdentifier"),
            type = "string",
            name = "OutpostIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.Subscription = schema.new({
    id = id.from(_N, "Subscription"),
    type = "structure",
    members = {
        SubscriptionId = schema.new({
            id = id.from(_N, "Subscription", "SubscriptionId"),
            type = "string",
            name = "SubscriptionId",
            target_id = prelude.String.id,
        }),
        SubscriptionType = schema.new({
            id = id.from(_N, "Subscription", "SubscriptionType"),
            type = "string",
            name = "SubscriptionType",
            target_id = prelude.String.id,
        }),
        SubscriptionStatus = schema.new({
            id = id.from(_N, "Subscription", "SubscriptionStatus"),
            type = "string",
            name = "SubscriptionStatus",
            target_id = prelude.String.id,
        }),
        OrderIds = schema.new({
            id = id.from(_N, "Subscription", "OrderIds"),
            type = "list",
            name = "OrderIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        BeginDate = schema.new({
            id = id.from(_N, "Subscription", "BeginDate"),
            type = "timestamp",
            name = "BeginDate",
            target_id = prelude.Timestamp.id,
        }),
        EndDate = schema.new({
            id = id.from(_N, "Subscription", "EndDate"),
            type = "timestamp",
            name = "EndDate",
            target_id = prelude.Timestamp.id,
        }),
        MonthlyRecurringPrice = schema.new({
            id = id.from(_N, "Subscription", "MonthlyRecurringPrice"),
            type = "double",
            name = "MonthlyRecurringPrice",
            target_id = prelude.Double.id,
        }),
        UpfrontPrice = schema.new({
            id = id.from(_N, "Subscription", "UpfrontPrice"),
            type = "double",
            name = "UpfrontPrice",
            target_id = prelude.Double.id,
        }),
    },
})

M.GetOutpostBillingInformationOutput = schema.new({
    id = id.from(_N, "GetOutpostBillingInformationOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "GetOutpostBillingInformationOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Subscriptions = schema.new({
            id = id.from(_N, "GetOutpostBillingInformationOutput", "Subscriptions"),
            type = "list",
            name = "Subscriptions",
            target_id = prelude.Document.id,
            list_member = M.Subscription,
        }),
        ContractEndDate = schema.new({
            id = id.from(_N, "GetOutpostBillingInformationOutput", "ContractEndDate"),
            type = "string",
            name = "ContractEndDate",
            target_id = prelude.String.id,
        }),
        PaymentTerm = schema.new({
            id = id.from(_N, "GetOutpostBillingInformationOutput", "PaymentTerm"),
            type = "string",
            name = "PaymentTerm",
            target_id = prelude.String.id,
        }),
        PaymentOption = schema.new({
            id = id.from(_N, "GetOutpostBillingInformationOutput", "PaymentOption"),
            type = "string",
            name = "PaymentOption",
            target_id = prelude.String.id,
        }),
    },
})

M.GetOutpostInstanceTypesInput = schema.new({
    id = id.from(_N, "GetOutpostInstanceTypesInput"),
    type = "structure",
    members = {
        OutpostId = schema.new({
            id = id.from(_N, "GetOutpostInstanceTypesInput", "OutpostId"),
            type = "string",
            name = "OutpostId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetOutpostInstanceTypesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetOutpostInstanceTypesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
    },
})

M.InstanceTypeItem = schema.new({
    id = id.from(_N, "InstanceTypeItem"),
    type = "structure",
    members = {
        InstanceType = schema.new({
            id = id.from(_N, "InstanceTypeItem", "InstanceType"),
            type = "string",
            name = "InstanceType",
            target_id = prelude.String.id,
        }),
        VCPUs = schema.new({
            id = id.from(_N, "InstanceTypeItem", "VCPUs"),
            type = "integer",
            name = "VCPUs",
            target_id = prelude.Integer.id,
        }),
    },
})

M.GetOutpostInstanceTypesOutput = schema.new({
    id = id.from(_N, "GetOutpostInstanceTypesOutput"),
    type = "structure",
    members = {
        InstanceTypes = schema.new({
            id = id.from(_N, "GetOutpostInstanceTypesOutput", "InstanceTypes"),
            type = "list",
            name = "InstanceTypes",
            target_id = prelude.Document.id,
            list_member = M.InstanceTypeItem,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetOutpostInstanceTypesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        OutpostId = schema.new({
            id = id.from(_N, "GetOutpostInstanceTypesOutput", "OutpostId"),
            type = "string",
            name = "OutpostId",
            target_id = prelude.String.id,
        }),
        OutpostArn = schema.new({
            id = id.from(_N, "GetOutpostInstanceTypesOutput", "OutpostArn"),
            type = "string",
            name = "OutpostArn",
            target_id = prelude.String.id,
        }),
    },
})

M.GetOutpostSupportedInstanceTypesInput = schema.new({
    id = id.from(_N, "GetOutpostSupportedInstanceTypesInput"),
    type = "structure",
    members = {
        OutpostIdentifier = schema.new({
            id = id.from(_N, "GetOutpostSupportedInstanceTypesInput", "OutpostIdentifier"),
            type = "string",
            name = "OutpostIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        OrderId = schema.new({
            id = id.from(_N, "GetOutpostSupportedInstanceTypesInput", "OrderId"),
            type = "string",
            name = "OrderId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "OrderId" },
            },
        }),
        AssetId = schema.new({
            id = id.from(_N, "GetOutpostSupportedInstanceTypesInput", "AssetId"),
            type = "string",
            name = "AssetId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "AssetId" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetOutpostSupportedInstanceTypesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetOutpostSupportedInstanceTypesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.GetOutpostSupportedInstanceTypesOutput = schema.new({
    id = id.from(_N, "GetOutpostSupportedInstanceTypesOutput"),
    type = "structure",
    members = {
        InstanceTypes = schema.new({
            id = id.from(_N, "GetOutpostSupportedInstanceTypesOutput", "InstanceTypes"),
            type = "list",
            name = "InstanceTypes",
            target_id = prelude.Document.id,
            list_member = M.InstanceTypeItem,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetOutpostSupportedInstanceTypesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRenewalPricingInput = schema.new({
    id = id.from(_N, "GetRenewalPricingInput"),
    type = "structure",
    members = {
        OutpostIdentifier = schema.new({
            id = id.from(_N, "GetRenewalPricingInput", "OutpostIdentifier"),
            type = "string",
            name = "OutpostIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.SubscriptionPricingDetails = schema.new({
    id = id.from(_N, "SubscriptionPricingDetails"),
    type = "structure",
    members = {
        PaymentOption = schema.new({
            id = id.from(_N, "SubscriptionPricingDetails", "PaymentOption"),
            type = "string",
            name = "PaymentOption",
            target_id = prelude.String.id,
        }),
        PaymentTerm = schema.new({
            id = id.from(_N, "SubscriptionPricingDetails", "PaymentTerm"),
            type = "string",
            name = "PaymentTerm",
            target_id = prelude.String.id,
        }),
        UpfrontPrice = schema.new({
            id = id.from(_N, "SubscriptionPricingDetails", "UpfrontPrice"),
            type = "float",
            name = "UpfrontPrice",
            target_id = prelude.Float.id,
        }),
        MonthlyRecurringPrice = schema.new({
            id = id.from(_N, "SubscriptionPricingDetails", "MonthlyRecurringPrice"),
            type = "float",
            name = "MonthlyRecurringPrice",
            target_id = prelude.Float.id,
        }),
    },
})

M.PricingOption = schema.new({
    id = id.from(_N, "PricingOption"),
    type = "structure",
    members = {
        PricingType = schema.new({
            id = id.from(_N, "PricingOption", "PricingType"),
            type = "string",
            name = "PricingType",
            target_id = prelude.String.id,
        }),
        SubscriptionPricingDetails = schema.new({
            id = id.from(_N, "PricingOption", "SubscriptionPricingDetails"),
            type = "structure",
            name = "SubscriptionPricingDetails",
            target_id = id.from(_N, "SubscriptionPricingDetails"),
            target = M.SubscriptionPricingDetails,
        }),
    },
})

M.GetRenewalPricingOutput = schema.new({
    id = id.from(_N, "GetRenewalPricingOutput"),
    type = "structure",
    members = {
        PricingResult = schema.new({
            id = id.from(_N, "GetRenewalPricingOutput", "PricingResult"),
            type = "string",
            name = "PricingResult",
            target_id = prelude.String.id,
        }),
        PricingOptions = schema.new({
            id = id.from(_N, "GetRenewalPricingOutput", "PricingOptions"),
            type = "list",
            name = "PricingOptions",
            target_id = prelude.Document.id,
            list_member = M.PricingOption,
        }),
    },
})

M.GetSiteInput = schema.new({
    id = id.from(_N, "GetSiteInput"),
    type = "structure",
    members = {
        SiteId = schema.new({
            id = id.from(_N, "GetSiteInput", "SiteId"),
            type = "string",
            name = "SiteId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetSiteOutput = schema.new({
    id = id.from(_N, "GetSiteOutput"),
    type = "structure",
    members = {
        Site = schema.new({
            id = id.from(_N, "GetSiteOutput", "Site"),
            type = "structure",
            name = "Site",
            target_id = id.from(_N, "Site"),
            target = M.Site,
        }),
    },
})

M.GetSiteAddressInput = schema.new({
    id = id.from(_N, "GetSiteAddressInput"),
    type = "structure",
    members = {
        SiteId = schema.new({
            id = id.from(_N, "GetSiteAddressInput", "SiteId"),
            type = "string",
            name = "SiteId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        AddressType = schema.new({
            id = id.from(_N, "GetSiteAddressInput", "AddressType"),
            type = "string",
            name = "AddressType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "AddressType" },
            },
        }),
    },
})

M.GetSiteAddressOutput = schema.new({
    id = id.from(_N, "GetSiteAddressOutput"),
    type = "structure",
    members = {
        SiteId = schema.new({
            id = id.from(_N, "GetSiteAddressOutput", "SiteId"),
            type = "string",
            name = "SiteId",
            target_id = prelude.String.id,
        }),
        AddressType = schema.new({
            id = id.from(_N, "GetSiteAddressOutput", "AddressType"),
            type = "string",
            name = "AddressType",
            target_id = prelude.String.id,
        }),
        Address = schema.new({
            id = id.from(_N, "GetSiteAddressOutput", "Address"),
            type = "structure",
            name = "Address",
            target_id = id.from(_N, "Address"),
            target = M.Address,
        }),
    },
})

M.ListAssetInstancesInput = schema.new({
    id = id.from(_N, "ListAssetInstancesInput"),
    type = "structure",
    members = {
        OutpostIdentifier = schema.new({
            id = id.from(_N, "ListAssetInstancesInput", "OutpostIdentifier"),
            type = "string",
            name = "OutpostIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        AssetIdFilter = schema.new({
            id = id.from(_N, "ListAssetInstancesInput", "AssetIdFilter"),
            type = "list",
            name = "AssetIdFilter",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "AssetIdFilter" },
            },
        }),
        InstanceTypeFilter = schema.new({
            id = id.from(_N, "ListAssetInstancesInput", "InstanceTypeFilter"),
            type = "list",
            name = "InstanceTypeFilter",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "InstanceTypeFilter" },
            },
        }),
        AccountIdFilter = schema.new({
            id = id.from(_N, "ListAssetInstancesInput", "AccountIdFilter"),
            type = "list",
            name = "AccountIdFilter",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "AccountIdFilter" },
            },
        }),
        AwsServiceFilter = schema.new({
            id = id.from(_N, "ListAssetInstancesInput", "AwsServiceFilter"),
            type = "list",
            name = "AwsServiceFilter",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "AwsServiceFilter" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListAssetInstancesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAssetInstancesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.ListAssetInstancesOutput = schema.new({
    id = id.from(_N, "ListAssetInstancesOutput"),
    type = "structure",
    members = {
        AssetInstances = schema.new({
            id = id.from(_N, "ListAssetInstancesOutput", "AssetInstances"),
            type = "list",
            name = "AssetInstances",
            target_id = prelude.Document.id,
            list_member = M.AssetInstance,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAssetInstancesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAssetsInput = schema.new({
    id = id.from(_N, "ListAssetsInput"),
    type = "structure",
    members = {
        OutpostIdentifier = schema.new({
            id = id.from(_N, "ListAssetsInput", "OutpostIdentifier"),
            type = "string",
            name = "OutpostIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        HostIdFilter = schema.new({
            id = id.from(_N, "ListAssetsInput", "HostIdFilter"),
            type = "list",
            name = "HostIdFilter",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "HostIdFilter" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListAssetsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAssetsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        StatusFilter = schema.new({
            id = id.from(_N, "ListAssetsInput", "StatusFilter"),
            type = "list",
            name = "StatusFilter",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "StatusFilter" },
            },
        }),
        AssetTypeFilter = schema.new({
            id = id.from(_N, "ListAssetsInput", "AssetTypeFilter"),
            type = "list",
            name = "AssetTypeFilter",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "AssetTypeFilter" },
            },
        }),
    },
})

M.ListAssetsOutput = schema.new({
    id = id.from(_N, "ListAssetsOutput"),
    type = "structure",
    members = {
        Assets = schema.new({
            id = id.from(_N, "ListAssetsOutput", "Assets"),
            type = "list",
            name = "Assets",
            target_id = prelude.Document.id,
            list_member = M.AssetInfo,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAssetsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBlockingInstancesForCapacityTaskInput = schema.new({
    id = id.from(_N, "ListBlockingInstancesForCapacityTaskInput"),
    type = "structure",
    members = {
        OutpostIdentifier = schema.new({
            id = id.from(_N, "ListBlockingInstancesForCapacityTaskInput", "OutpostIdentifier"),
            type = "string",
            name = "OutpostIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        CapacityTaskId = schema.new({
            id = id.from(_N, "ListBlockingInstancesForCapacityTaskInput", "CapacityTaskId"),
            type = "string",
            name = "CapacityTaskId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListBlockingInstancesForCapacityTaskInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListBlockingInstancesForCapacityTaskInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.ListBlockingInstancesForCapacityTaskOutput = schema.new({
    id = id.from(_N, "ListBlockingInstancesForCapacityTaskOutput"),
    type = "structure",
    members = {
        BlockingInstances = schema.new({
            id = id.from(_N, "ListBlockingInstancesForCapacityTaskOutput", "BlockingInstances"),
            type = "list",
            name = "BlockingInstances",
            target_id = prelude.Document.id,
            list_member = M.BlockingInstance,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListBlockingInstancesForCapacityTaskOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCapacityTasksInput = schema.new({
    id = id.from(_N, "ListCapacityTasksInput"),
    type = "structure",
    members = {
        OutpostIdentifierFilter = schema.new({
            id = id.from(_N, "ListCapacityTasksInput", "OutpostIdentifierFilter"),
            type = "string",
            name = "OutpostIdentifierFilter",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "OutpostIdentifierFilter" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListCapacityTasksInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCapacityTasksInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        CapacityTaskStatusFilter = schema.new({
            id = id.from(_N, "ListCapacityTasksInput", "CapacityTaskStatusFilter"),
            type = "list",
            name = "CapacityTaskStatusFilter",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "CapacityTaskStatusFilter" },
            },
        }),
    },
})

M.ListCapacityTasksOutput = schema.new({
    id = id.from(_N, "ListCapacityTasksOutput"),
    type = "structure",
    members = {
        CapacityTasks = schema.new({
            id = id.from(_N, "ListCapacityTasksOutput", "CapacityTasks"),
            type = "list",
            name = "CapacityTasks",
            target_id = prelude.Document.id,
            list_member = M.CapacityTaskSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCapacityTasksOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCatalogItemsInput = schema.new({
    id = id.from(_N, "ListCatalogItemsInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListCatalogItemsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListCatalogItemsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        ItemClassFilter = schema.new({
            id = id.from(_N, "ListCatalogItemsInput", "ItemClassFilter"),
            type = "list",
            name = "ItemClassFilter",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "ItemClassFilter" },
            },
        }),
        SupportedStorageFilter = schema.new({
            id = id.from(_N, "ListCatalogItemsInput", "SupportedStorageFilter"),
            type = "list",
            name = "SupportedStorageFilter",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "SupportedStorageFilter" },
            },
        }),
        EC2FamilyFilter = schema.new({
            id = id.from(_N, "ListCatalogItemsInput", "EC2FamilyFilter"),
            type = "list",
            name = "EC2FamilyFilter",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "EC2FamilyFilter" },
            },
        }),
    },
})

M.ListCatalogItemsOutput = schema.new({
    id = id.from(_N, "ListCatalogItemsOutput"),
    type = "structure",
    members = {
        CatalogItems = schema.new({
            id = id.from(_N, "ListCatalogItemsOutput", "CatalogItems"),
            type = "list",
            name = "CatalogItems",
            target_id = prelude.Document.id,
            list_member = M.CatalogItem,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCatalogItemsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListOrdersInput = schema.new({
    id = id.from(_N, "ListOrdersInput"),
    type = "structure",
    members = {
        OutpostIdentifierFilter = schema.new({
            id = id.from(_N, "ListOrdersInput", "OutpostIdentifierFilter"),
            type = "string",
            name = "OutpostIdentifierFilter",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "OutpostIdentifierFilter" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListOrdersInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListOrdersInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
    },
})

M.OrderSummary = schema.new({
    id = id.from(_N, "OrderSummary"),
    type = "structure",
    members = {
        OutpostId = schema.new({
            id = id.from(_N, "OrderSummary", "OutpostId"),
            type = "string",
            name = "OutpostId",
            target_id = prelude.String.id,
        }),
        OrderId = schema.new({
            id = id.from(_N, "OrderSummary", "OrderId"),
            type = "string",
            name = "OrderId",
            target_id = prelude.String.id,
        }),
        OrderType = schema.new({
            id = id.from(_N, "OrderSummary", "OrderType"),
            type = "string",
            name = "OrderType",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "OrderSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        LineItemCountsByStatus = schema.new({
            id = id.from(_N, "OrderSummary", "LineItemCountsByStatus"),
            type = "map",
            name = "LineItemCountsByStatus",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Integer,
        }),
        OrderSubmissionDate = schema.new({
            id = id.from(_N, "OrderSummary", "OrderSubmissionDate"),
            type = "timestamp",
            name = "OrderSubmissionDate",
            target_id = prelude.Timestamp.id,
        }),
        OrderFulfilledDate = schema.new({
            id = id.from(_N, "OrderSummary", "OrderFulfilledDate"),
            type = "timestamp",
            name = "OrderFulfilledDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListOrdersOutput = schema.new({
    id = id.from(_N, "ListOrdersOutput"),
    type = "structure",
    members = {
        Orders = schema.new({
            id = id.from(_N, "ListOrdersOutput", "Orders"),
            type = "list",
            name = "Orders",
            target_id = prelude.Document.id,
            list_member = M.OrderSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListOrdersOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListOutpostsInput = schema.new({
    id = id.from(_N, "ListOutpostsInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListOutpostsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListOutpostsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        LifeCycleStatusFilter = schema.new({
            id = id.from(_N, "ListOutpostsInput", "LifeCycleStatusFilter"),
            type = "list",
            name = "LifeCycleStatusFilter",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "LifeCycleStatusFilter" },
            },
        }),
        AvailabilityZoneFilter = schema.new({
            id = id.from(_N, "ListOutpostsInput", "AvailabilityZoneFilter"),
            type = "list",
            name = "AvailabilityZoneFilter",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "AvailabilityZoneFilter" },
            },
        }),
        AvailabilityZoneIdFilter = schema.new({
            id = id.from(_N, "ListOutpostsInput", "AvailabilityZoneIdFilter"),
            type = "list",
            name = "AvailabilityZoneIdFilter",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "AvailabilityZoneIdFilter" },
            },
        }),
    },
})

M.ListOutpostsOutput = schema.new({
    id = id.from(_N, "ListOutpostsOutput"),
    type = "structure",
    members = {
        Outposts = schema.new({
            id = id.from(_N, "ListOutpostsOutput", "Outposts"),
            type = "list",
            name = "Outposts",
            target_id = prelude.Document.id,
            list_member = M.Outpost,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListOutpostsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSitesInput = schema.new({
    id = id.from(_N, "ListSitesInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListSitesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListSitesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        OperatingAddressCountryCodeFilter = schema.new({
            id = id.from(_N, "ListSitesInput", "OperatingAddressCountryCodeFilter"),
            type = "list",
            name = "OperatingAddressCountryCodeFilter",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "OperatingAddressCountryCodeFilter" },
            },
        }),
        OperatingAddressStateOrRegionFilter = schema.new({
            id = id.from(_N, "ListSitesInput", "OperatingAddressStateOrRegionFilter"),
            type = "list",
            name = "OperatingAddressStateOrRegionFilter",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "OperatingAddressStateOrRegionFilter" },
            },
        }),
        OperatingAddressCityFilter = schema.new({
            id = id.from(_N, "ListSitesInput", "OperatingAddressCityFilter"),
            type = "list",
            name = "OperatingAddressCityFilter",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "OperatingAddressCityFilter" },
            },
        }),
    },
})

M.ListSitesOutput = schema.new({
    id = id.from(_N, "ListSitesOutput"),
    type = "structure",
    members = {
        Sites = schema.new({
            id = id.from(_N, "ListSitesOutput", "Sites"),
            type = "list",
            name = "Sites",
            target_id = prelude.Document.id,
            list_member = M.Site,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSitesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
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
        }),
    },
})

M.StartCapacityTaskInput = schema.new({
    id = id.from(_N, "StartCapacityTaskInput"),
    type = "structure",
    members = {
        OutpostIdentifier = schema.new({
            id = id.from(_N, "StartCapacityTaskInput", "OutpostIdentifier"),
            type = "string",
            name = "OutpostIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        OrderId = schema.new({
            id = id.from(_N, "StartCapacityTaskInput", "OrderId"),
            type = "string",
            name = "OrderId",
            target_id = prelude.String.id,
        }),
        AssetId = schema.new({
            id = id.from(_N, "StartCapacityTaskInput", "AssetId"),
            type = "string",
            name = "AssetId",
            target_id = prelude.String.id,
        }),
        InstancePools = schema.new({
            id = id.from(_N, "StartCapacityTaskInput", "InstancePools"),
            type = "list",
            name = "InstancePools",
            target_id = prelude.Document.id,
            list_member = M.InstanceTypeCapacity,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstancesToExclude = schema.new({
            id = id.from(_N, "StartCapacityTaskInput", "InstancesToExclude"),
            type = "structure",
            name = "InstancesToExclude",
            target_id = id.from(_N, "InstancesToExclude"),
            target = M.InstancesToExclude,
        }),
        DryRun = schema.new({
            id = id.from(_N, "StartCapacityTaskInput", "DryRun"),
            type = "boolean",
            name = "DryRun",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        TaskActionOnBlockingInstances = schema.new({
            id = id.from(_N, "StartCapacityTaskInput", "TaskActionOnBlockingInstances"),
            type = "string",
            name = "TaskActionOnBlockingInstances",
            target_id = prelude.String.id,
        }),
    },
})

M.StartCapacityTaskOutput = schema.new({
    id = id.from(_N, "StartCapacityTaskOutput"),
    type = "structure",
    members = {
        CapacityTaskId = schema.new({
            id = id.from(_N, "StartCapacityTaskOutput", "CapacityTaskId"),
            type = "string",
            name = "CapacityTaskId",
            target_id = prelude.String.id,
        }),
        OutpostId = schema.new({
            id = id.from(_N, "StartCapacityTaskOutput", "OutpostId"),
            type = "string",
            name = "OutpostId",
            target_id = prelude.String.id,
        }),
        OrderId = schema.new({
            id = id.from(_N, "StartCapacityTaskOutput", "OrderId"),
            type = "string",
            name = "OrderId",
            target_id = prelude.String.id,
        }),
        AssetId = schema.new({
            id = id.from(_N, "StartCapacityTaskOutput", "AssetId"),
            type = "string",
            name = "AssetId",
            target_id = prelude.String.id,
        }),
        RequestedInstancePools = schema.new({
            id = id.from(_N, "StartCapacityTaskOutput", "RequestedInstancePools"),
            type = "list",
            name = "RequestedInstancePools",
            target_id = prelude.Document.id,
            list_member = M.InstanceTypeCapacity,
        }),
        InstancesToExclude = schema.new({
            id = id.from(_N, "StartCapacityTaskOutput", "InstancesToExclude"),
            type = "structure",
            name = "InstancesToExclude",
            target_id = id.from(_N, "InstancesToExclude"),
            target = M.InstancesToExclude,
        }),
        DryRun = schema.new({
            id = id.from(_N, "StartCapacityTaskOutput", "DryRun"),
            type = "boolean",
            name = "DryRun",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        CapacityTaskStatus = schema.new({
            id = id.from(_N, "StartCapacityTaskOutput", "CapacityTaskStatus"),
            type = "string",
            name = "CapacityTaskStatus",
            target_id = prelude.String.id,
        }),
        Failed = schema.new({
            id = id.from(_N, "StartCapacityTaskOutput", "Failed"),
            type = "structure",
            name = "Failed",
            target_id = id.from(_N, "CapacityTaskFailure"),
            target = M.CapacityTaskFailure,
        }),
        CreationDate = schema.new({
            id = id.from(_N, "StartCapacityTaskOutput", "CreationDate"),
            type = "timestamp",
            name = "CreationDate",
            target_id = prelude.Timestamp.id,
        }),
        CompletionDate = schema.new({
            id = id.from(_N, "StartCapacityTaskOutput", "CompletionDate"),
            type = "timestamp",
            name = "CompletionDate",
            target_id = prelude.Timestamp.id,
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "StartCapacityTaskOutput", "LastModifiedDate"),
            type = "timestamp",
            name = "LastModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
        TaskActionOnBlockingInstances = schema.new({
            id = id.from(_N, "StartCapacityTaskOutput", "TaskActionOnBlockingInstances"),
            type = "string",
            name = "TaskActionOnBlockingInstances",
            target_id = prelude.String.id,
        }),
    },
})

M.StartConnectionInput = schema.new({
    id = id.from(_N, "StartConnectionRequest"),
    type = "structure",
    members = {
        DeviceSerialNumber = schema.new({
            id = id.from(_N, "StartConnectionInput", "DeviceSerialNumber"),
            type = "string",
            name = "DeviceSerialNumber",
            target_id = prelude.String.id,
        }),
        AssetId = schema.new({
            id = id.from(_N, "StartConnectionInput", "AssetId"),
            type = "string",
            name = "AssetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientPublicKey = schema.new({
            id = id.from(_N, "StartConnectionInput", "ClientPublicKey"),
            type = "string",
            name = "ClientPublicKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NetworkInterfaceDeviceIndex = schema.new({
            id = id.from(_N, "StartConnectionInput", "NetworkInterfaceDeviceIndex"),
            type = "integer",
            name = "NetworkInterfaceDeviceIndex",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.StartConnectionOutput = schema.new({
    id = id.from(_N, "StartConnectionResponse"),
    type = "structure",
    members = {
        ConnectionId = schema.new({
            id = id.from(_N, "StartConnectionOutput", "ConnectionId"),
            type = "string",
            name = "ConnectionId",
            target_id = prelude.String.id,
        }),
        UnderlayIpAddress = schema.new({
            id = id.from(_N, "StartConnectionOutput", "UnderlayIpAddress"),
            type = "string",
            name = "UnderlayIpAddress",
            target_id = prelude.String.id,
        }),
    },
})

M.StartOutpostDecommissionInput = schema.new({
    id = id.from(_N, "StartOutpostDecommissionInput"),
    type = "structure",
    members = {
        OutpostIdentifier = schema.new({
            id = id.from(_N, "StartOutpostDecommissionInput", "OutpostIdentifier"),
            type = "string",
            name = "OutpostIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ValidateOnly = schema.new({
            id = id.from(_N, "StartOutpostDecommissionInput", "ValidateOnly"),
            type = "boolean",
            name = "ValidateOnly",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.StartOutpostDecommissionOutput = schema.new({
    id = id.from(_N, "StartOutpostDecommissionOutput"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "StartOutpostDecommissionOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        BlockingResourceTypes = schema.new({
            id = id.from(_N, "StartOutpostDecommissionOutput", "BlockingResourceTypes"),
            type = "list",
            name = "BlockingResourceTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
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
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceResponse"),
    type = "structure",
})

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

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceResponse"),
    type = "structure",
})

M.UpdateOutpostInput = schema.new({
    id = id.from(_N, "UpdateOutpostInput"),
    type = "structure",
    members = {
        OutpostId = schema.new({
            id = id.from(_N, "UpdateOutpostInput", "OutpostId"),
            type = "string",
            name = "OutpostId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateOutpostInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateOutpostInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        SupportedHardwareType = schema.new({
            id = id.from(_N, "UpdateOutpostInput", "SupportedHardwareType"),
            type = "string",
            name = "SupportedHardwareType",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateOutpostOutput = schema.new({
    id = id.from(_N, "UpdateOutpostOutput"),
    type = "structure",
    members = {
        Outpost = schema.new({
            id = id.from(_N, "UpdateOutpostOutput", "Outpost"),
            type = "structure",
            name = "Outpost",
            target_id = id.from(_N, "Outpost"),
            target = M.Outpost,
        }),
    },
})

M.UpdateSiteInput = schema.new({
    id = id.from(_N, "UpdateSiteInput"),
    type = "structure",
    members = {
        SiteId = schema.new({
            id = id.from(_N, "UpdateSiteInput", "SiteId"),
            type = "string",
            name = "SiteId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateSiteInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateSiteInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Notes = schema.new({
            id = id.from(_N, "UpdateSiteInput", "Notes"),
            type = "string",
            name = "Notes",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateSiteOutput = schema.new({
    id = id.from(_N, "UpdateSiteOutput"),
    type = "structure",
    members = {
        Site = schema.new({
            id = id.from(_N, "UpdateSiteOutput", "Site"),
            type = "structure",
            name = "Site",
            target_id = id.from(_N, "Site"),
            target = M.Site,
        }),
    },
})

M.UpdateSiteAddressInput = schema.new({
    id = id.from(_N, "UpdateSiteAddressInput"),
    type = "structure",
    members = {
        SiteId = schema.new({
            id = id.from(_N, "UpdateSiteAddressInput", "SiteId"),
            type = "string",
            name = "SiteId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        AddressType = schema.new({
            id = id.from(_N, "UpdateSiteAddressInput", "AddressType"),
            type = "string",
            name = "AddressType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Address = schema.new({
            id = id.from(_N, "UpdateSiteAddressInput", "Address"),
            type = "structure",
            name = "Address",
            target_id = id.from(_N, "Address"),
            target = M.Address,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateSiteAddressOutput = schema.new({
    id = id.from(_N, "UpdateSiteAddressOutput"),
    type = "structure",
    members = {
        AddressType = schema.new({
            id = id.from(_N, "UpdateSiteAddressOutput", "AddressType"),
            type = "string",
            name = "AddressType",
            target_id = prelude.String.id,
        }),
        Address = schema.new({
            id = id.from(_N, "UpdateSiteAddressOutput", "Address"),
            type = "structure",
            name = "Address",
            target_id = id.from(_N, "Address"),
            target = M.Address,
        }),
    },
})

M.UpdateSiteRackPhysicalPropertiesInput = schema.new({
    id = id.from(_N, "UpdateSiteRackPhysicalPropertiesInput"),
    type = "structure",
    members = {
        SiteId = schema.new({
            id = id.from(_N, "UpdateSiteRackPhysicalPropertiesInput", "SiteId"),
            type = "string",
            name = "SiteId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        PowerDrawKva = schema.new({
            id = id.from(_N, "UpdateSiteRackPhysicalPropertiesInput", "PowerDrawKva"),
            type = "string",
            name = "PowerDrawKva",
            target_id = prelude.String.id,
        }),
        PowerPhase = schema.new({
            id = id.from(_N, "UpdateSiteRackPhysicalPropertiesInput", "PowerPhase"),
            type = "string",
            name = "PowerPhase",
            target_id = prelude.String.id,
        }),
        PowerConnector = schema.new({
            id = id.from(_N, "UpdateSiteRackPhysicalPropertiesInput", "PowerConnector"),
            type = "string",
            name = "PowerConnector",
            target_id = prelude.String.id,
        }),
        PowerFeedDrop = schema.new({
            id = id.from(_N, "UpdateSiteRackPhysicalPropertiesInput", "PowerFeedDrop"),
            type = "string",
            name = "PowerFeedDrop",
            target_id = prelude.String.id,
        }),
        UplinkGbps = schema.new({
            id = id.from(_N, "UpdateSiteRackPhysicalPropertiesInput", "UplinkGbps"),
            type = "string",
            name = "UplinkGbps",
            target_id = prelude.String.id,
        }),
        UplinkCount = schema.new({
            id = id.from(_N, "UpdateSiteRackPhysicalPropertiesInput", "UplinkCount"),
            type = "string",
            name = "UplinkCount",
            target_id = prelude.String.id,
        }),
        FiberOpticCableType = schema.new({
            id = id.from(_N, "UpdateSiteRackPhysicalPropertiesInput", "FiberOpticCableType"),
            type = "string",
            name = "FiberOpticCableType",
            target_id = prelude.String.id,
        }),
        OpticalStandard = schema.new({
            id = id.from(_N, "UpdateSiteRackPhysicalPropertiesInput", "OpticalStandard"),
            type = "string",
            name = "OpticalStandard",
            target_id = prelude.String.id,
        }),
        MaximumSupportedWeightLbs = schema.new({
            id = id.from(_N, "UpdateSiteRackPhysicalPropertiesInput", "MaximumSupportedWeightLbs"),
            type = "string",
            name = "MaximumSupportedWeightLbs",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateSiteRackPhysicalPropertiesOutput = schema.new({
    id = id.from(_N, "UpdateSiteRackPhysicalPropertiesOutput"),
    type = "structure",
    members = {
        Site = schema.new({
            id = id.from(_N, "UpdateSiteRackPhysicalPropertiesOutput", "Site"),
            type = "structure",
            name = "Site",
            target_id = id.from(_N, "Site"),
            target = M.Site,
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
