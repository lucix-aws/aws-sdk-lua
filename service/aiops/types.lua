local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
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

M.ForbiddenException = {
    type = "structure",
    id = "ForbiddenException",
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

M.CrossAccountConfiguration = {
    type = "structure",
    id = "CrossAccountConfiguration",
    members = {
        sourceRoleArn = {
            type = "string",
        },
    },
}

M.EncryptionConfigurationType = {
    AWS_OWNED_KEY = "AWS_OWNED_KEY",
    CUSTOMER_MANAGED_KMS_KEY = "CUSTOMER_MANAGED_KMS_KEY",
}

M.EncryptionConfiguration = {
    type = "structure",
    id = "EncryptionConfiguration",
    members = {
        type = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
    },
}

M.CreateInvestigationGroupInput = {
    type = "structure",
    id = "CreateInvestigationGroupInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        encryptionConfiguration = M.EncryptionConfiguration,
        retentionInDays = {
            type = "long",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        tagKeyBoundaries = {
            type = "list",
            member = { type = "string" },
        },
        chatbotNotificationChannel = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        isCloudTrailEventHistoryEnabled = {
            type = "boolean",
        },
        crossAccountConfigurations = {
            type = "list",
            member = M.CrossAccountConfiguration,
        },
    },
}

M.CreateInvestigationGroupOutput = {
    type = "structure",
    id = "CreateInvestigationGroupOutput",
    members = {
        arn = {
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
        resourceId = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        serviceCode = {
            type = "string",
        },
        quotaCode = {
            type = "string",
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

M.DeleteInvestigationGroupInput = {
    type = "structure",
    id = "DeleteInvestigationGroupInput",
    members = {
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteInvestigationGroupOutput = {
    type = "structure",
    id = "DeleteInvestigationGroupOutput",
}

M.GetInvestigationGroupInput = {
    type = "structure",
    id = "GetInvestigationGroupInput",
    members = {
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetInvestigationGroupOutput = {
    type = "structure",
    id = "GetInvestigationGroupOutput",
    members = {
        createdBy = {
            type = "string",
        },
        createdAt = {
            type = "long",
        },
        lastModifiedBy = {
            type = "string",
        },
        lastModifiedAt = {
            type = "long",
        },
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        encryptionConfiguration = M.EncryptionConfiguration,
        retentionInDays = {
            type = "long",
        },
        chatbotNotificationChannel = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        tagKeyBoundaries = {
            type = "list",
            member = { type = "string" },
        },
        isCloudTrailEventHistoryEnabled = {
            type = "boolean",
        },
        crossAccountConfigurations = {
            type = "list",
            member = M.CrossAccountConfiguration,
        },
    },
}

M.ListInvestigationGroupsInput = {
    type = "structure",
    id = "ListInvestigationGroupsInput",
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

M.ListInvestigationGroupsModel = {
    type = "structure",
    id = "ListInvestigationGroupsModel",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
    },
}

M.ListInvestigationGroupsOutput = {
    type = "structure",
    id = "ListInvestigationGroupsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        investigationGroups = {
            type = "list",
            member = M.ListInvestigationGroupsModel,
        },
    },
}

M.UpdateInvestigationGroupInput = {
    type = "structure",
    id = "UpdateInvestigationGroupInput",
    members = {
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        roleArn = {
            type = "string",
        },
        encryptionConfiguration = M.EncryptionConfiguration,
        tagKeyBoundaries = {
            type = "list",
            member = { type = "string" },
        },
        chatbotNotificationChannel = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        isCloudTrailEventHistoryEnabled = {
            type = "boolean",
        },
        crossAccountConfigurations = {
            type = "list",
            member = M.CrossAccountConfiguration,
        },
    },
}

M.UpdateInvestigationGroupOutput = {
    type = "structure",
    id = "UpdateInvestigationGroupOutput",
}

M.DeleteInvestigationGroupPolicyInput = {
    type = "structure",
    id = "DeleteInvestigationGroupPolicyInput",
    members = {
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteInvestigationGroupPolicyOutput = {
    type = "structure",
    id = "DeleteInvestigationGroupPolicyOutput",
}

M.GetInvestigationGroupPolicyInput = {
    type = "structure",
    id = "GetInvestigationGroupPolicyInput",
    members = {
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetInvestigationGroupPolicyOutput = {
    type = "structure",
    id = "GetInvestigationGroupPolicyOutput",
    members = {
        investigationGroupArn = {
            type = "string",
        },
        policy = {
            type = "string",
        },
    },
}

M.PutInvestigationGroupPolicyInput = {
    type = "structure",
    id = "PutInvestigationGroupPolicyInput",
    members = {
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutInvestigationGroupPolicyOutput = {
    type = "structure",
    id = "PutInvestigationGroupPolicyOutput",
    members = {
        investigationGroupArn = {
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

return M
