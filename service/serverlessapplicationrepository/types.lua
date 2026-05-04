local M = {}

M.ApplicationDependencySummary = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                json_name = "applicationId",
                required = true,
            },
        },
        SemanticVersion = {
            type = "string",
            traits = {
                json_name = "semanticVersion",
                required = true,
            },
        },
    },
}

M.ApplicationPolicyStatement = {
    type = "structure",
    members = {
        Actions = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "actions",
                required = true,
            },
        },
        PrincipalOrgIDs = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "principalOrgIDs",
            },
        },
        Principals = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "principals",
                required = true,
            },
        },
        StatementId = {
            type = "string",
            traits = {
                json_name = "statementId",
            },
        },
    },
}

M.ApplicationSummary = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                json_name = "applicationId",
                required = true,
            },
        },
        Author = {
            type = "string",
            traits = {
                json_name = "author",
                required = true,
            },
        },
        CreationTime = {
            type = "string",
            traits = {
                json_name = "creationTime",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
                required = true,
            },
        },
        HomePageUrl = {
            type = "string",
            traits = {
                json_name = "homePageUrl",
            },
        },
        Labels = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "labels",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        SpdxLicenseId = {
            type = "string",
            traits = {
                json_name = "spdxLicenseId",
            },
        },
    },
}

M.Capability = {
    CAPABILITY_IAM = "CAPABILITY_IAM",
    CAPABILITY_NAMED_IAM = "CAPABILITY_NAMED_IAM",
    CAPABILITY_AUTO_EXPAND = "CAPABILITY_AUTO_EXPAND",
    CAPABILITY_RESOURCE_POLICY = "CAPABILITY_RESOURCE_POLICY",
}

M.ParameterDefinition = {
    type = "structure",
    members = {
        AllowedPattern = {
            type = "string",
            traits = {
                json_name = "allowedPattern",
            },
        },
        AllowedValues = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "allowedValues",
            },
        },
        ConstraintDescription = {
            type = "string",
            traits = {
                json_name = "constraintDescription",
            },
        },
        DefaultValue = {
            type = "string",
            traits = {
                json_name = "defaultValue",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        MaxLength = {
            type = "integer",
            traits = {
                json_name = "maxLength",
            },
        },
        MaxValue = {
            type = "integer",
            traits = {
                json_name = "maxValue",
            },
        },
        MinLength = {
            type = "integer",
            traits = {
                json_name = "minLength",
            },
        },
        MinValue = {
            type = "integer",
            traits = {
                json_name = "minValue",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        NoEcho = {
            type = "boolean",
            traits = {
                json_name = "noEcho",
            },
        },
        ReferencedByResources = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "referencedByResources",
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
    },
}

M.ParameterValue = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                json_name = "value",
                required = true,
            },
        },
    },
}

M.RollbackTrigger = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                json_name = "type",
                required = true,
            },
        },
    },
}

M.Tag = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                json_name = "key",
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                json_name = "value",
                required = true,
            },
        },
    },
}

M.VersionSummary = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                json_name = "applicationId",
                required = true,
            },
        },
        CreationTime = {
            type = "string",
            traits = {
                json_name = "creationTime",
                required = true,
            },
        },
        SemanticVersion = {
            type = "string",
            traits = {
                json_name = "semanticVersion",
                required = true,
            },
        },
        SourceCodeUrl = {
            type = "string",
            traits = {
                json_name = "sourceCodeUrl",
            },
        },
    },
}

M.BadRequestException = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                json_name = "errorCode",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                json_name = "errorCode",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.CreateApplicationInput = {
    type = "structure",
    members = {
        Author = {
            type = "string",
            traits = {
                json_name = "author",
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
                required = true,
            },
        },
        HomePageUrl = {
            type = "string",
            traits = {
                json_name = "homePageUrl",
            },
        },
        Labels = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "labels",
            },
        },
        LicenseBody = {
            type = "string",
            traits = {
                json_name = "licenseBody",
            },
        },
        LicenseUrl = {
            type = "string",
            traits = {
                json_name = "licenseUrl",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        ReadmeBody = {
            type = "string",
            traits = {
                json_name = "readmeBody",
            },
        },
        ReadmeUrl = {
            type = "string",
            traits = {
                json_name = "readmeUrl",
            },
        },
        SemanticVersion = {
            type = "string",
            traits = {
                json_name = "semanticVersion",
            },
        },
        SourceCodeArchiveUrl = {
            type = "string",
            traits = {
                json_name = "sourceCodeArchiveUrl",
            },
        },
        SourceCodeUrl = {
            type = "string",
            traits = {
                json_name = "sourceCodeUrl",
            },
        },
        SpdxLicenseId = {
            type = "string",
            traits = {
                json_name = "spdxLicenseId",
            },
        },
        TemplateBody = {
            type = "string",
            traits = {
                json_name = "templateBody",
            },
        },
        TemplateUrl = {
            type = "string",
            traits = {
                json_name = "templateUrl",
            },
        },
    },
}

