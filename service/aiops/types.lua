local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
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

M.ForbiddenException = {
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

M.CrossAccountConfiguration = {
    type = "structure",
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
        encryptionConfiguration = {
            type = "structure",
        },
        retentionInDays = {
            type = "number",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        tagKeyBoundaries = {
            type = "list",
            member_type = "string",
        },
        chatbotNotificationChannel = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        isCloudTrailEventHistoryEnabled = {
            type = "boolean",
        },
        crossAccountConfigurations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateInvestigationGroupOutput = {
    type = "structure",
    members = {
        arn = {
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

M.DeleteInvestigationGroupInput = {
    type = "structure",
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
}

M.GetInvestigationGroupInput = {
    type = "structure",
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
    members = {
        createdBy = {
            type = "string",
        },
        createdAt = {
            type = "number",
        },
        lastModifiedBy = {
            type = "string",
        },
        lastModifiedAt = {
            type = "number",
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
        encryptionConfiguration = {
            type = "structure",
        },
        retentionInDays = {
            type = "number",
        },
        chatbotNotificationChannel = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        tagKeyBoundaries = {
            type = "list",
            member_type = "string",
        },
        isCloudTrailEventHistoryEnabled = {
            type = "boolean",
        },
        crossAccountConfigurations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListInvestigationGroupsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListInvestigationGroupsModel = {
    type = "structure",
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
    members = {
        nextToken = {
            type = "string",
        },
        investigationGroups = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateInvestigationGroupInput = {
    type = "structure",
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
        encryptionConfiguration = {
            type = "structure",
        },
        tagKeyBoundaries = {
            type = "list",
            member_type = "string",
        },
        chatbotNotificationChannel = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        isCloudTrailEventHistoryEnabled = {
            type = "boolean",
        },
        crossAccountConfigurations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateInvestigationGroupOutput = {
    type = "structure",
}

M.DeleteInvestigationGroupPolicyInput = {
    type = "structure",
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
}

M.GetInvestigationGroupPolicyInput = {
    type = "structure",
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
    members = {
        investigationGroupArn = {
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
            key_type = "string",
            value_type = "string",
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
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
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

return M
