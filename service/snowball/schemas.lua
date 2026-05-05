local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.snowball"

local M = {}

M.Address = schema.new({
    id = id.from(_N, "Address"),
    type = "structure",
    members = {
        AddressId = schema.new({
            id = id.from(_N, "Address", "AddressId"),
            type = "string",
            name = "AddressId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "Address", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Company = schema.new({
            id = id.from(_N, "Address", "Company"),
            type = "string",
            name = "Company",
            target_id = prelude.String.id,
        }),
        Street1 = schema.new({
            id = id.from(_N, "Address", "Street1"),
            type = "string",
            name = "Street1",
            target_id = prelude.String.id,
        }),
        Street2 = schema.new({
            id = id.from(_N, "Address", "Street2"),
            type = "string",
            name = "Street2",
            target_id = prelude.String.id,
        }),
        Street3 = schema.new({
            id = id.from(_N, "Address", "Street3"),
            type = "string",
            name = "Street3",
            target_id = prelude.String.id,
        }),
        City = schema.new({
            id = id.from(_N, "Address", "City"),
            type = "string",
            name = "City",
            target_id = prelude.String.id,
        }),
        StateOrProvince = schema.new({
            id = id.from(_N, "Address", "StateOrProvince"),
            type = "string",
            name = "StateOrProvince",
            target_id = prelude.String.id,
        }),
        PrefectureOrDistrict = schema.new({
            id = id.from(_N, "Address", "PrefectureOrDistrict"),
            type = "string",
            name = "PrefectureOrDistrict",
            target_id = prelude.String.id,
        }),
        Landmark = schema.new({
            id = id.from(_N, "Address", "Landmark"),
            type = "string",
            name = "Landmark",
            target_id = prelude.String.id,
        }),
        Country = schema.new({
            id = id.from(_N, "Address", "Country"),
            type = "string",
            name = "Country",
            target_id = prelude.String.id,
        }),
        PostalCode = schema.new({
            id = id.from(_N, "Address", "PostalCode"),
            type = "string",
            name = "PostalCode",
            target_id = prelude.String.id,
        }),
        PhoneNumber = schema.new({
            id = id.from(_N, "Address", "PhoneNumber"),
            type = "string",
            name = "PhoneNumber",
            target_id = prelude.String.id,
        }),
        IsRestricted = schema.new({
            id = id.from(_N, "Address", "IsRestricted"),
            type = "boolean",
            name = "IsRestricted",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Type = schema.new({
            id = id.from(_N, "Address", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.CancelClusterInput = schema.new({
    id = id.from(_N, "CancelClusterInput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "CancelClusterInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CancelClusterOutput = schema.new({
    id = id.from(_N, "CancelClusterOutput"),
    type = "structure",
})

M.InvalidJobStateException = schema.new({
    id = id.from(_N, "InvalidJobStateException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidJobStateException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidResourceException = schema.new({
    id = id.from(_N, "InvalidResourceException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidResourceException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "InvalidResourceException", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
    },
})

M.KMSRequestFailedException = schema.new({
    id = id.from(_N, "KMSRequestFailedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "KMSRequestFailedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CancelJobInput = schema.new({
    id = id.from(_N, "CancelJobInput"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "CancelJobInput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CancelJobOutput = schema.new({
    id = id.from(_N, "CancelJobOutput"),
    type = "structure",
})

M.CreateAddressInput = schema.new({
    id = id.from(_N, "CreateAddressInput"),
    type = "structure",
    members = {
        Address = schema.new({
            id = id.from(_N, "CreateAddressInput", "Address"),
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

M.CreateAddressOutput = schema.new({
    id = id.from(_N, "CreateAddressOutput"),
    type = "structure",
    members = {
        AddressId = schema.new({
            id = id.from(_N, "CreateAddressOutput", "AddressId"),
            type = "string",
            name = "AddressId",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidAddressException = schema.new({
    id = id.from(_N, "InvalidAddressException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidAddressException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.UnsupportedAddressException = schema.new({
    id = id.from(_N, "UnsupportedAddressException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "UnsupportedAddressException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.Notification = schema.new({
    id = id.from(_N, "Notification"),
    type = "structure",
    members = {
        SnsTopicARN = schema.new({
            id = id.from(_N, "Notification", "SnsTopicARN"),
            type = "string",
            name = "SnsTopicARN",
            target_id = prelude.String.id,
        }),
        JobStatesToNotify = schema.new({
            id = id.from(_N, "Notification", "JobStatesToNotify"),
            type = "list",
            name = "JobStatesToNotify",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NotifyAll = schema.new({
            id = id.from(_N, "Notification", "NotifyAll"),
            type = "boolean",
            name = "NotifyAll",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        DevicePickupSnsTopicARN = schema.new({
            id = id.from(_N, "Notification", "DevicePickupSnsTopicARN"),
            type = "string",
            name = "DevicePickupSnsTopicARN",
            target_id = prelude.String.id,
        }),
    },
})

M.EKSOnDeviceServiceConfiguration = schema.new({
    id = id.from(_N, "EKSOnDeviceServiceConfiguration"),
    type = "structure",
    members = {
        KubernetesVersion = schema.new({
            id = id.from(_N, "EKSOnDeviceServiceConfiguration", "KubernetesVersion"),
            type = "string",
            name = "KubernetesVersion",
            target_id = prelude.String.id,
        }),
        EKSAnywhereVersion = schema.new({
            id = id.from(_N, "EKSOnDeviceServiceConfiguration", "EKSAnywhereVersion"),
            type = "string",
            name = "EKSAnywhereVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.NFSOnDeviceServiceConfiguration = schema.new({
    id = id.from(_N, "NFSOnDeviceServiceConfiguration"),
    type = "structure",
    members = {
        StorageLimit = schema.new({
            id = id.from(_N, "NFSOnDeviceServiceConfiguration", "StorageLimit"),
            type = "integer",
            name = "StorageLimit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        StorageUnit = schema.new({
            id = id.from(_N, "NFSOnDeviceServiceConfiguration", "StorageUnit"),
            type = "string",
            name = "StorageUnit",
            target_id = prelude.String.id,
        }),
    },
})

M.S3OnDeviceServiceConfiguration = schema.new({
    id = id.from(_N, "S3OnDeviceServiceConfiguration"),
    type = "structure",
    members = {
        StorageLimit = schema.new({
            id = id.from(_N, "S3OnDeviceServiceConfiguration", "StorageLimit"),
            type = "double",
            name = "StorageLimit",
            target_id = prelude.Double.id,
        }),
        StorageUnit = schema.new({
            id = id.from(_N, "S3OnDeviceServiceConfiguration", "StorageUnit"),
            type = "string",
            name = "StorageUnit",
            target_id = prelude.String.id,
        }),
        ServiceSize = schema.new({
            id = id.from(_N, "S3OnDeviceServiceConfiguration", "ServiceSize"),
            type = "integer",
            name = "ServiceSize",
            target_id = prelude.Integer.id,
        }),
        FaultTolerance = schema.new({
            id = id.from(_N, "S3OnDeviceServiceConfiguration", "FaultTolerance"),
            type = "integer",
            name = "FaultTolerance",
            target_id = prelude.Integer.id,
        }),
    },
})

M.TGWOnDeviceServiceConfiguration = schema.new({
    id = id.from(_N, "TGWOnDeviceServiceConfiguration"),
    type = "structure",
    members = {
        StorageLimit = schema.new({
            id = id.from(_N, "TGWOnDeviceServiceConfiguration", "StorageLimit"),
            type = "integer",
            name = "StorageLimit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        StorageUnit = schema.new({
            id = id.from(_N, "TGWOnDeviceServiceConfiguration", "StorageUnit"),
            type = "string",
            name = "StorageUnit",
            target_id = prelude.String.id,
        }),
    },
})

M.OnDeviceServiceConfiguration = schema.new({
    id = id.from(_N, "OnDeviceServiceConfiguration"),
    type = "structure",
    members = {
        NFSOnDeviceService = schema.new({
            id = id.from(_N, "OnDeviceServiceConfiguration", "NFSOnDeviceService"),
            type = "structure",
            name = "NFSOnDeviceService",
            target_id = id.from(_N, "NFSOnDeviceServiceConfiguration"),
            target = M.NFSOnDeviceServiceConfiguration,
        }),
        TGWOnDeviceService = schema.new({
            id = id.from(_N, "OnDeviceServiceConfiguration", "TGWOnDeviceService"),
            type = "structure",
            name = "TGWOnDeviceService",
            target_id = id.from(_N, "TGWOnDeviceServiceConfiguration"),
            target = M.TGWOnDeviceServiceConfiguration,
        }),
        EKSOnDeviceService = schema.new({
            id = id.from(_N, "OnDeviceServiceConfiguration", "EKSOnDeviceService"),
            type = "structure",
            name = "EKSOnDeviceService",
            target_id = id.from(_N, "EKSOnDeviceServiceConfiguration"),
            target = M.EKSOnDeviceServiceConfiguration,
        }),
        S3OnDeviceService = schema.new({
            id = id.from(_N, "OnDeviceServiceConfiguration", "S3OnDeviceService"),
            type = "structure",
            name = "S3OnDeviceService",
            target_id = id.from(_N, "S3OnDeviceServiceConfiguration"),
            target = M.S3OnDeviceServiceConfiguration,
        }),
    },
})

M.Ec2AmiResource = schema.new({
    id = id.from(_N, "Ec2AmiResource"),
    type = "structure",
    members = {
        AmiId = schema.new({
            id = id.from(_N, "Ec2AmiResource", "AmiId"),
            type = "string",
            name = "AmiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SnowballAmiId = schema.new({
            id = id.from(_N, "Ec2AmiResource", "SnowballAmiId"),
            type = "string",
            name = "SnowballAmiId",
            target_id = prelude.String.id,
        }),
    },
})

M.EventTriggerDefinition = schema.new({
    id = id.from(_N, "EventTriggerDefinition"),
    type = "structure",
    members = {
        EventResourceARN = schema.new({
            id = id.from(_N, "EventTriggerDefinition", "EventResourceARN"),
            type = "string",
            name = "EventResourceARN",
            target_id = prelude.String.id,
        }),
    },
})

M.LambdaResource = schema.new({
    id = id.from(_N, "LambdaResource"),
    type = "structure",
    members = {
        LambdaArn = schema.new({
            id = id.from(_N, "LambdaResource", "LambdaArn"),
            type = "string",
            name = "LambdaArn",
            target_id = prelude.String.id,
        }),
        EventTriggers = schema.new({
            id = id.from(_N, "LambdaResource", "EventTriggers"),
            type = "list",
            name = "EventTriggers",
            target_id = prelude.Document.id,
            list_member = M.EventTriggerDefinition,
        }),
    },
})

M.KeyRange = schema.new({
    id = id.from(_N, "KeyRange"),
    type = "structure",
    members = {
        BeginMarker = schema.new({
            id = id.from(_N, "KeyRange", "BeginMarker"),
            type = "string",
            name = "BeginMarker",
            target_id = prelude.String.id,
        }),
        EndMarker = schema.new({
            id = id.from(_N, "KeyRange", "EndMarker"),
            type = "string",
            name = "EndMarker",
            target_id = prelude.String.id,
        }),
    },
})

M.TargetOnDeviceService = schema.new({
    id = id.from(_N, "TargetOnDeviceService"),
    type = "structure",
    members = {
        ServiceName = schema.new({
            id = id.from(_N, "TargetOnDeviceService", "ServiceName"),
            type = "string",
            name = "ServiceName",
            target_id = prelude.String.id,
        }),
        TransferOption = schema.new({
            id = id.from(_N, "TargetOnDeviceService", "TransferOption"),
            type = "string",
            name = "TransferOption",
            target_id = prelude.String.id,
        }),
    },
})

M.S3Resource = schema.new({
    id = id.from(_N, "S3Resource"),
    type = "structure",
    members = {
        BucketArn = schema.new({
            id = id.from(_N, "S3Resource", "BucketArn"),
            type = "string",
            name = "BucketArn",
            target_id = prelude.String.id,
        }),
        KeyRange = schema.new({
            id = id.from(_N, "S3Resource", "KeyRange"),
            type = "structure",
            name = "KeyRange",
            target_id = id.from(_N, "KeyRange"),
            target = M.KeyRange,
        }),
        TargetOnDeviceServices = schema.new({
            id = id.from(_N, "S3Resource", "TargetOnDeviceServices"),
            type = "list",
            name = "TargetOnDeviceServices",
            target_id = prelude.Document.id,
            list_member = M.TargetOnDeviceService,
        }),
    },
})

M.JobResource = schema.new({
    id = id.from(_N, "JobResource"),
    type = "structure",
    members = {
        S3Resources = schema.new({
            id = id.from(_N, "JobResource", "S3Resources"),
            type = "list",
            name = "S3Resources",
            target_id = prelude.Document.id,
            list_member = M.S3Resource,
        }),
        LambdaResources = schema.new({
            id = id.from(_N, "JobResource", "LambdaResources"),
            type = "list",
            name = "LambdaResources",
            target_id = prelude.Document.id,
            list_member = M.LambdaResource,
        }),
        Ec2AmiResources = schema.new({
            id = id.from(_N, "JobResource", "Ec2AmiResources"),
            type = "list",
            name = "Ec2AmiResources",
            target_id = prelude.Document.id,
            list_member = M.Ec2AmiResource,
        }),
    },
})

M.INDTaxDocuments = schema.new({
    id = id.from(_N, "INDTaxDocuments"),
    type = "structure",
    members = {
        GSTIN = schema.new({
            id = id.from(_N, "INDTaxDocuments", "GSTIN"),
            type = "string",
            name = "GSTIN",
            target_id = prelude.String.id,
        }),
    },
})

M.TaxDocuments = schema.new({
    id = id.from(_N, "TaxDocuments"),
    type = "structure",
    members = {
        IND = schema.new({
            id = id.from(_N, "TaxDocuments", "IND"),
            type = "structure",
            name = "IND",
            target_id = id.from(_N, "INDTaxDocuments"),
            target = M.INDTaxDocuments,
        }),
    },
})

M.CreateClusterInput = schema.new({
    id = id.from(_N, "CreateClusterInput"),
    type = "structure",
    members = {
        JobType = schema.new({
            id = id.from(_N, "CreateClusterInput", "JobType"),
            type = "string",
            name = "JobType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Resources = schema.new({
            id = id.from(_N, "CreateClusterInput", "Resources"),
            type = "structure",
            name = "Resources",
            target_id = id.from(_N, "JobResource"),
            target = M.JobResource,
        }),
        OnDeviceServiceConfiguration = schema.new({
            id = id.from(_N, "CreateClusterInput", "OnDeviceServiceConfiguration"),
            type = "structure",
            name = "OnDeviceServiceConfiguration",
            target_id = id.from(_N, "OnDeviceServiceConfiguration"),
            target = M.OnDeviceServiceConfiguration,
        }),
        Description = schema.new({
            id = id.from(_N, "CreateClusterInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        AddressId = schema.new({
            id = id.from(_N, "CreateClusterInput", "AddressId"),
            type = "string",
            name = "AddressId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KmsKeyARN = schema.new({
            id = id.from(_N, "CreateClusterInput", "KmsKeyARN"),
            type = "string",
            name = "KmsKeyARN",
            target_id = prelude.String.id,
        }),
        RoleARN = schema.new({
            id = id.from(_N, "CreateClusterInput", "RoleARN"),
            type = "string",
            name = "RoleARN",
            target_id = prelude.String.id,
        }),
        SnowballType = schema.new({
            id = id.from(_N, "CreateClusterInput", "SnowballType"),
            type = "string",
            name = "SnowballType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ShippingOption = schema.new({
            id = id.from(_N, "CreateClusterInput", "ShippingOption"),
            type = "string",
            name = "ShippingOption",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Notification = schema.new({
            id = id.from(_N, "CreateClusterInput", "Notification"),
            type = "structure",
            name = "Notification",
            target_id = id.from(_N, "Notification"),
            target = M.Notification,
        }),
        ForwardingAddressId = schema.new({
            id = id.from(_N, "CreateClusterInput", "ForwardingAddressId"),
            type = "string",
            name = "ForwardingAddressId",
            target_id = prelude.String.id,
        }),
        TaxDocuments = schema.new({
            id = id.from(_N, "CreateClusterInput", "TaxDocuments"),
            type = "structure",
            name = "TaxDocuments",
            target_id = id.from(_N, "TaxDocuments"),
            target = M.TaxDocuments,
        }),
        RemoteManagement = schema.new({
            id = id.from(_N, "CreateClusterInput", "RemoteManagement"),
            type = "string",
            name = "RemoteManagement",
            target_id = prelude.String.id,
        }),
        InitialClusterSize = schema.new({
            id = id.from(_N, "CreateClusterInput", "InitialClusterSize"),
            type = "integer",
            name = "InitialClusterSize",
            target_id = prelude.Integer.id,
        }),
        ForceCreateJobs = schema.new({
            id = id.from(_N, "CreateClusterInput", "ForceCreateJobs"),
            type = "boolean",
            name = "ForceCreateJobs",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        LongTermPricingIds = schema.new({
            id = id.from(_N, "CreateClusterInput", "LongTermPricingIds"),
            type = "list",
            name = "LongTermPricingIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        SnowballCapacityPreference = schema.new({
            id = id.from(_N, "CreateClusterInput", "SnowballCapacityPreference"),
            type = "string",
            name = "SnowballCapacityPreference",
            target_id = prelude.String.id,
        }),
    },
})

M.JobListEntry = schema.new({
    id = id.from(_N, "JobListEntry"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "JobListEntry", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
        JobState = schema.new({
            id = id.from(_N, "JobListEntry", "JobState"),
            type = "string",
            name = "JobState",
            target_id = prelude.String.id,
        }),
        IsMaster = schema.new({
            id = id.from(_N, "JobListEntry", "IsMaster"),
            type = "boolean",
            name = "IsMaster",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        JobType = schema.new({
            id = id.from(_N, "JobListEntry", "JobType"),
            type = "string",
            name = "JobType",
            target_id = prelude.String.id,
        }),
        SnowballType = schema.new({
            id = id.from(_N, "JobListEntry", "SnowballType"),
            type = "string",
            name = "SnowballType",
            target_id = prelude.String.id,
        }),
        CreationDate = schema.new({
            id = id.from(_N, "JobListEntry", "CreationDate"),
            type = "timestamp",
            name = "CreationDate",
            target_id = prelude.Timestamp.id,
        }),
        Description = schema.new({
            id = id.from(_N, "JobListEntry", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateClusterOutput = schema.new({
    id = id.from(_N, "CreateClusterOutput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "CreateClusterOutput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
        }),
        JobListEntries = schema.new({
            id = id.from(_N, "CreateClusterOutput", "JobListEntries"),
            type = "list",
            name = "JobListEntries",
            target_id = prelude.Document.id,
            list_member = M.JobListEntry,
        }),
    },
})

M.Ec2RequestFailedException = schema.new({
    id = id.from(_N, "Ec2RequestFailedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "Ec2RequestFailedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidInputCombinationException = schema.new({
    id = id.from(_N, "InvalidInputCombinationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidInputCombinationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ClusterLimitExceededException = schema.new({
    id = id.from(_N, "ClusterLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ClusterLimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.WirelessConnection = schema.new({
    id = id.from(_N, "WirelessConnection"),
    type = "structure",
    members = {
        IsWifiEnabled = schema.new({
            id = id.from(_N, "WirelessConnection", "IsWifiEnabled"),
            type = "boolean",
            name = "IsWifiEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.SnowconeDeviceConfiguration = schema.new({
    id = id.from(_N, "SnowconeDeviceConfiguration"),
    type = "structure",
    members = {
        WirelessConnection = schema.new({
            id = id.from(_N, "SnowconeDeviceConfiguration", "WirelessConnection"),
            type = "structure",
            name = "WirelessConnection",
            target_id = id.from(_N, "WirelessConnection"),
            target = M.WirelessConnection,
        }),
    },
})

M.DeviceConfiguration = schema.new({
    id = id.from(_N, "DeviceConfiguration"),
    type = "structure",
    members = {
        SnowconeDeviceConfiguration = schema.new({
            id = id.from(_N, "DeviceConfiguration", "SnowconeDeviceConfiguration"),
            type = "structure",
            name = "SnowconeDeviceConfiguration",
            target_id = id.from(_N, "SnowconeDeviceConfiguration"),
            target = M.SnowconeDeviceConfiguration,
        }),
    },
})

M.PickupDetails = schema.new({
    id = id.from(_N, "PickupDetails"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "PickupDetails", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        PhoneNumber = schema.new({
            id = id.from(_N, "PickupDetails", "PhoneNumber"),
            type = "string",
            name = "PhoneNumber",
            target_id = prelude.String.id,
        }),
        Email = schema.new({
            id = id.from(_N, "PickupDetails", "Email"),
            type = "string",
            name = "Email",
            target_id = prelude.String.id,
        }),
        IdentificationNumber = schema.new({
            id = id.from(_N, "PickupDetails", "IdentificationNumber"),
            type = "string",
            name = "IdentificationNumber",
            target_id = prelude.String.id,
        }),
        IdentificationExpirationDate = schema.new({
            id = id.from(_N, "PickupDetails", "IdentificationExpirationDate"),
            type = "timestamp",
            name = "IdentificationExpirationDate",
            target_id = prelude.Timestamp.id,
        }),
        IdentificationIssuingOrg = schema.new({
            id = id.from(_N, "PickupDetails", "IdentificationIssuingOrg"),
            type = "string",
            name = "IdentificationIssuingOrg",
            target_id = prelude.String.id,
        }),
        DevicePickupId = schema.new({
            id = id.from(_N, "PickupDetails", "DevicePickupId"),
            type = "string",
            name = "DevicePickupId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateJobInput = schema.new({
    id = id.from(_N, "CreateJobInput"),
    type = "structure",
    members = {
        JobType = schema.new({
            id = id.from(_N, "CreateJobInput", "JobType"),
            type = "string",
            name = "JobType",
            target_id = prelude.String.id,
        }),
        Resources = schema.new({
            id = id.from(_N, "CreateJobInput", "Resources"),
            type = "structure",
            name = "Resources",
            target_id = id.from(_N, "JobResource"),
            target = M.JobResource,
        }),
        OnDeviceServiceConfiguration = schema.new({
            id = id.from(_N, "CreateJobInput", "OnDeviceServiceConfiguration"),
            type = "structure",
            name = "OnDeviceServiceConfiguration",
            target_id = id.from(_N, "OnDeviceServiceConfiguration"),
            target = M.OnDeviceServiceConfiguration,
        }),
        Description = schema.new({
            id = id.from(_N, "CreateJobInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        AddressId = schema.new({
            id = id.from(_N, "CreateJobInput", "AddressId"),
            type = "string",
            name = "AddressId",
            target_id = prelude.String.id,
        }),
        KmsKeyARN = schema.new({
            id = id.from(_N, "CreateJobInput", "KmsKeyARN"),
            type = "string",
            name = "KmsKeyARN",
            target_id = prelude.String.id,
        }),
        RoleARN = schema.new({
            id = id.from(_N, "CreateJobInput", "RoleARN"),
            type = "string",
            name = "RoleARN",
            target_id = prelude.String.id,
        }),
        SnowballCapacityPreference = schema.new({
            id = id.from(_N, "CreateJobInput", "SnowballCapacityPreference"),
            type = "string",
            name = "SnowballCapacityPreference",
            target_id = prelude.String.id,
        }),
        ShippingOption = schema.new({
            id = id.from(_N, "CreateJobInput", "ShippingOption"),
            type = "string",
            name = "ShippingOption",
            target_id = prelude.String.id,
        }),
        Notification = schema.new({
            id = id.from(_N, "CreateJobInput", "Notification"),
            type = "structure",
            name = "Notification",
            target_id = id.from(_N, "Notification"),
            target = M.Notification,
        }),
        ClusterId = schema.new({
            id = id.from(_N, "CreateJobInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
        }),
        SnowballType = schema.new({
            id = id.from(_N, "CreateJobInput", "SnowballType"),
            type = "string",
            name = "SnowballType",
            target_id = prelude.String.id,
        }),
        ForwardingAddressId = schema.new({
            id = id.from(_N, "CreateJobInput", "ForwardingAddressId"),
            type = "string",
            name = "ForwardingAddressId",
            target_id = prelude.String.id,
        }),
        TaxDocuments = schema.new({
            id = id.from(_N, "CreateJobInput", "TaxDocuments"),
            type = "structure",
            name = "TaxDocuments",
            target_id = id.from(_N, "TaxDocuments"),
            target = M.TaxDocuments,
        }),
        DeviceConfiguration = schema.new({
            id = id.from(_N, "CreateJobInput", "DeviceConfiguration"),
            type = "structure",
            name = "DeviceConfiguration",
            target_id = id.from(_N, "DeviceConfiguration"),
            target = M.DeviceConfiguration,
        }),
        RemoteManagement = schema.new({
            id = id.from(_N, "CreateJobInput", "RemoteManagement"),
            type = "string",
            name = "RemoteManagement",
            target_id = prelude.String.id,
        }),
        LongTermPricingId = schema.new({
            id = id.from(_N, "CreateJobInput", "LongTermPricingId"),
            type = "string",
            name = "LongTermPricingId",
            target_id = prelude.String.id,
        }),
        ImpactLevel = schema.new({
            id = id.from(_N, "CreateJobInput", "ImpactLevel"),
            type = "string",
            name = "ImpactLevel",
            target_id = prelude.String.id,
        }),
        PickupDetails = schema.new({
            id = id.from(_N, "CreateJobInput", "PickupDetails"),
            type = "structure",
            name = "PickupDetails",
            target_id = id.from(_N, "PickupDetails"),
            target = M.PickupDetails,
        }),
    },
})

M.CreateJobOutput = schema.new({
    id = id.from(_N, "CreateJobOutput"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "CreateJobOutput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateLongTermPricingInput = schema.new({
    id = id.from(_N, "CreateLongTermPricingInput"),
    type = "structure",
    members = {
        LongTermPricingType = schema.new({
            id = id.from(_N, "CreateLongTermPricingInput", "LongTermPricingType"),
            type = "string",
            name = "LongTermPricingType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsLongTermPricingAutoRenew = schema.new({
            id = id.from(_N, "CreateLongTermPricingInput", "IsLongTermPricingAutoRenew"),
            type = "boolean",
            name = "IsLongTermPricingAutoRenew",
            target_id = prelude.Boolean.id,
        }),
        SnowballType = schema.new({
            id = id.from(_N, "CreateLongTermPricingInput", "SnowballType"),
            type = "string",
            name = "SnowballType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateLongTermPricingOutput = schema.new({
    id = id.from(_N, "CreateLongTermPricingOutput"),
    type = "structure",
    members = {
        LongTermPricingId = schema.new({
            id = id.from(_N, "CreateLongTermPricingOutput", "LongTermPricingId"),
            type = "string",
            name = "LongTermPricingId",
            target_id = prelude.String.id,
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
        ConflictResource = schema.new({
            id = id.from(_N, "ConflictException", "ConflictResource"),
            type = "string",
            name = "ConflictResource",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ConflictException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateReturnShippingLabelInput = schema.new({
    id = id.from(_N, "CreateReturnShippingLabelInput"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "CreateReturnShippingLabelInput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ShippingOption = schema.new({
            id = id.from(_N, "CreateReturnShippingLabelInput", "ShippingOption"),
            type = "string",
            name = "ShippingOption",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateReturnShippingLabelOutput = schema.new({
    id = id.from(_N, "CreateReturnShippingLabelOutput"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "CreateReturnShippingLabelOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.ReturnShippingLabelAlreadyExistsException = schema.new({
    id = id.from(_N, "ReturnShippingLabelAlreadyExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ReturnShippingLabelAlreadyExistsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeAddressInput = schema.new({
    id = id.from(_N, "DescribeAddressInput"),
    type = "structure",
    members = {
        AddressId = schema.new({
            id = id.from(_N, "DescribeAddressInput", "AddressId"),
            type = "string",
            name = "AddressId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeAddressOutput = schema.new({
    id = id.from(_N, "DescribeAddressOutput"),
    type = "structure",
    members = {
        Address = schema.new({
            id = id.from(_N, "DescribeAddressOutput", "Address"),
            type = "structure",
            name = "Address",
            target_id = id.from(_N, "Address"),
            target = M.Address,
        }),
    },
})

M.DescribeAddressesInput = schema.new({
    id = id.from(_N, "DescribeAddressesInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "DescribeAddressesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeAddressesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeAddressesOutput = schema.new({
    id = id.from(_N, "DescribeAddressesOutput"),
    type = "structure",
    members = {
        Addresses = schema.new({
            id = id.from(_N, "DescribeAddressesOutput", "Addresses"),
            type = "list",
            name = "Addresses",
            target_id = prelude.Document.id,
            list_member = M.Address,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeAddressesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidNextTokenException = schema.new({
    id = id.from(_N, "InvalidNextTokenException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidNextTokenException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeClusterInput = schema.new({
    id = id.from(_N, "DescribeClusterInput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "DescribeClusterInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ClusterMetadata = schema.new({
    id = id.from(_N, "ClusterMetadata"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "ClusterMetadata", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ClusterMetadata", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        KmsKeyARN = schema.new({
            id = id.from(_N, "ClusterMetadata", "KmsKeyARN"),
            type = "string",
            name = "KmsKeyARN",
            target_id = prelude.String.id,
        }),
        RoleARN = schema.new({
            id = id.from(_N, "ClusterMetadata", "RoleARN"),
            type = "string",
            name = "RoleARN",
            target_id = prelude.String.id,
        }),
        ClusterState = schema.new({
            id = id.from(_N, "ClusterMetadata", "ClusterState"),
            type = "string",
            name = "ClusterState",
            target_id = prelude.String.id,
        }),
        JobType = schema.new({
            id = id.from(_N, "ClusterMetadata", "JobType"),
            type = "string",
            name = "JobType",
            target_id = prelude.String.id,
        }),
        SnowballType = schema.new({
            id = id.from(_N, "ClusterMetadata", "SnowballType"),
            type = "string",
            name = "SnowballType",
            target_id = prelude.String.id,
        }),
        CreationDate = schema.new({
            id = id.from(_N, "ClusterMetadata", "CreationDate"),
            type = "timestamp",
            name = "CreationDate",
            target_id = prelude.Timestamp.id,
        }),
        Resources = schema.new({
            id = id.from(_N, "ClusterMetadata", "Resources"),
            type = "structure",
            name = "Resources",
            target_id = id.from(_N, "JobResource"),
            target = M.JobResource,
        }),
        AddressId = schema.new({
            id = id.from(_N, "ClusterMetadata", "AddressId"),
            type = "string",
            name = "AddressId",
            target_id = prelude.String.id,
        }),
        ShippingOption = schema.new({
            id = id.from(_N, "ClusterMetadata", "ShippingOption"),
            type = "string",
            name = "ShippingOption",
            target_id = prelude.String.id,
        }),
        Notification = schema.new({
            id = id.from(_N, "ClusterMetadata", "Notification"),
            type = "structure",
            name = "Notification",
            target_id = id.from(_N, "Notification"),
            target = M.Notification,
        }),
        ForwardingAddressId = schema.new({
            id = id.from(_N, "ClusterMetadata", "ForwardingAddressId"),
            type = "string",
            name = "ForwardingAddressId",
            target_id = prelude.String.id,
        }),
        TaxDocuments = schema.new({
            id = id.from(_N, "ClusterMetadata", "TaxDocuments"),
            type = "structure",
            name = "TaxDocuments",
            target_id = id.from(_N, "TaxDocuments"),
            target = M.TaxDocuments,
        }),
        OnDeviceServiceConfiguration = schema.new({
            id = id.from(_N, "ClusterMetadata", "OnDeviceServiceConfiguration"),
            type = "structure",
            name = "OnDeviceServiceConfiguration",
            target_id = id.from(_N, "OnDeviceServiceConfiguration"),
            target = M.OnDeviceServiceConfiguration,
        }),
    },
})

M.DescribeClusterOutput = schema.new({
    id = id.from(_N, "DescribeClusterOutput"),
    type = "structure",
    members = {
        ClusterMetadata = schema.new({
            id = id.from(_N, "DescribeClusterOutput", "ClusterMetadata"),
            type = "structure",
            name = "ClusterMetadata",
            target_id = id.from(_N, "ClusterMetadata"),
            target = M.ClusterMetadata,
        }),
    },
})

M.DescribeJobInput = schema.new({
    id = id.from(_N, "DescribeJobInput"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "DescribeJobInput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DataTransfer = schema.new({
    id = id.from(_N, "DataTransfer"),
    type = "structure",
    members = {
        BytesTransferred = schema.new({
            id = id.from(_N, "DataTransfer", "BytesTransferred"),
            type = "long",
            name = "BytesTransferred",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ObjectsTransferred = schema.new({
            id = id.from(_N, "DataTransfer", "ObjectsTransferred"),
            type = "long",
            name = "ObjectsTransferred",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TotalBytes = schema.new({
            id = id.from(_N, "DataTransfer", "TotalBytes"),
            type = "long",
            name = "TotalBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TotalObjects = schema.new({
            id = id.from(_N, "DataTransfer", "TotalObjects"),
            type = "long",
            name = "TotalObjects",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.JobLogs = schema.new({
    id = id.from(_N, "JobLogs"),
    type = "structure",
    members = {
        JobCompletionReportURI = schema.new({
            id = id.from(_N, "JobLogs", "JobCompletionReportURI"),
            type = "string",
            name = "JobCompletionReportURI",
            target_id = prelude.String.id,
        }),
        JobSuccessLogURI = schema.new({
            id = id.from(_N, "JobLogs", "JobSuccessLogURI"),
            type = "string",
            name = "JobSuccessLogURI",
            target_id = prelude.String.id,
        }),
        JobFailureLogURI = schema.new({
            id = id.from(_N, "JobLogs", "JobFailureLogURI"),
            type = "string",
            name = "JobFailureLogURI",
            target_id = prelude.String.id,
        }),
    },
})

M.Shipment = schema.new({
    id = id.from(_N, "Shipment"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "Shipment", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        TrackingNumber = schema.new({
            id = id.from(_N, "Shipment", "TrackingNumber"),
            type = "string",
            name = "TrackingNumber",
            target_id = prelude.String.id,
        }),
    },
})

M.ShippingDetails = schema.new({
    id = id.from(_N, "ShippingDetails"),
    type = "structure",
    members = {
        ShippingOption = schema.new({
            id = id.from(_N, "ShippingDetails", "ShippingOption"),
            type = "string",
            name = "ShippingOption",
            target_id = prelude.String.id,
        }),
        InboundShipment = schema.new({
            id = id.from(_N, "ShippingDetails", "InboundShipment"),
            type = "structure",
            name = "InboundShipment",
            target_id = id.from(_N, "Shipment"),
            target = M.Shipment,
        }),
        OutboundShipment = schema.new({
            id = id.from(_N, "ShippingDetails", "OutboundShipment"),
            type = "structure",
            name = "OutboundShipment",
            target_id = id.from(_N, "Shipment"),
            target = M.Shipment,
        }),
    },
})

M.JobMetadata = schema.new({
    id = id.from(_N, "JobMetadata"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "JobMetadata", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
        JobState = schema.new({
            id = id.from(_N, "JobMetadata", "JobState"),
            type = "string",
            name = "JobState",
            target_id = prelude.String.id,
        }),
        JobType = schema.new({
            id = id.from(_N, "JobMetadata", "JobType"),
            type = "string",
            name = "JobType",
            target_id = prelude.String.id,
        }),
        SnowballType = schema.new({
            id = id.from(_N, "JobMetadata", "SnowballType"),
            type = "string",
            name = "SnowballType",
            target_id = prelude.String.id,
        }),
        CreationDate = schema.new({
            id = id.from(_N, "JobMetadata", "CreationDate"),
            type = "timestamp",
            name = "CreationDate",
            target_id = prelude.Timestamp.id,
        }),
        Resources = schema.new({
            id = id.from(_N, "JobMetadata", "Resources"),
            type = "structure",
            name = "Resources",
            target_id = id.from(_N, "JobResource"),
            target = M.JobResource,
        }),
        Description = schema.new({
            id = id.from(_N, "JobMetadata", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        KmsKeyARN = schema.new({
            id = id.from(_N, "JobMetadata", "KmsKeyARN"),
            type = "string",
            name = "KmsKeyARN",
            target_id = prelude.String.id,
        }),
        RoleARN = schema.new({
            id = id.from(_N, "JobMetadata", "RoleARN"),
            type = "string",
            name = "RoleARN",
            target_id = prelude.String.id,
        }),
        AddressId = schema.new({
            id = id.from(_N, "JobMetadata", "AddressId"),
            type = "string",
            name = "AddressId",
            target_id = prelude.String.id,
        }),
        ShippingDetails = schema.new({
            id = id.from(_N, "JobMetadata", "ShippingDetails"),
            type = "structure",
            name = "ShippingDetails",
            target_id = id.from(_N, "ShippingDetails"),
            target = M.ShippingDetails,
        }),
        SnowballCapacityPreference = schema.new({
            id = id.from(_N, "JobMetadata", "SnowballCapacityPreference"),
            type = "string",
            name = "SnowballCapacityPreference",
            target_id = prelude.String.id,
        }),
        Notification = schema.new({
            id = id.from(_N, "JobMetadata", "Notification"),
            type = "structure",
            name = "Notification",
            target_id = id.from(_N, "Notification"),
            target = M.Notification,
        }),
        DataTransferProgress = schema.new({
            id = id.from(_N, "JobMetadata", "DataTransferProgress"),
            type = "structure",
            name = "DataTransferProgress",
            target_id = id.from(_N, "DataTransfer"),
            target = M.DataTransfer,
        }),
        JobLogInfo = schema.new({
            id = id.from(_N, "JobMetadata", "JobLogInfo"),
            type = "structure",
            name = "JobLogInfo",
            target_id = id.from(_N, "JobLogs"),
            target = M.JobLogs,
        }),
        ClusterId = schema.new({
            id = id.from(_N, "JobMetadata", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
        }),
        ForwardingAddressId = schema.new({
            id = id.from(_N, "JobMetadata", "ForwardingAddressId"),
            type = "string",
            name = "ForwardingAddressId",
            target_id = prelude.String.id,
        }),
        TaxDocuments = schema.new({
            id = id.from(_N, "JobMetadata", "TaxDocuments"),
            type = "structure",
            name = "TaxDocuments",
            target_id = id.from(_N, "TaxDocuments"),
            target = M.TaxDocuments,
        }),
        DeviceConfiguration = schema.new({
            id = id.from(_N, "JobMetadata", "DeviceConfiguration"),
            type = "structure",
            name = "DeviceConfiguration",
            target_id = id.from(_N, "DeviceConfiguration"),
            target = M.DeviceConfiguration,
        }),
        RemoteManagement = schema.new({
            id = id.from(_N, "JobMetadata", "RemoteManagement"),
            type = "string",
            name = "RemoteManagement",
            target_id = prelude.String.id,
        }),
        LongTermPricingId = schema.new({
            id = id.from(_N, "JobMetadata", "LongTermPricingId"),
            type = "string",
            name = "LongTermPricingId",
            target_id = prelude.String.id,
        }),
        OnDeviceServiceConfiguration = schema.new({
            id = id.from(_N, "JobMetadata", "OnDeviceServiceConfiguration"),
            type = "structure",
            name = "OnDeviceServiceConfiguration",
            target_id = id.from(_N, "OnDeviceServiceConfiguration"),
            target = M.OnDeviceServiceConfiguration,
        }),
        ImpactLevel = schema.new({
            id = id.from(_N, "JobMetadata", "ImpactLevel"),
            type = "string",
            name = "ImpactLevel",
            target_id = prelude.String.id,
        }),
        PickupDetails = schema.new({
            id = id.from(_N, "JobMetadata", "PickupDetails"),
            type = "structure",
            name = "PickupDetails",
            target_id = id.from(_N, "PickupDetails"),
            target = M.PickupDetails,
        }),
        SnowballId = schema.new({
            id = id.from(_N, "JobMetadata", "SnowballId"),
            type = "string",
            name = "SnowballId",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeJobOutput = schema.new({
    id = id.from(_N, "DescribeJobOutput"),
    type = "structure",
    members = {
        JobMetadata = schema.new({
            id = id.from(_N, "DescribeJobOutput", "JobMetadata"),
            type = "structure",
            name = "JobMetadata",
            target_id = id.from(_N, "JobMetadata"),
            target = M.JobMetadata,
        }),
        SubJobMetadata = schema.new({
            id = id.from(_N, "DescribeJobOutput", "SubJobMetadata"),
            type = "list",
            name = "SubJobMetadata",
            target_id = prelude.Document.id,
            list_member = M.JobMetadata,
        }),
    },
})

M.DescribeReturnShippingLabelInput = schema.new({
    id = id.from(_N, "DescribeReturnShippingLabelInput"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "DescribeReturnShippingLabelInput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeReturnShippingLabelOutput = schema.new({
    id = id.from(_N, "DescribeReturnShippingLabelOutput"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "DescribeReturnShippingLabelOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        ExpirationDate = schema.new({
            id = id.from(_N, "DescribeReturnShippingLabelOutput", "ExpirationDate"),
            type = "timestamp",
            name = "ExpirationDate",
            target_id = prelude.Timestamp.id,
        }),
        ReturnShippingLabelURI = schema.new({
            id = id.from(_N, "DescribeReturnShippingLabelOutput", "ReturnShippingLabelURI"),
            type = "string",
            name = "ReturnShippingLabelURI",
            target_id = prelude.String.id,
        }),
    },
})

M.GetJobManifestInput = schema.new({
    id = id.from(_N, "GetJobManifestInput"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "GetJobManifestInput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetJobManifestOutput = schema.new({
    id = id.from(_N, "GetJobManifestOutput"),
    type = "structure",
    members = {
        ManifestURI = schema.new({
            id = id.from(_N, "GetJobManifestOutput", "ManifestURI"),
            type = "string",
            name = "ManifestURI",
            target_id = prelude.String.id,
        }),
    },
})

M.GetJobUnlockCodeInput = schema.new({
    id = id.from(_N, "GetJobUnlockCodeInput"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "GetJobUnlockCodeInput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetJobUnlockCodeOutput = schema.new({
    id = id.from(_N, "GetJobUnlockCodeOutput"),
    type = "structure",
    members = {
        UnlockCode = schema.new({
            id = id.from(_N, "GetJobUnlockCodeOutput", "UnlockCode"),
            type = "string",
            name = "UnlockCode",
            target_id = prelude.String.id,
        }),
    },
})

M.GetSnowballUsageInput = schema.new({
    id = id.from(_N, "GetSnowballUsageInput"),
    type = "structure",
})

M.GetSnowballUsageOutput = schema.new({
    id = id.from(_N, "GetSnowballUsageOutput"),
    type = "structure",
    members = {
        SnowballLimit = schema.new({
            id = id.from(_N, "GetSnowballUsageOutput", "SnowballLimit"),
            type = "integer",
            name = "SnowballLimit",
            target_id = prelude.Integer.id,
        }),
        SnowballsInUse = schema.new({
            id = id.from(_N, "GetSnowballUsageOutput", "SnowballsInUse"),
            type = "integer",
            name = "SnowballsInUse",
            target_id = prelude.Integer.id,
        }),
    },
})

M.GetSoftwareUpdatesInput = schema.new({
    id = id.from(_N, "GetSoftwareUpdatesInput"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "GetSoftwareUpdatesInput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetSoftwareUpdatesOutput = schema.new({
    id = id.from(_N, "GetSoftwareUpdatesOutput"),
    type = "structure",
    members = {
        UpdatesURI = schema.new({
            id = id.from(_N, "GetSoftwareUpdatesOutput", "UpdatesURI"),
            type = "string",
            name = "UpdatesURI",
            target_id = prelude.String.id,
        }),
    },
})

M.ListClusterJobsInput = schema.new({
    id = id.from(_N, "ListClusterJobsInput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "ListClusterJobsInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListClusterJobsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListClusterJobsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListClusterJobsOutput = schema.new({
    id = id.from(_N, "ListClusterJobsOutput"),
    type = "structure",
    members = {
        JobListEntries = schema.new({
            id = id.from(_N, "ListClusterJobsOutput", "JobListEntries"),
            type = "list",
            name = "JobListEntries",
            target_id = prelude.Document.id,
            list_member = M.JobListEntry,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListClusterJobsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListClustersInput = schema.new({
    id = id.from(_N, "ListClustersInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListClustersInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListClustersInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ClusterListEntry = schema.new({
    id = id.from(_N, "ClusterListEntry"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "ClusterListEntry", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
        }),
        ClusterState = schema.new({
            id = id.from(_N, "ClusterListEntry", "ClusterState"),
            type = "string",
            name = "ClusterState",
            target_id = prelude.String.id,
        }),
        CreationDate = schema.new({
            id = id.from(_N, "ClusterListEntry", "CreationDate"),
            type = "timestamp",
            name = "CreationDate",
            target_id = prelude.Timestamp.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ClusterListEntry", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.ListClustersOutput = schema.new({
    id = id.from(_N, "ListClustersOutput"),
    type = "structure",
    members = {
        ClusterListEntries = schema.new({
            id = id.from(_N, "ListClustersOutput", "ClusterListEntries"),
            type = "list",
            name = "ClusterListEntries",
            target_id = prelude.Document.id,
            list_member = M.ClusterListEntry,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListClustersOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCompatibleImagesInput = schema.new({
    id = id.from(_N, "ListCompatibleImagesInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListCompatibleImagesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCompatibleImagesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.CompatibleImage = schema.new({
    id = id.from(_N, "CompatibleImage"),
    type = "structure",
    members = {
        AmiId = schema.new({
            id = id.from(_N, "CompatibleImage", "AmiId"),
            type = "string",
            name = "AmiId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CompatibleImage", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCompatibleImagesOutput = schema.new({
    id = id.from(_N, "ListCompatibleImagesOutput"),
    type = "structure",
    members = {
        CompatibleImages = schema.new({
            id = id.from(_N, "ListCompatibleImagesOutput", "CompatibleImages"),
            type = "list",
            name = "CompatibleImages",
            target_id = prelude.Document.id,
            list_member = M.CompatibleImage,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCompatibleImagesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListJobsInput = schema.new({
    id = id.from(_N, "ListJobsInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListJobsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListJobsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListJobsOutput = schema.new({
    id = id.from(_N, "ListJobsOutput"),
    type = "structure",
    members = {
        JobListEntries = schema.new({
            id = id.from(_N, "ListJobsOutput", "JobListEntries"),
            type = "list",
            name = "JobListEntries",
            target_id = prelude.Document.id,
            list_member = M.JobListEntry,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListJobsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListLongTermPricingInput = schema.new({
    id = id.from(_N, "ListLongTermPricingInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListLongTermPricingInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListLongTermPricingInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.LongTermPricingListEntry = schema.new({
    id = id.from(_N, "LongTermPricingListEntry"),
    type = "structure",
    members = {
        LongTermPricingId = schema.new({
            id = id.from(_N, "LongTermPricingListEntry", "LongTermPricingId"),
            type = "string",
            name = "LongTermPricingId",
            target_id = prelude.String.id,
        }),
        LongTermPricingEndDate = schema.new({
            id = id.from(_N, "LongTermPricingListEntry", "LongTermPricingEndDate"),
            type = "timestamp",
            name = "LongTermPricingEndDate",
            target_id = prelude.Timestamp.id,
        }),
        LongTermPricingStartDate = schema.new({
            id = id.from(_N, "LongTermPricingListEntry", "LongTermPricingStartDate"),
            type = "timestamp",
            name = "LongTermPricingStartDate",
            target_id = prelude.Timestamp.id,
        }),
        LongTermPricingType = schema.new({
            id = id.from(_N, "LongTermPricingListEntry", "LongTermPricingType"),
            type = "string",
            name = "LongTermPricingType",
            target_id = prelude.String.id,
        }),
        CurrentActiveJob = schema.new({
            id = id.from(_N, "LongTermPricingListEntry", "CurrentActiveJob"),
            type = "string",
            name = "CurrentActiveJob",
            target_id = prelude.String.id,
        }),
        ReplacementJob = schema.new({
            id = id.from(_N, "LongTermPricingListEntry", "ReplacementJob"),
            type = "string",
            name = "ReplacementJob",
            target_id = prelude.String.id,
        }),
        IsLongTermPricingAutoRenew = schema.new({
            id = id.from(_N, "LongTermPricingListEntry", "IsLongTermPricingAutoRenew"),
            type = "boolean",
            name = "IsLongTermPricingAutoRenew",
            target_id = prelude.Boolean.id,
        }),
        LongTermPricingStatus = schema.new({
            id = id.from(_N, "LongTermPricingListEntry", "LongTermPricingStatus"),
            type = "string",
            name = "LongTermPricingStatus",
            target_id = prelude.String.id,
        }),
        SnowballType = schema.new({
            id = id.from(_N, "LongTermPricingListEntry", "SnowballType"),
            type = "string",
            name = "SnowballType",
            target_id = prelude.String.id,
        }),
        JobIds = schema.new({
            id = id.from(_N, "LongTermPricingListEntry", "JobIds"),
            type = "list",
            name = "JobIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListLongTermPricingOutput = schema.new({
    id = id.from(_N, "ListLongTermPricingOutput"),
    type = "structure",
    members = {
        LongTermPricingEntries = schema.new({
            id = id.from(_N, "ListLongTermPricingOutput", "LongTermPricingEntries"),
            type = "list",
            name = "LongTermPricingEntries",
            target_id = prelude.Document.id,
            list_member = M.LongTermPricingListEntry,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListLongTermPricingOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPickupLocationsInput = schema.new({
    id = id.from(_N, "ListPickupLocationsInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListPickupLocationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListPickupLocationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPickupLocationsOutput = schema.new({
    id = id.from(_N, "ListPickupLocationsOutput"),
    type = "structure",
    members = {
        Addresses = schema.new({
            id = id.from(_N, "ListPickupLocationsOutput", "Addresses"),
            type = "list",
            name = "Addresses",
            target_id = prelude.Document.id,
            list_member = M.Address,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListPickupLocationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceVersion = schema.new({
    id = id.from(_N, "ServiceVersion"),
    type = "structure",
    members = {
        Version = schema.new({
            id = id.from(_N, "ServiceVersion", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
    },
})

M.DependentService = schema.new({
    id = id.from(_N, "DependentService"),
    type = "structure",
    members = {
        ServiceName = schema.new({
            id = id.from(_N, "DependentService", "ServiceName"),
            type = "string",
            name = "ServiceName",
            target_id = prelude.String.id,
        }),
        ServiceVersion = schema.new({
            id = id.from(_N, "DependentService", "ServiceVersion"),
            type = "structure",
            name = "ServiceVersion",
            target_id = id.from(_N, "ServiceVersion"),
            target = M.ServiceVersion,
        }),
    },
})

M.ListServiceVersionsInput = schema.new({
    id = id.from(_N, "ListServiceVersionsInput"),
    type = "structure",
    members = {
        ServiceName = schema.new({
            id = id.from(_N, "ListServiceVersionsInput", "ServiceName"),
            type = "string",
            name = "ServiceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DependentServices = schema.new({
            id = id.from(_N, "ListServiceVersionsInput", "DependentServices"),
            type = "list",
            name = "DependentServices",
            target_id = prelude.Document.id,
            list_member = M.DependentService,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListServiceVersionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListServiceVersionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListServiceVersionsOutput = schema.new({
    id = id.from(_N, "ListServiceVersionsOutput"),
    type = "structure",
    members = {
        ServiceVersions = schema.new({
            id = id.from(_N, "ListServiceVersionsOutput", "ServiceVersions"),
            type = "list",
            name = "ServiceVersions",
            target_id = prelude.Document.id,
            list_member = M.ServiceVersion,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceName = schema.new({
            id = id.from(_N, "ListServiceVersionsOutput", "ServiceName"),
            type = "string",
            name = "ServiceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DependentServices = schema.new({
            id = id.from(_N, "ListServiceVersionsOutput", "DependentServices"),
            type = "list",
            name = "DependentServices",
            target_id = prelude.Document.id,
            list_member = M.DependentService,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListServiceVersionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateClusterInput = schema.new({
    id = id.from(_N, "UpdateClusterInput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "UpdateClusterInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RoleARN = schema.new({
            id = id.from(_N, "UpdateClusterInput", "RoleARN"),
            type = "string",
            name = "RoleARN",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateClusterInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Resources = schema.new({
            id = id.from(_N, "UpdateClusterInput", "Resources"),
            type = "structure",
            name = "Resources",
            target_id = id.from(_N, "JobResource"),
            target = M.JobResource,
        }),
        OnDeviceServiceConfiguration = schema.new({
            id = id.from(_N, "UpdateClusterInput", "OnDeviceServiceConfiguration"),
            type = "structure",
            name = "OnDeviceServiceConfiguration",
            target_id = id.from(_N, "OnDeviceServiceConfiguration"),
            target = M.OnDeviceServiceConfiguration,
        }),
        AddressId = schema.new({
            id = id.from(_N, "UpdateClusterInput", "AddressId"),
            type = "string",
            name = "AddressId",
            target_id = prelude.String.id,
        }),
        ShippingOption = schema.new({
            id = id.from(_N, "UpdateClusterInput", "ShippingOption"),
            type = "string",
            name = "ShippingOption",
            target_id = prelude.String.id,
        }),
        Notification = schema.new({
            id = id.from(_N, "UpdateClusterInput", "Notification"),
            type = "structure",
            name = "Notification",
            target_id = id.from(_N, "Notification"),
            target = M.Notification,
        }),
        ForwardingAddressId = schema.new({
            id = id.from(_N, "UpdateClusterInput", "ForwardingAddressId"),
            type = "string",
            name = "ForwardingAddressId",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateClusterOutput = schema.new({
    id = id.from(_N, "UpdateClusterOutput"),
    type = "structure",
})

M.UpdateJobInput = schema.new({
    id = id.from(_N, "UpdateJobInput"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "UpdateJobInput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RoleARN = schema.new({
            id = id.from(_N, "UpdateJobInput", "RoleARN"),
            type = "string",
            name = "RoleARN",
            target_id = prelude.String.id,
        }),
        Notification = schema.new({
            id = id.from(_N, "UpdateJobInput", "Notification"),
            type = "structure",
            name = "Notification",
            target_id = id.from(_N, "Notification"),
            target = M.Notification,
        }),
        Resources = schema.new({
            id = id.from(_N, "UpdateJobInput", "Resources"),
            type = "structure",
            name = "Resources",
            target_id = id.from(_N, "JobResource"),
            target = M.JobResource,
        }),
        OnDeviceServiceConfiguration = schema.new({
            id = id.from(_N, "UpdateJobInput", "OnDeviceServiceConfiguration"),
            type = "structure",
            name = "OnDeviceServiceConfiguration",
            target_id = id.from(_N, "OnDeviceServiceConfiguration"),
            target = M.OnDeviceServiceConfiguration,
        }),
        AddressId = schema.new({
            id = id.from(_N, "UpdateJobInput", "AddressId"),
            type = "string",
            name = "AddressId",
            target_id = prelude.String.id,
        }),
        ShippingOption = schema.new({
            id = id.from(_N, "UpdateJobInput", "ShippingOption"),
            type = "string",
            name = "ShippingOption",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateJobInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        SnowballCapacityPreference = schema.new({
            id = id.from(_N, "UpdateJobInput", "SnowballCapacityPreference"),
            type = "string",
            name = "SnowballCapacityPreference",
            target_id = prelude.String.id,
        }),
        ForwardingAddressId = schema.new({
            id = id.from(_N, "UpdateJobInput", "ForwardingAddressId"),
            type = "string",
            name = "ForwardingAddressId",
            target_id = prelude.String.id,
        }),
        PickupDetails = schema.new({
            id = id.from(_N, "UpdateJobInput", "PickupDetails"),
            type = "structure",
            name = "PickupDetails",
            target_id = id.from(_N, "PickupDetails"),
            target = M.PickupDetails,
        }),
    },
})

M.UpdateJobOutput = schema.new({
    id = id.from(_N, "UpdateJobOutput"),
    type = "structure",
})

M.UpdateJobShipmentStateInput = schema.new({
    id = id.from(_N, "UpdateJobShipmentStateInput"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "UpdateJobShipmentStateInput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ShipmentState = schema.new({
            id = id.from(_N, "UpdateJobShipmentStateInput", "ShipmentState"),
            type = "string",
            name = "ShipmentState",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateJobShipmentStateOutput = schema.new({
    id = id.from(_N, "UpdateJobShipmentStateOutput"),
    type = "structure",
})

M.UpdateLongTermPricingInput = schema.new({
    id = id.from(_N, "UpdateLongTermPricingInput"),
    type = "structure",
    members = {
        LongTermPricingId = schema.new({
            id = id.from(_N, "UpdateLongTermPricingInput", "LongTermPricingId"),
            type = "string",
            name = "LongTermPricingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReplacementJob = schema.new({
            id = id.from(_N, "UpdateLongTermPricingInput", "ReplacementJob"),
            type = "string",
            name = "ReplacementJob",
            target_id = prelude.String.id,
        }),
        IsLongTermPricingAutoRenew = schema.new({
            id = id.from(_N, "UpdateLongTermPricingInput", "IsLongTermPricingAutoRenew"),
            type = "boolean",
            name = "IsLongTermPricingAutoRenew",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateLongTermPricingOutput = schema.new({
    id = id.from(_N, "UpdateLongTermPricingOutput"),
    type = "structure",
})

return M