M.Version = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                json_name = "applicationId",
                required = true,
            },
        },
        CreationTime = {
            type = "string",
            traits = {
                json_name = "creationTime",
                required = true,
            },
        },
        ParameterDefinitions = {
            type = "list",
            member = M.ParameterDefinition,
            traits = {
                json_name = "parameterDefinitions",
                required = true,
            },
        },
        RequiredCapabilities = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "requiredCapabilities",
                required = true,
            },
        },
        ResourcesSupported = {
            type = "boolean",
            traits = {
                json_name = "resourcesSupported",
                required = true,
            },
        },
        SemanticVersion = {
            type = "string",
            traits = {
                json_name = "semanticVersion",
                required = true,
            },
        },
        SourceCodeArchiveUrl = {
            type = "string",
            traits = {
                json_name = "sourceCodeArchiveUrl",
            },
        },
        SourceCodeUrl = {
            type = "string",
            traits = {
                json_name = "sourceCodeUrl",
            },
        },
        TemplateUrl = {
            type = "string",
            traits = {
                json_name = "templateUrl",
                required = true,
            },
        },
    },
}

M.CreateApplicationOutput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                json_name = "applicationId",
            },
        },
        Author = {
            type = "string",
            traits = {
                json_name = "author",
            },
        },
        CreationTime = {
            type = "string",
            traits = {
                json_name = "creationTime",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        HomePageUrl = {
            type = "string",
            traits = {
                json_name = "homePageUrl",
            },
        },
        IsVerifiedAuthor = {
            type = "boolean",
            traits = {
                json_name = "isVerifiedAuthor",
            },
        },
        Labels = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "labels",
            },
        },
        LicenseUrl = {
            type = "string",
            traits = {
                json_name = "licenseUrl",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        ReadmeUrl = {
            type = "string",
            traits = {
                json_name = "readmeUrl",
            },
        },
        SpdxLicenseId = {
            type = "string",
            traits = {
                json_name = "spdxLicenseId",
            },
        },
        VerifiedAuthorUrl = {
            type = "string",
            traits = {
                json_name = "verifiedAuthorUrl",
            },
        },
        Version = setmetatable({ traits = {
            json_name = "version",
        } }, { __index = M.Version }),
    },
}

M.ForbiddenException = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                json_name = "errorCode",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.InternalServerErrorException = {
    type = "structure",
    error = "server",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                json_name = "errorCode",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                json_name = "errorCode",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.CreateApplicationVersionInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SemanticVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SourceCodeArchiveUrl = {
            type = "string",
            traits = {
                json_name = "sourceCodeArchiveUrl",
            },
        },
        SourceCodeUrl = {
            type = "string",
            traits = {
                json_name = "sourceCodeUrl",
            },
        },
        TemplateBody = {
            type = "string",
            traits = {
                json_name = "templateBody",
            },
        },
        TemplateUrl = {
            type = "string",
            traits = {
                json_name = "templateUrl",
            },
        },
    },
}

M.CreateApplicationVersionOutput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                json_name = "applicationId",
            },
        },
        CreationTime = {
            type = "string",
            traits = {
                json_name = "creationTime",
            },
        },
        ParameterDefinitions = {
            type = "list",
            member = M.ParameterDefinition,
            traits = {
                json_name = "parameterDefinitions",
            },
        },
        RequiredCapabilities = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "requiredCapabilities",
            },
        },
        ResourcesSupported = {
            type = "boolean",
            traits = {
                json_name = "resourcesSupported",
            },
        },
        SemanticVersion = {
            type = "string",
            traits = {
                json_name = "semanticVersion",
            },
        },
        SourceCodeArchiveUrl = {
            type = "string",
            traits = {
                json_name = "sourceCodeArchiveUrl",
            },
        },
        SourceCodeUrl = {
            type = "string",
            traits = {
                json_name = "sourceCodeUrl",
            },
        },
        TemplateUrl = {
            type = "string",
            traits = {
                json_name = "templateUrl",
            },
        },
    },
}

