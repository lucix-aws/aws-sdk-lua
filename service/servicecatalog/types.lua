local M = {}

M.PortfolioShareType = {
    IMPORTED = "IMPORTED",
    AWS_SERVICECATALOG = "AWS_SERVICECATALOG",
    AWS_ORGANIZATIONS = "AWS_ORGANIZATIONS",
}

M.AcceptPortfolioShareInput = {
    type = "structure",
    id = "AcceptPortfolioShareInput",
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
    id = "AcceptPortfolioShareOutput",
}

M.InvalidParametersException = {
    type = "structure",
    id = "InvalidParametersException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
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
    id = "AccessLevelFilter",
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
    id = "Tag",
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
    id = "AssociateBudgetWithResourceInput",
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
    id = "AssociateBudgetWithResourceOutput",
}

M.DuplicateResourceException = {
    type = "structure",
    id = "DuplicateResourceException",
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
    id = "AssociatePrincipalWithPortfolioInput",
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
    id = "AssociatePrincipalWithPortfolioOutput",
}

M.AssociateProductWithPortfolioInput = {
    type = "structure",
    id = "AssociateProductWithPortfolioInput",
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
    id = "AssociateProductWithPortfolioOutput",
}

M.AssociateServiceActionWithProvisioningArtifactInput = {
    type = "structure",
    id = "AssociateServiceActionWithProvisioningArtifactInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.AssociateServiceActionWithProvisioningArtifactOutput = {
    type = "structure",
    id = "AssociateServiceActionWithProvisioningArtifactOutput",
}

M.AssociateTagOptionWithResourceInput = {
    type = "structure",
    id = "AssociateTagOptionWithResourceInput",
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
    id = "AssociateTagOptionWithResourceOutput",
}

