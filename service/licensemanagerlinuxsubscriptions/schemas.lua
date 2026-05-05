local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.licensemanagerlinuxsubscriptions"

local M = {}

M.DeregisterSubscriptionProviderInput = schema.new({
    id = id.from(_N, "DeregisterSubscriptionProviderRequest"),
    type = "structure",
    members = {
        SubscriptionProviderArn = schema.new({
            id = id.from(_N, "DeregisterSubscriptionProviderInput", "SubscriptionProviderArn"),
            type = "string",
            name = "SubscriptionProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeregisterSubscriptionProviderOutput = schema.new({
    id = id.from(_N, "DeregisterSubscriptionProviderResponse"),
    type = "structure",
})

M.InternalServerException = schema.new({
    id = id.from(_N, "InternalServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InternalServerException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ThrottlingException = schema.new({
    id = id.from(_N, "ThrottlingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ThrottlingException", "message"),
            type = "string",
            name = "message",
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
        message = schema.new({
            id = id.from(_N, "ValidationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.Filter = schema.new({
    id = id.from(_N, "Filter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Filter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Values = schema.new({
            id = id.from(_N, "Filter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Operator = schema.new({
            id = id.from(_N, "Filter", "Operator"),
            type = "string",
            name = "Operator",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRegisteredSubscriptionProviderInput = schema.new({
    id = id.from(_N, "GetRegisteredSubscriptionProviderRequest"),
    type = "structure",
    members = {
        SubscriptionProviderArn = schema.new({
            id = id.from(_N, "GetRegisteredSubscriptionProviderInput", "SubscriptionProviderArn"),
            type = "string",
            name = "SubscriptionProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetRegisteredSubscriptionProviderOutput = schema.new({
    id = id.from(_N, "GetRegisteredSubscriptionProviderResponse"),
    type = "structure",
    members = {
        SubscriptionProviderArn = schema.new({
            id = id.from(_N, "GetRegisteredSubscriptionProviderOutput", "SubscriptionProviderArn"),
            type = "string",
            name = "SubscriptionProviderArn",
            target_id = prelude.String.id,
        }),
        SubscriptionProviderSource = schema.new({
            id = id.from(_N, "GetRegisteredSubscriptionProviderOutput", "SubscriptionProviderSource"),
            type = "string",
            name = "SubscriptionProviderSource",
            target_id = prelude.String.id,
        }),
        SecretArn = schema.new({
            id = id.from(_N, "GetRegisteredSubscriptionProviderOutput", "SecretArn"),
            type = "string",
            name = "SecretArn",
            target_id = prelude.String.id,
        }),
        SubscriptionProviderStatus = schema.new({
            id = id.from(_N, "GetRegisteredSubscriptionProviderOutput", "SubscriptionProviderStatus"),
            type = "string",
            name = "SubscriptionProviderStatus",
            target_id = prelude.String.id,
        }),
        SubscriptionProviderStatusMessage = schema.new({
            id = id.from(_N, "GetRegisteredSubscriptionProviderOutput", "SubscriptionProviderStatusMessage"),
            type = "string",
            name = "SubscriptionProviderStatusMessage",
            target_id = prelude.String.id,
        }),
        LastSuccessfulDataRetrievalTime = schema.new({
            id = id.from(_N, "GetRegisteredSubscriptionProviderOutput", "LastSuccessfulDataRetrievalTime"),
            type = "string",
            name = "LastSuccessfulDataRetrievalTime",
            target_id = prelude.String.id,
        }),
    },
})

M.GetServiceSettingsInput = schema.new({
    id = id.from(_N, "GetServiceSettingsRequest"),
    type = "structure",
})

M.LinuxSubscriptionsDiscoverySettings = schema.new({
    id = id.from(_N, "LinuxSubscriptionsDiscoverySettings"),
    type = "structure",
    members = {
        SourceRegions = schema.new({
            id = id.from(_N, "LinuxSubscriptionsDiscoverySettings", "SourceRegions"),
            type = "list",
            name = "SourceRegions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OrganizationIntegration = schema.new({
            id = id.from(_N, "LinuxSubscriptionsDiscoverySettings", "OrganizationIntegration"),
            type = "string",
            name = "OrganizationIntegration",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetServiceSettingsOutput = schema.new({
    id = id.from(_N, "GetServiceSettingsResponse"),
    type = "structure",
    members = {
        LinuxSubscriptionsDiscovery = schema.new({
            id = id.from(_N, "GetServiceSettingsOutput", "LinuxSubscriptionsDiscovery"),
            type = "string",
            name = "LinuxSubscriptionsDiscovery",
            target_id = prelude.String.id,
        }),
        LinuxSubscriptionsDiscoverySettings = schema.new({
            id = id.from(_N, "GetServiceSettingsOutput", "LinuxSubscriptionsDiscoverySettings"),
            type = "structure",
            name = "LinuxSubscriptionsDiscoverySettings",
            target_id = id.from(_N, "LinuxSubscriptionsDiscoverySettings"),
            target = M.LinuxSubscriptionsDiscoverySettings,
        }),
        Status = schema.new({
            id = id.from(_N, "GetServiceSettingsOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusMessage = schema.new({
            id = id.from(_N, "GetServiceSettingsOutput", "StatusMessage"),
            type = "map",
            name = "StatusMessage",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        HomeRegions = schema.new({
            id = id.from(_N, "GetServiceSettingsOutput", "HomeRegions"),
            type = "list",
            name = "HomeRegions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.Instance = schema.new({
    id = id.from(_N, "Instance"),
    type = "structure",
    members = {
        AmiId = schema.new({
            id = id.from(_N, "Instance", "AmiId"),
            type = "string",
            name = "AmiId",
            target_id = prelude.String.id,
        }),
        InstanceID = schema.new({
            id = id.from(_N, "Instance", "InstanceID"),
            type = "string",
            name = "InstanceID",
            target_id = prelude.String.id,
        }),
        InstanceType = schema.new({
            id = id.from(_N, "Instance", "InstanceType"),
            type = "string",
            name = "InstanceType",
            target_id = prelude.String.id,
        }),
        AccountID = schema.new({
            id = id.from(_N, "Instance", "AccountID"),
            type = "string",
            name = "AccountID",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "Instance", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Region = schema.new({
            id = id.from(_N, "Instance", "Region"),
            type = "string",
            name = "Region",
            target_id = prelude.String.id,
        }),
        UsageOperation = schema.new({
            id = id.from(_N, "Instance", "UsageOperation"),
            type = "string",
            name = "UsageOperation",
            target_id = prelude.String.id,
        }),
        ProductCode = schema.new({
            id = id.from(_N, "Instance", "ProductCode"),
            type = "list",
            name = "ProductCode",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        LastUpdatedTime = schema.new({
            id = id.from(_N, "Instance", "LastUpdatedTime"),
            type = "string",
            name = "LastUpdatedTime",
            target_id = prelude.String.id,
        }),
        SubscriptionName = schema.new({
            id = id.from(_N, "Instance", "SubscriptionName"),
            type = "string",
            name = "SubscriptionName",
            target_id = prelude.String.id,
        }),
        OsVersion = schema.new({
            id = id.from(_N, "Instance", "OsVersion"),
            type = "string",
            name = "OsVersion",
            target_id = prelude.String.id,
        }),
        SubscriptionProviderCreateTime = schema.new({
            id = id.from(_N, "Instance", "SubscriptionProviderCreateTime"),
            type = "string",
            name = "SubscriptionProviderCreateTime",
            target_id = prelude.String.id,
        }),
        SubscriptionProviderUpdateTime = schema.new({
            id = id.from(_N, "Instance", "SubscriptionProviderUpdateTime"),
            type = "string",
            name = "SubscriptionProviderUpdateTime",
            target_id = prelude.String.id,
        }),
        DualSubscription = schema.new({
            id = id.from(_N, "Instance", "DualSubscription"),
            type = "string",
            name = "DualSubscription",
            target_id = prelude.String.id,
        }),
        RegisteredWithSubscriptionProvider = schema.new({
            id = id.from(_N, "Instance", "RegisteredWithSubscriptionProvider"),
            type = "string",
            name = "RegisteredWithSubscriptionProvider",
            target_id = prelude.String.id,
        }),
    },
})

M.ListLinuxSubscriptionInstancesInput = schema.new({
    id = id.from(_N, "ListLinuxSubscriptionInstancesRequest"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "ListLinuxSubscriptionInstancesInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.Filter,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListLinuxSubscriptionInstancesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListLinuxSubscriptionInstancesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListLinuxSubscriptionInstancesOutput = schema.new({
    id = id.from(_N, "ListLinuxSubscriptionInstancesResponse"),
    type = "structure",
    members = {
        Instances = schema.new({
            id = id.from(_N, "ListLinuxSubscriptionInstancesOutput", "Instances"),
            type = "list",
            name = "Instances",
            target_id = prelude.Document.id,
            list_member = M.Instance,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListLinuxSubscriptionInstancesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListLinuxSubscriptionsInput = schema.new({
    id = id.from(_N, "ListLinuxSubscriptionsRequest"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "ListLinuxSubscriptionsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.Filter,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListLinuxSubscriptionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListLinuxSubscriptionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.Subscription = schema.new({
    id = id.from(_N, "Subscription"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Subscription", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "Subscription", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        InstanceCount = schema.new({
            id = id.from(_N, "Subscription", "InstanceCount"),
            type = "long",
            name = "InstanceCount",
            target_id = prelude.Long.id,
        }),
    },
})

M.ListLinuxSubscriptionsOutput = schema.new({
    id = id.from(_N, "ListLinuxSubscriptionsResponse"),
    type = "structure",
    members = {
        Subscriptions = schema.new({
            id = id.from(_N, "ListLinuxSubscriptionsOutput", "Subscriptions"),
            type = "list",
            name = "Subscriptions",
            target_id = prelude.Document.id,
            list_member = M.Subscription,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListLinuxSubscriptionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRegisteredSubscriptionProvidersInput = schema.new({
    id = id.from(_N, "ListRegisteredSubscriptionProvidersRequest"),
    type = "structure",
    members = {
        SubscriptionProviderSources = schema.new({
            id = id.from(_N, "ListRegisteredSubscriptionProvidersInput", "SubscriptionProviderSources"),
            type = "list",
            name = "SubscriptionProviderSources",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListRegisteredSubscriptionProvidersInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListRegisteredSubscriptionProvidersInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RegisteredSubscriptionProvider = schema.new({
    id = id.from(_N, "RegisteredSubscriptionProvider"),
    type = "structure",
    members = {
        SubscriptionProviderArn = schema.new({
            id = id.from(_N, "RegisteredSubscriptionProvider", "SubscriptionProviderArn"),
            type = "string",
            name = "SubscriptionProviderArn",
            target_id = prelude.String.id,
        }),
        SubscriptionProviderSource = schema.new({
            id = id.from(_N, "RegisteredSubscriptionProvider", "SubscriptionProviderSource"),
            type = "string",
            name = "SubscriptionProviderSource",
            target_id = prelude.String.id,
        }),
        SecretArn = schema.new({
            id = id.from(_N, "RegisteredSubscriptionProvider", "SecretArn"),
            type = "string",
            name = "SecretArn",
            target_id = prelude.String.id,
        }),
        SubscriptionProviderStatus = schema.new({
            id = id.from(_N, "RegisteredSubscriptionProvider", "SubscriptionProviderStatus"),
            type = "string",
            name = "SubscriptionProviderStatus",
            target_id = prelude.String.id,
        }),
        SubscriptionProviderStatusMessage = schema.new({
            id = id.from(_N, "RegisteredSubscriptionProvider", "SubscriptionProviderStatusMessage"),
            type = "string",
            name = "SubscriptionProviderStatusMessage",
            target_id = prelude.String.id,
        }),
        LastSuccessfulDataRetrievalTime = schema.new({
            id = id.from(_N, "RegisteredSubscriptionProvider", "LastSuccessfulDataRetrievalTime"),
            type = "string",
            name = "LastSuccessfulDataRetrievalTime",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRegisteredSubscriptionProvidersOutput = schema.new({
    id = id.from(_N, "ListRegisteredSubscriptionProvidersResponse"),
    type = "structure",
    members = {
        RegisteredSubscriptionProviders = schema.new({
            id = id.from(_N, "ListRegisteredSubscriptionProvidersOutput", "RegisteredSubscriptionProviders"),
            type = "list",
            name = "RegisteredSubscriptionProviders",
            target_id = prelude.Document.id,
            list_member = M.RegisteredSubscriptionProvider,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListRegisteredSubscriptionProvidersOutput", "NextToken"),
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
        resourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
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
        tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.RegisterSubscriptionProviderInput = schema.new({
    id = id.from(_N, "RegisterSubscriptionProviderRequest"),
    type = "structure",
    members = {
        SubscriptionProviderSource = schema.new({
            id = id.from(_N, "RegisterSubscriptionProviderInput", "SubscriptionProviderSource"),
            type = "string",
            name = "SubscriptionProviderSource",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SecretArn = schema.new({
            id = id.from(_N, "RegisterSubscriptionProviderInput", "SecretArn"),
            type = "string",
            name = "SecretArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "RegisterSubscriptionProviderInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.RegisterSubscriptionProviderOutput = schema.new({
    id = id.from(_N, "RegisterSubscriptionProviderResponse"),
    type = "structure",
    members = {
        SubscriptionProviderSource = schema.new({
            id = id.from(_N, "RegisterSubscriptionProviderOutput", "SubscriptionProviderSource"),
            type = "string",
            name = "SubscriptionProviderSource",
            target_id = prelude.String.id,
        }),
        SubscriptionProviderArn = schema.new({
            id = id.from(_N, "RegisterSubscriptionProviderOutput", "SubscriptionProviderArn"),
            type = "string",
            name = "SubscriptionProviderArn",
            target_id = prelude.String.id,
        }),
        SubscriptionProviderStatus = schema.new({
            id = id.from(_N, "RegisterSubscriptionProviderOutput", "SubscriptionProviderStatus"),
            type = "string",
            name = "SubscriptionProviderStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "TagResourceInput", "tags"),
            type = "map",
            name = "tags",
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
        resourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        tagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "tagKeys"),
            type = "list",
            name = "tagKeys",
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

M.UpdateServiceSettingsInput = schema.new({
    id = id.from(_N, "UpdateServiceSettingsRequest"),
    type = "structure",
    members = {
        LinuxSubscriptionsDiscovery = schema.new({
            id = id.from(_N, "UpdateServiceSettingsInput", "LinuxSubscriptionsDiscovery"),
            type = "string",
            name = "LinuxSubscriptionsDiscovery",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LinuxSubscriptionsDiscoverySettings = schema.new({
            id = id.from(_N, "UpdateServiceSettingsInput", "LinuxSubscriptionsDiscoverySettings"),
            type = "structure",
            name = "LinuxSubscriptionsDiscoverySettings",
            target_id = id.from(_N, "LinuxSubscriptionsDiscoverySettings"),
            target = M.LinuxSubscriptionsDiscoverySettings,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AllowUpdate = schema.new({
            id = id.from(_N, "UpdateServiceSettingsInput", "AllowUpdate"),
            type = "boolean",
            name = "AllowUpdate",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateServiceSettingsOutput = schema.new({
    id = id.from(_N, "UpdateServiceSettingsResponse"),
    type = "structure",
    members = {
        LinuxSubscriptionsDiscovery = schema.new({
            id = id.from(_N, "UpdateServiceSettingsOutput", "LinuxSubscriptionsDiscovery"),
            type = "string",
            name = "LinuxSubscriptionsDiscovery",
            target_id = prelude.String.id,
        }),
        LinuxSubscriptionsDiscoverySettings = schema.new({
            id = id.from(_N, "UpdateServiceSettingsOutput", "LinuxSubscriptionsDiscoverySettings"),
            type = "structure",
            name = "LinuxSubscriptionsDiscoverySettings",
            target_id = id.from(_N, "LinuxSubscriptionsDiscoverySettings"),
            target = M.LinuxSubscriptionsDiscoverySettings,
        }),
        Status = schema.new({
            id = id.from(_N, "UpdateServiceSettingsOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusMessage = schema.new({
            id = id.from(_N, "UpdateServiceSettingsOutput", "StatusMessage"),
            type = "map",
            name = "StatusMessage",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        HomeRegions = schema.new({
            id = id.from(_N, "UpdateServiceSettingsOutput", "HomeRegions"),
            type = "list",
            name = "HomeRegions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
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
