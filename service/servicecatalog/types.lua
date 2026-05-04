local M = {}

M.PortfolioShareType = {
    IMPORTED = "IMPORTED",
    AWS_SERVICECATALOG = "AWS_SERVICECATALOG",
    AWS_ORGANIZATIONS = "AWS_ORGANIZATIONS",
}

M.AcceptPortfolioShareInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        PortfolioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PortfolioShareType = {
            type = "string",
        },
    },
}

M.AcceptPortfolioShareOutput = {
    type = "structure",
}

M.InvalidParametersException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AccessLevelFilterKey = {
    ACCOUNT = "Account",
    ROLE = "Role",
    USER = "User",
}

M.AccessLevelFilter = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.AccessStatus = {
    ENABLED = "ENABLED",
    UNDER_CHANGE = "UNDER_CHANGE",
    DISABLED = "DISABLED",
}

M.Tag = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateBudgetWithResourceInput = {
    type = "structure",
    members = {
        BudgetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateBudgetWithResourceOutput = {
    type = "structure",
}

M.DuplicateResourceException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PrincipalType = {
    IAM = "IAM",
    IAM_PATTERN = "IAM_PATTERN",
}

M.AssociatePrincipalWithPortfolioInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        PortfolioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrincipalARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrincipalType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociatePrincipalWithPortfolioOutput = {
    type = "structure",
}

M.AssociateProductWithPortfolioInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        ProductId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PortfolioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourcePortfolioId = {
            type = "string",
        },
    },
}

M.AssociateProductWithPortfolioOutput = {
    type = "structure",
}

M.AssociateServiceActionWithProvisioningArtifactInput = {
    type = "structure",
    members = {
        ProductId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProvisioningArtifactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceActionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AcceptLanguage = {
            type = "string",
        },
        IdempotencyToken = {
            type = "string",
        },
    },
}

M.AssociateServiceActionWithProvisioningArtifactOutput = {
    type = "structure",
}

M.AssociateTagOptionWithResourceInput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagOptionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateTagOptionWithResourceOutput = {
    type = "structure",
}