M.InvalidStateException = {
    type = "structure",
    id = "InvalidStateException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TagOptionNotMigratedException = {
    type = "structure",
    id = "TagOptionNotMigratedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceActionAssociation = {
    type = "structure",
    id = "ServiceActionAssociation",
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
    id = "BatchAssociateServiceActionWithProvisioningArtifactInput",
    members = {
        ServiceActionAssociations = {
            type = "list",
            member = M.ServiceActionAssociation,
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
    id = "FailedServiceActionAssociation",
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
    id = "BatchAssociateServiceActionWithProvisioningArtifactOutput",
    members = {
        FailedServiceActionAssociations = {
            type = "list",
            member = M.FailedServiceActionAssociation,
        },
    },
}

M.BatchDisassociateServiceActionFromProvisioningArtifactInput = {
    type = "structure",
    id = "BatchDisassociateServiceActionFromProvisioningArtifactInput",
    members = {
        ServiceActionAssociations = {
            type = "list",
            member = M.ServiceActionAssociation,
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
    id = "BatchDisassociateServiceActionFromProvisioningArtifactOutput",
    members = {
        FailedServiceActionAssociations = {
            type = "list",
            member = M.FailedServiceActionAssociation,
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
    id = "CopyProductInput",
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
            member = { type = "map" },
        },
        CopyOptions = {
            type = "list",
            member = { type = "string" },
        },
        IdempotencyToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.CopyProductOutput = {
    type = "structure",
    id = "CopyProductOutput",
    members = {
        CopyProductToken = {
            type = "string",
        },
    },
}

M.CreateConstraintInput = {
    type = "structure",
    id = "CreateConstraintInput",
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
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.ConstraintDetail = {
    type = "structure",
    id = "ConstraintDetail",
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
    id = "CreateConstraintOutput",
    members = {
        ConstraintDetail = M.ConstraintDetail,
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
    id = "CreatePortfolioInput",
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
            member = M.Tag,
        },
        IdempotencyToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.PortfolioDetail = {
    type = "structure",
    id = "PortfolioDetail",
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
    id = "CreatePortfolioOutput",
    members = {
        PortfolioDetail = M.PortfolioDetail,
        Tags = {
            type = "list",
            member = M.Tag,
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
    id = "OrganizationNode",
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
    id = "CreatePortfolioShareInput",
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
        OrganizationNode = M.OrganizationNode,
        ShareTagOptions = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        SharePrincipals = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CreatePortfolioShareOutput = {
    type = "structure",
    id = "CreatePortfolioShareOutput",
    members = {
        PortfolioShareToken = {
            type = "string",
        },
    },
}

M.OperationNotSupportedException = {
    type = "structure",
    id = "OperationNotSupportedException",
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
    id = "ProvisioningArtifactProperties",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Info = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Type = {
            type = "string",
        },
        DisableTemplateValidation = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CodeStarParameters = {
    type = "structure",
    id = "CodeStarParameters",
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
    id = "SourceConnectionParameters",
    members = {
        CodeStar = M.CodeStarParameters,
    },
}

M.SourceType = {
    CODESTAR = "CODESTAR",
}

M.SourceConnection = {
    type = "structure",
    id = "SourceConnection",
    members = {
        Type = {
            type = "string",
        },
        ConnectionParameters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SourceConnectionParameters }),
    },
}

M.CreateProductInput = {
    type = "structure",
    id = "CreateProductInput",
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
            member = M.Tag,
        },
        ProvisioningArtifactParameters = M.ProvisioningArtifactProperties,
        IdempotencyToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        SourceConnection = M.SourceConnection,
    },
}

M.ProductViewSummary = {
    type = "structure",
    id = "ProductViewSummary",
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
            traits = {
                default = false,
            },
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
    id = "LastSync",
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
    id = "SourceConnectionDetail",
    members = {
        Type = {
            type = "string",
        },
        ConnectionParameters = M.SourceConnectionParameters,
        LastSync = M.LastSync,
    },
}

M.ProductViewDetail = {
    type = "structure",
    id = "ProductViewDetail",
    members = {
        ProductViewSummary = M.ProductViewSummary,
        Status = {
            type = "string",
        },
        ProductARN = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        SourceConnection = M.SourceConnectionDetail,
    },
}

M.ProvisioningArtifactGuidance = {
    DEFAULT = "DEFAULT",
    DEPRECATED = "DEPRECATED",
}

M.ProvisioningArtifactDetail = {
    type = "structure",
    id = "ProvisioningArtifactDetail",
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
    id = "CreateProductOutput",
    members = {
        ProductViewDetail = M.ProductViewDetail,
        ProvisioningArtifactDetail = M.ProvisioningArtifactDetail,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ProvisionedProductPlanType = {
    CLOUDFORMATION = "CLOUDFORMATION",
}

M.UpdateProvisioningParameter = {
    type = "structure",
    id = "UpdateProvisioningParameter",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        UsePreviousValue = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CreateProvisionedProductPlanInput = {
    type = "structure",
    id = "CreateProvisionedProductPlanInput",
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
            member = { type = "string" },
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
            member = M.UpdateProvisioningParameter,
        },
        IdempotencyToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateProvisionedProductPlanOutput = {
    type = "structure",
    id = "CreateProvisionedProductPlanOutput",
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
    id = "CreateProvisioningArtifactInput",
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
        Parameters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProvisioningArtifactProperties }),
        IdempotencyToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.CreateProvisioningArtifactOutput = {
    type = "structure",
    id = "CreateProvisioningArtifactOutput",
    members = {
        ProvisioningArtifactDetail = M.ProvisioningArtifactDetail,
        Info = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    id = "CreateServiceActionInput",
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
            key = { type = "string" },
            value = { type = "string" },
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
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.ServiceActionSummary = {
    type = "structure",
    id = "ServiceActionSummary",
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
    id = "ServiceActionDetail",
    members = {
        ServiceActionSummary = M.ServiceActionSummary,
        Definition = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateServiceActionOutput = {
    type = "structure",
    id = "CreateServiceActionOutput",
    members = {
        ServiceActionDetail = M.ServiceActionDetail,
    },
}

M.CreateTagOptionInput = {
    type = "structure",
    id = "CreateTagOptionInput",
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
    id = "TagOptionDetail",
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
    id = "CreateTagOptionOutput",
    members = {
        TagOptionDetail = M.TagOptionDetail,
    },
}

M.DeleteConstraintInput = {
    type = "structure",
    id = "DeleteConstraintInput",
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
    id = "DeleteConstraintOutput",
}

M.DeletePortfolioInput = {
    type = "structure",
    id = "DeletePortfolioInput",
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
    id = "DeletePortfolioOutput",
}

M.ResourceInUseException = {
    type = "structure",
    id = "ResourceInUseException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeletePortfolioShareInput = {
    type = "structure",
    id = "DeletePortfolioShareInput",
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
        OrganizationNode = M.OrganizationNode,
    },
}

M.DeletePortfolioShareOutput = {
    type = "structure",
    id = "DeletePortfolioShareOutput",
    members = {
        PortfolioShareToken = {
            type = "string",
        },
    },
}

M.DeleteProductInput = {
    type = "structure",
    id = "DeleteProductInput",
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
    id = "DeleteProductOutput",
}

M.DeleteProvisionedProductPlanInput = {
    type = "structure",
    id = "DeleteProvisionedProductPlanInput",
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
            traits = {
                default = false,
            },
        },
    },
}

M.DeleteProvisionedProductPlanOutput = {
    type = "structure",
    id = "DeleteProvisionedProductPlanOutput",
}

M.DeleteProvisioningArtifactInput = {
    type = "structure",
    id = "DeleteProvisioningArtifactInput",
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
    id = "DeleteProvisioningArtifactOutput",
}

M.DeleteServiceActionInput = {
    type = "structure",
    id = "DeleteServiceActionInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DeleteServiceActionOutput = {
    type = "structure",
    id = "DeleteServiceActionOutput",
}

M.DeleteTagOptionInput = {
    type = "structure",
    id = "DeleteTagOptionInput",
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
    id = "DeleteTagOptionOutput",
}

M.DescribeConstraintInput = {
    type = "structure",
    id = "DescribeConstraintInput",
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
    id = "DescribeConstraintOutput",
    members = {
        ConstraintDetail = M.ConstraintDetail,
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
    id = "DescribeCopyProductStatusInput",
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
    id = "DescribeCopyProductStatusOutput",
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
    id = "DescribePortfolioInput",
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
    id = "BudgetDetail",
    members = {
        BudgetName = {
            type = "string",
        },
    },
}

M.DescribePortfolioOutput = {
    type = "structure",
    id = "DescribePortfolioOutput",
    members = {
        PortfolioDetail = M.PortfolioDetail,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        TagOptions = {
            type = "list",
            member = M.TagOptionDetail,
        },
        Budgets = {
            type = "list",
            member = M.BudgetDetail,
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
    id = "DescribePortfolioSharesInput",
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.PortfolioShareDetail = {
    type = "structure",
    id = "PortfolioShareDetail",
    members = {
        PrincipalId = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Accepted = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ShareTagOptions = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        SharePrincipals = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DescribePortfolioSharesOutput = {
    type = "structure",
    id = "DescribePortfolioSharesOutput",
    members = {
        NextPageToken = {
            type = "string",
        },
        PortfolioShareDetails = {
            type = "list",
            member = M.PortfolioShareDetail,
        },
    },
}

M.DescribePortfolioShareStatusInput = {
    type = "structure",
    id = "DescribePortfolioShareStatusInput",
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
    id = "ShareError",
    members = {
        Accounts = {
            type = "list",
            member = { type = "string" },
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
    id = "ShareDetails",
    members = {
        SuccessfulShares = {
            type = "list",
            member = { type = "string" },
        },
        ShareErrors = {
            type = "list",
            member = M.ShareError,
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
    id = "DescribePortfolioShareStatusOutput",
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
        ShareDetails = M.ShareDetails,
    },
}

M.DescribeProductInput = {
    type = "structure",
    id = "DescribeProductInput",
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
    id = "LaunchPath",
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
    id = "ProvisioningArtifact",
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
    id = "DescribeProductOutput",
    members = {
        ProductViewSummary = M.ProductViewSummary,
        ProvisioningArtifacts = {
            type = "list",
            member = M.ProvisioningArtifact,
        },
        Budgets = {
            type = "list",
            member = M.BudgetDetail,
        },
        LaunchPaths = {
            type = "list",
            member = M.LaunchPath,
        },
    },
}

M.DescribeProductAsAdminInput = {
    type = "structure",
    id = "DescribeProductAsAdminInput",
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
    id = "ProvisioningArtifactSummary",
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DescribeProductAsAdminOutput = {
    type = "structure",
    id = "DescribeProductAsAdminOutput",
    members = {
        ProductViewDetail = M.ProductViewDetail,
        ProvisioningArtifactSummaries = {
            type = "list",
            member = M.ProvisioningArtifactSummary,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        TagOptions = {
            type = "list",
            member = M.TagOptionDetail,
        },
        Budgets = {
            type = "list",
            member = M.BudgetDetail,
        },
    },
}

M.DescribeProductViewInput = {
    type = "structure",
    id = "DescribeProductViewInput",
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
    id = "DescribeProductViewOutput",
    members = {
        ProductViewSummary = M.ProductViewSummary,
        ProvisioningArtifacts = {
            type = "list",
            member = M.ProvisioningArtifact,
        },
    },
}

M.DescribeProvisionedProductInput = {
    type = "structure",
    id = "DescribeProvisionedProductInput",
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
    id = "CloudWatchDashboard",
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
    id = "ProvisionedProductDetail",
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
    id = "DescribeProvisionedProductOutput",
    members = {
        ProvisionedProductDetail = M.ProvisionedProductDetail,
        CloudWatchDashboards = {
            type = "list",
            member = M.CloudWatchDashboard,
        },
    },
}

M.DescribeProvisionedProductPlanInput = {
    type = "structure",
    id = "DescribeProvisionedProductPlanInput",
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
            type = "integer",
            traits = {
                default = 0,
            },
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
    id = "ProvisionedProductPlanDetails",
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
            member = { type = "string" },
        },
        ProvisioningParameters = {
            type = "list",
            member = M.UpdateProvisioningParameter,
        },
        Tags = {
            type = "list",
            member = M.Tag,
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
    id = "ResourceTargetDefinition",
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
    id = "ResourceChangeDetail",
    members = {
        Target = M.ResourceTargetDefinition,
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
    id = "ResourceChange",
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
            member = { type = "string" },
        },
        Details = {
            type = "list",
            member = M.ResourceChangeDetail,
        },
    },
}

M.DescribeProvisionedProductPlanOutput = {
    type = "structure",
    id = "DescribeProvisionedProductPlanOutput",
    members = {
        ProvisionedProductPlanDetails = M.ProvisionedProductPlanDetails,
        ResourceChanges = {
            type = "list",
            member = M.ResourceChange,
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.DescribeProvisioningArtifactInput = {
    type = "structure",
    id = "DescribeProvisioningArtifactInput",
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
            traits = {
                default = false,
            },
        },
        IncludeProvisioningArtifactParameters = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ParameterConstraints = {
    type = "structure",
    id = "ParameterConstraints",
    members = {
        AllowedValues = {
            type = "list",
            member = { type = "string" },
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
    id = "ProvisioningArtifactParameter",
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
            traits = {
                default = false,
            },
        },
        Description = {
            type = "string",
        },
        ParameterConstraints = M.ParameterConstraints,
    },
}

M.DescribeProvisioningArtifactOutput = {
    type = "structure",
    id = "DescribeProvisioningArtifactOutput",
    members = {
        ProvisioningArtifactDetail = M.ProvisioningArtifactDetail,
        Info = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Status = {
            type = "string",
        },
        ProvisioningArtifactParameters = {
            type = "list",
            member = M.ProvisioningArtifactParameter,
        },
    },
}

M.DescribeProvisioningParametersInput = {
    type = "structure",
    id = "DescribeProvisioningParametersInput",
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
    id = "ConstraintSummary",
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
    id = "ProvisioningArtifactOutput",
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
    id = "ProvisioningArtifactPreferences",
    members = {
        StackSetAccounts = {
            type = "list",
            member = { type = "string" },
        },
        StackSetRegions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.TagOptionSummary = {
    type = "structure",
    id = "TagOptionSummary",
    members = {
        Key = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UsageInstruction = {
    type = "structure",
    id = "UsageInstruction",
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
    id = "DescribeProvisioningParametersOutput",
    members = {
        ProvisioningArtifactParameters = {
            type = "list",
            member = M.ProvisioningArtifactParameter,
        },
        ConstraintSummaries = {
            type = "list",
            member = M.ConstraintSummary,
        },
        UsageInstructions = {
            type = "list",
            member = M.UsageInstruction,
        },
        TagOptions = {
            type = "list",
            member = M.TagOptionSummary,
        },
        ProvisioningArtifactPreferences = M.ProvisioningArtifactPreferences,
        ProvisioningArtifactOutputs = {
            type = "list",
            member = M.ProvisioningArtifactOutput,
        },
        ProvisioningArtifactOutputKeys = {
            type = "list",
            member = M.ProvisioningArtifactOutput,
        },
    },
}

M.DescribeRecordInput = {
    type = "structure",
    id = "DescribeRecordInput",
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.RecordError = {
    type = "structure",
    id = "RecordError",
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
    id = "RecordTag",
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
    id = "RecordDetail",
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
            member = M.RecordError,
        },
        RecordTags = {
            type = "list",
            member = M.RecordTag,
        },
        LaunchRoleArn = {
            type = "string",
        },
    },
}

M.RecordOutput = {
    type = "structure",
    id = "RecordOutput",
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
    id = "DescribeRecordOutput",
    members = {
        RecordDetail = M.RecordDetail,
        RecordOutputs = {
            type = "list",
            member = M.RecordOutput,
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.DescribeServiceActionInput = {
    type = "structure",
    id = "DescribeServiceActionInput",
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
    id = "DescribeServiceActionOutput",
    members = {
        ServiceActionDetail = M.ServiceActionDetail,
    },
}

M.DescribeServiceActionExecutionParametersInput = {
    type = "structure",
    id = "DescribeServiceActionExecutionParametersInput",
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
    id = "ExecutionParameter",
    members = {
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        DefaultValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeServiceActionExecutionParametersOutput = {
    type = "structure",
    id = "DescribeServiceActionExecutionParametersOutput",
    members = {
        ServiceActionParameters = {
            type = "list",
            member = M.ExecutionParameter,
        },
    },
}

M.DescribeTagOptionInput = {
    type = "structure",
    id = "DescribeTagOptionInput",
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
    id = "DescribeTagOptionOutput",
    members = {
        TagOptionDetail = M.TagOptionDetail,
    },
}

M.DisableAWSOrganizationsAccessInput = {
    type = "structure",
    id = "DisableAWSOrganizationsAccessInput",
}

M.DisableAWSOrganizationsAccessOutput = {
    type = "structure",
    id = "DisableAWSOrganizationsAccessOutput",
}

M.DisassociateBudgetFromResourceInput = {
    type = "structure",
    id = "DisassociateBudgetFromResourceInput",
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
    id = "DisassociateBudgetFromResourceOutput",
}

M.DisassociatePrincipalFromPortfolioInput = {
    type = "structure",
    id = "DisassociatePrincipalFromPortfolioInput",
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
    id = "DisassociatePrincipalFromPortfolioOutput",
}

M.DisassociateProductFromPortfolioInput = {
    type = "structure",
    id = "DisassociateProductFromPortfolioInput",
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
    id = "DisassociateProductFromPortfolioOutput",
}

M.DisassociateServiceActionFromProvisioningArtifactInput = {
    type = "structure",
    id = "DisassociateServiceActionFromProvisioningArtifactInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DisassociateServiceActionFromProvisioningArtifactOutput = {
    type = "structure",
    id = "DisassociateServiceActionFromProvisioningArtifactOutput",
}

M.DisassociateTagOptionFromResourceInput = {
    type = "structure",
    id = "DisassociateTagOptionFromResourceInput",
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
    id = "DisassociateTagOptionFromResourceOutput",
}

M.EnableAWSOrganizationsAccessInput = {
    type = "structure",
    id = "EnableAWSOrganizationsAccessInput",
}

M.EnableAWSOrganizationsAccessOutput = {
    type = "structure",
    id = "EnableAWSOrganizationsAccessOutput",
}

M.ExecuteProvisionedProductPlanInput = {
    type = "structure",
    id = "ExecuteProvisionedProductPlanInput",
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
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.ExecuteProvisionedProductPlanOutput = {
    type = "structure",
    id = "ExecuteProvisionedProductPlanOutput",
    members = {
        RecordDetail = M.RecordDetail,
    },
}

M.ExecuteProvisionedProductServiceActionInput = {
    type = "structure",
    id = "ExecuteProvisionedProductServiceActionInput",
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
                idempotency_token = true,
                required = true,
            },
        },
        AcceptLanguage = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.ExecuteProvisionedProductServiceActionOutput = {
    type = "structure",
    id = "ExecuteProvisionedProductServiceActionOutput",
    members = {
        RecordDetail = M.RecordDetail,
    },
}

M.GetAWSOrganizationsAccessStatusInput = {
    type = "structure",
    id = "GetAWSOrganizationsAccessStatusInput",
}

M.GetAWSOrganizationsAccessStatusOutput = {
    type = "structure",
    id = "GetAWSOrganizationsAccessStatusOutput",
    members = {
        AccessStatus = {
            type = "string",
        },
    },
}

M.GetProvisionedProductOutputsInput = {
    type = "structure",
    id = "GetProvisionedProductOutputsInput",
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
            member = { type = "string" },
        },
        PageSize = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        PageToken = {
            type = "string",
        },
    },
}

M.GetProvisionedProductOutputsOutput = {
    type = "structure",
    id = "GetProvisionedProductOutputsOutput",
    members = {
        Outputs = {
            type = "list",
            member = M.RecordOutput,
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ImportAsProvisionedProductInput = {
    type = "structure",
    id = "ImportAsProvisionedProductInput",
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
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.ImportAsProvisionedProductOutput = {
    type = "structure",
    id = "ImportAsProvisionedProductOutput",
    members = {
        RecordDetail = M.RecordDetail,
    },
}

M.ListAcceptedPortfolioSharesInput = {
    type = "structure",
    id = "ListAcceptedPortfolioSharesInput",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        PageToken = {
            type = "string",
        },
        PageSize = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        PortfolioShareType = {
            type = "string",
        },
    },
}

M.ListAcceptedPortfolioSharesOutput = {
    type = "structure",
    id = "ListAcceptedPortfolioSharesOutput",
    members = {
        PortfolioDetails = {
            type = "list",
            member = M.PortfolioDetail,
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListBudgetsForResourceInput = {
    type = "structure",
    id = "ListBudgetsForResourceInput",
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        PageToken = {
            type = "string",
        },
    },
}

M.ListBudgetsForResourceOutput = {
    type = "structure",
    id = "ListBudgetsForResourceOutput",
    members = {
        Budgets = {
            type = "list",
            member = M.BudgetDetail,
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListConstraintsForPortfolioInput = {
    type = "structure",
    id = "ListConstraintsForPortfolioInput",
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        PageToken = {
            type = "string",
        },
    },
}

M.ListConstraintsForPortfolioOutput = {
    type = "structure",
    id = "ListConstraintsForPortfolioOutput",
    members = {
        ConstraintDetails = {
            type = "list",
            member = M.ConstraintDetail,
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListLaunchPathsInput = {
    type = "structure",
    id = "ListLaunchPathsInput",
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        PageToken = {
            type = "string",
        },
    },
}

M.LaunchPathSummary = {
    type = "structure",
    id = "LaunchPathSummary",
    members = {
        Id = {
            type = "string",
        },
        ConstraintSummaries = {
            type = "list",
            member = M.ConstraintSummary,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        Name = {
            type = "string",
        },
    },
}

M.ListLaunchPathsOutput = {
    type = "structure",
    id = "ListLaunchPathsOutput",
    members = {
        LaunchPathSummaries = {
            type = "list",
            member = M.LaunchPathSummary,
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListOrganizationPortfolioAccessInput = {
    type = "structure",
    id = "ListOrganizationPortfolioAccessInput",
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.ListOrganizationPortfolioAccessOutput = {
    type = "structure",
    id = "ListOrganizationPortfolioAccessOutput",
    members = {
        OrganizationNodes = {
            type = "list",
            member = M.OrganizationNode,
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListPortfolioAccessInput = {
    type = "structure",
    id = "ListPortfolioAccessInput",
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.ListPortfolioAccessOutput = {
    type = "structure",
    id = "ListPortfolioAccessOutput",
    members = {
        AccountIds = {
            type = "list",
            member = { type = "string" },
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListPortfoliosInput = {
    type = "structure",
    id = "ListPortfoliosInput",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        PageToken = {
            type = "string",
        },
        PageSize = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.ListPortfoliosOutput = {
    type = "structure",
    id = "ListPortfoliosOutput",
    members = {
        PortfolioDetails = {
            type = "list",
            member = M.PortfolioDetail,
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListPortfoliosForProductInput = {
    type = "structure",
    id = "ListPortfoliosForProductInput",
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.ListPortfoliosForProductOutput = {
    type = "structure",
    id = "ListPortfoliosForProductOutput",
    members = {
        PortfolioDetails = {
            type = "list",
            member = M.PortfolioDetail,
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListPrincipalsForPortfolioInput = {
    type = "structure",
    id = "ListPrincipalsForPortfolioInput",
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        PageToken = {
            type = "string",
        },
    },
}

M.Principal = {
    type = "structure",
    id = "Principal",
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
    id = "ListPrincipalsForPortfolioOutput",
    members = {
        Principals = {
            type = "list",
            member = M.Principal,
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListProvisionedProductPlansInput = {
    type = "structure",
    id = "ListProvisionedProductPlansInput",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        ProvisionProductId = {
            type = "string",
        },
        PageSize = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        PageToken = {
            type = "string",
        },
        AccessLevelFilter = M.AccessLevelFilter,
    },
}

M.ProvisionedProductPlanSummary = {
    type = "structure",
    id = "ProvisionedProductPlanSummary",
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
    id = "ListProvisionedProductPlansOutput",
    members = {
        ProvisionedProductPlans = {
            type = "list",
            member = M.ProvisionedProductPlanSummary,
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListProvisioningArtifactsInput = {
    type = "structure",
    id = "ListProvisioningArtifactsInput",
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
    id = "ListProvisioningArtifactsOutput",
    members = {
        ProvisioningArtifactDetails = {
            type = "list",
            member = M.ProvisioningArtifactDetail,
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListProvisioningArtifactsForServiceActionInput = {
    type = "structure",
    id = "ListProvisioningArtifactsForServiceActionInput",
    members = {
        ServiceActionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PageSize = {
            type = "integer",
            traits = {
                default = 0,
            },
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
    id = "ProvisioningArtifactView",
    members = {
        ProductViewSummary = M.ProductViewSummary,
        ProvisioningArtifact = M.ProvisioningArtifact,
    },
}

M.ListProvisioningArtifactsForServiceActionOutput = {
    type = "structure",
    id = "ListProvisioningArtifactsForServiceActionOutput",
    members = {
        ProvisioningArtifactViews = {
            type = "list",
            member = M.ProvisioningArtifactView,
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListRecordHistorySearchFilter = {
    type = "structure",
    id = "ListRecordHistorySearchFilter",
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
    id = "ListRecordHistoryInput",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        AccessLevelFilter = M.AccessLevelFilter,
        SearchFilter = M.ListRecordHistorySearchFilter,
        PageSize = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        PageToken = {
            type = "string",
        },
    },
}

M.ListRecordHistoryOutput = {
    type = "structure",
    id = "ListRecordHistoryOutput",
    members = {
        RecordDetails = {
            type = "list",
            member = M.RecordDetail,
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListResourcesForTagOptionInput = {
    type = "structure",
    id = "ListResourcesForTagOptionInput",
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
            type = "integer",
            traits = {
                default = 0,
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
    id = "ResourceDetail",
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
    id = "ListResourcesForTagOptionOutput",
    members = {
        ResourceDetails = {
            type = "list",
            member = M.ResourceDetail,
        },
        PageToken = {
            type = "string",
        },
    },
}

M.ListServiceActionsInput = {
    type = "structure",
    id = "ListServiceActionsInput",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        PageSize = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        PageToken = {
            type = "string",
        },
    },
}

M.ListServiceActionsOutput = {
    type = "structure",
    id = "ListServiceActionsOutput",
    members = {
        ServiceActionSummaries = {
            type = "list",
            member = M.ServiceActionSummary,
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListServiceActionsForProvisioningArtifactInput = {
    type = "structure",
    id = "ListServiceActionsForProvisioningArtifactInput",
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
            type = "integer",
            traits = {
                default = 0,
            },
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
    id = "ListServiceActionsForProvisioningArtifactOutput",
    members = {
        ServiceActionSummaries = {
            type = "list",
            member = M.ServiceActionSummary,
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListStackInstancesForProvisionedProductInput = {
    type = "structure",
    id = "ListStackInstancesForProvisionedProductInput",
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
            type = "integer",
            traits = {
                default = 0,
            },
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
    id = "StackInstance",
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
    id = "ListStackInstancesForProvisionedProductOutput",
    members = {
        StackInstances = {
            type = "list",
            member = M.StackInstance,
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListTagOptionsFilters = {
    type = "structure",
    id = "ListTagOptionsFilters",
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
    id = "ListTagOptionsInput",
    members = {
        Filters = M.ListTagOptionsFilters,
        PageSize = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        PageToken = {
            type = "string",
        },
    },
}

M.ListTagOptionsOutput = {
    type = "structure",
    id = "ListTagOptionsOutput",
    members = {
        TagOptionDetails = {
            type = "list",
            member = M.TagOptionDetail,
        },
        PageToken = {
            type = "string",
        },
    },
}

M.UniqueTagResourceIdentifier = {
    type = "structure",
    id = "UniqueTagResourceIdentifier",
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
    id = "EngineWorkflowResourceIdentifier",
    members = {
        UniqueTag = M.UniqueTagResourceIdentifier,
    },
}

M.EngineWorkflowStatus = {
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.NotifyProvisionProductEngineWorkflowResultInput = {
    type = "structure",
    id = "NotifyProvisionProductEngineWorkflowResultInput",
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
        ResourceIdentifier = M.EngineWorkflowResourceIdentifier,
        Outputs = {
            type = "list",
            member = M.RecordOutput,
        },
        IdempotencyToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.NotifyProvisionProductEngineWorkflowResultOutput = {
    type = "structure",
    id = "NotifyProvisionProductEngineWorkflowResultOutput",
}

M.NotifyTerminateProvisionedProductEngineWorkflowResultInput = {
    type = "structure",
    id = "NotifyTerminateProvisionedProductEngineWorkflowResultInput",
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
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.NotifyTerminateProvisionedProductEngineWorkflowResultOutput = {
    type = "structure",
    id = "NotifyTerminateProvisionedProductEngineWorkflowResultOutput",
}

M.NotifyUpdateProvisionedProductEngineWorkflowResultInput = {
    type = "structure",
    id = "NotifyUpdateProvisionedProductEngineWorkflowResultInput",
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
            member = M.RecordOutput,
        },
        IdempotencyToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.NotifyUpdateProvisionedProductEngineWorkflowResultOutput = {
    type = "structure",
    id = "NotifyUpdateProvisionedProductEngineWorkflowResultOutput",
}

M.ProvisioningParameter = {
    type = "structure",
    id = "ProvisioningParameter",
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
    id = "ProvisioningPreferences",
    members = {
        StackSetAccounts = {
            type = "list",
            member = { type = "string" },
        },
        StackSetRegions = {
            type = "list",
            member = { type = "string" },
        },
        StackSetFailureToleranceCount = {
            type = "integer",
        },
        StackSetFailureTolerancePercentage = {
            type = "integer",
        },
        StackSetMaxConcurrencyCount = {
            type = "integer",
        },
        StackSetMaxConcurrencyPercentage = {
            type = "integer",
        },
    },
}

M.ProvisionProductInput = {
    type = "structure",
    id = "ProvisionProductInput",
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
            member = M.ProvisioningParameter,
        },
        ProvisioningPreferences = M.ProvisioningPreferences,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        NotificationArns = {
            type = "list",
            member = { type = "string" },
        },
        ProvisionToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.ProvisionProductOutput = {
    type = "structure",
    id = "ProvisionProductOutput",
    members = {
        RecordDetail = M.RecordDetail,
    },
}

M.RejectPortfolioShareInput = {
    type = "structure",
    id = "RejectPortfolioShareInput",
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
    id = "RejectPortfolioShareOutput",
}

M.ScanProvisionedProductsInput = {
    type = "structure",
    id = "ScanProvisionedProductsInput",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        AccessLevelFilter = M.AccessLevelFilter,
        PageSize = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        PageToken = {
            type = "string",
        },
    },
}

M.ScanProvisionedProductsOutput = {
    type = "structure",
    id = "ScanProvisionedProductsOutput",
    members = {
        ProvisionedProducts = {
            type = "list",
            member = M.ProvisionedProductDetail,
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
    id = "SearchProductsInput",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        Filters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        PageSize = {
            type = "integer",
            traits = {
                default = 0,
            },
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
    id = "ProductViewAggregationValue",
    members = {
        Value = {
            type = "string",
        },
        ApproximateCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.SearchProductsOutput = {
    type = "structure",
    id = "SearchProductsOutput",
    members = {
        ProductViewSummaries = {
            type = "list",
            member = M.ProductViewSummary,
        },
        ProductViewAggregations = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
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
    id = "SearchProductsAsAdminInput",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        PortfolioId = {
            type = "string",
        },
        Filters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        ProductSource = {
            type = "string",
        },
    },
}

M.SearchProductsAsAdminOutput = {
    type = "structure",
    id = "SearchProductsAsAdminOutput",
    members = {
        ProductViewDetails = {
            type = "list",
            member = M.ProductViewDetail,
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
    id = "SearchProvisionedProductsInput",
    members = {
        AcceptLanguage = {
            type = "string",
        },
        AccessLevelFilter = M.AccessLevelFilter,
        Filters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        PageSize = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        PageToken = {
            type = "string",
        },
    },
}

M.ProvisionedProductAttribute = {
    type = "structure",
    id = "ProvisionedProductAttribute",
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
            member = M.Tag,
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
    id = "SearchProvisionedProductsOutput",
    members = {
        ProvisionedProducts = {
            type = "list",
            member = M.ProvisionedProductAttribute,
        },
        TotalResultsCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.TerminateProvisionedProductInput = {
    type = "structure",
    id = "TerminateProvisionedProductInput",
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
                idempotency_token = true,
                required = true,
            },
        },
        IgnoreErrors = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        AcceptLanguage = {
            type = "string",
        },
        RetainPhysicalResources = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.TerminateProvisionedProductOutput = {
    type = "structure",
    id = "TerminateProvisionedProductOutput",
    members = {
        RecordDetail = M.RecordDetail,
    },
}

M.UpdateConstraintInput = {
    type = "structure",
    id = "UpdateConstraintInput",
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
    id = "UpdateConstraintOutput",
    members = {
        ConstraintDetail = M.ConstraintDetail,
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
    id = "UpdatePortfolioInput",
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
            member = M.Tag,
        },
        RemoveTags = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdatePortfolioOutput = {
    type = "structure",
    id = "UpdatePortfolioOutput",
    members = {
        PortfolioDetail = M.PortfolioDetail,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.UpdatePortfolioShareInput = {
    type = "structure",
    id = "UpdatePortfolioShareInput",
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
        OrganizationNode = M.OrganizationNode,
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
    id = "UpdatePortfolioShareOutput",
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
    id = "UpdateProductInput",
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
            member = M.Tag,
        },
        RemoveTags = {
            type = "list",
            member = { type = "string" },
        },
        SourceConnection = M.SourceConnection,
    },
}

M.UpdateProductOutput = {
    type = "structure",
    id = "UpdateProductOutput",
    members = {
        ProductViewDetail = M.ProductViewDetail,
        Tags = {
            type = "list",
            member = M.Tag,
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
    id = "UpdateProvisioningPreferences",
    members = {
        StackSetAccounts = {
            type = "list",
            member = { type = "string" },
        },
        StackSetRegions = {
            type = "list",
            member = { type = "string" },
        },
        StackSetFailureToleranceCount = {
            type = "integer",
        },
        StackSetFailureTolerancePercentage = {
            type = "integer",
        },
        StackSetMaxConcurrencyCount = {
            type = "integer",
        },
        StackSetMaxConcurrencyPercentage = {
            type = "integer",
        },
        StackSetOperationType = {
            type = "string",
        },
    },
}

M.UpdateProvisionedProductInput = {
    type = "structure",
    id = "UpdateProvisionedProductInput",
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
            member = M.UpdateProvisioningParameter,
        },
        ProvisioningPreferences = M.UpdateProvisioningPreferences,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        UpdateToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.UpdateProvisionedProductOutput = {
    type = "structure",
    id = "UpdateProvisionedProductOutput",
    members = {
        RecordDetail = M.RecordDetail,
    },
}

M.PropertyKey = {
    Owner = "OWNER",
    LaunchRole = "LAUNCH_ROLE",
}

M.UpdateProvisionedProductPropertiesInput = {
    type = "structure",
    id = "UpdateProvisionedProductPropertiesInput",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        IdempotencyToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.UpdateProvisionedProductPropertiesOutput = {
    type = "structure",
    id = "UpdateProvisionedProductPropertiesOutput",
    members = {
        ProvisionedProductId = {
            type = "string",
        },
        ProvisionedProductProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    id = "UpdateProvisioningArtifactInput",
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
    id = "UpdateProvisioningArtifactOutput",
    members = {
        ProvisioningArtifactDetail = M.ProvisioningArtifactDetail,
        Info = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Status = {
            type = "string",
        },
    },
}

M.UpdateServiceActionInput = {
    type = "structure",
    id = "UpdateServiceActionInput",
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
            key = { type = "string" },
            value = { type = "string" },
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
    id = "UpdateServiceActionOutput",
    members = {
        ServiceActionDetail = M.ServiceActionDetail,
    },
}

M.UpdateTagOptionInput = {
    type = "structure",
    id = "UpdateTagOptionInput",
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
    id = "UpdateTagOptionOutput",
    members = {
        TagOptionDetail = M.TagOptionDetail,
    },
}

return M
