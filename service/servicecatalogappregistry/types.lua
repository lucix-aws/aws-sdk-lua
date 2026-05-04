local M = {}

M.Application = {
    type = "structure",
    id = "Application",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdateTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        applicationTag = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ApplicationSummary = {
    type = "structure",
    id = "ApplicationSummary",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdateTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ApplicationTagStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCESS = "SUCCESS",
    FAILURE = "FAILURE",
}

M.ResourcesListItem = {
    type = "structure",
    id = "ResourcesListItem",
    members = {
        resourceArn = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
        status = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
    },
}

M.ApplicationTagResult = {
    type = "structure",
    id = "ApplicationTagResult",
    members = {
        applicationTagStatus = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
        resources = {
            type = "list",
            member = M.ResourcesListItem,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.TagQueryConfiguration = {
    type = "structure",
    id = "TagQueryConfiguration",
    members = {
        tagKey = {
            type = "string",
        },
    },
}

M.AppRegistryConfiguration = {
    type = "structure",
    id = "AppRegistryConfiguration",
    members = {
        tagQueryConfiguration = M.TagQueryConfiguration,
    },
}

M.AssociateAttributeGroupInput = {
    type = "structure",
    id = "AssociateAttributeGroupInput",
    members = {
        application = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        attributeGroup = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AssociateAttributeGroupOutput = {
    type = "structure",
    id = "AssociateAttributeGroupOutput",
    members = {
        applicationArn = {
            type = "string",
        },
        attributeGroupArn = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AssociationOption = {
    APPLY_APPLICATION_TAG = "APPLY_APPLICATION_TAG",
    SKIP_APPLICATION_TAG = "SKIP_APPLICATION_TAG",
}

M.ResourceType = {
    CFN_STACK = "CFN_STACK",
    RESOURCE_TAG_VALUE = "RESOURCE_TAG_VALUE",
}

M.AssociateResourceInput = {
    type = "structure",
    id = "AssociateResourceInput",
    members = {
        application = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resource = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        options = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AssociateResourceOutput = {
    type = "structure",
    id = "AssociateResourceOutput",
    members = {
        applicationArn = {
            type = "string",
        },
        resourceArn = {
            type = "string",
        },
        options = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceCode = {
            type = "string",
        },
    },
}

M.AttributeGroup = {
    type = "structure",
    id = "AttributeGroup",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdateTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.AttributeGroupDetails = {
    type = "structure",
    id = "AttributeGroupDetails",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        createdBy = {
            type = "string",
        },
    },
}

M.AttributeGroupSummary = {
    type = "structure",
    id = "AttributeGroupSummary",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdateTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        createdBy = {
            type = "string",
        },
    },
}

M.CreateApplicationInput = {
    type = "structure",
    id = "CreateApplicationInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.CreateApplicationOutput = {
    type = "structure",
    id = "CreateApplicationOutput",
    members = {
        application = M.Application,
    },
}

M.CreateAttributeGroupInput = {
    type = "structure",
    id = "CreateAttributeGroupInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        attributes = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.CreateAttributeGroupOutput = {
    type = "structure",
    id = "CreateAttributeGroupOutput",
    members = {
        attributeGroup = M.AttributeGroup,
    },
}

M.DeleteApplicationInput = {
    type = "structure",
    id = "DeleteApplicationInput",
    members = {
        application = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteApplicationOutput = {
    type = "structure",
    id = "DeleteApplicationOutput",
    members = {
        application = M.ApplicationSummary,
    },
}

M.DeleteAttributeGroupInput = {
    type = "structure",
    id = "DeleteAttributeGroupInput",
    members = {
        attributeGroup = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAttributeGroupOutput = {
    type = "structure",
    id = "DeleteAttributeGroupOutput",
    members = {
        attributeGroup = M.AttributeGroupSummary,
    },
}

M.DisassociateAttributeGroupInput = {
    type = "structure",
    id = "DisassociateAttributeGroupInput",
    members = {
        application = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        attributeGroup = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateAttributeGroupOutput = {
    type = "structure",
    id = "DisassociateAttributeGroupOutput",
    members = {
        applicationArn = {
            type = "string",
        },
        attributeGroupArn = {
            type = "string",
        },
    },
}

M.DisassociateResourceInput = {
    type = "structure",
    id = "DisassociateResourceInput",
    members = {
        application = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resource = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateResourceOutput = {
    type = "structure",
    id = "DisassociateResourceOutput",
    members = {
        applicationArn = {
            type = "string",
        },
        resourceArn = {
            type = "string",
        },
    },
}

M.GetApplicationInput = {
    type = "structure",
    id = "GetApplicationInput",
    members = {
        application = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ResourceGroupState = {
    CREATING = "CREATING",
    CREATE_COMPLETE = "CREATE_COMPLETE",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATING = "UPDATING",
    UPDATE_COMPLETE = "UPDATE_COMPLETE",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.ResourceGroup = {
    type = "structure",
    id = "ResourceGroup",
    members = {
        state = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.Integrations = {
    type = "structure",
    id = "Integrations",
    members = {
        resourceGroup = M.ResourceGroup,
        applicationTagResourceGroup = M.ResourceGroup,
    },
}

M.GetApplicationOutput = {
    type = "structure",
    id = "GetApplicationOutput",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdateTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        associatedResourceCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        integrations = M.Integrations,
        applicationTag = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ResourceItemStatus = {
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
    SKIPPED = "SKIPPED",
}

M.GetAssociatedResourceInput = {
    type = "structure",
    id = "GetAssociatedResourceInput",
    members = {
        application = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resource = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        resourceTagStatus = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "resourceTagStatus",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ResourceIntegrations = {
    type = "structure",
    id = "ResourceIntegrations",
    members = {
        resourceGroup = M.ResourceGroup,
    },
}

M.Resource = {
    type = "structure",
    id = "Resource",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        associationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        integrations = M.ResourceIntegrations,
    },
}

M.GetAssociatedResourceOutput = {
    type = "structure",
    id = "GetAssociatedResourceOutput",
    members = {
        resource = M.Resource,
        options = {
            type = "list",
            member = { type = "string" },
        },
        applicationTagResult = M.ApplicationTagResult,
    },
}

M.GetAttributeGroupInput = {
    type = "structure",
    id = "GetAttributeGroupInput",
    members = {
        attributeGroup = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAttributeGroupOutput = {
    type = "structure",
    id = "GetAttributeGroupOutput",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        attributes = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdateTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        createdBy = {
            type = "string",
        },
    },
}

M.GetConfigurationInput = {
    type = "structure",
    id = "GetConfigurationInput",
}

M.GetConfigurationOutput = {
    type = "structure",
    id = "GetConfigurationOutput",
    members = {
        configuration = M.AppRegistryConfiguration,
    },
}

M.ListApplicationsInput = {
    type = "structure",
    id = "ListApplicationsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListApplicationsOutput = {
    type = "structure",
    id = "ListApplicationsOutput",
    members = {
        applications = {
            type = "list",
            member = M.ApplicationSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAssociatedAttributeGroupsInput = {
    type = "structure",
    id = "ListAssociatedAttributeGroupsInput",
    members = {
        application = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListAssociatedAttributeGroupsOutput = {
    type = "structure",
    id = "ListAssociatedAttributeGroupsOutput",
    members = {
        attributeGroups = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAssociatedResourcesInput = {
    type = "structure",
    id = "ListAssociatedResourcesInput",
    members = {
        application = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ResourceDetails = {
    type = "structure",
    id = "ResourceDetails",
    members = {
        tagValue = {
            type = "string",
        },
    },
}

M.ResourceInfo = {
    type = "structure",
    id = "ResourceInfo",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        resourceDetails = M.ResourceDetails,
        options = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListAssociatedResourcesOutput = {
    type = "structure",
    id = "ListAssociatedResourcesOutput",
    members = {
        resources = {
            type = "list",
            member = M.ResourceInfo,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAttributeGroupsInput = {
    type = "structure",
    id = "ListAttributeGroupsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListAttributeGroupsOutput = {
    type = "structure",
    id = "ListAttributeGroupsOutput",
    members = {
        attributeGroups = {
            type = "list",
            member = M.AttributeGroupSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAttributeGroupsForApplicationInput = {
    type = "structure",
    id = "ListAttributeGroupsForApplicationInput",
    members = {
        application = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListAttributeGroupsForApplicationOutput = {
    type = "structure",
    id = "ListAttributeGroupsForApplicationOutput",
    members = {
        attributeGroupsDetails = {
            type = "list",
            member = M.AttributeGroupDetails,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        resourceArn = {
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
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PutConfigurationInput = {
    type = "structure",
    id = "PutConfigurationInput",
    members = {
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AppRegistryConfiguration }),
    },
}

M.PutConfigurationOutput = {
    type = "structure",
    id = "PutConfigurationOutput",
}

M.SyncResourceInput = {
    type = "structure",
    id = "SyncResourceInput",
    members = {
        resourceType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resource = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SyncAction = {
    START_SYNC = "START_SYNC",
    NO_ACTION = "NO_ACTION",
}

M.SyncResourceOutput = {
    type = "structure",
    id = "SyncResourceOutput",
    members = {
        applicationArn = {
            type = "string",
        },
        resourceArn = {
            type = "string",
        },
        actionTaken = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
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
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
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

M.UpdateApplicationInput = {
    type = "structure",
    id = "UpdateApplicationInput",
    members = {
        application = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.UpdateApplicationOutput = {
    type = "structure",
    id = "UpdateApplicationOutput",
    members = {
        application = M.Application,
    },
}

M.UpdateAttributeGroupInput = {
    type = "structure",
    id = "UpdateAttributeGroupInput",
    members = {
        attributeGroup = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        attributes = {
            type = "string",
        },
    },
}

M.UpdateAttributeGroupOutput = {
    type = "structure",
    id = "UpdateAttributeGroupOutput",
    members = {
        attributeGroup = M.AttributeGroup,
    },
}

return M
