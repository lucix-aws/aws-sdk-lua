local M = {}

M.Application = {
    type = "structure",
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
    members = {
        tagKey = {
            type = "string",
        },
    },
}

M.AppRegistryConfiguration = {
    type = "structure",
    members = {
        tagQueryConfiguration = M.TagQueryConfiguration,
    },
}

M.AssociateAttributeGroupInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
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
    members = {
        application = M.Application,
    },
}

M.CreateAttributeGroupInput = {
    type = "structure",
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
    members = {
        attributeGroup = M.AttributeGroup,
    },
}

M.DeleteApplicationInput = {
    type = "structure",
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
    members = {
        application = M.ApplicationSummary,
    },
}

M.DeleteAttributeGroupInput = {
    type = "structure",
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
    members = {
        attributeGroup = M.AttributeGroupSummary,
    },
}

M.DisassociateAttributeGroupInput = {
    type = "structure",
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
    members = {
        resourceGroup = M.ResourceGroup,
        applicationTagResourceGroup = M.ResourceGroup,
    },
}

M.GetApplicationOutput = {
    type = "structure",
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
    members = {
        resourceGroup = M.ResourceGroup,
    },
}

M.Resource = {
    type = "structure",
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
}

M.GetConfigurationOutput = {
    type = "structure",
    members = {
        configuration = M.AppRegistryConfiguration,
    },
}

M.ListApplicationsInput = {
    type = "structure",
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
    members = {
        tagValue = {
            type = "string",
        },
    },
}

M.ResourceInfo = {
    type = "structure",
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
    members = {
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AppRegistryConfiguration }),
    },
}

M.PutConfigurationOutput = {
    type = "structure",
}

M.SyncResourceInput = {
    type = "structure",
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
}

M.UntagResourceInput = {
    type = "structure",
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
}

M.UpdateApplicationInput = {
    type = "structure",
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
    members = {
        application = M.Application,
    },
}

M.UpdateAttributeGroupInput = {
    type = "structure",
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
    members = {
        attributeGroup = M.AttributeGroup,
    },
}

return M