M.RollbackConfiguration = {
    type = "structure",
    members = {
        MonitoringTimeInMinutes = {
            type = "integer",
            traits = {
                json_name = "monitoringTimeInMinutes",
            },
        },
        RollbackTriggers = {
            type = "list",
            member = M.RollbackTrigger,
            traits = {
                json_name = "rollbackTriggers",
            },
        },
    },
}

M.CreateCloudFormationChangeSetInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Capabilities = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "capabilities",
            },
        },
        ChangeSetName = {
            type = "string",
            traits = {
                json_name = "changeSetName",
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                json_name = "clientToken",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        NotificationArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "notificationArns",
            },
        },
        ParameterOverrides = {
            type = "list",
            member = M.ParameterValue,
            traits = {
                json_name = "parameterOverrides",
            },
        },
        ResourceTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "resourceTypes",
            },
        },
        RollbackConfiguration = setmetatable({ traits = {
            json_name = "rollbackConfiguration",
        } }, { __index = M.RollbackConfiguration }),
        SemanticVersion = {
            type = "string",
            traits = {
                json_name = "semanticVersion",
            },
        },
        StackName = {
            type = "string",
            traits = {
                json_name = "stackName",
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                json_name = "tags",
            },
        },
        TemplateId = {
            type = "string",
            traits = {
                json_name = "templateId",
            },
        },
    },
}

M.CreateCloudFormationChangeSetOutput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                json_name = "applicationId",
            },
        },
        ChangeSetId = {
            type = "string",
            traits = {
                json_name = "changeSetId",
            },
        },
        SemanticVersion = {
            type = "string",
            traits = {
                json_name = "semanticVersion",
            },
        },
        StackId = {
            type = "string",
            traits = {
                json_name = "stackId",
            },
        },
    },
}

M.CreateCloudFormationTemplateInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SemanticVersion = {
            type = "string",
            traits = {
                json_name = "semanticVersion",
            },
        },
    },
}

M.Status = {
    PREPARING = "PREPARING",
    ACTIVE = "ACTIVE",
    EXPIRED = "EXPIRED",
}

M.CreateCloudFormationTemplateOutput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                json_name = "applicationId",
            },
        },
        CreationTime = {
            type = "string",
            traits = {
                json_name = "creationTime",
            },
        },
        ExpirationTime = {
            type = "string",
            traits = {
                json_name = "expirationTime",
            },
        },
        SemanticVersion = {
            type = "string",
            traits = {
                json_name = "semanticVersion",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
        TemplateId = {
            type = "string",
            traits = {
                json_name = "templateId",
            },
        },
        TemplateUrl = {
            type = "string",
            traits = {
                json_name = "templateUrl",
            },
        },
    },
}

M.NotFoundException = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                json_name = "errorCode",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.DeleteApplicationInput = {
    type = "structure",
    members = {
        ApplicationId = {
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
}

M.GetApplicationInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SemanticVersion = {
            type = "string",
            traits = {
                http_query = "semanticVersion",
            },
        },
    },
}

M.GetApplicationOutput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                json_name = "applicationId",
            },
        },
        Author = {
            type = "string",
            traits = {
                json_name = "author",
            },
        },
        CreationTime = {
            type = "string",
            traits = {
                json_name = "creationTime",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        HomePageUrl = {
            type = "string",
            traits = {
                json_name = "homePageUrl",
            },
        },
        IsVerifiedAuthor = {
            type = "boolean",
            traits = {
                json_name = "isVerifiedAuthor",
            },
        },
        Labels = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "labels",
            },
        },
        LicenseUrl = {
            type = "string",
            traits = {
                json_name = "licenseUrl",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        ReadmeUrl = {
            type = "string",
            traits = {
                json_name = "readmeUrl",
            },
        },
        SpdxLicenseId = {
            type = "string",
            traits = {
                json_name = "spdxLicenseId",
            },
        },
        VerifiedAuthorUrl = {
            type = "string",
            traits = {
                json_name = "verifiedAuthorUrl",
            },
        },
        Version = setmetatable({ traits = {
            json_name = "version",
        } }, { __index = M.Version }),
    },
}