M.InvalidStateException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TagOptionNotMigratedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceActionAssociation = {
    type = "structure",
    members = {
        ServiceActionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProductId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProvisioningArtifactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchAssociateServiceActionWithProvisioningArtifactInput = {
    type = "structure",
    members = {
        ServiceActionAssociations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        AcceptLanguage = {
            type = "string",
        },
    },
}

M.ServiceActionAssociationErrorCode = {
    DuplicateResourceException = "DUPLICATE_RESOURCE",
    InternalFailure = "INTERNAL_FAILURE",
    LimitExceededException = "LIMIT_EXCEEDED",
    ResourceNotFoundException = "RESOURCE_NOT_FOUND",
    ThrottlingException = "THROTTLING",
    InvalidParameterException = "INVALID_PARAMETER",
}

M.FailedServiceActionAssociation = {
    type = "structure",
    members = {
        ServiceActionId = {
            type = "string",
        },
        ProductId = {
            type = "string",
        },
        ProvisioningArtifactId = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.BatchAssociateServiceActionWithProvisioningArtifactOutput = {
    type = "structure",
    members = {
        FailedServiceActionAssociations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchDisassociateServiceActionFromProvisioningArtifactInput = {
    type = "structure",
    members = {
        ServiceActionAssociations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        AcceptLanguage = {
            type = "string",
        },
    },
}

M.BatchDisassociateServiceActionFromProvisioningArtifactOutput = {
    type = "structure",
    members = {
        FailedServiceActionAssociations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CopyOption = {
    CopyTags = "CopyTags",
}

M.ProvisioningArtifactPropertyName = {
    Id = "Id",
}

M.CopyProductInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        SourceProductArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetProductId = {
            type = "string",
        },
        TargetProductName = {
            type = "string",
        },
        SourceProvisioningArtifactIdentifiers = {
            type = "list",
            member_type = "map",
        },
        CopyOptions = {
            type = "list",
            member_type = "string",
        },
        IdempotencyToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CopyProductOutput = {
    type = "structure",
    members = {
        CopyProductToken = {
            type = "string",
        },
    },
}

M.CreateConstraintInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        PortfolioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProductId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        IdempotencyToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConstraintDetail = {
    type = "structure",
    members = {
        ConstraintId = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Owner = {
            type = "string",
        },
        ProductId = {
            type = "string",
        },
        PortfolioId = {
            type = "string",
        },
    },
}

M.Status = {
    AVAILABLE = "AVAILABLE",
    CREATING = "CREATING",
    FAILED = "FAILED",
}

M.CreateConstraintOutput = {
    type = "structure",
    members = {
        ConstraintDetail = {
            type = "structure",
        },
        ConstraintParameters = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.CreatePortfolioInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        DisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ProviderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        IdempotencyToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PortfolioDetail = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        ARN = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        ProviderName = {
            type = "string",
        },
    },
}

M.CreatePortfolioOutput = {
    type = "structure",
    members = {
        PortfolioDetail = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.OrganizationNodeType = {
    ORGANIZATION = "ORGANIZATION",
    ORGANIZATIONAL_UNIT = "ORGANIZATIONAL_UNIT",
    ACCOUNT = "ACCOUNT",
}

M.OrganizationNode = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.CreatePortfolioShareInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        PortfolioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountId = {
            type = "string",
        },
        OrganizationNode = {
            type = "structure",
        },
        ShareTagOptions = {
            type = "boolean",
        },
        SharePrincipals = {
            type = "boolean",
        },
    },
}

M.CreatePortfolioShareOutput = {
    type = "structure",
    members = {
        PortfolioShareToken = {
            type = "string",
        },
    },
}

M.OperationNotSupportedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ProductType = {
    CLOUD_FORMATION_TEMPLATE = "CLOUD_FORMATION_TEMPLATE",
    MARKETPLACE = "MARKETPLACE",
    TERRAFORM_OPEN_SOURCE = "TERRAFORM_OPEN_SOURCE",
    TERRAFORM_CLOUD = "TERRAFORM_CLOUD",
    EXTERNAL = "EXTERNAL",
}

M.ProvisioningArtifactType = {
    CLOUD_FORMATION_TEMPLATE = "CLOUD_FORMATION_TEMPLATE",
    MARKETPLACE_AMI = "MARKETPLACE_AMI",
    MARKETPLACE_CAR = "MARKETPLACE_CAR",
    TERRAFORM_OPEN_SOURCE = "TERRAFORM_OPEN_SOURCE",
    TERRAFORM_CLOUD = "TERRAFORM_CLOUD",
    EXTERNAL = "EXTERNAL",
}

M.ProvisioningArtifactProperties = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Info = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Type = {
            type = "string",
        },
        DisableTemplateValidation = {
            type = "boolean",
        },
    },
}

M.CodeStarParameters = {
    type = "structure",
    members = {
        ConnectionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Repository = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Branch = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ArtifactPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SourceConnectionParameters = {
    type = "structure",
    members = {
        CodeStar = {
            type = "structure",
        },
    },
}

M.SourceType = {
    CODESTAR = "CODESTAR",
}

M.SourceConnection = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        ConnectionParameters = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateProductInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Owner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Distributor = {
            type = "string",
        },
        SupportDescription = {
            type = "string",
        },
        SupportEmail = {
            type = "string",
        },
        SupportUrl = {
            type = "string",
        },
        ProductType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ProvisioningArtifactParameters = {
            type = "structure",
        },
        IdempotencyToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceConnection = {
            type = "structure",
        },
    },
}

M.ProductViewSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        ProductId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Owner = {
            type = "string",
        },
        ShortDescription = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Distributor = {
            type = "string",
        },
        HasDefaultPath = {
            type = "boolean",
        },
        SupportEmail = {
            type = "string",
        },
        SupportDescription = {
            type = "string",
        },
        SupportUrl = {
            type = "string",
        },
    },
}

M.LastSyncStatus = {
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.LastSync = {
    type = "structure",
    members = {
        LastSyncTime = {
            type = "timestamp",
        },
        LastSyncStatus = {
            type = "string",
        },
        LastSyncStatusMessage = {
            type = "string",
        },
        LastSuccessfulSyncTime = {
            type = "timestamp",
        },
        LastSuccessfulSyncProvisioningArtifactId = {
            type = "string",
        },
    },
}

M.SourceConnectionDetail = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        ConnectionParameters = {
            type = "structure",
        },
        LastSync = {
            type = "structure",
        },
    },
}

M.ProductViewDetail = {
    type = "structure",
    members = {
        ProductViewSummary = {
            type = "structure",
        },
        Status = {
            type = "string",
        },
        ProductARN = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        SourceConnection = {
            type = "structure",
        },
    },
}

M.ProvisioningArtifactGuidance = {
    DEFAULT = "DEFAULT",
    DEPRECATED = "DEPRECATED",
}

M.ProvisioningArtifactDetail = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        Active = {
            type = "boolean",
        },
        Guidance = {
            type = "string",
        },
        SourceRevision = {
            type = "string",
        },
    },
}

M.CreateProductOutput = {
    type = "structure",
    members = {
        ProductViewDetail = {
            type = "structure",
        },
        ProvisioningArtifactDetail = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ProvisionedProductPlanType = {
    CLOUDFORMATION = "CLOUDFORMATION",
}

M.UpdateProvisioningParameter = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        UsePreviousValue = {
            type = "boolean",
        },
    },
}

M.CreateProvisionedProductPlanInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        PlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PlanType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NotificationArns = {
            type = "list",
            member_type = "string",
        },
        PathId = {
            type = "string",
        },
        ProductId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProvisionedProductName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProvisioningArtifactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProvisioningParameters = {
            type = "list",
            member_type = "structure",
        },
        IdempotencyToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateProvisionedProductPlanOutput = {
    type = "structure",
    members = {
        PlanName = {
            type = "string",
        },
        PlanId = {
            type = "string",
        },
        ProvisionProductId = {
            type = "string",
        },
        ProvisionedProductName = {
            type = "string",
        },
        ProvisioningArtifactId = {
            type = "string",
        },
    },
}

M.CreateProvisioningArtifactInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        ProductId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        IdempotencyToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateProvisioningArtifactOutput = {
    type = "structure",
    members = {
        ProvisioningArtifactDetail = {
            type = "structure",
        },
        Info = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.ServiceActionDefinitionKey = {
    Name = "Name",
    Version = "Version",
    AssumeRole = "AssumeRole",
    Parameters = "Parameters",
}

M.ServiceActionDefinitionType = {
    SsmAutomation = "SSM_AUTOMATION",
}

M.CreateServiceActionInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefinitionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Definition = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        AcceptLanguage = {
            type = "string",
        },
        IdempotencyToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceActionSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DefinitionType = {
            type = "string",
        },
    },
}

M.ServiceActionDetail = {
    type = "structure",
    members = {
        ServiceActionSummary = {
            type = "structure",
        },
        Definition = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateServiceActionOutput = {
    type = "structure",
    members = {
        ServiceActionDetail = {
            type = "structure",
        },
    },
}

M.CreateTagOptionInput = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagOptionDetail = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        Active = {
            type = "boolean",
        },
        Id = {
            type = "string",
        },
        Owner = {
            type = "string",
        },
    },
}

M.CreateTagOptionOutput = {
    type = "structure",
    members = {
        TagOptionDetail = {
            type = "structure",
        },
    },
}

M.DeleteConstraintInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConstraintOutput = {
    type = "structure",
}

M.DeletePortfolioInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePortfolioOutput = {
    type = "structure",
}

M.ResourceInUseException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeletePortfolioShareInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        PortfolioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountId = {
            type = "string",
        },
        OrganizationNode = {
            type = "structure",
        },
    },
}