M.GetApplicationPolicyInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetApplicationPolicyOutput = {
    type = "structure",
    members = {
        Statements = {
            type = "list",
            member = M.ApplicationPolicyStatement,
            traits = {
                json_name = "statements",
            },
        },
    },
}

M.GetCloudFormationTemplateInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCloudFormationTemplateOutput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                json_name = "applicationId",
            },
        },
        CreationTime = {
            type = "string",
            traits = {
                json_name = "creationTime",
            },
        },
        ExpirationTime = {
            type = "string",
            traits = {
                json_name = "expirationTime",
            },
        },
        SemanticVersion = {
            type = "string",
            traits = {
                json_name = "semanticVersion",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
        TemplateId = {
            type = "string",
            traits = {
                json_name = "templateId",
            },
        },
        TemplateUrl = {
            type = "string",
            traits = {
                json_name = "templateUrl",
            },
        },
    },
}

M.ListApplicationDependenciesInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "maxItems",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        SemanticVersion = {
            type = "string",
            traits = {
                http_query = "semanticVersion",
            },
        },
    },
}

M.ListApplicationDependenciesOutput = {
    type = "structure",
    members = {
        Dependencies = {
            type = "list",
            member = M.ApplicationDependencySummary,
            traits = {
                json_name = "dependencies",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListApplicationsInput = {
    type = "structure",
    members = {
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "maxItems",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListApplicationsOutput = {
    type = "structure",
    members = {
        Applications = {
            type = "list",
            member = M.ApplicationSummary,
            traits = {
                json_name = "applications",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListApplicationVersionsInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "maxItems",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListApplicationVersionsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        Versions = {
            type = "list",
            member = M.VersionSummary,
            traits = {
                json_name = "versions",
            },
        },
    },
}

M.PutApplicationPolicyInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Statements = {
            type = "list",
            member = M.ApplicationPolicyStatement,
            traits = {
                json_name = "statements",
                required = true,
            },
        },
    },
}

M.PutApplicationPolicyOutput = {
    type = "structure",
    members = {
        Statements = {
            type = "list",
            member = M.ApplicationPolicyStatement,
            traits = {
                json_name = "statements",
            },
        },
    },
}

M.UnshareApplicationInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        OrganizationId = {
            type = "string",
            traits = {
                json_name = "organizationId",
                required = true,
            },
        },
    },
}

M.UnshareApplicationOutput = {
    type = "structure",
}

M.UpdateApplicationInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Author = {
            type = "string",
            traits = {
                json_name = "author",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        HomePageUrl = {
            type = "string",
            traits = {
                json_name = "homePageUrl",
            },
        },
        Labels = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "labels",
            },
        },
        ReadmeBody = {
            type = "string",
            traits = {
                json_name = "readmeBody",
            },
        },
        ReadmeUrl = {
            type = "string",
            traits = {
                json_name = "readmeUrl",
            },
        },
    },
}

M.UpdateApplicationOutput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                json_name = "applicationId",
            },
        },
        Author = {
            type = "string",
            traits = {
                json_name = "author",
            },
        },
        CreationTime = {
            type = "string",
            traits = {
                json_name = "creationTime",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        HomePageUrl = {
            type = "string",
            traits = {
                json_name = "homePageUrl",
            },
        },
        IsVerifiedAuthor = {
            type = "boolean",
            traits = {
                json_name = "isVerifiedAuthor",
            },
        },
        Labels = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "labels",
            },
        },
        LicenseUrl = {
            type = "string",
            traits = {
                json_name = "licenseUrl",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        ReadmeUrl = {
            type = "string",
            traits = {
                json_name = "readmeUrl",
            },
        },
        SpdxLicenseId = {
            type = "string",
            traits = {
                json_name = "spdxLicenseId",
            },
        },
        VerifiedAuthorUrl = {
            type = "string",
            traits = {
                json_name = "verifiedAuthorUrl",
            },
        },
        Version = setmetatable({ traits = {
            json_name = "version",
        } }, { __index = M.Version }),
    },
}

return M