M.DeletePortfolioShareOutput = {
    type = "structure",
    members = {
        PortfolioShareToken = {
            type = "string",
        },
    },
}

M.DeleteProductInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteProductOutput = {
    type = "structure",
}

M.DeleteProvisionedProductPlanInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        PlanId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IgnoreErrors = {
            type = "boolean",
        },
    },
}

M.DeleteProvisionedProductPlanOutput = {
    type = "structure",
}

M.DeleteProvisioningArtifactInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        ProductId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProvisioningArtifactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteProvisioningArtifactOutput = {
    type = "structure",
}

M.DeleteServiceActionInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AcceptLanguage = {
            type = "string",
        },
        IdempotencyToken = {
            type = "string",
        },
    },
}

M.DeleteServiceActionOutput = {
    type = "structure",
}

M.DeleteTagOptionInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_query = "id",
                required = true,
            },
        },
    },
}

M.DeleteTagOptionOutput = {
    type = "structure",
}

M.DescribeConstraintInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeConstraintOutput = {
    type = "structure",
    members = {
        ConstraintDetail = {
            type = "structure",
        },
        ConstraintParameters = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.DescribeCopyProductStatusInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        CopyProductToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CopyProductStatus = {
    SUCCEEDED = "SUCCEEDED",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
}

M.DescribeCopyProductStatusOutput = {
    type = "structure",
    members = {
        CopyProductStatus = {
            type = "string",
        },
        TargetProductId = {
            type = "string",
        },
        StatusDetail = {
            type = "string",
        },
    },
}

M.DescribePortfolioInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BudgetDetail = {
    type = "structure",
    members = {
        BudgetName = {
            type = "string",
        },
    },
}

M.DescribePortfolioOutput = {
    type = "structure",
    members = {
        PortfolioDetail = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        TagOptions = {
            type = "list",
            member_type = "structure",
        },
        Budgets = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribePortfolioShareType = {
    ACCOUNT = "ACCOUNT",
    ORGANIZATION = "ORGANIZATION",
    ORGANIZATIONAL_UNIT = "ORGANIZATIONAL_UNIT",
    ORGANIZATION_MEMBER_ACCOUNT = "ORGANIZATION_MEMBER_ACCOUNT",
}

M.DescribePortfolioSharesInput = {
    type = "structure",
    members = {
        PortfolioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PageToken = {
            type = "string",
        },
        PageSize = {
            type = "number",
        },
    },
}

M.PortfolioShareDetail = {
    type = "structure",
    members = {
        PrincipalId = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Accepted = {
            type = "boolean",
        },
        ShareTagOptions = {
            type = "boolean",
        },
        SharePrincipals = {
            type = "boolean",
        },
    },
}

M.DescribePortfolioSharesOutput = {
    type = "structure",
    members = {
        NextPageToken = {
            type = "string",
        },
        PortfolioShareDetails = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribePortfolioShareStatusInput = {
    type = "structure",
    members = {
        PortfolioShareToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ShareError = {
    type = "structure",
    members = {
        Accounts = {
            type = "list",
            member_type = "string",
        },
        Message = {
            type = "string",
        },
        Error = {
            type = "string",
        },
    },
}

M.ShareDetails = {
    type = "structure",
    members = {
        SuccessfulShares = {
            type = "list",
            member_type = "string",
        },
        ShareErrors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ShareStatus = {
    NOT_STARTED = "NOT_STARTED",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    COMPLETED_WITH_ERRORS = "COMPLETED_WITH_ERRORS",
    ERROR = "ERROR",
}

M.DescribePortfolioShareStatusOutput = {
    type = "structure",
    members = {
        PortfolioShareToken = {
            type = "string",
        },
        PortfolioId = {
            type = "string",
        },
        OrganizationNodeValue = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ShareDetails = {
            type = "structure",
        },
    },
}

M.DescribeProductInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.LaunchPath = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.ProvisioningArtifact = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        Guidance = {
            type = "string",
        },
    },
}

M.DescribeProductOutput = {
    type = "structure",
    members = {
        ProductViewSummary = {
            type = "structure",
        },
        ProvisioningArtifacts = {
            type = "list",
            member_type = "structure",
        },
        Budgets = {
            type = "list",
            member_type = "structure",
        },
        LaunchPaths = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeProductAsAdminInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        SourcePortfolioId = {
            type = "string",
        },
    },
}

M.ProvisioningArtifactSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        ProvisioningArtifactMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DescribeProductAsAdminOutput = {
    type = "structure",
    members = {
        ProductViewDetail = {
            type = "structure",
        },
        ProvisioningArtifactSummaries = {
            type = "list",
            member_type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        TagOptions = {
            type = "list",
            member_type = "structure",
        },
        Budgets = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeProductViewInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeProductViewOutput = {
    type = "structure",
    members = {
        ProductViewSummary = {
            type = "structure",
        },
        ProvisioningArtifacts = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeProvisionedProductInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.CloudWatchDashboard = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.ProvisionedProductStatus = {
    AVAILABLE = "AVAILABLE",
    UNDER_CHANGE = "UNDER_CHANGE",
    TAINTED = "TAINTED",
    ERROR = "ERROR",
    PLAN_IN_PROGRESS = "PLAN_IN_PROGRESS",
}

M.ProvisionedProductDetail = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        IdempotencyToken = {
            type = "string",
        },
        LastRecordId = {
            type = "string",
        },
        LastProvisioningRecordId = {
            type = "string",
        },
        LastSuccessfulProvisioningRecordId = {
            type = "string",
        },
        ProductId = {
            type = "string",
        },
        ProvisioningArtifactId = {
            type = "string",
        },
        LaunchRoleArn = {
            type = "string",
        },
    },
}

M.DescribeProvisionedProductOutput = {
    type = "structure",
    members = {
        ProvisionedProductDetail = {
            type = "structure",
        },
        CloudWatchDashboards = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeProvisionedProductPlanInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        PlanId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PageSize = {
            type = "number",
        },
        PageToken = {
            type = "string",
        },
    },
}

M.ProvisionedProductPlanStatus = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_SUCCESS = "CREATE_SUCCESS",
    CREATE_FAILED = "CREATE_FAILED",
    EXECUTE_IN_PROGRESS = "EXECUTE_IN_PROGRESS",
    EXECUTE_SUCCESS = "EXECUTE_SUCCESS",
    EXECUTE_FAILED = "EXECUTE_FAILED",
}

M.ProvisionedProductPlanDetails = {
    type = "structure",
    members = {
        CreatedTime = {
            type = "timestamp",
        },
        PathId = {
            type = "string",
        },
        ProductId = {
            type = "string",
        },
        PlanName = {
            type = "string",
        },
        PlanId = {
            type = "string",
        },
        ProvisionProductId = {
            type = "string",
        },
        ProvisionProductName = {
            type = "string",
        },
        PlanType = {
            type = "string",
        },
        ProvisioningArtifactId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        UpdatedTime = {
            type = "timestamp",
        },
        NotificationArns = {
            type = "list",
            member_type = "string",
        },
        ProvisioningParameters = {
            type = "list",
            member_type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        StatusMessage = {
            type = "string",
        },
    },
}

M.ChangeAction = {
    ADD = "ADD",
    MODIFY = "MODIFY",
    REMOVE = "REMOVE",
}

M.EvaluationType = {
    STATIC = "STATIC",
    DYNAMIC = "DYNAMIC",
}

M.ResourceAttribute = {
    PROPERTIES = "PROPERTIES",
    METADATA = "METADATA",
    CREATIONPOLICY = "CREATIONPOLICY",
    UPDATEPOLICY = "UPDATEPOLICY",
    DELETIONPOLICY = "DELETIONPOLICY",
    TAGS = "TAGS",
}

M.RequiresRecreation = {
    NEVER = "NEVER",
    CONDITIONALLY = "CONDITIONALLY",
    ALWAYS = "ALWAYS",
}

M.ResourceTargetDefinition = {
    type = "structure",
    members = {
        Attribute = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        RequiresRecreation = {
            type = "string",
        },
    },
}

M.ResourceChangeDetail = {
    type = "structure",
    members = {
        Target = {
            type = "structure",
        },
        Evaluation = {
            type = "string",
        },
        CausingEntity = {
            type = "string",
        },
    },
}

M.Replacement = {
    TRUE = "TRUE",
    FALSE = "FALSE",
    CONDITIONAL = "CONDITIONAL",
}

M.ResourceChange = {
    type = "structure",
    members = {
        Action = {
            type = "string",
        },
        LogicalResourceId = {
            type = "string",
        },
        PhysicalResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        Replacement = {
            type = "string",
        },
        Scope = {
            type = "list",
            member_type = "string",
        },
        Details = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeProvisionedProductPlanOutput = {
    type = "structure",
    members = {
        ProvisionedProductPlanDetails = {
            type = "structure",
        },
        ResourceChanges = {
            type = "list",
            member_type = "structure",
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.DescribeProvisioningArtifactInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        ProvisioningArtifactId = {
            type = "string",
        },
        ProductId = {
            type = "string",
        },
        ProvisioningArtifactName = {
            type = "string",
        },
        ProductName = {
            type = "string",
        },
        Verbose = {
            type = "boolean",
        },
        IncludeProvisioningArtifactParameters = {
            type = "boolean",
        },
    },
}

M.ParameterConstraints = {
    type = "structure",
    members = {
        AllowedValues = {
            type = "list",
            member_type = "string",
        },
        AllowedPattern = {
            type = "string",
        },
        ConstraintDescription = {
            type = "string",
        },
        MaxLength = {
            type = "string",
        },
        MinLength = {
            type = "string",
        },
        MaxValue = {
            type = "string",
        },
        MinValue = {
            type = "string",
        },
    },
}

M.ProvisioningArtifactParameter = {
    type = "structure",
    members = {
        ParameterKey = {
            type = "string",
        },
        DefaultValue = {
            type = "string",
        },
        ParameterType = {
            type = "string",
        },
        IsNoEcho = {
            type = "boolean",
        },
        Description = {
            type = "string",
        },
        ParameterConstraints = {
            type = "structure",
        },
    },
}

M.DescribeProvisioningArtifactOutput = {
    type = "structure",
    members = {
        ProvisioningArtifactDetail = {
            type = "structure",
        },
        Info = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Status = {
            type = "string",
        },
        ProvisioningArtifactParameters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeProvisioningParametersInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        ProductId = {
            type = "string",
        },
        ProductName = {
            type = "string",
        },
        ProvisioningArtifactId = {
            type = "string",
        },
        ProvisioningArtifactName = {
            type = "string",
        },
        PathId = {
            type = "string",
        },
        PathName = {
            type = "string",
        },
    },
}

M.ConstraintSummary = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.ProvisioningArtifactOutput = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.ProvisioningArtifactPreferences = {
    type = "structure",
    members = {
        StackSetAccounts = {
            type = "list",
            member_type = "string",
        },
        StackSetRegions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.TagOptionSummary = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Values = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UsageInstruction = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.DescribeProvisioningParametersOutput = {
    type = "structure",
    members = {
        ProvisioningArtifactParameters = {
            type = "list",
            member_type = "structure",
        },
        ConstraintSummaries = {
            type = "list",
            member_type = "structure",
        },
        UsageInstructions = {
            type = "list",
            member_type = "structure",
        },
        TagOptions = {
            type = "list",
            member_type = "structure",
        },
        ProvisioningArtifactPreferences = {
            type = "structure",
        },
        ProvisioningArtifactOutputs = {
            type = "list",
            member_type = "structure",
        },
        ProvisioningArtifactOutputKeys = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeRecordInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PageToken = {
            type = "string",
        },
        PageSize = {
            type = "number",
        },
    },
}

M.RecordError = {
    type = "structure",
    members = {
        Code = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.RecordTag = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.RecordStatus = {
    CREATED = "CREATED",
    IN_PROGRESS = "IN_PROGRESS",
    IN_PROGRESS_IN_ERROR = "IN_PROGRESS_IN_ERROR",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.RecordDetail = {
    type = "structure",
    members = {
        RecordId = {
            type = "string",
        },
        ProvisionedProductName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        UpdatedTime = {
            type = "timestamp",
        },
        ProvisionedProductType = {
            type = "string",
        },
        RecordType = {
            type = "string",
        },
        ProvisionedProductId = {
            type = "string",
        },
        ProductId = {
            type = "string",
        },
        ProvisioningArtifactId = {
            type = "string",
        },
        PathId = {
            type = "string",
        },
        RecordErrors = {
            type = "list",
            member_type = "structure",
        },
        RecordTags = {
            type = "list",
            member_type = "structure",
        },
        LaunchRoleArn = {
            type = "string",
        },
    },
}

M.RecordOutput = {
    type = "structure",
    members = {
        OutputKey = {
            type = "string",
        },
        OutputValue = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.DescribeRecordOutput = {
    type = "structure",
    members = {
        RecordDetail = {
            type = "structure",
        },
        RecordOutputs = {
            type = "list",
            member_type = "structure",
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.DescribeServiceActionInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AcceptLanguage = {
            type = "string",
        },
    },
}

M.DescribeServiceActionOutput = {
    type = "structure",
    members = {
        ServiceActionDetail = {
            type = "structure",
        },
    },
}

M.DescribeServiceActionExecutionParametersInput = {
    type = "structure",
    members = {
        ProvisionedProductId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceActionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AcceptLanguage = {
            type = "string",
        },
    },
}

M.ExecutionParameter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        DefaultValues = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeServiceActionExecutionParametersOutput = {
    type = "structure",
    members = {
        ServiceActionParameters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeTagOptionInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_query = "id",
                required = true,
            },
        },
    },
}

M.DescribeTagOptionOutput = {
    type = "structure",
    members = {
        TagOptionDetail = {
            type = "structure",
        },
    },
}

M.DisableAWSOrganizationsAccessInput = {
    type = "structure",
}

M.DisableAWSOrganizationsAccessOutput = {
    type = "structure",
}

M.DisassociateBudgetFromResourceInput = {
    type = "structure",
    members = {
        BudgetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateBudgetFromResourceOutput = {
    type = "structure",
}

M.DisassociatePrincipalFromPortfolioInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        PortfolioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrincipalARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrincipalType = {
            type = "string",
        },
    },
}

M.DisassociatePrincipalFromPortfolioOutput = {
    type = "structure",
}

M.DisassociateProductFromPortfolioInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        ProductId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PortfolioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateProductFromPortfolioOutput = {
    type = "structure",
}

M.DisassociateServiceActionFromProvisioningArtifactInput = {
    type = "structure",
    members = {
        ProductId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProvisioningArtifactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceActionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AcceptLanguage = {
            type = "string",
        },
        IdempotencyToken = {
            type = "string",
        },
    },
}

M.DisassociateServiceActionFromProvisioningArtifactOutput = {
    type = "structure",
}

M.DisassociateTagOptionFromResourceInput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                http_query = "resourceId",
                required = true,
            },
        },
        TagOptionId = {
            type = "string",
            traits = {
                http_query = "tagOptionId",
                required = true,
            },
        },
    },
}

M.DisassociateTagOptionFromResourceOutput = {
    type = "structure",
}

M.EnableAWSOrganizationsAccessInput = {
    type = "structure",
}

M.EnableAWSOrganizationsAccessOutput = {
    type = "structure",
}

M.ExecuteProvisionedProductPlanInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        PlanId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdempotencyToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExecuteProvisionedProductPlanOutput = {
    type = "structure",
    members = {
        RecordDetail = {
            type = "structure",
        },
    },
}

M.ExecuteProvisionedProductServiceActionInput = {
    type = "structure",
    members = {
        ProvisionedProductId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceActionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExecuteToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AcceptLanguage = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
    },
}

M.ExecuteProvisionedProductServiceActionOutput = {
    type = "structure",
    members = {
        RecordDetail = {
            type = "structure",
        },
    },
}

M.GetAWSOrganizationsAccessStatusInput = {
    type = "structure",
}

M.GetAWSOrganizationsAccessStatusOutput = {
    type = "structure",
    members = {
        AccessStatus = {
            type = "string",
        },
    },
}

M.GetProvisionedProductOutputsInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        ProvisionedProductId = {
            type = "string",
        },
        ProvisionedProductName = {
            type = "string",
        },
        OutputKeys = {
            type = "list",
            member_type = "string",
        },
        PageSize = {
            type = "number",
        },
        PageToken = {
            type = "string",
        },
    },
}

M.GetProvisionedProductOutputsOutput = {
    type = "structure",
    members = {
        Outputs = {
            type = "list",
            member_type = "structure",
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ImportAsProvisionedProductInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        ProductId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProvisioningArtifactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProvisionedProductName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PhysicalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdempotencyToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportAsProvisionedProductOutput = {
    type = "structure",
    members = {
        RecordDetail = {
            type = "structure",
        },
    },
}

M.ListAcceptedPortfolioSharesInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        PageToken = {
            type = "string",
        },
        PageSize = {
            type = "number",
        },
        PortfolioShareType = {
            type = "string",
        },
    },
}

M.ListAcceptedPortfolioSharesOutput = {
    type = "structure",
    members = {
        PortfolioDetails = {
            type = "list",
            member_type = "structure",
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListBudgetsForResourceInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PageSize = {
            type = "number",
        },
        PageToken = {
            type = "string",
        },
    },
}

M.ListBudgetsForResourceOutput = {
    type = "structure",
    members = {
        Budgets = {
            type = "list",
            member_type = "structure",
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListConstraintsForPortfolioInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        PortfolioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProductId = {
            type = "string",
        },
        PageSize = {
            type = "number",
        },
        PageToken = {
            type = "string",
        },
    },
}

M.ListConstraintsForPortfolioOutput = {
    type = "structure",
    members = {
        ConstraintDetails = {
            type = "list",
            member_type = "structure",
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListLaunchPathsInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        ProductId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PageSize = {
            type = "number",
        },
        PageToken = {
            type = "string",
        },
    },
}

M.LaunchPathSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        ConstraintSummaries = {
            type = "list",
            member_type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        Name = {
            type = "string",
        },
    },
}

M.ListLaunchPathsOutput = {
    type = "structure",
    members = {
        LaunchPathSummaries = {
            type = "list",
            member_type = "structure",
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListOrganizationPortfolioAccessInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        PortfolioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OrganizationNodeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PageToken = {
            type = "string",
        },
        PageSize = {
            type = "number",
        },
    },
}

M.ListOrganizationPortfolioAccessOutput = {
    type = "structure",
    members = {
        OrganizationNodes = {
            type = "list",
            member_type = "structure",
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListPortfolioAccessInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        PortfolioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OrganizationParentId = {
            type = "string",
        },
        PageToken = {
            type = "string",
        },
        PageSize = {
            type = "number",
        },
    },
}

M.ListPortfolioAccessOutput = {
    type = "structure",
    members = {
        AccountIds = {
            type = "list",
            member_type = "string",
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListPortfoliosInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        PageToken = {
            type = "string",
        },
        PageSize = {
            type = "number",
        },
    },
}

M.ListPortfoliosOutput = {
    type = "structure",
    members = {
        PortfolioDetails = {
            type = "list",
            member_type = "structure",
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListPortfoliosForProductInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        ProductId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PageToken = {
            type = "string",
        },
        PageSize = {
            type = "number",
        },
    },
}

M.ListPortfoliosForProductOutput = {
    type = "structure",
    members = {
        PortfolioDetails = {
            type = "list",
            member_type = "structure",
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListPrincipalsForPortfolioInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        PortfolioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PageSize = {
            type = "number",
        },
        PageToken = {
            type = "string",
        },
    },
}

M.Principal = {
    type = "structure",
    members = {
        PrincipalARN = {
            type = "string",
        },
        PrincipalType = {
            type = "string",
        },
    },
}

M.ListPrincipalsForPortfolioOutput = {
    type = "structure",
    members = {
        Principals = {
            type = "list",
            member_type = "structure",
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListProvisionedProductPlansInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        ProvisionProductId = {
            type = "string",
        },
        PageSize = {
            type = "number",
        },
        PageToken = {
            type = "string",
        },
        AccessLevelFilter = {
            type = "structure",
        },
    },
}

M.ProvisionedProductPlanSummary = {
    type = "structure",
    members = {
        PlanName = {
            type = "string",
        },
        PlanId = {
            type = "string",
        },
        ProvisionProductId = {
            type = "string",
        },
        ProvisionProductName = {
            type = "string",
        },
        PlanType = {
            type = "string",
        },
        ProvisioningArtifactId = {
            type = "string",
        },
    },
}

M.ListProvisionedProductPlansOutput = {
    type = "structure",
    members = {
        ProvisionedProductPlans = {
            type = "list",
            member_type = "structure",
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListProvisioningArtifactsInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        ProductId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListProvisioningArtifactsOutput = {
    type = "structure",
    members = {
        ProvisioningArtifactDetails = {
            type = "list",
            member_type = "structure",
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListProvisioningArtifactsForServiceActionInput = {
    type = "structure",
    members = {
        ServiceActionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PageSize = {
            type = "number",
        },
        PageToken = {
            type = "string",
        },
        AcceptLanguage = {
            type = "string",
        },
    },
}

M.ProvisioningArtifactView = {
    type = "structure",
    members = {
        ProductViewSummary = {
            type = "structure",
        },
        ProvisioningArtifact = {
            type = "structure",
        },
    },
}

M.ListProvisioningArtifactsForServiceActionOutput = {
    type = "structure",
    members = {
        ProvisioningArtifactViews = {
            type = "list",
            member_type = "structure",
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListRecordHistorySearchFilter = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.ListRecordHistoryInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        AccessLevelFilter = {
            type = "structure",
        },
        SearchFilter = {
            type = "structure",
        },
        PageSize = {
            type = "number",
        },
        PageToken = {
            type = "string",
        },
    },
}

M.ListRecordHistoryOutput = {
    type = "structure",
    members = {
        RecordDetails = {
            type = "list",
            member_type = "structure",
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListResourcesForTagOptionInput = {
    type = "structure",
    members = {
        TagOptionId = {
            type = "string",
            traits = {
                http_query = "tagOptionId",
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
            },
        },
        PageSize = {
            type = "number",
            traits = {
                http_query = "pageSize",
            },
        },
        PageToken = {
            type = "string",
            traits = {
                http_query = "pageToken",
            },
        },
    },
}

M.ResourceDetail = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        ARN = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
    },
}

M.ListResourcesForTagOptionOutput = {
    type = "structure",
    members = {
        ResourceDetails = {
            type = "list",
            member_type = "structure",
        },
        PageToken = {
            type = "string",
        },
    },
}

M.ListServiceActionsInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        PageSize = {
            type = "number",
        },
        PageToken = {
            type = "string",
        },
    },
}

M.ListServiceActionsOutput = {
    type = "structure",
    members = {
        ServiceActionSummaries = {
            type = "list",
            member_type = "structure",
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListServiceActionsForProvisioningArtifactInput = {
    type = "structure",
    members = {
        ProductId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProvisioningArtifactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PageSize = {
            type = "number",
        },
        PageToken = {
            type = "string",
        },
        AcceptLanguage = {
            type = "string",
        },
    },
}

M.ListServiceActionsForProvisioningArtifactOutput = {
    type = "structure",
    members = {
        ServiceActionSummaries = {
            type = "list",
            member_type = "structure",
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListStackInstancesForProvisionedProductInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        ProvisionedProductId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PageToken = {
            type = "string",
        },
        PageSize = {
            type = "number",
        },
    },
}

M.StackInstanceStatus = {
    CURRENT = "CURRENT",
    OUTDATED = "OUTDATED",
    INOPERABLE = "INOPERABLE",
}

M.StackInstance = {
    type = "structure",
    members = {
        Account = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        StackInstanceStatus = {
            type = "string",
        },
    },
}

M.ListStackInstancesForProvisionedProductOutput = {
    type = "structure",
    members = {
        StackInstances = {
            type = "list",
            member_type = "structure",
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListTagOptionsFilters = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        Active = {
            type = "boolean",
        },
    },
}

M.ListTagOptionsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "structure",
        },
        PageSize = {
            type = "number",
        },
        PageToken = {
            type = "string",
        },
    },
}

M.ListTagOptionsOutput = {
    type = "structure",
    members = {
        TagOptionDetails = {
            type = "list",
            member_type = "structure",
        },
        PageToken = {
            type = "string",
        },
    },
}

M.UniqueTagResourceIdentifier = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.EngineWorkflowResourceIdentifier = {
    type = "structure",
    members = {
        UniqueTag = {
            type = "structure",
        },
    },
}

M.EngineWorkflowStatus = {
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.NotifyProvisionProductEngineWorkflowResultInput = {
    type = "structure",
    members = {
        WorkflowToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecordId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
        ResourceIdentifier = {
            type = "structure",
        },
        Outputs = {
            type = "list",
            member_type = "structure",
        },
        IdempotencyToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NotifyProvisionProductEngineWorkflowResultOutput = {
    type = "structure",
}

M.NotifyTerminateProvisionedProductEngineWorkflowResultInput = {
    type = "structure",
    members = {
        WorkflowToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecordId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
        IdempotencyToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NotifyTerminateProvisionedProductEngineWorkflowResultOutput = {
    type = "structure",
}

M.NotifyUpdateProvisionedProductEngineWorkflowResultInput = {
    type = "structure",
    members = {
        WorkflowToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecordId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
        Outputs = {
            type = "list",
            member_type = "structure",
        },
        IdempotencyToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NotifyUpdateProvisionedProductEngineWorkflowResultOutput = {
    type = "structure",
}

M.ProvisioningParameter = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.ProvisioningPreferences = {
    type = "structure",
    members = {
        StackSetAccounts = {
            type = "list",
            member_type = "string",
        },
        StackSetRegions = {
            type = "list",
            member_type = "string",
        },
        StackSetFailureToleranceCount = {
            type = "number",
        },
        StackSetFailureTolerancePercentage = {
            type = "number",
        },
        StackSetMaxConcurrencyCount = {
            type = "number",
        },
        StackSetMaxConcurrencyPercentage = {
            type = "number",
        },
    },
}

M.ProvisionProductInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        ProductId = {
            type = "string",
        },
        ProductName = {
            type = "string",
        },
        ProvisioningArtifactId = {
            type = "string",
        },
        ProvisioningArtifactName = {
            type = "string",
        },
        PathId = {
            type = "string",
        },
        PathName = {
            type = "string",
        },
        ProvisionedProductName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProvisioningParameters = {
            type = "list",
            member_type = "structure",
        },
        ProvisioningPreferences = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        NotificationArns = {
            type = "list",
            member_type = "string",
        },
        ProvisionToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProvisionProductOutput = {
    type = "structure",
    members = {
        RecordDetail = {
            type = "structure",
        },
    },
}

M.RejectPortfolioShareInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        PortfolioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PortfolioShareType = {
            type = "string",
        },
    },
}

M.RejectPortfolioShareOutput = {
    type = "structure",
}

M.ScanProvisionedProductsInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        AccessLevelFilter = {
            type = "structure",
        },
        PageSize = {
            type = "number",
        },
        PageToken = {
            type = "string",
        },
    },
}

M.ScanProvisionedProductsOutput = {
    type = "structure",
    members = {
        ProvisionedProducts = {
            type = "list",
            member_type = "structure",
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ProductViewFilterBy = {
    FullTextSearch = "FullTextSearch",
    Owner = "Owner",
    ProductType = "ProductType",
    SourceProductId = "SourceProductId",
}

M.ProductViewSortBy = {
    Title = "Title",
    VersionCount = "VersionCount",
    CreationDate = "CreationDate",
}

M.SortOrder = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.SearchProductsInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        Filters = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        PageSize = {
            type = "number",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        PageToken = {
            type = "string",
        },
    },
}

M.ProductViewAggregationValue = {
    type = "structure",
    members = {
        Value = {
            type = "string",
        },
        ApproximateCount = {
            type = "number",
        },
    },
}

M.SearchProductsOutput = {
    type = "structure",
    members = {
        ProductViewSummaries = {
            type = "list",
            member_type = "structure",
        },
        ProductViewAggregations = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ProductSource = {
    ACCOUNT = "ACCOUNT",
}

M.SearchProductsAsAdminInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        PortfolioId = {
            type = "string",
        },
        Filters = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        PageToken = {
            type = "string",
        },
        PageSize = {
            type = "number",
        },
        ProductSource = {
            type = "string",
        },
    },
}

M.SearchProductsAsAdminOutput = {
    type = "structure",
    members = {
        ProductViewDetails = {
            type = "list",
            member_type = "structure",
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ProvisionedProductViewFilterBy = {
    SearchQuery = "SearchQuery",
}

M.SearchProvisionedProductsInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        AccessLevelFilter = {
            type = "structure",
        },
        Filters = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        PageSize = {
            type = "number",
        },
        PageToken = {
            type = "string",
        },
    },
}

M.ProvisionedProductAttribute = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        IdempotencyToken = {
            type = "string",
        },
        LastRecordId = {
            type = "string",
        },
        LastProvisioningRecordId = {
            type = "string",
        },
        LastSuccessfulProvisioningRecordId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        PhysicalId = {
            type = "string",
        },
        ProductId = {
            type = "string",
        },
        ProductName = {
            type = "string",
        },
        ProvisioningArtifactId = {
            type = "string",
        },
        ProvisioningArtifactName = {
            type = "string",
        },
        UserArn = {
            type = "string",
        },
        UserArnSession = {
            type = "string",
        },
    },
}

M.SearchProvisionedProductsOutput = {
    type = "structure",
    members = {
        ProvisionedProducts = {
            type = "list",
            member_type = "structure",
        },
        TotalResultsCount = {
            type = "number",
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.TerminateProvisionedProductInput = {
    type = "structure",
    members = {
        ProvisionedProductName = {
            type = "string",
        },
        ProvisionedProductId = {
            type = "string",
        },
        TerminateToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IgnoreErrors = {
            type = "boolean",
        },
        AcceptLanguage = {
            type = "string",
        },
        RetainPhysicalResources = {
            type = "boolean",
        },
    },
}

M.TerminateProvisionedProductOutput = {
    type = "structure",
    members = {
        RecordDetail = {
            type = "structure",
        },
    },
}

M.UpdateConstraintInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Parameters = {
            type = "string",
        },
    },
}

M.UpdateConstraintOutput = {
    type = "structure",
    members = {
        ConstraintDetail = {
            type = "structure",
        },
        ConstraintParameters = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.UpdatePortfolioInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ProviderName = {
            type = "string",
        },
        AddTags = {
            type = "list",
            member_type = "structure",
        },
        RemoveTags = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UpdatePortfolioOutput = {
    type = "structure",
    members = {
        PortfolioDetail = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdatePortfolioShareInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        PortfolioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountId = {
            type = "string",
        },
        OrganizationNode = {
            type = "structure",
        },
        ShareTagOptions = {
            type = "boolean",
        },
        SharePrincipals = {
            type = "boolean",
        },
    },
}

M.UpdatePortfolioShareOutput = {
    type = "structure",
    members = {
        PortfolioShareToken = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.UpdateProductInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Owner = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Distributor = {
            type = "string",
        },
        SupportDescription = {
            type = "string",
        },
        SupportEmail = {
            type = "string",
        },
        SupportUrl = {
            type = "string",
        },
        AddTags = {
            type = "list",
            member_type = "structure",
        },
        RemoveTags = {
            type = "list",
            member_type = "string",
        },
        SourceConnection = {
            type = "structure",
        },
    },
}

M.UpdateProductOutput = {
    type = "structure",
    members = {
        ProductViewDetail = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StackSetOperationType = {
    CREATE = "CREATE",
    UPDATE = "UPDATE",
    DELETE = "DELETE",
}

M.UpdateProvisioningPreferences = {
    type = "structure",
    members = {
        StackSetAccounts = {
            type = "list",
            member_type = "string",
        },
        StackSetRegions = {
            type = "list",
            member_type = "string",
        },
        StackSetFailureToleranceCount = {
            type = "number",
        },
        StackSetFailureTolerancePercentage = {
            type = "number",
        },
        StackSetMaxConcurrencyCount = {
            type = "number",
        },
        StackSetMaxConcurrencyPercentage = {
            type = "number",
        },
        StackSetOperationType = {
            type = "string",
        },
    },
}

M.UpdateProvisionedProductInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        ProvisionedProductName = {
            type = "string",
        },
        ProvisionedProductId = {
            type = "string",
        },
        ProductId = {
            type = "string",
        },
        ProductName = {
            type = "string",
        },
        ProvisioningArtifactId = {
            type = "string",
        },
        ProvisioningArtifactName = {
            type = "string",
        },
        PathId = {
            type = "string",
        },
        PathName = {
            type = "string",
        },
        ProvisioningParameters = {
            type = "list",
            member_type = "structure",
        },
        ProvisioningPreferences = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        UpdateToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateProvisionedProductOutput = {
    type = "structure",
    members = {
        RecordDetail = {
            type = "structure",
        },
    },
}

M.PropertyKey = {
    Owner = "OWNER",
    LaunchRole = "LAUNCH_ROLE",
}

M.UpdateProvisionedProductPropertiesInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        ProvisionedProductId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProvisionedProductProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        IdempotencyToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateProvisionedProductPropertiesOutput = {
    type = "structure",
    members = {
        ProvisionedProductId = {
            type = "string",
        },
        ProvisionedProductProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        RecordId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.UpdateProvisioningArtifactInput = {
    type = "structure",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        ProductId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProvisioningArtifactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Active = {
            type = "boolean",
        },
        Guidance = {
            type = "string",
        },
    },
}

M.UpdateProvisioningArtifactOutput = {
    type = "structure",
    members = {
        ProvisioningArtifactDetail = {
            type = "structure",
        },
        Info = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.UpdateServiceActionInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Definition = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Description = {
            type = "string",
        },
        AcceptLanguage = {
            type = "string",
        },
    },
}

M.UpdateServiceActionOutput = {
    type = "structure",
    members = {
        ServiceActionDetail = {
            type = "structure",
        },
    },
}

M.UpdateTagOptionInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
        },
        Active = {
            type = "boolean",
        },
    },
}

M.UpdateTagOptionOutput = {
    type = "structure",
    members = {
        TagOptionDetail = {
            type = "structure",
        },
    },
}

return M
