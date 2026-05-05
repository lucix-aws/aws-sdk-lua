local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.servicecatalog"

local M = {}

M.ServiceActionAssociations = schema.new({ type = "list", list_member = M.ServiceActionAssociation })

M.FailedServiceActionAssociations = schema.new({ type = "list", list_member = M.FailedServiceActionAssociation })

M.SourceProvisioningArtifactProperties = schema.new({ type = "list", list_member = M.SourceProvisioningArtifactPropertiesMap })

M.CopyOptions = schema.new({ type = "list", list_member = prelude.String })

M.AddTags = schema.new({ type = "list", list_member = M.Tag })

M.Tags = schema.new({ type = "list", list_member = M.Tag })

M.NotificationArns = schema.new({ type = "list", list_member = prelude.String })

M.UpdateProvisioningParameters = schema.new({ type = "list", list_member = M.UpdateProvisioningParameter })

M.ProvisioningArtifactInfo = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ServiceActionDefinitionMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.TagOptionDetails = schema.new({ type = "list", list_member = M.TagOptionDetail })

M.Budgets = schema.new({ type = "list", list_member = M.BudgetDetail })

M.PortfolioShareDetails = schema.new({ type = "list", list_member = M.PortfolioShareDetail })

M.ProvisioningArtifacts = schema.new({ type = "list", list_member = M.ProvisioningArtifact })

M.LaunchPaths = schema.new({ type = "list", list_member = M.LaunchPath })

M.ProvisioningArtifactSummaries = schema.new({ type = "list", list_member = M.ProvisioningArtifactSummary })

M.CloudWatchDashboards = schema.new({ type = "list", list_member = M.CloudWatchDashboard })

M.ResourceChanges = schema.new({ type = "list", list_member = M.ResourceChange })

M.ProvisioningArtifactParameters = schema.new({ type = "list", list_member = M.ProvisioningArtifactParameter })

M.ConstraintSummaries = schema.new({ type = "list", list_member = M.ConstraintSummary })

M.UsageInstructions = schema.new({ type = "list", list_member = M.UsageInstruction })

M.TagOptionSummaries = schema.new({ type = "list", list_member = M.TagOptionSummary })

M.ProvisioningArtifactOutputs = schema.new({ type = "list", list_member = M.ProvisioningArtifactOutput })

M.RecordOutputs = schema.new({ type = "list", list_member = M.RecordOutput })

M.ExecutionParameters = schema.new({ type = "list", list_member = M.ExecutionParameter })

M.ExecutionParameterMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.ExecutionParameterValueList })

M.OutputKeys = schema.new({ type = "list", list_member = prelude.String })

M.PortfolioDetails = schema.new({ type = "list", list_member = M.PortfolioDetail })

M.ConstraintDetails = schema.new({ type = "list", list_member = M.ConstraintDetail })

M.LaunchPathSummaries = schema.new({ type = "list", list_member = M.LaunchPathSummary })

M.OrganizationNodes = schema.new({ type = "list", list_member = M.OrganizationNode })

M.AccountIds = schema.new({ type = "list", list_member = prelude.String })

M.Principals = schema.new({ type = "list", list_member = M.Principal })

M.ProvisionedProductPlans = schema.new({ type = "list", list_member = M.ProvisionedProductPlanSummary })

M.ProvisioningArtifactDetails = schema.new({ type = "list", list_member = M.ProvisioningArtifactDetail })

M.ProvisioningArtifactViews = schema.new({ type = "list", list_member = M.ProvisioningArtifactView })

M.RecordDetails = schema.new({ type = "list", list_member = M.RecordDetail })

M.ResourceDetails = schema.new({ type = "list", list_member = M.ResourceDetail })

M.ServiceActionSummaries = schema.new({ type = "list", list_member = M.ServiceActionSummary })

M.StackInstances = schema.new({ type = "list", list_member = M.StackInstance })

M.ProvisioningParameters = schema.new({ type = "list", list_member = M.ProvisioningParameter })

M.ProvisionedProductDetails = schema.new({ type = "list", list_member = M.ProvisionedProductDetail })

M.ProductViewFilters = schema.new({ type = "map", map_key = prelude.String, map_value = M.ProductViewFilterValues })

M.ProductViewSummaries = schema.new({ type = "list", list_member = M.ProductViewSummary })

M.ProductViewAggregations = schema.new({ type = "map", map_key = prelude.String, map_value = M.ProductViewAggregationValues })

M.ProductViewDetails = schema.new({ type = "list", list_member = M.ProductViewDetail })

M.ProvisionedProductFilters = schema.new({ type = "map", map_key = prelude.String, map_value = M.ProvisionedProductViewFilterValues })

M.ProvisionedProductAttributes = schema.new({ type = "list", list_member = M.ProvisionedProductAttribute })

M.TagKeys = schema.new({ type = "list", list_member = prelude.String })

M.ProvisionedProductProperties = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.SourceProvisioningArtifactPropertiesMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.SuccessfulShares = schema.new({ type = "list", list_member = prelude.String })

M.ShareErrors = schema.new({ type = "list", list_member = M.ShareError })

M.StackSetAccounts = schema.new({ type = "list", list_member = prelude.String })

M.StackSetRegions = schema.new({ type = "list", list_member = prelude.String })

M.RecordErrors = schema.new({ type = "list", list_member = M.RecordError })

M.RecordTags = schema.new({ type = "list", list_member = M.RecordTag })

M.ExecutionParameterValueList = schema.new({ type = "list", list_member = prelude.String })

M.ProductViewFilterValues = schema.new({ type = "list", list_member = prelude.String })

M.ProductViewAggregationValues = schema.new({ type = "list", list_member = M.ProductViewAggregationValue })

M.ProvisionedProductViewFilterValues = schema.new({ type = "list", list_member = prelude.String })

M.Scope = schema.new({ type = "list", list_member = prelude.String })

M.ResourceChangeDetails = schema.new({ type = "list", list_member = M.ResourceChangeDetail })

M.TagOptionValues = schema.new({ type = "list", list_member = prelude.String })

M.Namespaces = schema.new({ type = "list", list_member = prelude.String })

M.AllowedValues = schema.new({ type = "list", list_member = prelude.String })

M.AcceptPortfolioShareInput = schema.new({
    id = id.from(_N, "AcceptPortfolioShareInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "AcceptPortfolioShareInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        PortfolioId = schema.new({
            id = id.from(_N, "AcceptPortfolioShareInput", "PortfolioId"),
            type = "string",
            name = "PortfolioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PortfolioShareType = schema.new({
            id = id.from(_N, "AcceptPortfolioShareInput", "PortfolioShareType"),
            type = "string",
            name = "PortfolioShareType",
            target_id = prelude.String.id,
        }),
    },
})

M.AcceptPortfolioShareOutput = schema.new({
    id = id.from(_N, "AcceptPortfolioShareOutput"),
    type = "structure",
})

M.InvalidParametersException = schema.new({
    id = id.from(_N, "InvalidParametersException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidParametersException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.LimitExceededException = schema.new({
    id = id.from(_N, "LimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "LimitExceededException", "Message"),
            type = "string",
            name = "Message",
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
        Message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.AccessLevelFilter = schema.new({
    id = id.from(_N, "AccessLevelFilter"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "AccessLevelFilter", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "AccessLevelFilter", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "Tag", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "Tag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateBudgetWithResourceInput = schema.new({
    id = id.from(_N, "AssociateBudgetWithResourceInput"),
    type = "structure",
    members = {
        BudgetName = schema.new({
            id = id.from(_N, "AssociateBudgetWithResourceInput", "BudgetName"),
            type = "string",
            name = "BudgetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "AssociateBudgetWithResourceInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateBudgetWithResourceOutput = schema.new({
    id = id.from(_N, "AssociateBudgetWithResourceOutput"),
    type = "structure",
})

M.DuplicateResourceException = schema.new({
    id = id.from(_N, "DuplicateResourceException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DuplicateResourceException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociatePrincipalWithPortfolioInput = schema.new({
    id = id.from(_N, "AssociatePrincipalWithPortfolioInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "AssociatePrincipalWithPortfolioInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        PortfolioId = schema.new({
            id = id.from(_N, "AssociatePrincipalWithPortfolioInput", "PortfolioId"),
            type = "string",
            name = "PortfolioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrincipalARN = schema.new({
            id = id.from(_N, "AssociatePrincipalWithPortfolioInput", "PrincipalARN"),
            type = "string",
            name = "PrincipalARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrincipalType = schema.new({
            id = id.from(_N, "AssociatePrincipalWithPortfolioInput", "PrincipalType"),
            type = "string",
            name = "PrincipalType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociatePrincipalWithPortfolioOutput = schema.new({
    id = id.from(_N, "AssociatePrincipalWithPortfolioOutput"),
    type = "structure",
})

M.AssociateProductWithPortfolioInput = schema.new({
    id = id.from(_N, "AssociateProductWithPortfolioInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "AssociateProductWithPortfolioInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        ProductId = schema.new({
            id = id.from(_N, "AssociateProductWithPortfolioInput", "ProductId"),
            type = "string",
            name = "ProductId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PortfolioId = schema.new({
            id = id.from(_N, "AssociateProductWithPortfolioInput", "PortfolioId"),
            type = "string",
            name = "PortfolioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourcePortfolioId = schema.new({
            id = id.from(_N, "AssociateProductWithPortfolioInput", "SourcePortfolioId"),
            type = "string",
            name = "SourcePortfolioId",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateProductWithPortfolioOutput = schema.new({
    id = id.from(_N, "AssociateProductWithPortfolioOutput"),
    type = "structure",
})

M.AssociateServiceActionWithProvisioningArtifactInput = schema.new({
    id = id.from(_N, "AssociateServiceActionWithProvisioningArtifactInput"),
    type = "structure",
    members = {
        ProductId = schema.new({
            id = id.from(_N, "AssociateServiceActionWithProvisioningArtifactInput", "ProductId"),
            type = "string",
            name = "ProductId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProvisioningArtifactId = schema.new({
            id = id.from(_N, "AssociateServiceActionWithProvisioningArtifactInput", "ProvisioningArtifactId"),
            type = "string",
            name = "ProvisioningArtifactId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceActionId = schema.new({
            id = id.from(_N, "AssociateServiceActionWithProvisioningArtifactInput", "ServiceActionId"),
            type = "string",
            name = "ServiceActionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AcceptLanguage = schema.new({
            id = id.from(_N, "AssociateServiceActionWithProvisioningArtifactInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        IdempotencyToken = schema.new({
            id = id.from(_N, "AssociateServiceActionWithProvisioningArtifactInput", "IdempotencyToken"),
            type = "string",
            name = "IdempotencyToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.AssociateServiceActionWithProvisioningArtifactOutput = schema.new({
    id = id.from(_N, "AssociateServiceActionWithProvisioningArtifactOutput"),
    type = "structure",
})

M.AssociateTagOptionWithResourceInput = schema.new({
    id = id.from(_N, "AssociateTagOptionWithResourceInput"),
    type = "structure",
    members = {
        ResourceId = schema.new({
            id = id.from(_N, "AssociateTagOptionWithResourceInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagOptionId = schema.new({
            id = id.from(_N, "AssociateTagOptionWithResourceInput", "TagOptionId"),
            type = "string",
            name = "TagOptionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateTagOptionWithResourceOutput = schema.new({
    id = id.from(_N, "AssociateTagOptionWithResourceOutput"),
    type = "structure",
})

M.InvalidStateException = schema.new({
    id = id.from(_N, "InvalidStateException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidStateException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TagOptionNotMigratedException = schema.new({
    id = id.from(_N, "TagOptionNotMigratedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TagOptionNotMigratedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceActionAssociation = schema.new({
    id = id.from(_N, "ServiceActionAssociation"),
    type = "structure",
    members = {
        ServiceActionId = schema.new({
            id = id.from(_N, "ServiceActionAssociation", "ServiceActionId"),
            type = "string",
            name = "ServiceActionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProductId = schema.new({
            id = id.from(_N, "ServiceActionAssociation", "ProductId"),
            type = "string",
            name = "ProductId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProvisioningArtifactId = schema.new({
            id = id.from(_N, "ServiceActionAssociation", "ProvisioningArtifactId"),
            type = "string",
            name = "ProvisioningArtifactId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchAssociateServiceActionWithProvisioningArtifactInput = schema.new({
    id = id.from(_N, "BatchAssociateServiceActionWithProvisioningArtifactInput"),
    type = "structure",
    members = {
        ServiceActionAssociations = schema.new({
            id = id.from(_N, "BatchAssociateServiceActionWithProvisioningArtifactInput", "ServiceActionAssociations"),
            type = "list",
            name = "ServiceActionAssociations",
            target_id = prelude.Document.id,
            list_member = M.ServiceActionAssociation,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AcceptLanguage = schema.new({
            id = id.from(_N, "BatchAssociateServiceActionWithProvisioningArtifactInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
    },
})

M.FailedServiceActionAssociation = schema.new({
    id = id.from(_N, "FailedServiceActionAssociation"),
    type = "structure",
    members = {
        ServiceActionId = schema.new({
            id = id.from(_N, "FailedServiceActionAssociation", "ServiceActionId"),
            type = "string",
            name = "ServiceActionId",
            target_id = prelude.String.id,
        }),
        ProductId = schema.new({
            id = id.from(_N, "FailedServiceActionAssociation", "ProductId"),
            type = "string",
            name = "ProductId",
            target_id = prelude.String.id,
        }),
        ProvisioningArtifactId = schema.new({
            id = id.from(_N, "FailedServiceActionAssociation", "ProvisioningArtifactId"),
            type = "string",
            name = "ProvisioningArtifactId",
            target_id = prelude.String.id,
        }),
        ErrorCode = schema.new({
            id = id.from(_N, "FailedServiceActionAssociation", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "FailedServiceActionAssociation", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchAssociateServiceActionWithProvisioningArtifactOutput = schema.new({
    id = id.from(_N, "BatchAssociateServiceActionWithProvisioningArtifactOutput"),
    type = "structure",
    members = {
        FailedServiceActionAssociations = schema.new({
            id = id.from(_N, "BatchAssociateServiceActionWithProvisioningArtifactOutput", "FailedServiceActionAssociations"),
            type = "list",
            name = "FailedServiceActionAssociations",
            target_id = prelude.Document.id,
            list_member = M.FailedServiceActionAssociation,
        }),
    },
})

M.BatchDisassociateServiceActionFromProvisioningArtifactInput = schema.new({
    id = id.from(_N, "BatchDisassociateServiceActionFromProvisioningArtifactInput"),
    type = "structure",
    members = {
        ServiceActionAssociations = schema.new({
            id = id.from(_N, "BatchDisassociateServiceActionFromProvisioningArtifactInput", "ServiceActionAssociations"),
            type = "list",
            name = "ServiceActionAssociations",
            target_id = prelude.Document.id,
            list_member = M.ServiceActionAssociation,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AcceptLanguage = schema.new({
            id = id.from(_N, "BatchDisassociateServiceActionFromProvisioningArtifactInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchDisassociateServiceActionFromProvisioningArtifactOutput = schema.new({
    id = id.from(_N, "BatchDisassociateServiceActionFromProvisioningArtifactOutput"),
    type = "structure",
    members = {
        FailedServiceActionAssociations = schema.new({
            id = id.from(_N, "BatchDisassociateServiceActionFromProvisioningArtifactOutput", "FailedServiceActionAssociations"),
            type = "list",
            name = "FailedServiceActionAssociations",
            target_id = prelude.Document.id,
            list_member = M.FailedServiceActionAssociation,
        }),
    },
})

M.CopyProductInput = schema.new({
    id = id.from(_N, "CopyProductInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "CopyProductInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        SourceProductArn = schema.new({
            id = id.from(_N, "CopyProductInput", "SourceProductArn"),
            type = "string",
            name = "SourceProductArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetProductId = schema.new({
            id = id.from(_N, "CopyProductInput", "TargetProductId"),
            type = "string",
            name = "TargetProductId",
            target_id = prelude.String.id,
        }),
        TargetProductName = schema.new({
            id = id.from(_N, "CopyProductInput", "TargetProductName"),
            type = "string",
            name = "TargetProductName",
            target_id = prelude.String.id,
        }),
        SourceProvisioningArtifactIdentifiers = schema.new({
            id = id.from(_N, "CopyProductInput", "SourceProvisioningArtifactIdentifiers"),
            type = "list",
            name = "SourceProvisioningArtifactIdentifiers",
            target_id = prelude.Document.id,
            list_member = M.SourceProvisioningArtifactPropertiesMap,
        }),
        CopyOptions = schema.new({
            id = id.from(_N, "CopyProductInput", "CopyOptions"),
            type = "list",
            name = "CopyOptions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        IdempotencyToken = schema.new({
            id = id.from(_N, "CopyProductInput", "IdempotencyToken"),
            type = "string",
            name = "IdempotencyToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CopyProductOutput = schema.new({
    id = id.from(_N, "CopyProductOutput"),
    type = "structure",
    members = {
        CopyProductToken = schema.new({
            id = id.from(_N, "CopyProductOutput", "CopyProductToken"),
            type = "string",
            name = "CopyProductToken",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateConstraintInput = schema.new({
    id = id.from(_N, "CreateConstraintInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "CreateConstraintInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        PortfolioId = schema.new({
            id = id.from(_N, "CreateConstraintInput", "PortfolioId"),
            type = "string",
            name = "PortfolioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProductId = schema.new({
            id = id.from(_N, "CreateConstraintInput", "ProductId"),
            type = "string",
            name = "ProductId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Parameters = schema.new({
            id = id.from(_N, "CreateConstraintInput", "Parameters"),
            type = "string",
            name = "Parameters",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "CreateConstraintInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateConstraintInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        IdempotencyToken = schema.new({
            id = id.from(_N, "CreateConstraintInput", "IdempotencyToken"),
            type = "string",
            name = "IdempotencyToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.ConstraintDetail = schema.new({
    id = id.from(_N, "ConstraintDetail"),
    type = "structure",
    members = {
        ConstraintId = schema.new({
            id = id.from(_N, "ConstraintDetail", "ConstraintId"),
            type = "string",
            name = "ConstraintId",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "ConstraintDetail", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ConstraintDetail", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Owner = schema.new({
            id = id.from(_N, "ConstraintDetail", "Owner"),
            type = "string",
            name = "Owner",
            target_id = prelude.String.id,
        }),
        ProductId = schema.new({
            id = id.from(_N, "ConstraintDetail", "ProductId"),
            type = "string",
            name = "ProductId",
            target_id = prelude.String.id,
        }),
        PortfolioId = schema.new({
            id = id.from(_N, "ConstraintDetail", "PortfolioId"),
            type = "string",
            name = "PortfolioId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateConstraintOutput = schema.new({
    id = id.from(_N, "CreateConstraintOutput"),
    type = "structure",
    members = {
        ConstraintDetail = schema.new({
            id = id.from(_N, "CreateConstraintOutput", "ConstraintDetail"),
            type = "structure",
            name = "ConstraintDetail",
            target_id = id.from(_N, "ConstraintDetail"),
            target = M.ConstraintDetail,
        }),
        ConstraintParameters = schema.new({
            id = id.from(_N, "CreateConstraintOutput", "ConstraintParameters"),
            type = "string",
            name = "ConstraintParameters",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "CreateConstraintOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.CreatePortfolioInput = schema.new({
    id = id.from(_N, "CreatePortfolioInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "CreatePortfolioInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        DisplayName = schema.new({
            id = id.from(_N, "CreatePortfolioInput", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreatePortfolioInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        ProviderName = schema.new({
            id = id.from(_N, "CreatePortfolioInput", "ProviderName"),
            type = "string",
            name = "ProviderName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreatePortfolioInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        IdempotencyToken = schema.new({
            id = id.from(_N, "CreatePortfolioInput", "IdempotencyToken"),
            type = "string",
            name = "IdempotencyToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.PortfolioDetail = schema.new({
    id = id.from(_N, "PortfolioDetail"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "PortfolioDetail", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        ARN = schema.new({
            id = id.from(_N, "PortfolioDetail", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        DisplayName = schema.new({
            id = id.from(_N, "PortfolioDetail", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "PortfolioDetail", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CreatedTime = schema.new({
            id = id.from(_N, "PortfolioDetail", "CreatedTime"),
            type = "timestamp",
            name = "CreatedTime",
            target_id = prelude.Timestamp.id,
        }),
        ProviderName = schema.new({
            id = id.from(_N, "PortfolioDetail", "ProviderName"),
            type = "string",
            name = "ProviderName",
            target_id = prelude.String.id,
        }),
    },
})

M.CreatePortfolioOutput = schema.new({
    id = id.from(_N, "CreatePortfolioOutput"),
    type = "structure",
    members = {
        PortfolioDetail = schema.new({
            id = id.from(_N, "CreatePortfolioOutput", "PortfolioDetail"),
            type = "structure",
            name = "PortfolioDetail",
            target_id = id.from(_N, "PortfolioDetail"),
            target = M.PortfolioDetail,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreatePortfolioOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.OrganizationNode = schema.new({
    id = id.from(_N, "OrganizationNode"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "OrganizationNode", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "OrganizationNode", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.CreatePortfolioShareInput = schema.new({
    id = id.from(_N, "CreatePortfolioShareInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "CreatePortfolioShareInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        PortfolioId = schema.new({
            id = id.from(_N, "CreatePortfolioShareInput", "PortfolioId"),
            type = "string",
            name = "PortfolioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccountId = schema.new({
            id = id.from(_N, "CreatePortfolioShareInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        OrganizationNode = schema.new({
            id = id.from(_N, "CreatePortfolioShareInput", "OrganizationNode"),
            type = "structure",
            name = "OrganizationNode",
            target_id = id.from(_N, "OrganizationNode"),
            target = M.OrganizationNode,
        }),
        ShareTagOptions = schema.new({
            id = id.from(_N, "CreatePortfolioShareInput", "ShareTagOptions"),
            type = "boolean",
            name = "ShareTagOptions",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        SharePrincipals = schema.new({
            id = id.from(_N, "CreatePortfolioShareInput", "SharePrincipals"),
            type = "boolean",
            name = "SharePrincipals",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.CreatePortfolioShareOutput = schema.new({
    id = id.from(_N, "CreatePortfolioShareOutput"),
    type = "structure",
    members = {
        PortfolioShareToken = schema.new({
            id = id.from(_N, "CreatePortfolioShareOutput", "PortfolioShareToken"),
            type = "string",
            name = "PortfolioShareToken",
            target_id = prelude.String.id,
        }),
    },
})

M.OperationNotSupportedException = schema.new({
    id = id.from(_N, "OperationNotSupportedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "OperationNotSupportedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ProvisioningArtifactProperties = schema.new({
    id = id.from(_N, "ProvisioningArtifactProperties"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ProvisioningArtifactProperties", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ProvisioningArtifactProperties", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Info = schema.new({
            id = id.from(_N, "ProvisioningArtifactProperties", "Info"),
            type = "map",
            name = "Info",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        Type = schema.new({
            id = id.from(_N, "ProvisioningArtifactProperties", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        DisableTemplateValidation = schema.new({
            id = id.from(_N, "ProvisioningArtifactProperties", "DisableTemplateValidation"),
            type = "boolean",
            name = "DisableTemplateValidation",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.CodeStarParameters = schema.new({
    id = id.from(_N, "CodeStarParameters"),
    type = "structure",
    members = {
        ConnectionArn = schema.new({
            id = id.from(_N, "CodeStarParameters", "ConnectionArn"),
            type = "string",
            name = "ConnectionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Repository = schema.new({
            id = id.from(_N, "CodeStarParameters", "Repository"),
            type = "string",
            name = "Repository",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Branch = schema.new({
            id = id.from(_N, "CodeStarParameters", "Branch"),
            type = "string",
            name = "Branch",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ArtifactPath = schema.new({
            id = id.from(_N, "CodeStarParameters", "ArtifactPath"),
            type = "string",
            name = "ArtifactPath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SourceConnectionParameters = schema.new({
    id = id.from(_N, "SourceConnectionParameters"),
    type = "structure",
    members = {
        CodeStar = schema.new({
            id = id.from(_N, "SourceConnectionParameters", "CodeStar"),
            type = "structure",
            name = "CodeStar",
            target_id = id.from(_N, "CodeStarParameters"),
            target = M.CodeStarParameters,
        }),
    },
})

M.SourceConnection = schema.new({
    id = id.from(_N, "SourceConnection"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "SourceConnection", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        ConnectionParameters = schema.new({
            id = id.from(_N, "SourceConnection", "ConnectionParameters"),
            type = "structure",
            name = "ConnectionParameters",
            target_id = id.from(_N, "SourceConnectionParameters"),
            target = M.SourceConnectionParameters,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateProductInput = schema.new({
    id = id.from(_N, "CreateProductInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "CreateProductInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateProductInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Owner = schema.new({
            id = id.from(_N, "CreateProductInput", "Owner"),
            type = "string",
            name = "Owner",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateProductInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Distributor = schema.new({
            id = id.from(_N, "CreateProductInput", "Distributor"),
            type = "string",
            name = "Distributor",
            target_id = prelude.String.id,
        }),
        SupportDescription = schema.new({
            id = id.from(_N, "CreateProductInput", "SupportDescription"),
            type = "string",
            name = "SupportDescription",
            target_id = prelude.String.id,
        }),
        SupportEmail = schema.new({
            id = id.from(_N, "CreateProductInput", "SupportEmail"),
            type = "string",
            name = "SupportEmail",
            target_id = prelude.String.id,
        }),
        SupportUrl = schema.new({
            id = id.from(_N, "CreateProductInput", "SupportUrl"),
            type = "string",
            name = "SupportUrl",
            target_id = prelude.String.id,
        }),
        ProductType = schema.new({
            id = id.from(_N, "CreateProductInput", "ProductType"),
            type = "string",
            name = "ProductType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateProductInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ProvisioningArtifactParameters = schema.new({
            id = id.from(_N, "CreateProductInput", "ProvisioningArtifactParameters"),
            type = "structure",
            name = "ProvisioningArtifactParameters",
            target_id = id.from(_N, "ProvisioningArtifactProperties"),
            target = M.ProvisioningArtifactProperties,
        }),
        IdempotencyToken = schema.new({
            id = id.from(_N, "CreateProductInput", "IdempotencyToken"),
            type = "string",
            name = "IdempotencyToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        SourceConnection = schema.new({
            id = id.from(_N, "CreateProductInput", "SourceConnection"),
            type = "structure",
            name = "SourceConnection",
            target_id = id.from(_N, "SourceConnection"),
            target = M.SourceConnection,
        }),
    },
})

M.ProductViewSummary = schema.new({
    id = id.from(_N, "ProductViewSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ProductViewSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        ProductId = schema.new({
            id = id.from(_N, "ProductViewSummary", "ProductId"),
            type = "string",
            name = "ProductId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ProductViewSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Owner = schema.new({
            id = id.from(_N, "ProductViewSummary", "Owner"),
            type = "string",
            name = "Owner",
            target_id = prelude.String.id,
        }),
        ShortDescription = schema.new({
            id = id.from(_N, "ProductViewSummary", "ShortDescription"),
            type = "string",
            name = "ShortDescription",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "ProductViewSummary", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Distributor = schema.new({
            id = id.from(_N, "ProductViewSummary", "Distributor"),
            type = "string",
            name = "Distributor",
            target_id = prelude.String.id,
        }),
        HasDefaultPath = schema.new({
            id = id.from(_N, "ProductViewSummary", "HasDefaultPath"),
            type = "boolean",
            name = "HasDefaultPath",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        SupportEmail = schema.new({
            id = id.from(_N, "ProductViewSummary", "SupportEmail"),
            type = "string",
            name = "SupportEmail",
            target_id = prelude.String.id,
        }),
        SupportDescription = schema.new({
            id = id.from(_N, "ProductViewSummary", "SupportDescription"),
            type = "string",
            name = "SupportDescription",
            target_id = prelude.String.id,
        }),
        SupportUrl = schema.new({
            id = id.from(_N, "ProductViewSummary", "SupportUrl"),
            type = "string",
            name = "SupportUrl",
            target_id = prelude.String.id,
        }),
    },
})

M.LastSync = schema.new({
    id = id.from(_N, "LastSync"),
    type = "structure",
    members = {
        LastSyncTime = schema.new({
            id = id.from(_N, "LastSync", "LastSyncTime"),
            type = "timestamp",
            name = "LastSyncTime",
            target_id = prelude.Timestamp.id,
        }),
        LastSyncStatus = schema.new({
            id = id.from(_N, "LastSync", "LastSyncStatus"),
            type = "string",
            name = "LastSyncStatus",
            target_id = prelude.String.id,
        }),
        LastSyncStatusMessage = schema.new({
            id = id.from(_N, "LastSync", "LastSyncStatusMessage"),
            type = "string",
            name = "LastSyncStatusMessage",
            target_id = prelude.String.id,
        }),
        LastSuccessfulSyncTime = schema.new({
            id = id.from(_N, "LastSync", "LastSuccessfulSyncTime"),
            type = "timestamp",
            name = "LastSuccessfulSyncTime",
            target_id = prelude.Timestamp.id,
        }),
        LastSuccessfulSyncProvisioningArtifactId = schema.new({
            id = id.from(_N, "LastSync", "LastSuccessfulSyncProvisioningArtifactId"),
            type = "string",
            name = "LastSuccessfulSyncProvisioningArtifactId",
            target_id = prelude.String.id,
        }),
    },
})

M.SourceConnectionDetail = schema.new({
    id = id.from(_N, "SourceConnectionDetail"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "SourceConnectionDetail", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        ConnectionParameters = schema.new({
            id = id.from(_N, "SourceConnectionDetail", "ConnectionParameters"),
            type = "structure",
            name = "ConnectionParameters",
            target_id = id.from(_N, "SourceConnectionParameters"),
            target = M.SourceConnectionParameters,
        }),
        LastSync = schema.new({
            id = id.from(_N, "SourceConnectionDetail", "LastSync"),
            type = "structure",
            name = "LastSync",
            target_id = id.from(_N, "LastSync"),
            target = M.LastSync,
        }),
    },
})

M.ProductViewDetail = schema.new({
    id = id.from(_N, "ProductViewDetail"),
    type = "structure",
    members = {
        ProductViewSummary = schema.new({
            id = id.from(_N, "ProductViewDetail", "ProductViewSummary"),
            type = "structure",
            name = "ProductViewSummary",
            target_id = id.from(_N, "ProductViewSummary"),
            target = M.ProductViewSummary,
        }),
        Status = schema.new({
            id = id.from(_N, "ProductViewDetail", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        ProductARN = schema.new({
            id = id.from(_N, "ProductViewDetail", "ProductARN"),
            type = "string",
            name = "ProductARN",
            target_id = prelude.String.id,
        }),
        CreatedTime = schema.new({
            id = id.from(_N, "ProductViewDetail", "CreatedTime"),
            type = "timestamp",
            name = "CreatedTime",
            target_id = prelude.Timestamp.id,
        }),
        SourceConnection = schema.new({
            id = id.from(_N, "ProductViewDetail", "SourceConnection"),
            type = "structure",
            name = "SourceConnection",
            target_id = id.from(_N, "SourceConnectionDetail"),
            target = M.SourceConnectionDetail,
        }),
    },
})

M.ProvisioningArtifactDetail = schema.new({
    id = id.from(_N, "ProvisioningArtifactDetail"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ProvisioningArtifactDetail", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ProvisioningArtifactDetail", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ProvisioningArtifactDetail", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "ProvisioningArtifactDetail", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        CreatedTime = schema.new({
            id = id.from(_N, "ProvisioningArtifactDetail", "CreatedTime"),
            type = "timestamp",
            name = "CreatedTime",
            target_id = prelude.Timestamp.id,
        }),
        Active = schema.new({
            id = id.from(_N, "ProvisioningArtifactDetail", "Active"),
            type = "boolean",
            name = "Active",
            target_id = prelude.Boolean.id,
        }),
        Guidance = schema.new({
            id = id.from(_N, "ProvisioningArtifactDetail", "Guidance"),
            type = "string",
            name = "Guidance",
            target_id = prelude.String.id,
        }),
        SourceRevision = schema.new({
            id = id.from(_N, "ProvisioningArtifactDetail", "SourceRevision"),
            type = "string",
            name = "SourceRevision",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateProductOutput = schema.new({
    id = id.from(_N, "CreateProductOutput"),
    type = "structure",
    members = {
        ProductViewDetail = schema.new({
            id = id.from(_N, "CreateProductOutput", "ProductViewDetail"),
            type = "structure",
            name = "ProductViewDetail",
            target_id = id.from(_N, "ProductViewDetail"),
            target = M.ProductViewDetail,
        }),
        ProvisioningArtifactDetail = schema.new({
            id = id.from(_N, "CreateProductOutput", "ProvisioningArtifactDetail"),
            type = "structure",
            name = "ProvisioningArtifactDetail",
            target_id = id.from(_N, "ProvisioningArtifactDetail"),
            target = M.ProvisioningArtifactDetail,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateProductOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.UpdateProvisioningParameter = schema.new({
    id = id.from(_N, "UpdateProvisioningParameter"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "UpdateProvisioningParameter", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "UpdateProvisioningParameter", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
        UsePreviousValue = schema.new({
            id = id.from(_N, "UpdateProvisioningParameter", "UsePreviousValue"),
            type = "boolean",
            name = "UsePreviousValue",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.CreateProvisionedProductPlanInput = schema.new({
    id = id.from(_N, "CreateProvisionedProductPlanInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "CreateProvisionedProductPlanInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        PlanName = schema.new({
            id = id.from(_N, "CreateProvisionedProductPlanInput", "PlanName"),
            type = "string",
            name = "PlanName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PlanType = schema.new({
            id = id.from(_N, "CreateProvisionedProductPlanInput", "PlanType"),
            type = "string",
            name = "PlanType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NotificationArns = schema.new({
            id = id.from(_N, "CreateProvisionedProductPlanInput", "NotificationArns"),
            type = "list",
            name = "NotificationArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        PathId = schema.new({
            id = id.from(_N, "CreateProvisionedProductPlanInput", "PathId"),
            type = "string",
            name = "PathId",
            target_id = prelude.String.id,
        }),
        ProductId = schema.new({
            id = id.from(_N, "CreateProvisionedProductPlanInput", "ProductId"),
            type = "string",
            name = "ProductId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProvisionedProductName = schema.new({
            id = id.from(_N, "CreateProvisionedProductPlanInput", "ProvisionedProductName"),
            type = "string",
            name = "ProvisionedProductName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProvisioningArtifactId = schema.new({
            id = id.from(_N, "CreateProvisionedProductPlanInput", "ProvisioningArtifactId"),
            type = "string",
            name = "ProvisioningArtifactId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProvisioningParameters = schema.new({
            id = id.from(_N, "CreateProvisionedProductPlanInput", "ProvisioningParameters"),
            type = "list",
            name = "ProvisioningParameters",
            target_id = prelude.Document.id,
            list_member = M.UpdateProvisioningParameter,
        }),
        IdempotencyToken = schema.new({
            id = id.from(_N, "CreateProvisionedProductPlanInput", "IdempotencyToken"),
            type = "string",
            name = "IdempotencyToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateProvisionedProductPlanInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateProvisionedProductPlanOutput = schema.new({
    id = id.from(_N, "CreateProvisionedProductPlanOutput"),
    type = "structure",
    members = {
        PlanName = schema.new({
            id = id.from(_N, "CreateProvisionedProductPlanOutput", "PlanName"),
            type = "string",
            name = "PlanName",
            target_id = prelude.String.id,
        }),
        PlanId = schema.new({
            id = id.from(_N, "CreateProvisionedProductPlanOutput", "PlanId"),
            type = "string",
            name = "PlanId",
            target_id = prelude.String.id,
        }),
        ProvisionProductId = schema.new({
            id = id.from(_N, "CreateProvisionedProductPlanOutput", "ProvisionProductId"),
            type = "string",
            name = "ProvisionProductId",
            target_id = prelude.String.id,
        }),
        ProvisionedProductName = schema.new({
            id = id.from(_N, "CreateProvisionedProductPlanOutput", "ProvisionedProductName"),
            type = "string",
            name = "ProvisionedProductName",
            target_id = prelude.String.id,
        }),
        ProvisioningArtifactId = schema.new({
            id = id.from(_N, "CreateProvisionedProductPlanOutput", "ProvisioningArtifactId"),
            type = "string",
            name = "ProvisioningArtifactId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateProvisioningArtifactInput = schema.new({
    id = id.from(_N, "CreateProvisioningArtifactInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "CreateProvisioningArtifactInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        ProductId = schema.new({
            id = id.from(_N, "CreateProvisioningArtifactInput", "ProductId"),
            type = "string",
            name = "ProductId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Parameters = schema.new({
            id = id.from(_N, "CreateProvisioningArtifactInput", "Parameters"),
            type = "structure",
            name = "Parameters",
            target_id = id.from(_N, "ProvisioningArtifactProperties"),
            target = M.ProvisioningArtifactProperties,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IdempotencyToken = schema.new({
            id = id.from(_N, "CreateProvisioningArtifactInput", "IdempotencyToken"),
            type = "string",
            name = "IdempotencyToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateProvisioningArtifactOutput = schema.new({
    id = id.from(_N, "CreateProvisioningArtifactOutput"),
    type = "structure",
    members = {
        ProvisioningArtifactDetail = schema.new({
            id = id.from(_N, "CreateProvisioningArtifactOutput", "ProvisioningArtifactDetail"),
            type = "structure",
            name = "ProvisioningArtifactDetail",
            target_id = id.from(_N, "ProvisioningArtifactDetail"),
            target = M.ProvisioningArtifactDetail,
        }),
        Info = schema.new({
            id = id.from(_N, "CreateProvisioningArtifactOutput", "Info"),
            type = "map",
            name = "Info",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        Status = schema.new({
            id = id.from(_N, "CreateProvisioningArtifactOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateServiceActionInput = schema.new({
    id = id.from(_N, "CreateServiceActionInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateServiceActionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DefinitionType = schema.new({
            id = id.from(_N, "CreateServiceActionInput", "DefinitionType"),
            type = "string",
            name = "DefinitionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Definition = schema.new({
            id = id.from(_N, "CreateServiceActionInput", "Definition"),
            type = "map",
            name = "Definition",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateServiceActionInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        AcceptLanguage = schema.new({
            id = id.from(_N, "CreateServiceActionInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        IdempotencyToken = schema.new({
            id = id.from(_N, "CreateServiceActionInput", "IdempotencyToken"),
            type = "string",
            name = "IdempotencyToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.ServiceActionSummary = schema.new({
    id = id.from(_N, "ServiceActionSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ServiceActionSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ServiceActionSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ServiceActionSummary", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DefinitionType = schema.new({
            id = id.from(_N, "ServiceActionSummary", "DefinitionType"),
            type = "string",
            name = "DefinitionType",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceActionDetail = schema.new({
    id = id.from(_N, "ServiceActionDetail"),
    type = "structure",
    members = {
        ServiceActionSummary = schema.new({
            id = id.from(_N, "ServiceActionDetail", "ServiceActionSummary"),
            type = "structure",
            name = "ServiceActionSummary",
            target_id = id.from(_N, "ServiceActionSummary"),
            target = M.ServiceActionSummary,
        }),
        Definition = schema.new({
            id = id.from(_N, "ServiceActionDetail", "Definition"),
            type = "map",
            name = "Definition",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateServiceActionOutput = schema.new({
    id = id.from(_N, "CreateServiceActionOutput"),
    type = "structure",
    members = {
        ServiceActionDetail = schema.new({
            id = id.from(_N, "CreateServiceActionOutput", "ServiceActionDetail"),
            type = "structure",
            name = "ServiceActionDetail",
            target_id = id.from(_N, "ServiceActionDetail"),
            target = M.ServiceActionDetail,
        }),
    },
})

M.CreateTagOptionInput = schema.new({
    id = id.from(_N, "CreateTagOptionInput"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "CreateTagOptionInput", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "CreateTagOptionInput", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagOptionDetail = schema.new({
    id = id.from(_N, "TagOptionDetail"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "TagOptionDetail", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "TagOptionDetail", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
        Active = schema.new({
            id = id.from(_N, "TagOptionDetail", "Active"),
            type = "boolean",
            name = "Active",
            target_id = prelude.Boolean.id,
        }),
        Id = schema.new({
            id = id.from(_N, "TagOptionDetail", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Owner = schema.new({
            id = id.from(_N, "TagOptionDetail", "Owner"),
            type = "string",
            name = "Owner",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateTagOptionOutput = schema.new({
    id = id.from(_N, "CreateTagOptionOutput"),
    type = "structure",
    members = {
        TagOptionDetail = schema.new({
            id = id.from(_N, "CreateTagOptionOutput", "TagOptionDetail"),
            type = "structure",
            name = "TagOptionDetail",
            target_id = id.from(_N, "TagOptionDetail"),
            target = M.TagOptionDetail,
        }),
    },
})

M.DeleteConstraintInput = schema.new({
    id = id.from(_N, "DeleteConstraintInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "DeleteConstraintInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "DeleteConstraintInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteConstraintOutput = schema.new({
    id = id.from(_N, "DeleteConstraintOutput"),
    type = "structure",
})

M.DeletePortfolioInput = schema.new({
    id = id.from(_N, "DeletePortfolioInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "DeletePortfolioInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "DeletePortfolioInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeletePortfolioOutput = schema.new({
    id = id.from(_N, "DeletePortfolioOutput"),
    type = "structure",
})

M.ResourceInUseException = schema.new({
    id = id.from(_N, "ResourceInUseException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceInUseException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeletePortfolioShareInput = schema.new({
    id = id.from(_N, "DeletePortfolioShareInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "DeletePortfolioShareInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        PortfolioId = schema.new({
            id = id.from(_N, "DeletePortfolioShareInput", "PortfolioId"),
            type = "string",
            name = "PortfolioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccountId = schema.new({
            id = id.from(_N, "DeletePortfolioShareInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        OrganizationNode = schema.new({
            id = id.from(_N, "DeletePortfolioShareInput", "OrganizationNode"),
            type = "structure",
            name = "OrganizationNode",
            target_id = id.from(_N, "OrganizationNode"),
            target = M.OrganizationNode,
        }),
    },
})

M.DeletePortfolioShareOutput = schema.new({
    id = id.from(_N, "DeletePortfolioShareOutput"),
    type = "structure",
    members = {
        PortfolioShareToken = schema.new({
            id = id.from(_N, "DeletePortfolioShareOutput", "PortfolioShareToken"),
            type = "string",
            name = "PortfolioShareToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteProductInput = schema.new({
    id = id.from(_N, "DeleteProductInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "DeleteProductInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "DeleteProductInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteProductOutput = schema.new({
    id = id.from(_N, "DeleteProductOutput"),
    type = "structure",
})

M.DeleteProvisionedProductPlanInput = schema.new({
    id = id.from(_N, "DeleteProvisionedProductPlanInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "DeleteProvisionedProductPlanInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        PlanId = schema.new({
            id = id.from(_N, "DeleteProvisionedProductPlanInput", "PlanId"),
            type = "string",
            name = "PlanId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IgnoreErrors = schema.new({
            id = id.from(_N, "DeleteProvisionedProductPlanInput", "IgnoreErrors"),
            type = "boolean",
            name = "IgnoreErrors",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DeleteProvisionedProductPlanOutput = schema.new({
    id = id.from(_N, "DeleteProvisionedProductPlanOutput"),
    type = "structure",
})

M.DeleteProvisioningArtifactInput = schema.new({
    id = id.from(_N, "DeleteProvisioningArtifactInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "DeleteProvisioningArtifactInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        ProductId = schema.new({
            id = id.from(_N, "DeleteProvisioningArtifactInput", "ProductId"),
            type = "string",
            name = "ProductId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProvisioningArtifactId = schema.new({
            id = id.from(_N, "DeleteProvisioningArtifactInput", "ProvisioningArtifactId"),
            type = "string",
            name = "ProvisioningArtifactId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteProvisioningArtifactOutput = schema.new({
    id = id.from(_N, "DeleteProvisioningArtifactOutput"),
    type = "structure",
})

M.DeleteServiceActionInput = schema.new({
    id = id.from(_N, "DeleteServiceActionInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteServiceActionInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AcceptLanguage = schema.new({
            id = id.from(_N, "DeleteServiceActionInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        IdempotencyToken = schema.new({
            id = id.from(_N, "DeleteServiceActionInput", "IdempotencyToken"),
            type = "string",
            name = "IdempotencyToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeleteServiceActionOutput = schema.new({
    id = id.from(_N, "DeleteServiceActionOutput"),
    type = "structure",
})

M.DeleteTagOptionInput = schema.new({
    id = id.from(_N, "DeleteTagOptionInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteTagOptionInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "id" },
            },
        }),
    },
})

M.DeleteTagOptionOutput = schema.new({
    id = id.from(_N, "DeleteTagOptionOutput"),
    type = "structure",
})

M.DescribeConstraintInput = schema.new({
    id = id.from(_N, "DescribeConstraintInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "DescribeConstraintInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "DescribeConstraintInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeConstraintOutput = schema.new({
    id = id.from(_N, "DescribeConstraintOutput"),
    type = "structure",
    members = {
        ConstraintDetail = schema.new({
            id = id.from(_N, "DescribeConstraintOutput", "ConstraintDetail"),
            type = "structure",
            name = "ConstraintDetail",
            target_id = id.from(_N, "ConstraintDetail"),
            target = M.ConstraintDetail,
        }),
        ConstraintParameters = schema.new({
            id = id.from(_N, "DescribeConstraintOutput", "ConstraintParameters"),
            type = "string",
            name = "ConstraintParameters",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DescribeConstraintOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeCopyProductStatusInput = schema.new({
    id = id.from(_N, "DescribeCopyProductStatusInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "DescribeCopyProductStatusInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        CopyProductToken = schema.new({
            id = id.from(_N, "DescribeCopyProductStatusInput", "CopyProductToken"),
            type = "string",
            name = "CopyProductToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeCopyProductStatusOutput = schema.new({
    id = id.from(_N, "DescribeCopyProductStatusOutput"),
    type = "structure",
    members = {
        CopyProductStatus = schema.new({
            id = id.from(_N, "DescribeCopyProductStatusOutput", "CopyProductStatus"),
            type = "string",
            name = "CopyProductStatus",
            target_id = prelude.String.id,
        }),
        TargetProductId = schema.new({
            id = id.from(_N, "DescribeCopyProductStatusOutput", "TargetProductId"),
            type = "string",
            name = "TargetProductId",
            target_id = prelude.String.id,
        }),
        StatusDetail = schema.new({
            id = id.from(_N, "DescribeCopyProductStatusOutput", "StatusDetail"),
            type = "string",
            name = "StatusDetail",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribePortfolioInput = schema.new({
    id = id.from(_N, "DescribePortfolioInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "DescribePortfolioInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "DescribePortfolioInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BudgetDetail = schema.new({
    id = id.from(_N, "BudgetDetail"),
    type = "structure",
    members = {
        BudgetName = schema.new({
            id = id.from(_N, "BudgetDetail", "BudgetName"),
            type = "string",
            name = "BudgetName",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribePortfolioOutput = schema.new({
    id = id.from(_N, "DescribePortfolioOutput"),
    type = "structure",
    members = {
        PortfolioDetail = schema.new({
            id = id.from(_N, "DescribePortfolioOutput", "PortfolioDetail"),
            type = "structure",
            name = "PortfolioDetail",
            target_id = id.from(_N, "PortfolioDetail"),
            target = M.PortfolioDetail,
        }),
        Tags = schema.new({
            id = id.from(_N, "DescribePortfolioOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        TagOptions = schema.new({
            id = id.from(_N, "DescribePortfolioOutput", "TagOptions"),
            type = "list",
            name = "TagOptions",
            target_id = prelude.Document.id,
            list_member = M.TagOptionDetail,
        }),
        Budgets = schema.new({
            id = id.from(_N, "DescribePortfolioOutput", "Budgets"),
            type = "list",
            name = "Budgets",
            target_id = prelude.Document.id,
            list_member = M.BudgetDetail,
        }),
    },
})

M.DescribePortfolioSharesInput = schema.new({
    id = id.from(_N, "DescribePortfolioSharesInput"),
    type = "structure",
    members = {
        PortfolioId = schema.new({
            id = id.from(_N, "DescribePortfolioSharesInput", "PortfolioId"),
            type = "string",
            name = "PortfolioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "DescribePortfolioSharesInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PageToken = schema.new({
            id = id.from(_N, "DescribePortfolioSharesInput", "PageToken"),
            type = "string",
            name = "PageToken",
            target_id = prelude.String.id,
        }),
        PageSize = schema.new({
            id = id.from(_N, "DescribePortfolioSharesInput", "PageSize"),
            type = "integer",
            name = "PageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.PortfolioShareDetail = schema.new({
    id = id.from(_N, "PortfolioShareDetail"),
    type = "structure",
    members = {
        PrincipalId = schema.new({
            id = id.from(_N, "PortfolioShareDetail", "PrincipalId"),
            type = "string",
            name = "PrincipalId",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "PortfolioShareDetail", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Accepted = schema.new({
            id = id.from(_N, "PortfolioShareDetail", "Accepted"),
            type = "boolean",
            name = "Accepted",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        ShareTagOptions = schema.new({
            id = id.from(_N, "PortfolioShareDetail", "ShareTagOptions"),
            type = "boolean",
            name = "ShareTagOptions",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        SharePrincipals = schema.new({
            id = id.from(_N, "PortfolioShareDetail", "SharePrincipals"),
            type = "boolean",
            name = "SharePrincipals",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DescribePortfolioSharesOutput = schema.new({
    id = id.from(_N, "DescribePortfolioSharesOutput"),
    type = "structure",
    members = {
        NextPageToken = schema.new({
            id = id.from(_N, "DescribePortfolioSharesOutput", "NextPageToken"),
            type = "string",
            name = "NextPageToken",
            target_id = prelude.String.id,
        }),
        PortfolioShareDetails = schema.new({
            id = id.from(_N, "DescribePortfolioSharesOutput", "PortfolioShareDetails"),
            type = "list",
            name = "PortfolioShareDetails",
            target_id = prelude.Document.id,
            list_member = M.PortfolioShareDetail,
        }),
    },
})

M.DescribePortfolioShareStatusInput = schema.new({
    id = id.from(_N, "DescribePortfolioShareStatusInput"),
    type = "structure",
    members = {
        PortfolioShareToken = schema.new({
            id = id.from(_N, "DescribePortfolioShareStatusInput", "PortfolioShareToken"),
            type = "string",
            name = "PortfolioShareToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ShareError = schema.new({
    id = id.from(_N, "ShareError"),
    type = "structure",
    members = {
        Accounts = schema.new({
            id = id.from(_N, "ShareError", "Accounts"),
            type = "list",
            name = "Accounts",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Message = schema.new({
            id = id.from(_N, "ShareError", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        Error = schema.new({
            id = id.from(_N, "ShareError", "Error"),
            type = "string",
            name = "Error",
            target_id = prelude.String.id,
        }),
    },
})

M.ShareDetails = schema.new({
    id = id.from(_N, "ShareDetails"),
    type = "structure",
    members = {
        SuccessfulShares = schema.new({
            id = id.from(_N, "ShareDetails", "SuccessfulShares"),
            type = "list",
            name = "SuccessfulShares",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ShareErrors = schema.new({
            id = id.from(_N, "ShareDetails", "ShareErrors"),
            type = "list",
            name = "ShareErrors",
            target_id = prelude.Document.id,
            list_member = M.ShareError,
        }),
    },
})

M.DescribePortfolioShareStatusOutput = schema.new({
    id = id.from(_N, "DescribePortfolioShareStatusOutput"),
    type = "structure",
    members = {
        PortfolioShareToken = schema.new({
            id = id.from(_N, "DescribePortfolioShareStatusOutput", "PortfolioShareToken"),
            type = "string",
            name = "PortfolioShareToken",
            target_id = prelude.String.id,
        }),
        PortfolioId = schema.new({
            id = id.from(_N, "DescribePortfolioShareStatusOutput", "PortfolioId"),
            type = "string",
            name = "PortfolioId",
            target_id = prelude.String.id,
        }),
        OrganizationNodeValue = schema.new({
            id = id.from(_N, "DescribePortfolioShareStatusOutput", "OrganizationNodeValue"),
            type = "string",
            name = "OrganizationNodeValue",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DescribePortfolioShareStatusOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        ShareDetails = schema.new({
            id = id.from(_N, "DescribePortfolioShareStatusOutput", "ShareDetails"),
            type = "structure",
            name = "ShareDetails",
            target_id = id.from(_N, "ShareDetails"),
            target = M.ShareDetails,
        }),
    },
})

M.DescribeProductInput = schema.new({
    id = id.from(_N, "DescribeProductInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "DescribeProductInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "DescribeProductInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "DescribeProductInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.LaunchPath = schema.new({
    id = id.from(_N, "LaunchPath"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "LaunchPath", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "LaunchPath", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.ProvisioningArtifact = schema.new({
    id = id.from(_N, "ProvisioningArtifact"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ProvisioningArtifact", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ProvisioningArtifact", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ProvisioningArtifact", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CreatedTime = schema.new({
            id = id.from(_N, "ProvisioningArtifact", "CreatedTime"),
            type = "timestamp",
            name = "CreatedTime",
            target_id = prelude.Timestamp.id,
        }),
        Guidance = schema.new({
            id = id.from(_N, "ProvisioningArtifact", "Guidance"),
            type = "string",
            name = "Guidance",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeProductOutput = schema.new({
    id = id.from(_N, "DescribeProductOutput"),
    type = "structure",
    members = {
        ProductViewSummary = schema.new({
            id = id.from(_N, "DescribeProductOutput", "ProductViewSummary"),
            type = "structure",
            name = "ProductViewSummary",
            target_id = id.from(_N, "ProductViewSummary"),
            target = M.ProductViewSummary,
        }),
        ProvisioningArtifacts = schema.new({
            id = id.from(_N, "DescribeProductOutput", "ProvisioningArtifacts"),
            type = "list",
            name = "ProvisioningArtifacts",
            target_id = prelude.Document.id,
            list_member = M.ProvisioningArtifact,
        }),
        Budgets = schema.new({
            id = id.from(_N, "DescribeProductOutput", "Budgets"),
            type = "list",
            name = "Budgets",
            target_id = prelude.Document.id,
            list_member = M.BudgetDetail,
        }),
        LaunchPaths = schema.new({
            id = id.from(_N, "DescribeProductOutput", "LaunchPaths"),
            type = "list",
            name = "LaunchPaths",
            target_id = prelude.Document.id,
            list_member = M.LaunchPath,
        }),
    },
})

M.DescribeProductAsAdminInput = schema.new({
    id = id.from(_N, "DescribeProductAsAdminInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "DescribeProductAsAdminInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "DescribeProductAsAdminInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "DescribeProductAsAdminInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        SourcePortfolioId = schema.new({
            id = id.from(_N, "DescribeProductAsAdminInput", "SourcePortfolioId"),
            type = "string",
            name = "SourcePortfolioId",
            target_id = prelude.String.id,
        }),
    },
})

M.ProvisioningArtifactSummary = schema.new({
    id = id.from(_N, "ProvisioningArtifactSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ProvisioningArtifactSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ProvisioningArtifactSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ProvisioningArtifactSummary", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CreatedTime = schema.new({
            id = id.from(_N, "ProvisioningArtifactSummary", "CreatedTime"),
            type = "timestamp",
            name = "CreatedTime",
            target_id = prelude.Timestamp.id,
        }),
        ProvisioningArtifactMetadata = schema.new({
            id = id.from(_N, "ProvisioningArtifactSummary", "ProvisioningArtifactMetadata"),
            type = "map",
            name = "ProvisioningArtifactMetadata",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.DescribeProductAsAdminOutput = schema.new({
    id = id.from(_N, "DescribeProductAsAdminOutput"),
    type = "structure",
    members = {
        ProductViewDetail = schema.new({
            id = id.from(_N, "DescribeProductAsAdminOutput", "ProductViewDetail"),
            type = "structure",
            name = "ProductViewDetail",
            target_id = id.from(_N, "ProductViewDetail"),
            target = M.ProductViewDetail,
        }),
        ProvisioningArtifactSummaries = schema.new({
            id = id.from(_N, "DescribeProductAsAdminOutput", "ProvisioningArtifactSummaries"),
            type = "list",
            name = "ProvisioningArtifactSummaries",
            target_id = prelude.Document.id,
            list_member = M.ProvisioningArtifactSummary,
        }),
        Tags = schema.new({
            id = id.from(_N, "DescribeProductAsAdminOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        TagOptions = schema.new({
            id = id.from(_N, "DescribeProductAsAdminOutput", "TagOptions"),
            type = "list",
            name = "TagOptions",
            target_id = prelude.Document.id,
            list_member = M.TagOptionDetail,
        }),
        Budgets = schema.new({
            id = id.from(_N, "DescribeProductAsAdminOutput", "Budgets"),
            type = "list",
            name = "Budgets",
            target_id = prelude.Document.id,
            list_member = M.BudgetDetail,
        }),
    },
})

M.DescribeProductViewInput = schema.new({
    id = id.from(_N, "DescribeProductViewInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "DescribeProductViewInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "DescribeProductViewInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeProductViewOutput = schema.new({
    id = id.from(_N, "DescribeProductViewOutput"),
    type = "structure",
    members = {
        ProductViewSummary = schema.new({
            id = id.from(_N, "DescribeProductViewOutput", "ProductViewSummary"),
            type = "structure",
            name = "ProductViewSummary",
            target_id = id.from(_N, "ProductViewSummary"),
            target = M.ProductViewSummary,
        }),
        ProvisioningArtifacts = schema.new({
            id = id.from(_N, "DescribeProductViewOutput", "ProvisioningArtifacts"),
            type = "list",
            name = "ProvisioningArtifacts",
            target_id = prelude.Document.id,
            list_member = M.ProvisioningArtifact,
        }),
    },
})

M.DescribeProvisionedProductInput = schema.new({
    id = id.from(_N, "DescribeProvisionedProductInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "DescribeProvisionedProductInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "DescribeProvisionedProductInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "DescribeProvisionedProductInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.CloudWatchDashboard = schema.new({
    id = id.from(_N, "CloudWatchDashboard"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CloudWatchDashboard", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.ProvisionedProductDetail = schema.new({
    id = id.from(_N, "ProvisionedProductDetail"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ProvisionedProductDetail", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "ProvisionedProductDetail", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "ProvisionedProductDetail", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "ProvisionedProductDetail", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ProvisionedProductDetail", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusMessage = schema.new({
            id = id.from(_N, "ProvisionedProductDetail", "StatusMessage"),
            type = "string",
            name = "StatusMessage",
            target_id = prelude.String.id,
        }),
        CreatedTime = schema.new({
            id = id.from(_N, "ProvisionedProductDetail", "CreatedTime"),
            type = "timestamp",
            name = "CreatedTime",
            target_id = prelude.Timestamp.id,
        }),
        IdempotencyToken = schema.new({
            id = id.from(_N, "ProvisionedProductDetail", "IdempotencyToken"),
            type = "string",
            name = "IdempotencyToken",
            target_id = prelude.String.id,
        }),
        LastRecordId = schema.new({
            id = id.from(_N, "ProvisionedProductDetail", "LastRecordId"),
            type = "string",
            name = "LastRecordId",
            target_id = prelude.String.id,
        }),
        LastProvisioningRecordId = schema.new({
            id = id.from(_N, "ProvisionedProductDetail", "LastProvisioningRecordId"),
            type = "string",
            name = "LastProvisioningRecordId",
            target_id = prelude.String.id,
        }),
        LastSuccessfulProvisioningRecordId = schema.new({
            id = id.from(_N, "ProvisionedProductDetail", "LastSuccessfulProvisioningRecordId"),
            type = "string",
            name = "LastSuccessfulProvisioningRecordId",
            target_id = prelude.String.id,
        }),
        ProductId = schema.new({
            id = id.from(_N, "ProvisionedProductDetail", "ProductId"),
            type = "string",
            name = "ProductId",
            target_id = prelude.String.id,
        }),
        ProvisioningArtifactId = schema.new({
            id = id.from(_N, "ProvisionedProductDetail", "ProvisioningArtifactId"),
            type = "string",
            name = "ProvisioningArtifactId",
            target_id = prelude.String.id,
        }),
        LaunchRoleArn = schema.new({
            id = id.from(_N, "ProvisionedProductDetail", "LaunchRoleArn"),
            type = "string",
            name = "LaunchRoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeProvisionedProductOutput = schema.new({
    id = id.from(_N, "DescribeProvisionedProductOutput"),
    type = "structure",
    members = {
        ProvisionedProductDetail = schema.new({
            id = id.from(_N, "DescribeProvisionedProductOutput", "ProvisionedProductDetail"),
            type = "structure",
            name = "ProvisionedProductDetail",
            target_id = id.from(_N, "ProvisionedProductDetail"),
            target = M.ProvisionedProductDetail,
        }),
        CloudWatchDashboards = schema.new({
            id = id.from(_N, "DescribeProvisionedProductOutput", "CloudWatchDashboards"),
            type = "list",
            name = "CloudWatchDashboards",
            target_id = prelude.Document.id,
            list_member = M.CloudWatchDashboard,
        }),
    },
})

M.DescribeProvisionedProductPlanInput = schema.new({
    id = id.from(_N, "DescribeProvisionedProductPlanInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "DescribeProvisionedProductPlanInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        PlanId = schema.new({
            id = id.from(_N, "DescribeProvisionedProductPlanInput", "PlanId"),
            type = "string",
            name = "PlanId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PageSize = schema.new({
            id = id.from(_N, "DescribeProvisionedProductPlanInput", "PageSize"),
            type = "integer",
            name = "PageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        PageToken = schema.new({
            id = id.from(_N, "DescribeProvisionedProductPlanInput", "PageToken"),
            type = "string",
            name = "PageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ProvisionedProductPlanDetails = schema.new({
    id = id.from(_N, "ProvisionedProductPlanDetails"),
    type = "structure",
    members = {
        CreatedTime = schema.new({
            id = id.from(_N, "ProvisionedProductPlanDetails", "CreatedTime"),
            type = "timestamp",
            name = "CreatedTime",
            target_id = prelude.Timestamp.id,
        }),
        PathId = schema.new({
            id = id.from(_N, "ProvisionedProductPlanDetails", "PathId"),
            type = "string",
            name = "PathId",
            target_id = prelude.String.id,
        }),
        ProductId = schema.new({
            id = id.from(_N, "ProvisionedProductPlanDetails", "ProductId"),
            type = "string",
            name = "ProductId",
            target_id = prelude.String.id,
        }),
        PlanName = schema.new({
            id = id.from(_N, "ProvisionedProductPlanDetails", "PlanName"),
            type = "string",
            name = "PlanName",
            target_id = prelude.String.id,
        }),
        PlanId = schema.new({
            id = id.from(_N, "ProvisionedProductPlanDetails", "PlanId"),
            type = "string",
            name = "PlanId",
            target_id = prelude.String.id,
        }),
        ProvisionProductId = schema.new({
            id = id.from(_N, "ProvisionedProductPlanDetails", "ProvisionProductId"),
            type = "string",
            name = "ProvisionProductId",
            target_id = prelude.String.id,
        }),
        ProvisionProductName = schema.new({
            id = id.from(_N, "ProvisionedProductPlanDetails", "ProvisionProductName"),
            type = "string",
            name = "ProvisionProductName",
            target_id = prelude.String.id,
        }),
        PlanType = schema.new({
            id = id.from(_N, "ProvisionedProductPlanDetails", "PlanType"),
            type = "string",
            name = "PlanType",
            target_id = prelude.String.id,
        }),
        ProvisioningArtifactId = schema.new({
            id = id.from(_N, "ProvisionedProductPlanDetails", "ProvisioningArtifactId"),
            type = "string",
            name = "ProvisioningArtifactId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ProvisionedProductPlanDetails", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        UpdatedTime = schema.new({
            id = id.from(_N, "ProvisionedProductPlanDetails", "UpdatedTime"),
            type = "timestamp",
            name = "UpdatedTime",
            target_id = prelude.Timestamp.id,
        }),
        NotificationArns = schema.new({
            id = id.from(_N, "ProvisionedProductPlanDetails", "NotificationArns"),
            type = "list",
            name = "NotificationArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ProvisioningParameters = schema.new({
            id = id.from(_N, "ProvisionedProductPlanDetails", "ProvisioningParameters"),
            type = "list",
            name = "ProvisioningParameters",
            target_id = prelude.Document.id,
            list_member = M.UpdateProvisioningParameter,
        }),
        Tags = schema.new({
            id = id.from(_N, "ProvisionedProductPlanDetails", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        StatusMessage = schema.new({
            id = id.from(_N, "ProvisionedProductPlanDetails", "StatusMessage"),
            type = "string",
            name = "StatusMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceTargetDefinition = schema.new({
    id = id.from(_N, "ResourceTargetDefinition"),
    type = "structure",
    members = {
        Attribute = schema.new({
            id = id.from(_N, "ResourceTargetDefinition", "Attribute"),
            type = "string",
            name = "Attribute",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ResourceTargetDefinition", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        RequiresRecreation = schema.new({
            id = id.from(_N, "ResourceTargetDefinition", "RequiresRecreation"),
            type = "string",
            name = "RequiresRecreation",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceChangeDetail = schema.new({
    id = id.from(_N, "ResourceChangeDetail"),
    type = "structure",
    members = {
        Target = schema.new({
            id = id.from(_N, "ResourceChangeDetail", "Target"),
            type = "structure",
            name = "Target",
            target_id = id.from(_N, "ResourceTargetDefinition"),
            target = M.ResourceTargetDefinition,
        }),
        Evaluation = schema.new({
            id = id.from(_N, "ResourceChangeDetail", "Evaluation"),
            type = "string",
            name = "Evaluation",
            target_id = prelude.String.id,
        }),
        CausingEntity = schema.new({
            id = id.from(_N, "ResourceChangeDetail", "CausingEntity"),
            type = "string",
            name = "CausingEntity",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceChange = schema.new({
    id = id.from(_N, "ResourceChange"),
    type = "structure",
    members = {
        Action = schema.new({
            id = id.from(_N, "ResourceChange", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
        }),
        LogicalResourceId = schema.new({
            id = id.from(_N, "ResourceChange", "LogicalResourceId"),
            type = "string",
            name = "LogicalResourceId",
            target_id = prelude.String.id,
        }),
        PhysicalResourceId = schema.new({
            id = id.from(_N, "ResourceChange", "PhysicalResourceId"),
            type = "string",
            name = "PhysicalResourceId",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ResourceChange", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        Replacement = schema.new({
            id = id.from(_N, "ResourceChange", "Replacement"),
            type = "string",
            name = "Replacement",
            target_id = prelude.String.id,
        }),
        Scope = schema.new({
            id = id.from(_N, "ResourceChange", "Scope"),
            type = "list",
            name = "Scope",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Details = schema.new({
            id = id.from(_N, "ResourceChange", "Details"),
            type = "list",
            name = "Details",
            target_id = prelude.Document.id,
            list_member = M.ResourceChangeDetail,
        }),
    },
})

M.DescribeProvisionedProductPlanOutput = schema.new({
    id = id.from(_N, "DescribeProvisionedProductPlanOutput"),
    type = "structure",
    members = {
        ProvisionedProductPlanDetails = schema.new({
            id = id.from(_N, "DescribeProvisionedProductPlanOutput", "ProvisionedProductPlanDetails"),
            type = "structure",
            name = "ProvisionedProductPlanDetails",
            target_id = id.from(_N, "ProvisionedProductPlanDetails"),
            target = M.ProvisionedProductPlanDetails,
        }),
        ResourceChanges = schema.new({
            id = id.from(_N, "DescribeProvisionedProductPlanOutput", "ResourceChanges"),
            type = "list",
            name = "ResourceChanges",
            target_id = prelude.Document.id,
            list_member = M.ResourceChange,
        }),
        NextPageToken = schema.new({
            id = id.from(_N, "DescribeProvisionedProductPlanOutput", "NextPageToken"),
            type = "string",
            name = "NextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeProvisioningArtifactInput = schema.new({
    id = id.from(_N, "DescribeProvisioningArtifactInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "DescribeProvisioningArtifactInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        ProvisioningArtifactId = schema.new({
            id = id.from(_N, "DescribeProvisioningArtifactInput", "ProvisioningArtifactId"),
            type = "string",
            name = "ProvisioningArtifactId",
            target_id = prelude.String.id,
        }),
        ProductId = schema.new({
            id = id.from(_N, "DescribeProvisioningArtifactInput", "ProductId"),
            type = "string",
            name = "ProductId",
            target_id = prelude.String.id,
        }),
        ProvisioningArtifactName = schema.new({
            id = id.from(_N, "DescribeProvisioningArtifactInput", "ProvisioningArtifactName"),
            type = "string",
            name = "ProvisioningArtifactName",
            target_id = prelude.String.id,
        }),
        ProductName = schema.new({
            id = id.from(_N, "DescribeProvisioningArtifactInput", "ProductName"),
            type = "string",
            name = "ProductName",
            target_id = prelude.String.id,
        }),
        Verbose = schema.new({
            id = id.from(_N, "DescribeProvisioningArtifactInput", "Verbose"),
            type = "boolean",
            name = "Verbose",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        IncludeProvisioningArtifactParameters = schema.new({
            id = id.from(_N, "DescribeProvisioningArtifactInput", "IncludeProvisioningArtifactParameters"),
            type = "boolean",
            name = "IncludeProvisioningArtifactParameters",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.ParameterConstraints = schema.new({
    id = id.from(_N, "ParameterConstraints"),
    type = "structure",
    members = {
        AllowedValues = schema.new({
            id = id.from(_N, "ParameterConstraints", "AllowedValues"),
            type = "list",
            name = "AllowedValues",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AllowedPattern = schema.new({
            id = id.from(_N, "ParameterConstraints", "AllowedPattern"),
            type = "string",
            name = "AllowedPattern",
            target_id = prelude.String.id,
        }),
        ConstraintDescription = schema.new({
            id = id.from(_N, "ParameterConstraints", "ConstraintDescription"),
            type = "string",
            name = "ConstraintDescription",
            target_id = prelude.String.id,
        }),
        MaxLength = schema.new({
            id = id.from(_N, "ParameterConstraints", "MaxLength"),
            type = "string",
            name = "MaxLength",
            target_id = prelude.String.id,
        }),
        MinLength = schema.new({
            id = id.from(_N, "ParameterConstraints", "MinLength"),
            type = "string",
            name = "MinLength",
            target_id = prelude.String.id,
        }),
        MaxValue = schema.new({
            id = id.from(_N, "ParameterConstraints", "MaxValue"),
            type = "string",
            name = "MaxValue",
            target_id = prelude.String.id,
        }),
        MinValue = schema.new({
            id = id.from(_N, "ParameterConstraints", "MinValue"),
            type = "string",
            name = "MinValue",
            target_id = prelude.String.id,
        }),
    },
})

M.ProvisioningArtifactParameter = schema.new({
    id = id.from(_N, "ProvisioningArtifactParameter"),
    type = "structure",
    members = {
        ParameterKey = schema.new({
            id = id.from(_N, "ProvisioningArtifactParameter", "ParameterKey"),
            type = "string",
            name = "ParameterKey",
            target_id = prelude.String.id,
        }),
        DefaultValue = schema.new({
            id = id.from(_N, "ProvisioningArtifactParameter", "DefaultValue"),
            type = "string",
            name = "DefaultValue",
            target_id = prelude.String.id,
        }),
        ParameterType = schema.new({
            id = id.from(_N, "ProvisioningArtifactParameter", "ParameterType"),
            type = "string",
            name = "ParameterType",
            target_id = prelude.String.id,
        }),
        IsNoEcho = schema.new({
            id = id.from(_N, "ProvisioningArtifactParameter", "IsNoEcho"),
            type = "boolean",
            name = "IsNoEcho",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Description = schema.new({
            id = id.from(_N, "ProvisioningArtifactParameter", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        ParameterConstraints = schema.new({
            id = id.from(_N, "ProvisioningArtifactParameter", "ParameterConstraints"),
            type = "structure",
            name = "ParameterConstraints",
            target_id = id.from(_N, "ParameterConstraints"),
            target = M.ParameterConstraints,
        }),
    },
})

M.DescribeProvisioningArtifactOutput = schema.new({
    id = id.from(_N, "DescribeProvisioningArtifactOutput"),
    type = "structure",
    members = {
        ProvisioningArtifactDetail = schema.new({
            id = id.from(_N, "DescribeProvisioningArtifactOutput", "ProvisioningArtifactDetail"),
            type = "structure",
            name = "ProvisioningArtifactDetail",
            target_id = id.from(_N, "ProvisioningArtifactDetail"),
            target = M.ProvisioningArtifactDetail,
        }),
        Info = schema.new({
            id = id.from(_N, "DescribeProvisioningArtifactOutput", "Info"),
            type = "map",
            name = "Info",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        Status = schema.new({
            id = id.from(_N, "DescribeProvisioningArtifactOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        ProvisioningArtifactParameters = schema.new({
            id = id.from(_N, "DescribeProvisioningArtifactOutput", "ProvisioningArtifactParameters"),
            type = "list",
            name = "ProvisioningArtifactParameters",
            target_id = prelude.Document.id,
            list_member = M.ProvisioningArtifactParameter,
        }),
    },
})

M.DescribeProvisioningParametersInput = schema.new({
    id = id.from(_N, "DescribeProvisioningParametersInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "DescribeProvisioningParametersInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        ProductId = schema.new({
            id = id.from(_N, "DescribeProvisioningParametersInput", "ProductId"),
            type = "string",
            name = "ProductId",
            target_id = prelude.String.id,
        }),
        ProductName = schema.new({
            id = id.from(_N, "DescribeProvisioningParametersInput", "ProductName"),
            type = "string",
            name = "ProductName",
            target_id = prelude.String.id,
        }),
        ProvisioningArtifactId = schema.new({
            id = id.from(_N, "DescribeProvisioningParametersInput", "ProvisioningArtifactId"),
            type = "string",
            name = "ProvisioningArtifactId",
            target_id = prelude.String.id,
        }),
        ProvisioningArtifactName = schema.new({
            id = id.from(_N, "DescribeProvisioningParametersInput", "ProvisioningArtifactName"),
            type = "string",
            name = "ProvisioningArtifactName",
            target_id = prelude.String.id,
        }),
        PathId = schema.new({
            id = id.from(_N, "DescribeProvisioningParametersInput", "PathId"),
            type = "string",
            name = "PathId",
            target_id = prelude.String.id,
        }),
        PathName = schema.new({
            id = id.from(_N, "DescribeProvisioningParametersInput", "PathName"),
            type = "string",
            name = "PathName",
            target_id = prelude.String.id,
        }),
    },
})

M.ConstraintSummary = schema.new({
    id = id.from(_N, "ConstraintSummary"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "ConstraintSummary", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ConstraintSummary", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.ProvisioningArtifactOutput = schema.new({
    id = id.from(_N, "ProvisioningArtifactOutput"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "ProvisioningArtifactOutput", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ProvisioningArtifactOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.ProvisioningArtifactPreferences = schema.new({
    id = id.from(_N, "ProvisioningArtifactPreferences"),
    type = "structure",
    members = {
        StackSetAccounts = schema.new({
            id = id.from(_N, "ProvisioningArtifactPreferences", "StackSetAccounts"),
            type = "list",
            name = "StackSetAccounts",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        StackSetRegions = schema.new({
            id = id.from(_N, "ProvisioningArtifactPreferences", "StackSetRegions"),
            type = "list",
            name = "StackSetRegions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.TagOptionSummary = schema.new({
    id = id.from(_N, "TagOptionSummary"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "TagOptionSummary", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Values = schema.new({
            id = id.from(_N, "TagOptionSummary", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UsageInstruction = schema.new({
    id = id.from(_N, "UsageInstruction"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "UsageInstruction", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "UsageInstruction", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeProvisioningParametersOutput = schema.new({
    id = id.from(_N, "DescribeProvisioningParametersOutput"),
    type = "structure",
    members = {
        ProvisioningArtifactParameters = schema.new({
            id = id.from(_N, "DescribeProvisioningParametersOutput", "ProvisioningArtifactParameters"),
            type = "list",
            name = "ProvisioningArtifactParameters",
            target_id = prelude.Document.id,
            list_member = M.ProvisioningArtifactParameter,
        }),
        ConstraintSummaries = schema.new({
            id = id.from(_N, "DescribeProvisioningParametersOutput", "ConstraintSummaries"),
            type = "list",
            name = "ConstraintSummaries",
            target_id = prelude.Document.id,
            list_member = M.ConstraintSummary,
        }),
        UsageInstructions = schema.new({
            id = id.from(_N, "DescribeProvisioningParametersOutput", "UsageInstructions"),
            type = "list",
            name = "UsageInstructions",
            target_id = prelude.Document.id,
            list_member = M.UsageInstruction,
        }),
        TagOptions = schema.new({
            id = id.from(_N, "DescribeProvisioningParametersOutput", "TagOptions"),
            type = "list",
            name = "TagOptions",
            target_id = prelude.Document.id,
            list_member = M.TagOptionSummary,
        }),
        ProvisioningArtifactPreferences = schema.new({
            id = id.from(_N, "DescribeProvisioningParametersOutput", "ProvisioningArtifactPreferences"),
            type = "structure",
            name = "ProvisioningArtifactPreferences",
            target_id = id.from(_N, "ProvisioningArtifactPreferences"),
            target = M.ProvisioningArtifactPreferences,
        }),
        ProvisioningArtifactOutputs = schema.new({
            id = id.from(_N, "DescribeProvisioningParametersOutput", "ProvisioningArtifactOutputs"),
            type = "list",
            name = "ProvisioningArtifactOutputs",
            target_id = prelude.Document.id,
            list_member = M.ProvisioningArtifactOutput,
        }),
        ProvisioningArtifactOutputKeys = schema.new({
            id = id.from(_N, "DescribeProvisioningParametersOutput", "ProvisioningArtifactOutputKeys"),
            type = "list",
            name = "ProvisioningArtifactOutputKeys",
            target_id = prelude.Document.id,
            list_member = M.ProvisioningArtifactOutput,
        }),
    },
})

M.DescribeRecordInput = schema.new({
    id = id.from(_N, "DescribeRecordInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "DescribeRecordInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "DescribeRecordInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PageToken = schema.new({
            id = id.from(_N, "DescribeRecordInput", "PageToken"),
            type = "string",
            name = "PageToken",
            target_id = prelude.String.id,
        }),
        PageSize = schema.new({
            id = id.from(_N, "DescribeRecordInput", "PageSize"),
            type = "integer",
            name = "PageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.RecordError = schema.new({
    id = id.from(_N, "RecordError"),
    type = "structure",
    members = {
        Code = schema.new({
            id = id.from(_N, "RecordError", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "RecordError", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.RecordTag = schema.new({
    id = id.from(_N, "RecordTag"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "RecordTag", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "RecordTag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.RecordDetail = schema.new({
    id = id.from(_N, "RecordDetail"),
    type = "structure",
    members = {
        RecordId = schema.new({
            id = id.from(_N, "RecordDetail", "RecordId"),
            type = "string",
            name = "RecordId",
            target_id = prelude.String.id,
        }),
        ProvisionedProductName = schema.new({
            id = id.from(_N, "RecordDetail", "ProvisionedProductName"),
            type = "string",
            name = "ProvisionedProductName",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "RecordDetail", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        CreatedTime = schema.new({
            id = id.from(_N, "RecordDetail", "CreatedTime"),
            type = "timestamp",
            name = "CreatedTime",
            target_id = prelude.Timestamp.id,
        }),
        UpdatedTime = schema.new({
            id = id.from(_N, "RecordDetail", "UpdatedTime"),
            type = "timestamp",
            name = "UpdatedTime",
            target_id = prelude.Timestamp.id,
        }),
        ProvisionedProductType = schema.new({
            id = id.from(_N, "RecordDetail", "ProvisionedProductType"),
            type = "string",
            name = "ProvisionedProductType",
            target_id = prelude.String.id,
        }),
        RecordType = schema.new({
            id = id.from(_N, "RecordDetail", "RecordType"),
            type = "string",
            name = "RecordType",
            target_id = prelude.String.id,
        }),
        ProvisionedProductId = schema.new({
            id = id.from(_N, "RecordDetail", "ProvisionedProductId"),
            type = "string",
            name = "ProvisionedProductId",
            target_id = prelude.String.id,
        }),
        ProductId = schema.new({
            id = id.from(_N, "RecordDetail", "ProductId"),
            type = "string",
            name = "ProductId",
            target_id = prelude.String.id,
        }),
        ProvisioningArtifactId = schema.new({
            id = id.from(_N, "RecordDetail", "ProvisioningArtifactId"),
            type = "string",
            name = "ProvisioningArtifactId",
            target_id = prelude.String.id,
        }),
        PathId = schema.new({
            id = id.from(_N, "RecordDetail", "PathId"),
            type = "string",
            name = "PathId",
            target_id = prelude.String.id,
        }),
        RecordErrors = schema.new({
            id = id.from(_N, "RecordDetail", "RecordErrors"),
            type = "list",
            name = "RecordErrors",
            target_id = prelude.Document.id,
            list_member = M.RecordError,
        }),
        RecordTags = schema.new({
            id = id.from(_N, "RecordDetail", "RecordTags"),
            type = "list",
            name = "RecordTags",
            target_id = prelude.Document.id,
            list_member = M.RecordTag,
        }),
        LaunchRoleArn = schema.new({
            id = id.from(_N, "RecordDetail", "LaunchRoleArn"),
            type = "string",
            name = "LaunchRoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.RecordOutput = schema.new({
    id = id.from(_N, "RecordOutput"),
    type = "structure",
    members = {
        OutputKey = schema.new({
            id = id.from(_N, "RecordOutput", "OutputKey"),
            type = "string",
            name = "OutputKey",
            target_id = prelude.String.id,
        }),
        OutputValue = schema.new({
            id = id.from(_N, "RecordOutput", "OutputValue"),
            type = "string",
            name = "OutputValue",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "RecordOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeRecordOutput = schema.new({
    id = id.from(_N, "DescribeRecordOutput"),
    type = "structure",
    members = {
        RecordDetail = schema.new({
            id = id.from(_N, "DescribeRecordOutput", "RecordDetail"),
            type = "structure",
            name = "RecordDetail",
            target_id = id.from(_N, "RecordDetail"),
            target = M.RecordDetail,
        }),
        RecordOutputs = schema.new({
            id = id.from(_N, "DescribeRecordOutput", "RecordOutputs"),
            type = "list",
            name = "RecordOutputs",
            target_id = prelude.Document.id,
            list_member = M.RecordOutput,
        }),
        NextPageToken = schema.new({
            id = id.from(_N, "DescribeRecordOutput", "NextPageToken"),
            type = "string",
            name = "NextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeServiceActionInput = schema.new({
    id = id.from(_N, "DescribeServiceActionInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DescribeServiceActionInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AcceptLanguage = schema.new({
            id = id.from(_N, "DescribeServiceActionInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeServiceActionOutput = schema.new({
    id = id.from(_N, "DescribeServiceActionOutput"),
    type = "structure",
    members = {
        ServiceActionDetail = schema.new({
            id = id.from(_N, "DescribeServiceActionOutput", "ServiceActionDetail"),
            type = "structure",
            name = "ServiceActionDetail",
            target_id = id.from(_N, "ServiceActionDetail"),
            target = M.ServiceActionDetail,
        }),
    },
})

M.DescribeServiceActionExecutionParametersInput = schema.new({
    id = id.from(_N, "DescribeServiceActionExecutionParametersInput"),
    type = "structure",
    members = {
        ProvisionedProductId = schema.new({
            id = id.from(_N, "DescribeServiceActionExecutionParametersInput", "ProvisionedProductId"),
            type = "string",
            name = "ProvisionedProductId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceActionId = schema.new({
            id = id.from(_N, "DescribeServiceActionExecutionParametersInput", "ServiceActionId"),
            type = "string",
            name = "ServiceActionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AcceptLanguage = schema.new({
            id = id.from(_N, "DescribeServiceActionExecutionParametersInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
    },
})

M.ExecutionParameter = schema.new({
    id = id.from(_N, "ExecutionParameter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ExecutionParameter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "ExecutionParameter", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        DefaultValues = schema.new({
            id = id.from(_N, "ExecutionParameter", "DefaultValues"),
            type = "list",
            name = "DefaultValues",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DescribeServiceActionExecutionParametersOutput = schema.new({
    id = id.from(_N, "DescribeServiceActionExecutionParametersOutput"),
    type = "structure",
    members = {
        ServiceActionParameters = schema.new({
            id = id.from(_N, "DescribeServiceActionExecutionParametersOutput", "ServiceActionParameters"),
            type = "list",
            name = "ServiceActionParameters",
            target_id = prelude.Document.id,
            list_member = M.ExecutionParameter,
        }),
    },
})

M.DescribeTagOptionInput = schema.new({
    id = id.from(_N, "DescribeTagOptionInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DescribeTagOptionInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "id" },
            },
        }),
    },
})

M.DescribeTagOptionOutput = schema.new({
    id = id.from(_N, "DescribeTagOptionOutput"),
    type = "structure",
    members = {
        TagOptionDetail = schema.new({
            id = id.from(_N, "DescribeTagOptionOutput", "TagOptionDetail"),
            type = "structure",
            name = "TagOptionDetail",
            target_id = id.from(_N, "TagOptionDetail"),
            target = M.TagOptionDetail,
        }),
    },
})

M.DisableAWSOrganizationsAccessInput = schema.new({
    id = id.from(_N, "DisableAWSOrganizationsAccessInput"),
    type = "structure",
})

M.DisableAWSOrganizationsAccessOutput = schema.new({
    id = id.from(_N, "DisableAWSOrganizationsAccessOutput"),
    type = "structure",
})

M.DisassociateBudgetFromResourceInput = schema.new({
    id = id.from(_N, "DisassociateBudgetFromResourceInput"),
    type = "structure",
    members = {
        BudgetName = schema.new({
            id = id.from(_N, "DisassociateBudgetFromResourceInput", "BudgetName"),
            type = "string",
            name = "BudgetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "DisassociateBudgetFromResourceInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisassociateBudgetFromResourceOutput = schema.new({
    id = id.from(_N, "DisassociateBudgetFromResourceOutput"),
    type = "structure",
})

M.DisassociatePrincipalFromPortfolioInput = schema.new({
    id = id.from(_N, "DisassociatePrincipalFromPortfolioInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "DisassociatePrincipalFromPortfolioInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        PortfolioId = schema.new({
            id = id.from(_N, "DisassociatePrincipalFromPortfolioInput", "PortfolioId"),
            type = "string",
            name = "PortfolioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrincipalARN = schema.new({
            id = id.from(_N, "DisassociatePrincipalFromPortfolioInput", "PrincipalARN"),
            type = "string",
            name = "PrincipalARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrincipalType = schema.new({
            id = id.from(_N, "DisassociatePrincipalFromPortfolioInput", "PrincipalType"),
            type = "string",
            name = "PrincipalType",
            target_id = prelude.String.id,
        }),
    },
})

M.DisassociatePrincipalFromPortfolioOutput = schema.new({
    id = id.from(_N, "DisassociatePrincipalFromPortfolioOutput"),
    type = "structure",
})

M.DisassociateProductFromPortfolioInput = schema.new({
    id = id.from(_N, "DisassociateProductFromPortfolioInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "DisassociateProductFromPortfolioInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        ProductId = schema.new({
            id = id.from(_N, "DisassociateProductFromPortfolioInput", "ProductId"),
            type = "string",
            name = "ProductId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PortfolioId = schema.new({
            id = id.from(_N, "DisassociateProductFromPortfolioInput", "PortfolioId"),
            type = "string",
            name = "PortfolioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisassociateProductFromPortfolioOutput = schema.new({
    id = id.from(_N, "DisassociateProductFromPortfolioOutput"),
    type = "structure",
})

M.DisassociateServiceActionFromProvisioningArtifactInput = schema.new({
    id = id.from(_N, "DisassociateServiceActionFromProvisioningArtifactInput"),
    type = "structure",
    members = {
        ProductId = schema.new({
            id = id.from(_N, "DisassociateServiceActionFromProvisioningArtifactInput", "ProductId"),
            type = "string",
            name = "ProductId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProvisioningArtifactId = schema.new({
            id = id.from(_N, "DisassociateServiceActionFromProvisioningArtifactInput", "ProvisioningArtifactId"),
            type = "string",
            name = "ProvisioningArtifactId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceActionId = schema.new({
            id = id.from(_N, "DisassociateServiceActionFromProvisioningArtifactInput", "ServiceActionId"),
            type = "string",
            name = "ServiceActionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AcceptLanguage = schema.new({
            id = id.from(_N, "DisassociateServiceActionFromProvisioningArtifactInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        IdempotencyToken = schema.new({
            id = id.from(_N, "DisassociateServiceActionFromProvisioningArtifactInput", "IdempotencyToken"),
            type = "string",
            name = "IdempotencyToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DisassociateServiceActionFromProvisioningArtifactOutput = schema.new({
    id = id.from(_N, "DisassociateServiceActionFromProvisioningArtifactOutput"),
    type = "structure",
})

M.DisassociateTagOptionFromResourceInput = schema.new({
    id = id.from(_N, "DisassociateTagOptionFromResourceInput"),
    type = "structure",
    members = {
        ResourceId = schema.new({
            id = id.from(_N, "DisassociateTagOptionFromResourceInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "resourceId" },
            },
        }),
        TagOptionId = schema.new({
            id = id.from(_N, "DisassociateTagOptionFromResourceInput", "TagOptionId"),
            type = "string",
            name = "TagOptionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "tagOptionId" },
            },
        }),
    },
})

M.DisassociateTagOptionFromResourceOutput = schema.new({
    id = id.from(_N, "DisassociateTagOptionFromResourceOutput"),
    type = "structure",
})

M.EnableAWSOrganizationsAccessInput = schema.new({
    id = id.from(_N, "EnableAWSOrganizationsAccessInput"),
    type = "structure",
})

M.EnableAWSOrganizationsAccessOutput = schema.new({
    id = id.from(_N, "EnableAWSOrganizationsAccessOutput"),
    type = "structure",
})

M.ExecuteProvisionedProductPlanInput = schema.new({
    id = id.from(_N, "ExecuteProvisionedProductPlanInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "ExecuteProvisionedProductPlanInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        PlanId = schema.new({
            id = id.from(_N, "ExecuteProvisionedProductPlanInput", "PlanId"),
            type = "string",
            name = "PlanId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IdempotencyToken = schema.new({
            id = id.from(_N, "ExecuteProvisionedProductPlanInput", "IdempotencyToken"),
            type = "string",
            name = "IdempotencyToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.ExecuteProvisionedProductPlanOutput = schema.new({
    id = id.from(_N, "ExecuteProvisionedProductPlanOutput"),
    type = "structure",
    members = {
        RecordDetail = schema.new({
            id = id.from(_N, "ExecuteProvisionedProductPlanOutput", "RecordDetail"),
            type = "structure",
            name = "RecordDetail",
            target_id = id.from(_N, "RecordDetail"),
            target = M.RecordDetail,
        }),
    },
})

M.ExecuteProvisionedProductServiceActionInput = schema.new({
    id = id.from(_N, "ExecuteProvisionedProductServiceActionInput"),
    type = "structure",
    members = {
        ProvisionedProductId = schema.new({
            id = id.from(_N, "ExecuteProvisionedProductServiceActionInput", "ProvisionedProductId"),
            type = "string",
            name = "ProvisionedProductId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceActionId = schema.new({
            id = id.from(_N, "ExecuteProvisionedProductServiceActionInput", "ServiceActionId"),
            type = "string",
            name = "ServiceActionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExecuteToken = schema.new({
            id = id.from(_N, "ExecuteProvisionedProductServiceActionInput", "ExecuteToken"),
            type = "string",
            name = "ExecuteToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        AcceptLanguage = schema.new({
            id = id.from(_N, "ExecuteProvisionedProductServiceActionInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        Parameters = schema.new({
            id = id.from(_N, "ExecuteProvisionedProductServiceActionInput", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
    },
})

M.ExecuteProvisionedProductServiceActionOutput = schema.new({
    id = id.from(_N, "ExecuteProvisionedProductServiceActionOutput"),
    type = "structure",
    members = {
        RecordDetail = schema.new({
            id = id.from(_N, "ExecuteProvisionedProductServiceActionOutput", "RecordDetail"),
            type = "structure",
            name = "RecordDetail",
            target_id = id.from(_N, "RecordDetail"),
            target = M.RecordDetail,
        }),
    },
})

M.GetAWSOrganizationsAccessStatusInput = schema.new({
    id = id.from(_N, "GetAWSOrganizationsAccessStatusInput"),
    type = "structure",
})

M.GetAWSOrganizationsAccessStatusOutput = schema.new({
    id = id.from(_N, "GetAWSOrganizationsAccessStatusOutput"),
    type = "structure",
    members = {
        AccessStatus = schema.new({
            id = id.from(_N, "GetAWSOrganizationsAccessStatusOutput", "AccessStatus"),
            type = "string",
            name = "AccessStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.GetProvisionedProductOutputsInput = schema.new({
    id = id.from(_N, "GetProvisionedProductOutputsInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "GetProvisionedProductOutputsInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        ProvisionedProductId = schema.new({
            id = id.from(_N, "GetProvisionedProductOutputsInput", "ProvisionedProductId"),
            type = "string",
            name = "ProvisionedProductId",
            target_id = prelude.String.id,
        }),
        ProvisionedProductName = schema.new({
            id = id.from(_N, "GetProvisionedProductOutputsInput", "ProvisionedProductName"),
            type = "string",
            name = "ProvisionedProductName",
            target_id = prelude.String.id,
        }),
        OutputKeys = schema.new({
            id = id.from(_N, "GetProvisionedProductOutputsInput", "OutputKeys"),
            type = "list",
            name = "OutputKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        PageSize = schema.new({
            id = id.from(_N, "GetProvisionedProductOutputsInput", "PageSize"),
            type = "integer",
            name = "PageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        PageToken = schema.new({
            id = id.from(_N, "GetProvisionedProductOutputsInput", "PageToken"),
            type = "string",
            name = "PageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetProvisionedProductOutputsOutput = schema.new({
    id = id.from(_N, "GetProvisionedProductOutputsOutput"),
    type = "structure",
    members = {
        Outputs = schema.new({
            id = id.from(_N, "GetProvisionedProductOutputsOutput", "Outputs"),
            type = "list",
            name = "Outputs",
            target_id = prelude.Document.id,
            list_member = M.RecordOutput,
        }),
        NextPageToken = schema.new({
            id = id.from(_N, "GetProvisionedProductOutputsOutput", "NextPageToken"),
            type = "string",
            name = "NextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ImportAsProvisionedProductInput = schema.new({
    id = id.from(_N, "ImportAsProvisionedProductInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "ImportAsProvisionedProductInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        ProductId = schema.new({
            id = id.from(_N, "ImportAsProvisionedProductInput", "ProductId"),
            type = "string",
            name = "ProductId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProvisioningArtifactId = schema.new({
            id = id.from(_N, "ImportAsProvisionedProductInput", "ProvisioningArtifactId"),
            type = "string",
            name = "ProvisioningArtifactId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProvisionedProductName = schema.new({
            id = id.from(_N, "ImportAsProvisionedProductInput", "ProvisionedProductName"),
            type = "string",
            name = "ProvisionedProductName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PhysicalId = schema.new({
            id = id.from(_N, "ImportAsProvisionedProductInput", "PhysicalId"),
            type = "string",
            name = "PhysicalId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IdempotencyToken = schema.new({
            id = id.from(_N, "ImportAsProvisionedProductInput", "IdempotencyToken"),
            type = "string",
            name = "IdempotencyToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.ImportAsProvisionedProductOutput = schema.new({
    id = id.from(_N, "ImportAsProvisionedProductOutput"),
    type = "structure",
    members = {
        RecordDetail = schema.new({
            id = id.from(_N, "ImportAsProvisionedProductOutput", "RecordDetail"),
            type = "structure",
            name = "RecordDetail",
            target_id = id.from(_N, "RecordDetail"),
            target = M.RecordDetail,
        }),
    },
})

M.ListAcceptedPortfolioSharesInput = schema.new({
    id = id.from(_N, "ListAcceptedPortfolioSharesInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "ListAcceptedPortfolioSharesInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        PageToken = schema.new({
            id = id.from(_N, "ListAcceptedPortfolioSharesInput", "PageToken"),
            type = "string",
            name = "PageToken",
            target_id = prelude.String.id,
        }),
        PageSize = schema.new({
            id = id.from(_N, "ListAcceptedPortfolioSharesInput", "PageSize"),
            type = "integer",
            name = "PageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        PortfolioShareType = schema.new({
            id = id.from(_N, "ListAcceptedPortfolioSharesInput", "PortfolioShareType"),
            type = "string",
            name = "PortfolioShareType",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAcceptedPortfolioSharesOutput = schema.new({
    id = id.from(_N, "ListAcceptedPortfolioSharesOutput"),
    type = "structure",
    members = {
        PortfolioDetails = schema.new({
            id = id.from(_N, "ListAcceptedPortfolioSharesOutput", "PortfolioDetails"),
            type = "list",
            name = "PortfolioDetails",
            target_id = prelude.Document.id,
            list_member = M.PortfolioDetail,
        }),
        NextPageToken = schema.new({
            id = id.from(_N, "ListAcceptedPortfolioSharesOutput", "NextPageToken"),
            type = "string",
            name = "NextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBudgetsForResourceInput = schema.new({
    id = id.from(_N, "ListBudgetsForResourceInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "ListBudgetsForResourceInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ListBudgetsForResourceInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PageSize = schema.new({
            id = id.from(_N, "ListBudgetsForResourceInput", "PageSize"),
            type = "integer",
            name = "PageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        PageToken = schema.new({
            id = id.from(_N, "ListBudgetsForResourceInput", "PageToken"),
            type = "string",
            name = "PageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBudgetsForResourceOutput = schema.new({
    id = id.from(_N, "ListBudgetsForResourceOutput"),
    type = "structure",
    members = {
        Budgets = schema.new({
            id = id.from(_N, "ListBudgetsForResourceOutput", "Budgets"),
            type = "list",
            name = "Budgets",
            target_id = prelude.Document.id,
            list_member = M.BudgetDetail,
        }),
        NextPageToken = schema.new({
            id = id.from(_N, "ListBudgetsForResourceOutput", "NextPageToken"),
            type = "string",
            name = "NextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListConstraintsForPortfolioInput = schema.new({
    id = id.from(_N, "ListConstraintsForPortfolioInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "ListConstraintsForPortfolioInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        PortfolioId = schema.new({
            id = id.from(_N, "ListConstraintsForPortfolioInput", "PortfolioId"),
            type = "string",
            name = "PortfolioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProductId = schema.new({
            id = id.from(_N, "ListConstraintsForPortfolioInput", "ProductId"),
            type = "string",
            name = "ProductId",
            target_id = prelude.String.id,
        }),
        PageSize = schema.new({
            id = id.from(_N, "ListConstraintsForPortfolioInput", "PageSize"),
            type = "integer",
            name = "PageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        PageToken = schema.new({
            id = id.from(_N, "ListConstraintsForPortfolioInput", "PageToken"),
            type = "string",
            name = "PageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListConstraintsForPortfolioOutput = schema.new({
    id = id.from(_N, "ListConstraintsForPortfolioOutput"),
    type = "structure",
    members = {
        ConstraintDetails = schema.new({
            id = id.from(_N, "ListConstraintsForPortfolioOutput", "ConstraintDetails"),
            type = "list",
            name = "ConstraintDetails",
            target_id = prelude.Document.id,
            list_member = M.ConstraintDetail,
        }),
        NextPageToken = schema.new({
            id = id.from(_N, "ListConstraintsForPortfolioOutput", "NextPageToken"),
            type = "string",
            name = "NextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListLaunchPathsInput = schema.new({
    id = id.from(_N, "ListLaunchPathsInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "ListLaunchPathsInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        ProductId = schema.new({
            id = id.from(_N, "ListLaunchPathsInput", "ProductId"),
            type = "string",
            name = "ProductId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PageSize = schema.new({
            id = id.from(_N, "ListLaunchPathsInput", "PageSize"),
            type = "integer",
            name = "PageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        PageToken = schema.new({
            id = id.from(_N, "ListLaunchPathsInput", "PageToken"),
            type = "string",
            name = "PageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.LaunchPathSummary = schema.new({
    id = id.from(_N, "LaunchPathSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "LaunchPathSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        ConstraintSummaries = schema.new({
            id = id.from(_N, "LaunchPathSummary", "ConstraintSummaries"),
            type = "list",
            name = "ConstraintSummaries",
            target_id = prelude.Document.id,
            list_member = M.ConstraintSummary,
        }),
        Tags = schema.new({
            id = id.from(_N, "LaunchPathSummary", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        Name = schema.new({
            id = id.from(_N, "LaunchPathSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.ListLaunchPathsOutput = schema.new({
    id = id.from(_N, "ListLaunchPathsOutput"),
    type = "structure",
    members = {
        LaunchPathSummaries = schema.new({
            id = id.from(_N, "ListLaunchPathsOutput", "LaunchPathSummaries"),
            type = "list",
            name = "LaunchPathSummaries",
            target_id = prelude.Document.id,
            list_member = M.LaunchPathSummary,
        }),
        NextPageToken = schema.new({
            id = id.from(_N, "ListLaunchPathsOutput", "NextPageToken"),
            type = "string",
            name = "NextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListOrganizationPortfolioAccessInput = schema.new({
    id = id.from(_N, "ListOrganizationPortfolioAccessInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "ListOrganizationPortfolioAccessInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        PortfolioId = schema.new({
            id = id.from(_N, "ListOrganizationPortfolioAccessInput", "PortfolioId"),
            type = "string",
            name = "PortfolioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OrganizationNodeType = schema.new({
            id = id.from(_N, "ListOrganizationPortfolioAccessInput", "OrganizationNodeType"),
            type = "string",
            name = "OrganizationNodeType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PageToken = schema.new({
            id = id.from(_N, "ListOrganizationPortfolioAccessInput", "PageToken"),
            type = "string",
            name = "PageToken",
            target_id = prelude.String.id,
        }),
        PageSize = schema.new({
            id = id.from(_N, "ListOrganizationPortfolioAccessInput", "PageSize"),
            type = "integer",
            name = "PageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ListOrganizationPortfolioAccessOutput = schema.new({
    id = id.from(_N, "ListOrganizationPortfolioAccessOutput"),
    type = "structure",
    members = {
        OrganizationNodes = schema.new({
            id = id.from(_N, "ListOrganizationPortfolioAccessOutput", "OrganizationNodes"),
            type = "list",
            name = "OrganizationNodes",
            target_id = prelude.Document.id,
            list_member = M.OrganizationNode,
        }),
        NextPageToken = schema.new({
            id = id.from(_N, "ListOrganizationPortfolioAccessOutput", "NextPageToken"),
            type = "string",
            name = "NextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPortfolioAccessInput = schema.new({
    id = id.from(_N, "ListPortfolioAccessInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "ListPortfolioAccessInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        PortfolioId = schema.new({
            id = id.from(_N, "ListPortfolioAccessInput", "PortfolioId"),
            type = "string",
            name = "PortfolioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OrganizationParentId = schema.new({
            id = id.from(_N, "ListPortfolioAccessInput", "OrganizationParentId"),
            type = "string",
            name = "OrganizationParentId",
            target_id = prelude.String.id,
        }),
        PageToken = schema.new({
            id = id.from(_N, "ListPortfolioAccessInput", "PageToken"),
            type = "string",
            name = "PageToken",
            target_id = prelude.String.id,
        }),
        PageSize = schema.new({
            id = id.from(_N, "ListPortfolioAccessInput", "PageSize"),
            type = "integer",
            name = "PageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ListPortfolioAccessOutput = schema.new({
    id = id.from(_N, "ListPortfolioAccessOutput"),
    type = "structure",
    members = {
        AccountIds = schema.new({
            id = id.from(_N, "ListPortfolioAccessOutput", "AccountIds"),
            type = "list",
            name = "AccountIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NextPageToken = schema.new({
            id = id.from(_N, "ListPortfolioAccessOutput", "NextPageToken"),
            type = "string",
            name = "NextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPortfoliosInput = schema.new({
    id = id.from(_N, "ListPortfoliosInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "ListPortfoliosInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        PageToken = schema.new({
            id = id.from(_N, "ListPortfoliosInput", "PageToken"),
            type = "string",
            name = "PageToken",
            target_id = prelude.String.id,
        }),
        PageSize = schema.new({
            id = id.from(_N, "ListPortfoliosInput", "PageSize"),
            type = "integer",
            name = "PageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ListPortfoliosOutput = schema.new({
    id = id.from(_N, "ListPortfoliosOutput"),
    type = "structure",
    members = {
        PortfolioDetails = schema.new({
            id = id.from(_N, "ListPortfoliosOutput", "PortfolioDetails"),
            type = "list",
            name = "PortfolioDetails",
            target_id = prelude.Document.id,
            list_member = M.PortfolioDetail,
        }),
        NextPageToken = schema.new({
            id = id.from(_N, "ListPortfoliosOutput", "NextPageToken"),
            type = "string",
            name = "NextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPortfoliosForProductInput = schema.new({
    id = id.from(_N, "ListPortfoliosForProductInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "ListPortfoliosForProductInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        ProductId = schema.new({
            id = id.from(_N, "ListPortfoliosForProductInput", "ProductId"),
            type = "string",
            name = "ProductId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PageToken = schema.new({
            id = id.from(_N, "ListPortfoliosForProductInput", "PageToken"),
            type = "string",
            name = "PageToken",
            target_id = prelude.String.id,
        }),
        PageSize = schema.new({
            id = id.from(_N, "ListPortfoliosForProductInput", "PageSize"),
            type = "integer",
            name = "PageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ListPortfoliosForProductOutput = schema.new({
    id = id.from(_N, "ListPortfoliosForProductOutput"),
    type = "structure",
    members = {
        PortfolioDetails = schema.new({
            id = id.from(_N, "ListPortfoliosForProductOutput", "PortfolioDetails"),
            type = "list",
            name = "PortfolioDetails",
            target_id = prelude.Document.id,
            list_member = M.PortfolioDetail,
        }),
        NextPageToken = schema.new({
            id = id.from(_N, "ListPortfoliosForProductOutput", "NextPageToken"),
            type = "string",
            name = "NextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPrincipalsForPortfolioInput = schema.new({
    id = id.from(_N, "ListPrincipalsForPortfolioInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "ListPrincipalsForPortfolioInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        PortfolioId = schema.new({
            id = id.from(_N, "ListPrincipalsForPortfolioInput", "PortfolioId"),
            type = "string",
            name = "PortfolioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PageSize = schema.new({
            id = id.from(_N, "ListPrincipalsForPortfolioInput", "PageSize"),
            type = "integer",
            name = "PageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        PageToken = schema.new({
            id = id.from(_N, "ListPrincipalsForPortfolioInput", "PageToken"),
            type = "string",
            name = "PageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.Principal = schema.new({
    id = id.from(_N, "Principal"),
    type = "structure",
    members = {
        PrincipalARN = schema.new({
            id = id.from(_N, "Principal", "PrincipalARN"),
            type = "string",
            name = "PrincipalARN",
            target_id = prelude.String.id,
        }),
        PrincipalType = schema.new({
            id = id.from(_N, "Principal", "PrincipalType"),
            type = "string",
            name = "PrincipalType",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPrincipalsForPortfolioOutput = schema.new({
    id = id.from(_N, "ListPrincipalsForPortfolioOutput"),
    type = "structure",
    members = {
        Principals = schema.new({
            id = id.from(_N, "ListPrincipalsForPortfolioOutput", "Principals"),
            type = "list",
            name = "Principals",
            target_id = prelude.Document.id,
            list_member = M.Principal,
        }),
        NextPageToken = schema.new({
            id = id.from(_N, "ListPrincipalsForPortfolioOutput", "NextPageToken"),
            type = "string",
            name = "NextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListProvisionedProductPlansInput = schema.new({
    id = id.from(_N, "ListProvisionedProductPlansInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "ListProvisionedProductPlansInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        ProvisionProductId = schema.new({
            id = id.from(_N, "ListProvisionedProductPlansInput", "ProvisionProductId"),
            type = "string",
            name = "ProvisionProductId",
            target_id = prelude.String.id,
        }),
        PageSize = schema.new({
            id = id.from(_N, "ListProvisionedProductPlansInput", "PageSize"),
            type = "integer",
            name = "PageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        PageToken = schema.new({
            id = id.from(_N, "ListProvisionedProductPlansInput", "PageToken"),
            type = "string",
            name = "PageToken",
            target_id = prelude.String.id,
        }),
        AccessLevelFilter = schema.new({
            id = id.from(_N, "ListProvisionedProductPlansInput", "AccessLevelFilter"),
            type = "structure",
            name = "AccessLevelFilter",
            target_id = id.from(_N, "AccessLevelFilter"),
            target = M.AccessLevelFilter,
        }),
    },
})

M.ProvisionedProductPlanSummary = schema.new({
    id = id.from(_N, "ProvisionedProductPlanSummary"),
    type = "structure",
    members = {
        PlanName = schema.new({
            id = id.from(_N, "ProvisionedProductPlanSummary", "PlanName"),
            type = "string",
            name = "PlanName",
            target_id = prelude.String.id,
        }),
        PlanId = schema.new({
            id = id.from(_N, "ProvisionedProductPlanSummary", "PlanId"),
            type = "string",
            name = "PlanId",
            target_id = prelude.String.id,
        }),
        ProvisionProductId = schema.new({
            id = id.from(_N, "ProvisionedProductPlanSummary", "ProvisionProductId"),
            type = "string",
            name = "ProvisionProductId",
            target_id = prelude.String.id,
        }),
        ProvisionProductName = schema.new({
            id = id.from(_N, "ProvisionedProductPlanSummary", "ProvisionProductName"),
            type = "string",
            name = "ProvisionProductName",
            target_id = prelude.String.id,
        }),
        PlanType = schema.new({
            id = id.from(_N, "ProvisionedProductPlanSummary", "PlanType"),
            type = "string",
            name = "PlanType",
            target_id = prelude.String.id,
        }),
        ProvisioningArtifactId = schema.new({
            id = id.from(_N, "ProvisionedProductPlanSummary", "ProvisioningArtifactId"),
            type = "string",
            name = "ProvisioningArtifactId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListProvisionedProductPlansOutput = schema.new({
    id = id.from(_N, "ListProvisionedProductPlansOutput"),
    type = "structure",
    members = {
        ProvisionedProductPlans = schema.new({
            id = id.from(_N, "ListProvisionedProductPlansOutput", "ProvisionedProductPlans"),
            type = "list",
            name = "ProvisionedProductPlans",
            target_id = prelude.Document.id,
            list_member = M.ProvisionedProductPlanSummary,
        }),
        NextPageToken = schema.new({
            id = id.from(_N, "ListProvisionedProductPlansOutput", "NextPageToken"),
            type = "string",
            name = "NextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListProvisioningArtifactsInput = schema.new({
    id = id.from(_N, "ListProvisioningArtifactsInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "ListProvisioningArtifactsInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        ProductId = schema.new({
            id = id.from(_N, "ListProvisioningArtifactsInput", "ProductId"),
            type = "string",
            name = "ProductId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListProvisioningArtifactsOutput = schema.new({
    id = id.from(_N, "ListProvisioningArtifactsOutput"),
    type = "structure",
    members = {
        ProvisioningArtifactDetails = schema.new({
            id = id.from(_N, "ListProvisioningArtifactsOutput", "ProvisioningArtifactDetails"),
            type = "list",
            name = "ProvisioningArtifactDetails",
            target_id = prelude.Document.id,
            list_member = M.ProvisioningArtifactDetail,
        }),
        NextPageToken = schema.new({
            id = id.from(_N, "ListProvisioningArtifactsOutput", "NextPageToken"),
            type = "string",
            name = "NextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListProvisioningArtifactsForServiceActionInput = schema.new({
    id = id.from(_N, "ListProvisioningArtifactsForServiceActionInput"),
    type = "structure",
    members = {
        ServiceActionId = schema.new({
            id = id.from(_N, "ListProvisioningArtifactsForServiceActionInput", "ServiceActionId"),
            type = "string",
            name = "ServiceActionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PageSize = schema.new({
            id = id.from(_N, "ListProvisioningArtifactsForServiceActionInput", "PageSize"),
            type = "integer",
            name = "PageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        PageToken = schema.new({
            id = id.from(_N, "ListProvisioningArtifactsForServiceActionInput", "PageToken"),
            type = "string",
            name = "PageToken",
            target_id = prelude.String.id,
        }),
        AcceptLanguage = schema.new({
            id = id.from(_N, "ListProvisioningArtifactsForServiceActionInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
    },
})

M.ProvisioningArtifactView = schema.new({
    id = id.from(_N, "ProvisioningArtifactView"),
    type = "structure",
    members = {
        ProductViewSummary = schema.new({
            id = id.from(_N, "ProvisioningArtifactView", "ProductViewSummary"),
            type = "structure",
            name = "ProductViewSummary",
            target_id = id.from(_N, "ProductViewSummary"),
            target = M.ProductViewSummary,
        }),
        ProvisioningArtifact = schema.new({
            id = id.from(_N, "ProvisioningArtifactView", "ProvisioningArtifact"),
            type = "structure",
            name = "ProvisioningArtifact",
            target_id = id.from(_N, "ProvisioningArtifact"),
            target = M.ProvisioningArtifact,
        }),
    },
})

M.ListProvisioningArtifactsForServiceActionOutput = schema.new({
    id = id.from(_N, "ListProvisioningArtifactsForServiceActionOutput"),
    type = "structure",
    members = {
        ProvisioningArtifactViews = schema.new({
            id = id.from(_N, "ListProvisioningArtifactsForServiceActionOutput", "ProvisioningArtifactViews"),
            type = "list",
            name = "ProvisioningArtifactViews",
            target_id = prelude.Document.id,
            list_member = M.ProvisioningArtifactView,
        }),
        NextPageToken = schema.new({
            id = id.from(_N, "ListProvisioningArtifactsForServiceActionOutput", "NextPageToken"),
            type = "string",
            name = "NextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRecordHistorySearchFilter = schema.new({
    id = id.from(_N, "ListRecordHistorySearchFilter"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "ListRecordHistorySearchFilter", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "ListRecordHistorySearchFilter", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRecordHistoryInput = schema.new({
    id = id.from(_N, "ListRecordHistoryInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "ListRecordHistoryInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        AccessLevelFilter = schema.new({
            id = id.from(_N, "ListRecordHistoryInput", "AccessLevelFilter"),
            type = "structure",
            name = "AccessLevelFilter",
            target_id = id.from(_N, "AccessLevelFilter"),
            target = M.AccessLevelFilter,
        }),
        SearchFilter = schema.new({
            id = id.from(_N, "ListRecordHistoryInput", "SearchFilter"),
            type = "structure",
            name = "SearchFilter",
            target_id = id.from(_N, "ListRecordHistorySearchFilter"),
            target = M.ListRecordHistorySearchFilter,
        }),
        PageSize = schema.new({
            id = id.from(_N, "ListRecordHistoryInput", "PageSize"),
            type = "integer",
            name = "PageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        PageToken = schema.new({
            id = id.from(_N, "ListRecordHistoryInput", "PageToken"),
            type = "string",
            name = "PageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRecordHistoryOutput = schema.new({
    id = id.from(_N, "ListRecordHistoryOutput"),
    type = "structure",
    members = {
        RecordDetails = schema.new({
            id = id.from(_N, "ListRecordHistoryOutput", "RecordDetails"),
            type = "list",
            name = "RecordDetails",
            target_id = prelude.Document.id,
            list_member = M.RecordDetail,
        }),
        NextPageToken = schema.new({
            id = id.from(_N, "ListRecordHistoryOutput", "NextPageToken"),
            type = "string",
            name = "NextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListResourcesForTagOptionInput = schema.new({
    id = id.from(_N, "ListResourcesForTagOptionInput"),
    type = "structure",
    members = {
        TagOptionId = schema.new({
            id = id.from(_N, "ListResourcesForTagOptionInput", "TagOptionId"),
            type = "string",
            name = "TagOptionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "tagOptionId" },
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ListResourcesForTagOptionInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "resourceType" },
            },
        }),
        PageSize = schema.new({
            id = id.from(_N, "ListResourcesForTagOptionInput", "PageSize"),
            type = "integer",
            name = "PageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "pageSize" },
            },
        }),
        PageToken = schema.new({
            id = id.from(_N, "ListResourcesForTagOptionInput", "PageToken"),
            type = "string",
            name = "PageToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "pageToken" },
            },
        }),
    },
})

M.ResourceDetail = schema.new({
    id = id.from(_N, "ResourceDetail"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ResourceDetail", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        ARN = schema.new({
            id = id.from(_N, "ResourceDetail", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ResourceDetail", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ResourceDetail", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CreatedTime = schema.new({
            id = id.from(_N, "ResourceDetail", "CreatedTime"),
            type = "timestamp",
            name = "CreatedTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListResourcesForTagOptionOutput = schema.new({
    id = id.from(_N, "ListResourcesForTagOptionOutput"),
    type = "structure",
    members = {
        ResourceDetails = schema.new({
            id = id.from(_N, "ListResourcesForTagOptionOutput", "ResourceDetails"),
            type = "list",
            name = "ResourceDetails",
            target_id = prelude.Document.id,
            list_member = M.ResourceDetail,
        }),
        PageToken = schema.new({
            id = id.from(_N, "ListResourcesForTagOptionOutput", "PageToken"),
            type = "string",
            name = "PageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListServiceActionsInput = schema.new({
    id = id.from(_N, "ListServiceActionsInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "ListServiceActionsInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        PageSize = schema.new({
            id = id.from(_N, "ListServiceActionsInput", "PageSize"),
            type = "integer",
            name = "PageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        PageToken = schema.new({
            id = id.from(_N, "ListServiceActionsInput", "PageToken"),
            type = "string",
            name = "PageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListServiceActionsOutput = schema.new({
    id = id.from(_N, "ListServiceActionsOutput"),
    type = "structure",
    members = {
        ServiceActionSummaries = schema.new({
            id = id.from(_N, "ListServiceActionsOutput", "ServiceActionSummaries"),
            type = "list",
            name = "ServiceActionSummaries",
            target_id = prelude.Document.id,
            list_member = M.ServiceActionSummary,
        }),
        NextPageToken = schema.new({
            id = id.from(_N, "ListServiceActionsOutput", "NextPageToken"),
            type = "string",
            name = "NextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListServiceActionsForProvisioningArtifactInput = schema.new({
    id = id.from(_N, "ListServiceActionsForProvisioningArtifactInput"),
    type = "structure",
    members = {
        ProductId = schema.new({
            id = id.from(_N, "ListServiceActionsForProvisioningArtifactInput", "ProductId"),
            type = "string",
            name = "ProductId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProvisioningArtifactId = schema.new({
            id = id.from(_N, "ListServiceActionsForProvisioningArtifactInput", "ProvisioningArtifactId"),
            type = "string",
            name = "ProvisioningArtifactId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PageSize = schema.new({
            id = id.from(_N, "ListServiceActionsForProvisioningArtifactInput", "PageSize"),
            type = "integer",
            name = "PageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        PageToken = schema.new({
            id = id.from(_N, "ListServiceActionsForProvisioningArtifactInput", "PageToken"),
            type = "string",
            name = "PageToken",
            target_id = prelude.String.id,
        }),
        AcceptLanguage = schema.new({
            id = id.from(_N, "ListServiceActionsForProvisioningArtifactInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
    },
})

M.ListServiceActionsForProvisioningArtifactOutput = schema.new({
    id = id.from(_N, "ListServiceActionsForProvisioningArtifactOutput"),
    type = "structure",
    members = {
        ServiceActionSummaries = schema.new({
            id = id.from(_N, "ListServiceActionsForProvisioningArtifactOutput", "ServiceActionSummaries"),
            type = "list",
            name = "ServiceActionSummaries",
            target_id = prelude.Document.id,
            list_member = M.ServiceActionSummary,
        }),
        NextPageToken = schema.new({
            id = id.from(_N, "ListServiceActionsForProvisioningArtifactOutput", "NextPageToken"),
            type = "string",
            name = "NextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListStackInstancesForProvisionedProductInput = schema.new({
    id = id.from(_N, "ListStackInstancesForProvisionedProductInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "ListStackInstancesForProvisionedProductInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        ProvisionedProductId = schema.new({
            id = id.from(_N, "ListStackInstancesForProvisionedProductInput", "ProvisionedProductId"),
            type = "string",
            name = "ProvisionedProductId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PageToken = schema.new({
            id = id.from(_N, "ListStackInstancesForProvisionedProductInput", "PageToken"),
            type = "string",
            name = "PageToken",
            target_id = prelude.String.id,
        }),
        PageSize = schema.new({
            id = id.from(_N, "ListStackInstancesForProvisionedProductInput", "PageSize"),
            type = "integer",
            name = "PageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.StackInstance = schema.new({
    id = id.from(_N, "StackInstance"),
    type = "structure",
    members = {
        Account = schema.new({
            id = id.from(_N, "StackInstance", "Account"),
            type = "string",
            name = "Account",
            target_id = prelude.String.id,
        }),
        Region = schema.new({
            id = id.from(_N, "StackInstance", "Region"),
            type = "string",
            name = "Region",
            target_id = prelude.String.id,
        }),
        StackInstanceStatus = schema.new({
            id = id.from(_N, "StackInstance", "StackInstanceStatus"),
            type = "string",
            name = "StackInstanceStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.ListStackInstancesForProvisionedProductOutput = schema.new({
    id = id.from(_N, "ListStackInstancesForProvisionedProductOutput"),
    type = "structure",
    members = {
        StackInstances = schema.new({
            id = id.from(_N, "ListStackInstancesForProvisionedProductOutput", "StackInstances"),
            type = "list",
            name = "StackInstances",
            target_id = prelude.Document.id,
            list_member = M.StackInstance,
        }),
        NextPageToken = schema.new({
            id = id.from(_N, "ListStackInstancesForProvisionedProductOutput", "NextPageToken"),
            type = "string",
            name = "NextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagOptionsFilters = schema.new({
    id = id.from(_N, "ListTagOptionsFilters"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "ListTagOptionsFilters", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "ListTagOptionsFilters", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
        Active = schema.new({
            id = id.from(_N, "ListTagOptionsFilters", "Active"),
            type = "boolean",
            name = "Active",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ListTagOptionsInput = schema.new({
    id = id.from(_N, "ListTagOptionsInput"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "ListTagOptionsInput", "Filters"),
            type = "structure",
            name = "Filters",
            target_id = id.from(_N, "ListTagOptionsFilters"),
            target = M.ListTagOptionsFilters,
        }),
        PageSize = schema.new({
            id = id.from(_N, "ListTagOptionsInput", "PageSize"),
            type = "integer",
            name = "PageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        PageToken = schema.new({
            id = id.from(_N, "ListTagOptionsInput", "PageToken"),
            type = "string",
            name = "PageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagOptionsOutput = schema.new({
    id = id.from(_N, "ListTagOptionsOutput"),
    type = "structure",
    members = {
        TagOptionDetails = schema.new({
            id = id.from(_N, "ListTagOptionsOutput", "TagOptionDetails"),
            type = "list",
            name = "TagOptionDetails",
            target_id = prelude.Document.id,
            list_member = M.TagOptionDetail,
        }),
        PageToken = schema.new({
            id = id.from(_N, "ListTagOptionsOutput", "PageToken"),
            type = "string",
            name = "PageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UniqueTagResourceIdentifier = schema.new({
    id = id.from(_N, "UniqueTagResourceIdentifier"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "UniqueTagResourceIdentifier", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "UniqueTagResourceIdentifier", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.EngineWorkflowResourceIdentifier = schema.new({
    id = id.from(_N, "EngineWorkflowResourceIdentifier"),
    type = "structure",
    members = {
        UniqueTag = schema.new({
            id = id.from(_N, "EngineWorkflowResourceIdentifier", "UniqueTag"),
            type = "structure",
            name = "UniqueTag",
            target_id = id.from(_N, "UniqueTagResourceIdentifier"),
            target = M.UniqueTagResourceIdentifier,
        }),
    },
})

M.NotifyProvisionProductEngineWorkflowResultInput = schema.new({
    id = id.from(_N, "NotifyProvisionProductEngineWorkflowResultInput"),
    type = "structure",
    members = {
        WorkflowToken = schema.new({
            id = id.from(_N, "NotifyProvisionProductEngineWorkflowResultInput", "WorkflowToken"),
            type = "string",
            name = "WorkflowToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RecordId = schema.new({
            id = id.from(_N, "NotifyProvisionProductEngineWorkflowResultInput", "RecordId"),
            type = "string",
            name = "RecordId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "NotifyProvisionProductEngineWorkflowResultInput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FailureReason = schema.new({
            id = id.from(_N, "NotifyProvisionProductEngineWorkflowResultInput", "FailureReason"),
            type = "string",
            name = "FailureReason",
            target_id = prelude.String.id,
        }),
        ResourceIdentifier = schema.new({
            id = id.from(_N, "NotifyProvisionProductEngineWorkflowResultInput", "ResourceIdentifier"),
            type = "structure",
            name = "ResourceIdentifier",
            target_id = id.from(_N, "EngineWorkflowResourceIdentifier"),
            target = M.EngineWorkflowResourceIdentifier,
        }),
        Outputs = schema.new({
            id = id.from(_N, "NotifyProvisionProductEngineWorkflowResultInput", "Outputs"),
            type = "list",
            name = "Outputs",
            target_id = prelude.Document.id,
            list_member = M.RecordOutput,
        }),
        IdempotencyToken = schema.new({
            id = id.from(_N, "NotifyProvisionProductEngineWorkflowResultInput", "IdempotencyToken"),
            type = "string",
            name = "IdempotencyToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.NotifyProvisionProductEngineWorkflowResultOutput = schema.new({
    id = id.from(_N, "NotifyProvisionProductEngineWorkflowResultOutput"),
    type = "structure",
})

M.NotifyTerminateProvisionedProductEngineWorkflowResultInput = schema.new({
    id = id.from(_N, "NotifyTerminateProvisionedProductEngineWorkflowResultInput"),
    type = "structure",
    members = {
        WorkflowToken = schema.new({
            id = id.from(_N, "NotifyTerminateProvisionedProductEngineWorkflowResultInput", "WorkflowToken"),
            type = "string",
            name = "WorkflowToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RecordId = schema.new({
            id = id.from(_N, "NotifyTerminateProvisionedProductEngineWorkflowResultInput", "RecordId"),
            type = "string",
            name = "RecordId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "NotifyTerminateProvisionedProductEngineWorkflowResultInput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FailureReason = schema.new({
            id = id.from(_N, "NotifyTerminateProvisionedProductEngineWorkflowResultInput", "FailureReason"),
            type = "string",
            name = "FailureReason",
            target_id = prelude.String.id,
        }),
        IdempotencyToken = schema.new({
            id = id.from(_N, "NotifyTerminateProvisionedProductEngineWorkflowResultInput", "IdempotencyToken"),
            type = "string",
            name = "IdempotencyToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.NotifyTerminateProvisionedProductEngineWorkflowResultOutput = schema.new({
    id = id.from(_N, "NotifyTerminateProvisionedProductEngineWorkflowResultOutput"),
    type = "structure",
})

M.NotifyUpdateProvisionedProductEngineWorkflowResultInput = schema.new({
    id = id.from(_N, "NotifyUpdateProvisionedProductEngineWorkflowResultInput"),
    type = "structure",
    members = {
        WorkflowToken = schema.new({
            id = id.from(_N, "NotifyUpdateProvisionedProductEngineWorkflowResultInput", "WorkflowToken"),
            type = "string",
            name = "WorkflowToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RecordId = schema.new({
            id = id.from(_N, "NotifyUpdateProvisionedProductEngineWorkflowResultInput", "RecordId"),
            type = "string",
            name = "RecordId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "NotifyUpdateProvisionedProductEngineWorkflowResultInput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FailureReason = schema.new({
            id = id.from(_N, "NotifyUpdateProvisionedProductEngineWorkflowResultInput", "FailureReason"),
            type = "string",
            name = "FailureReason",
            target_id = prelude.String.id,
        }),
        Outputs = schema.new({
            id = id.from(_N, "NotifyUpdateProvisionedProductEngineWorkflowResultInput", "Outputs"),
            type = "list",
            name = "Outputs",
            target_id = prelude.Document.id,
            list_member = M.RecordOutput,
        }),
        IdempotencyToken = schema.new({
            id = id.from(_N, "NotifyUpdateProvisionedProductEngineWorkflowResultInput", "IdempotencyToken"),
            type = "string",
            name = "IdempotencyToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.NotifyUpdateProvisionedProductEngineWorkflowResultOutput = schema.new({
    id = id.from(_N, "NotifyUpdateProvisionedProductEngineWorkflowResultOutput"),
    type = "structure",
})

M.ProvisioningParameter = schema.new({
    id = id.from(_N, "ProvisioningParameter"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "ProvisioningParameter", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "ProvisioningParameter", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.ProvisioningPreferences = schema.new({
    id = id.from(_N, "ProvisioningPreferences"),
    type = "structure",
    members = {
        StackSetAccounts = schema.new({
            id = id.from(_N, "ProvisioningPreferences", "StackSetAccounts"),
            type = "list",
            name = "StackSetAccounts",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        StackSetRegions = schema.new({
            id = id.from(_N, "ProvisioningPreferences", "StackSetRegions"),
            type = "list",
            name = "StackSetRegions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        StackSetFailureToleranceCount = schema.new({
            id = id.from(_N, "ProvisioningPreferences", "StackSetFailureToleranceCount"),
            type = "integer",
            name = "StackSetFailureToleranceCount",
            target_id = prelude.Integer.id,
        }),
        StackSetFailureTolerancePercentage = schema.new({
            id = id.from(_N, "ProvisioningPreferences", "StackSetFailureTolerancePercentage"),
            type = "integer",
            name = "StackSetFailureTolerancePercentage",
            target_id = prelude.Integer.id,
        }),
        StackSetMaxConcurrencyCount = schema.new({
            id = id.from(_N, "ProvisioningPreferences", "StackSetMaxConcurrencyCount"),
            type = "integer",
            name = "StackSetMaxConcurrencyCount",
            target_id = prelude.Integer.id,
        }),
        StackSetMaxConcurrencyPercentage = schema.new({
            id = id.from(_N, "ProvisioningPreferences", "StackSetMaxConcurrencyPercentage"),
            type = "integer",
            name = "StackSetMaxConcurrencyPercentage",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ProvisionProductInput = schema.new({
    id = id.from(_N, "ProvisionProductInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "ProvisionProductInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        ProductId = schema.new({
            id = id.from(_N, "ProvisionProductInput", "ProductId"),
            type = "string",
            name = "ProductId",
            target_id = prelude.String.id,
        }),
        ProductName = schema.new({
            id = id.from(_N, "ProvisionProductInput", "ProductName"),
            type = "string",
            name = "ProductName",
            target_id = prelude.String.id,
        }),
        ProvisioningArtifactId = schema.new({
            id = id.from(_N, "ProvisionProductInput", "ProvisioningArtifactId"),
            type = "string",
            name = "ProvisioningArtifactId",
            target_id = prelude.String.id,
        }),
        ProvisioningArtifactName = schema.new({
            id = id.from(_N, "ProvisionProductInput", "ProvisioningArtifactName"),
            type = "string",
            name = "ProvisioningArtifactName",
            target_id = prelude.String.id,
        }),
        PathId = schema.new({
            id = id.from(_N, "ProvisionProductInput", "PathId"),
            type = "string",
            name = "PathId",
            target_id = prelude.String.id,
        }),
        PathName = schema.new({
            id = id.from(_N, "ProvisionProductInput", "PathName"),
            type = "string",
            name = "PathName",
            target_id = prelude.String.id,
        }),
        ProvisionedProductName = schema.new({
            id = id.from(_N, "ProvisionProductInput", "ProvisionedProductName"),
            type = "string",
            name = "ProvisionedProductName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProvisioningParameters = schema.new({
            id = id.from(_N, "ProvisionProductInput", "ProvisioningParameters"),
            type = "list",
            name = "ProvisioningParameters",
            target_id = prelude.Document.id,
            list_member = M.ProvisioningParameter,
        }),
        ProvisioningPreferences = schema.new({
            id = id.from(_N, "ProvisionProductInput", "ProvisioningPreferences"),
            type = "structure",
            name = "ProvisioningPreferences",
            target_id = id.from(_N, "ProvisioningPreferences"),
            target = M.ProvisioningPreferences,
        }),
        Tags = schema.new({
            id = id.from(_N, "ProvisionProductInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        NotificationArns = schema.new({
            id = id.from(_N, "ProvisionProductInput", "NotificationArns"),
            type = "list",
            name = "NotificationArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ProvisionToken = schema.new({
            id = id.from(_N, "ProvisionProductInput", "ProvisionToken"),
            type = "string",
            name = "ProvisionToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.ProvisionProductOutput = schema.new({
    id = id.from(_N, "ProvisionProductOutput"),
    type = "structure",
    members = {
        RecordDetail = schema.new({
            id = id.from(_N, "ProvisionProductOutput", "RecordDetail"),
            type = "structure",
            name = "RecordDetail",
            target_id = id.from(_N, "RecordDetail"),
            target = M.RecordDetail,
        }),
    },
})

M.RejectPortfolioShareInput = schema.new({
    id = id.from(_N, "RejectPortfolioShareInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "RejectPortfolioShareInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        PortfolioId = schema.new({
            id = id.from(_N, "RejectPortfolioShareInput", "PortfolioId"),
            type = "string",
            name = "PortfolioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PortfolioShareType = schema.new({
            id = id.from(_N, "RejectPortfolioShareInput", "PortfolioShareType"),
            type = "string",
            name = "PortfolioShareType",
            target_id = prelude.String.id,
        }),
    },
})

M.RejectPortfolioShareOutput = schema.new({
    id = id.from(_N, "RejectPortfolioShareOutput"),
    type = "structure",
})

M.ScanProvisionedProductsInput = schema.new({
    id = id.from(_N, "ScanProvisionedProductsInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "ScanProvisionedProductsInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        AccessLevelFilter = schema.new({
            id = id.from(_N, "ScanProvisionedProductsInput", "AccessLevelFilter"),
            type = "structure",
            name = "AccessLevelFilter",
            target_id = id.from(_N, "AccessLevelFilter"),
            target = M.AccessLevelFilter,
        }),
        PageSize = schema.new({
            id = id.from(_N, "ScanProvisionedProductsInput", "PageSize"),
            type = "integer",
            name = "PageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        PageToken = schema.new({
            id = id.from(_N, "ScanProvisionedProductsInput", "PageToken"),
            type = "string",
            name = "PageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ScanProvisionedProductsOutput = schema.new({
    id = id.from(_N, "ScanProvisionedProductsOutput"),
    type = "structure",
    members = {
        ProvisionedProducts = schema.new({
            id = id.from(_N, "ScanProvisionedProductsOutput", "ProvisionedProducts"),
            type = "list",
            name = "ProvisionedProducts",
            target_id = prelude.Document.id,
            list_member = M.ProvisionedProductDetail,
        }),
        NextPageToken = schema.new({
            id = id.from(_N, "ScanProvisionedProductsOutput", "NextPageToken"),
            type = "string",
            name = "NextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SearchProductsInput = schema.new({
    id = id.from(_N, "SearchProductsInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "SearchProductsInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "SearchProductsInput", "Filters"),
            type = "map",
            name = "Filters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
        PageSize = schema.new({
            id = id.from(_N, "SearchProductsInput", "PageSize"),
            type = "integer",
            name = "PageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        SortBy = schema.new({
            id = id.from(_N, "SearchProductsInput", "SortBy"),
            type = "string",
            name = "SortBy",
            target_id = prelude.String.id,
        }),
        SortOrder = schema.new({
            id = id.from(_N, "SearchProductsInput", "SortOrder"),
            type = "string",
            name = "SortOrder",
            target_id = prelude.String.id,
        }),
        PageToken = schema.new({
            id = id.from(_N, "SearchProductsInput", "PageToken"),
            type = "string",
            name = "PageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ProductViewAggregationValue = schema.new({
    id = id.from(_N, "ProductViewAggregationValue"),
    type = "structure",
    members = {
        Value = schema.new({
            id = id.from(_N, "ProductViewAggregationValue", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
        ApproximateCount = schema.new({
            id = id.from(_N, "ProductViewAggregationValue", "ApproximateCount"),
            type = "integer",
            name = "ApproximateCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.SearchProductsOutput = schema.new({
    id = id.from(_N, "SearchProductsOutput"),
    type = "structure",
    members = {
        ProductViewSummaries = schema.new({
            id = id.from(_N, "SearchProductsOutput", "ProductViewSummaries"),
            type = "list",
            name = "ProductViewSummaries",
            target_id = prelude.Document.id,
            list_member = M.ProductViewSummary,
        }),
        ProductViewAggregations = schema.new({
            id = id.from(_N, "SearchProductsOutput", "ProductViewAggregations"),
            type = "map",
            name = "ProductViewAggregations",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = M.ProductViewAggregationValue }),
        }),
        NextPageToken = schema.new({
            id = id.from(_N, "SearchProductsOutput", "NextPageToken"),
            type = "string",
            name = "NextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SearchProductsAsAdminInput = schema.new({
    id = id.from(_N, "SearchProductsAsAdminInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "SearchProductsAsAdminInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        PortfolioId = schema.new({
            id = id.from(_N, "SearchProductsAsAdminInput", "PortfolioId"),
            type = "string",
            name = "PortfolioId",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "SearchProductsAsAdminInput", "Filters"),
            type = "map",
            name = "Filters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
        SortBy = schema.new({
            id = id.from(_N, "SearchProductsAsAdminInput", "SortBy"),
            type = "string",
            name = "SortBy",
            target_id = prelude.String.id,
        }),
        SortOrder = schema.new({
            id = id.from(_N, "SearchProductsAsAdminInput", "SortOrder"),
            type = "string",
            name = "SortOrder",
            target_id = prelude.String.id,
        }),
        PageToken = schema.new({
            id = id.from(_N, "SearchProductsAsAdminInput", "PageToken"),
            type = "string",
            name = "PageToken",
            target_id = prelude.String.id,
        }),
        PageSize = schema.new({
            id = id.from(_N, "SearchProductsAsAdminInput", "PageSize"),
            type = "integer",
            name = "PageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ProductSource = schema.new({
            id = id.from(_N, "SearchProductsAsAdminInput", "ProductSource"),
            type = "string",
            name = "ProductSource",
            target_id = prelude.String.id,
        }),
    },
})

M.SearchProductsAsAdminOutput = schema.new({
    id = id.from(_N, "SearchProductsAsAdminOutput"),
    type = "structure",
    members = {
        ProductViewDetails = schema.new({
            id = id.from(_N, "SearchProductsAsAdminOutput", "ProductViewDetails"),
            type = "list",
            name = "ProductViewDetails",
            target_id = prelude.Document.id,
            list_member = M.ProductViewDetail,
        }),
        NextPageToken = schema.new({
            id = id.from(_N, "SearchProductsAsAdminOutput", "NextPageToken"),
            type = "string",
            name = "NextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SearchProvisionedProductsInput = schema.new({
    id = id.from(_N, "SearchProvisionedProductsInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "SearchProvisionedProductsInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        AccessLevelFilter = schema.new({
            id = id.from(_N, "SearchProvisionedProductsInput", "AccessLevelFilter"),
            type = "structure",
            name = "AccessLevelFilter",
            target_id = id.from(_N, "AccessLevelFilter"),
            target = M.AccessLevelFilter,
        }),
        Filters = schema.new({
            id = id.from(_N, "SearchProvisionedProductsInput", "Filters"),
            type = "map",
            name = "Filters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
        SortBy = schema.new({
            id = id.from(_N, "SearchProvisionedProductsInput", "SortBy"),
            type = "string",
            name = "SortBy",
            target_id = prelude.String.id,
        }),
        SortOrder = schema.new({
            id = id.from(_N, "SearchProvisionedProductsInput", "SortOrder"),
            type = "string",
            name = "SortOrder",
            target_id = prelude.String.id,
        }),
        PageSize = schema.new({
            id = id.from(_N, "SearchProvisionedProductsInput", "PageSize"),
            type = "integer",
            name = "PageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        PageToken = schema.new({
            id = id.from(_N, "SearchProvisionedProductsInput", "PageToken"),
            type = "string",
            name = "PageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ProvisionedProductAttribute = schema.new({
    id = id.from(_N, "ProvisionedProductAttribute"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ProvisionedProductAttribute", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "ProvisionedProductAttribute", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "ProvisionedProductAttribute", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "ProvisionedProductAttribute", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ProvisionedProductAttribute", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusMessage = schema.new({
            id = id.from(_N, "ProvisionedProductAttribute", "StatusMessage"),
            type = "string",
            name = "StatusMessage",
            target_id = prelude.String.id,
        }),
        CreatedTime = schema.new({
            id = id.from(_N, "ProvisionedProductAttribute", "CreatedTime"),
            type = "timestamp",
            name = "CreatedTime",
            target_id = prelude.Timestamp.id,
        }),
        IdempotencyToken = schema.new({
            id = id.from(_N, "ProvisionedProductAttribute", "IdempotencyToken"),
            type = "string",
            name = "IdempotencyToken",
            target_id = prelude.String.id,
        }),
        LastRecordId = schema.new({
            id = id.from(_N, "ProvisionedProductAttribute", "LastRecordId"),
            type = "string",
            name = "LastRecordId",
            target_id = prelude.String.id,
        }),
        LastProvisioningRecordId = schema.new({
            id = id.from(_N, "ProvisionedProductAttribute", "LastProvisioningRecordId"),
            type = "string",
            name = "LastProvisioningRecordId",
            target_id = prelude.String.id,
        }),
        LastSuccessfulProvisioningRecordId = schema.new({
            id = id.from(_N, "ProvisionedProductAttribute", "LastSuccessfulProvisioningRecordId"),
            type = "string",
            name = "LastSuccessfulProvisioningRecordId",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "ProvisionedProductAttribute", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        PhysicalId = schema.new({
            id = id.from(_N, "ProvisionedProductAttribute", "PhysicalId"),
            type = "string",
            name = "PhysicalId",
            target_id = prelude.String.id,
        }),
        ProductId = schema.new({
            id = id.from(_N, "ProvisionedProductAttribute", "ProductId"),
            type = "string",
            name = "ProductId",
            target_id = prelude.String.id,
        }),
        ProductName = schema.new({
            id = id.from(_N, "ProvisionedProductAttribute", "ProductName"),
            type = "string",
            name = "ProductName",
            target_id = prelude.String.id,
        }),
        ProvisioningArtifactId = schema.new({
            id = id.from(_N, "ProvisionedProductAttribute", "ProvisioningArtifactId"),
            type = "string",
            name = "ProvisioningArtifactId",
            target_id = prelude.String.id,
        }),
        ProvisioningArtifactName = schema.new({
            id = id.from(_N, "ProvisionedProductAttribute", "ProvisioningArtifactName"),
            type = "string",
            name = "ProvisioningArtifactName",
            target_id = prelude.String.id,
        }),
        UserArn = schema.new({
            id = id.from(_N, "ProvisionedProductAttribute", "UserArn"),
            type = "string",
            name = "UserArn",
            target_id = prelude.String.id,
        }),
        UserArnSession = schema.new({
            id = id.from(_N, "ProvisionedProductAttribute", "UserArnSession"),
            type = "string",
            name = "UserArnSession",
            target_id = prelude.String.id,
        }),
    },
})

M.SearchProvisionedProductsOutput = schema.new({
    id = id.from(_N, "SearchProvisionedProductsOutput"),
    type = "structure",
    members = {
        ProvisionedProducts = schema.new({
            id = id.from(_N, "SearchProvisionedProductsOutput", "ProvisionedProducts"),
            type = "list",
            name = "ProvisionedProducts",
            target_id = prelude.Document.id,
            list_member = M.ProvisionedProductAttribute,
        }),
        TotalResultsCount = schema.new({
            id = id.from(_N, "SearchProvisionedProductsOutput", "TotalResultsCount"),
            type = "integer",
            name = "TotalResultsCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        NextPageToken = schema.new({
            id = id.from(_N, "SearchProvisionedProductsOutput", "NextPageToken"),
            type = "string",
            name = "NextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.TerminateProvisionedProductInput = schema.new({
    id = id.from(_N, "TerminateProvisionedProductInput"),
    type = "structure",
    members = {
        ProvisionedProductName = schema.new({
            id = id.from(_N, "TerminateProvisionedProductInput", "ProvisionedProductName"),
            type = "string",
            name = "ProvisionedProductName",
            target_id = prelude.String.id,
        }),
        ProvisionedProductId = schema.new({
            id = id.from(_N, "TerminateProvisionedProductInput", "ProvisionedProductId"),
            type = "string",
            name = "ProvisionedProductId",
            target_id = prelude.String.id,
        }),
        TerminateToken = schema.new({
            id = id.from(_N, "TerminateProvisionedProductInput", "TerminateToken"),
            type = "string",
            name = "TerminateToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        IgnoreErrors = schema.new({
            id = id.from(_N, "TerminateProvisionedProductInput", "IgnoreErrors"),
            type = "boolean",
            name = "IgnoreErrors",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        AcceptLanguage = schema.new({
            id = id.from(_N, "TerminateProvisionedProductInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        RetainPhysicalResources = schema.new({
            id = id.from(_N, "TerminateProvisionedProductInput", "RetainPhysicalResources"),
            type = "boolean",
            name = "RetainPhysicalResources",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.TerminateProvisionedProductOutput = schema.new({
    id = id.from(_N, "TerminateProvisionedProductOutput"),
    type = "structure",
    members = {
        RecordDetail = schema.new({
            id = id.from(_N, "TerminateProvisionedProductOutput", "RecordDetail"),
            type = "structure",
            name = "RecordDetail",
            target_id = id.from(_N, "RecordDetail"),
            target = M.RecordDetail,
        }),
    },
})

M.UpdateConstraintInput = schema.new({
    id = id.from(_N, "UpdateConstraintInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "UpdateConstraintInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "UpdateConstraintInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateConstraintInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Parameters = schema.new({
            id = id.from(_N, "UpdateConstraintInput", "Parameters"),
            type = "string",
            name = "Parameters",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateConstraintOutput = schema.new({
    id = id.from(_N, "UpdateConstraintOutput"),
    type = "structure",
    members = {
        ConstraintDetail = schema.new({
            id = id.from(_N, "UpdateConstraintOutput", "ConstraintDetail"),
            type = "structure",
            name = "ConstraintDetail",
            target_id = id.from(_N, "ConstraintDetail"),
            target = M.ConstraintDetail,
        }),
        ConstraintParameters = schema.new({
            id = id.from(_N, "UpdateConstraintOutput", "ConstraintParameters"),
            type = "string",
            name = "ConstraintParameters",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "UpdateConstraintOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdatePortfolioInput = schema.new({
    id = id.from(_N, "UpdatePortfolioInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "UpdatePortfolioInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "UpdatePortfolioInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DisplayName = schema.new({
            id = id.from(_N, "UpdatePortfolioInput", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdatePortfolioInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        ProviderName = schema.new({
            id = id.from(_N, "UpdatePortfolioInput", "ProviderName"),
            type = "string",
            name = "ProviderName",
            target_id = prelude.String.id,
        }),
        AddTags = schema.new({
            id = id.from(_N, "UpdatePortfolioInput", "AddTags"),
            type = "list",
            name = "AddTags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        RemoveTags = schema.new({
            id = id.from(_N, "UpdatePortfolioInput", "RemoveTags"),
            type = "list",
            name = "RemoveTags",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UpdatePortfolioOutput = schema.new({
    id = id.from(_N, "UpdatePortfolioOutput"),
    type = "structure",
    members = {
        PortfolioDetail = schema.new({
            id = id.from(_N, "UpdatePortfolioOutput", "PortfolioDetail"),
            type = "structure",
            name = "PortfolioDetail",
            target_id = id.from(_N, "PortfolioDetail"),
            target = M.PortfolioDetail,
        }),
        Tags = schema.new({
            id = id.from(_N, "UpdatePortfolioOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.UpdatePortfolioShareInput = schema.new({
    id = id.from(_N, "UpdatePortfolioShareInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "UpdatePortfolioShareInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        PortfolioId = schema.new({
            id = id.from(_N, "UpdatePortfolioShareInput", "PortfolioId"),
            type = "string",
            name = "PortfolioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccountId = schema.new({
            id = id.from(_N, "UpdatePortfolioShareInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        OrganizationNode = schema.new({
            id = id.from(_N, "UpdatePortfolioShareInput", "OrganizationNode"),
            type = "structure",
            name = "OrganizationNode",
            target_id = id.from(_N, "OrganizationNode"),
            target = M.OrganizationNode,
        }),
        ShareTagOptions = schema.new({
            id = id.from(_N, "UpdatePortfolioShareInput", "ShareTagOptions"),
            type = "boolean",
            name = "ShareTagOptions",
            target_id = prelude.Boolean.id,
        }),
        SharePrincipals = schema.new({
            id = id.from(_N, "UpdatePortfolioShareInput", "SharePrincipals"),
            type = "boolean",
            name = "SharePrincipals",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdatePortfolioShareOutput = schema.new({
    id = id.from(_N, "UpdatePortfolioShareOutput"),
    type = "structure",
    members = {
        PortfolioShareToken = schema.new({
            id = id.from(_N, "UpdatePortfolioShareOutput", "PortfolioShareToken"),
            type = "string",
            name = "PortfolioShareToken",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "UpdatePortfolioShareOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateProductInput = schema.new({
    id = id.from(_N, "UpdateProductInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "UpdateProductInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "UpdateProductInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateProductInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Owner = schema.new({
            id = id.from(_N, "UpdateProductInput", "Owner"),
            type = "string",
            name = "Owner",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateProductInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Distributor = schema.new({
            id = id.from(_N, "UpdateProductInput", "Distributor"),
            type = "string",
            name = "Distributor",
            target_id = prelude.String.id,
        }),
        SupportDescription = schema.new({
            id = id.from(_N, "UpdateProductInput", "SupportDescription"),
            type = "string",
            name = "SupportDescription",
            target_id = prelude.String.id,
        }),
        SupportEmail = schema.new({
            id = id.from(_N, "UpdateProductInput", "SupportEmail"),
            type = "string",
            name = "SupportEmail",
            target_id = prelude.String.id,
        }),
        SupportUrl = schema.new({
            id = id.from(_N, "UpdateProductInput", "SupportUrl"),
            type = "string",
            name = "SupportUrl",
            target_id = prelude.String.id,
        }),
        AddTags = schema.new({
            id = id.from(_N, "UpdateProductInput", "AddTags"),
            type = "list",
            name = "AddTags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        RemoveTags = schema.new({
            id = id.from(_N, "UpdateProductInput", "RemoveTags"),
            type = "list",
            name = "RemoveTags",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        SourceConnection = schema.new({
            id = id.from(_N, "UpdateProductInput", "SourceConnection"),
            type = "structure",
            name = "SourceConnection",
            target_id = id.from(_N, "SourceConnection"),
            target = M.SourceConnection,
        }),
    },
})

M.UpdateProductOutput = schema.new({
    id = id.from(_N, "UpdateProductOutput"),
    type = "structure",
    members = {
        ProductViewDetail = schema.new({
            id = id.from(_N, "UpdateProductOutput", "ProductViewDetail"),
            type = "structure",
            name = "ProductViewDetail",
            target_id = id.from(_N, "ProductViewDetail"),
            target = M.ProductViewDetail,
        }),
        Tags = schema.new({
            id = id.from(_N, "UpdateProductOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.UpdateProvisioningPreferences = schema.new({
    id = id.from(_N, "UpdateProvisioningPreferences"),
    type = "structure",
    members = {
        StackSetAccounts = schema.new({
            id = id.from(_N, "UpdateProvisioningPreferences", "StackSetAccounts"),
            type = "list",
            name = "StackSetAccounts",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        StackSetRegions = schema.new({
            id = id.from(_N, "UpdateProvisioningPreferences", "StackSetRegions"),
            type = "list",
            name = "StackSetRegions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        StackSetFailureToleranceCount = schema.new({
            id = id.from(_N, "UpdateProvisioningPreferences", "StackSetFailureToleranceCount"),
            type = "integer",
            name = "StackSetFailureToleranceCount",
            target_id = prelude.Integer.id,
        }),
        StackSetFailureTolerancePercentage = schema.new({
            id = id.from(_N, "UpdateProvisioningPreferences", "StackSetFailureTolerancePercentage"),
            type = "integer",
            name = "StackSetFailureTolerancePercentage",
            target_id = prelude.Integer.id,
        }),
        StackSetMaxConcurrencyCount = schema.new({
            id = id.from(_N, "UpdateProvisioningPreferences", "StackSetMaxConcurrencyCount"),
            type = "integer",
            name = "StackSetMaxConcurrencyCount",
            target_id = prelude.Integer.id,
        }),
        StackSetMaxConcurrencyPercentage = schema.new({
            id = id.from(_N, "UpdateProvisioningPreferences", "StackSetMaxConcurrencyPercentage"),
            type = "integer",
            name = "StackSetMaxConcurrencyPercentage",
            target_id = prelude.Integer.id,
        }),
        StackSetOperationType = schema.new({
            id = id.from(_N, "UpdateProvisioningPreferences", "StackSetOperationType"),
            type = "string",
            name = "StackSetOperationType",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateProvisionedProductInput = schema.new({
    id = id.from(_N, "UpdateProvisionedProductInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "UpdateProvisionedProductInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        ProvisionedProductName = schema.new({
            id = id.from(_N, "UpdateProvisionedProductInput", "ProvisionedProductName"),
            type = "string",
            name = "ProvisionedProductName",
            target_id = prelude.String.id,
        }),
        ProvisionedProductId = schema.new({
            id = id.from(_N, "UpdateProvisionedProductInput", "ProvisionedProductId"),
            type = "string",
            name = "ProvisionedProductId",
            target_id = prelude.String.id,
        }),
        ProductId = schema.new({
            id = id.from(_N, "UpdateProvisionedProductInput", "ProductId"),
            type = "string",
            name = "ProductId",
            target_id = prelude.String.id,
        }),
        ProductName = schema.new({
            id = id.from(_N, "UpdateProvisionedProductInput", "ProductName"),
            type = "string",
            name = "ProductName",
            target_id = prelude.String.id,
        }),
        ProvisioningArtifactId = schema.new({
            id = id.from(_N, "UpdateProvisionedProductInput", "ProvisioningArtifactId"),
            type = "string",
            name = "ProvisioningArtifactId",
            target_id = prelude.String.id,
        }),
        ProvisioningArtifactName = schema.new({
            id = id.from(_N, "UpdateProvisionedProductInput", "ProvisioningArtifactName"),
            type = "string",
            name = "ProvisioningArtifactName",
            target_id = prelude.String.id,
        }),
        PathId = schema.new({
            id = id.from(_N, "UpdateProvisionedProductInput", "PathId"),
            type = "string",
            name = "PathId",
            target_id = prelude.String.id,
        }),
        PathName = schema.new({
            id = id.from(_N, "UpdateProvisionedProductInput", "PathName"),
            type = "string",
            name = "PathName",
            target_id = prelude.String.id,
        }),
        ProvisioningParameters = schema.new({
            id = id.from(_N, "UpdateProvisionedProductInput", "ProvisioningParameters"),
            type = "list",
            name = "ProvisioningParameters",
            target_id = prelude.Document.id,
            list_member = M.UpdateProvisioningParameter,
        }),
        ProvisioningPreferences = schema.new({
            id = id.from(_N, "UpdateProvisionedProductInput", "ProvisioningPreferences"),
            type = "structure",
            name = "ProvisioningPreferences",
            target_id = id.from(_N, "UpdateProvisioningPreferences"),
            target = M.UpdateProvisioningPreferences,
        }),
        Tags = schema.new({
            id = id.from(_N, "UpdateProvisionedProductInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        UpdateToken = schema.new({
            id = id.from(_N, "UpdateProvisionedProductInput", "UpdateToken"),
            type = "string",
            name = "UpdateToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateProvisionedProductOutput = schema.new({
    id = id.from(_N, "UpdateProvisionedProductOutput"),
    type = "structure",
    members = {
        RecordDetail = schema.new({
            id = id.from(_N, "UpdateProvisionedProductOutput", "RecordDetail"),
            type = "structure",
            name = "RecordDetail",
            target_id = id.from(_N, "RecordDetail"),
            target = M.RecordDetail,
        }),
    },
})

M.UpdateProvisionedProductPropertiesInput = schema.new({
    id = id.from(_N, "UpdateProvisionedProductPropertiesInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "UpdateProvisionedProductPropertiesInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        ProvisionedProductId = schema.new({
            id = id.from(_N, "UpdateProvisionedProductPropertiesInput", "ProvisionedProductId"),
            type = "string",
            name = "ProvisionedProductId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProvisionedProductProperties = schema.new({
            id = id.from(_N, "UpdateProvisionedProductPropertiesInput", "ProvisionedProductProperties"),
            type = "map",
            name = "ProvisionedProductProperties",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IdempotencyToken = schema.new({
            id = id.from(_N, "UpdateProvisionedProductPropertiesInput", "IdempotencyToken"),
            type = "string",
            name = "IdempotencyToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateProvisionedProductPropertiesOutput = schema.new({
    id = id.from(_N, "UpdateProvisionedProductPropertiesOutput"),
    type = "structure",
    members = {
        ProvisionedProductId = schema.new({
            id = id.from(_N, "UpdateProvisionedProductPropertiesOutput", "ProvisionedProductId"),
            type = "string",
            name = "ProvisionedProductId",
            target_id = prelude.String.id,
        }),
        ProvisionedProductProperties = schema.new({
            id = id.from(_N, "UpdateProvisionedProductPropertiesOutput", "ProvisionedProductProperties"),
            type = "map",
            name = "ProvisionedProductProperties",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        RecordId = schema.new({
            id = id.from(_N, "UpdateProvisionedProductPropertiesOutput", "RecordId"),
            type = "string",
            name = "RecordId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "UpdateProvisionedProductPropertiesOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateProvisioningArtifactInput = schema.new({
    id = id.from(_N, "UpdateProvisioningArtifactInput"),
    type = "structure",
    members = {
        AcceptLanguage = schema.new({
            id = id.from(_N, "UpdateProvisioningArtifactInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
        ProductId = schema.new({
            id = id.from(_N, "UpdateProvisioningArtifactInput", "ProductId"),
            type = "string",
            name = "ProductId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProvisioningArtifactId = schema.new({
            id = id.from(_N, "UpdateProvisioningArtifactInput", "ProvisioningArtifactId"),
            type = "string",
            name = "ProvisioningArtifactId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateProvisioningArtifactInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateProvisioningArtifactInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Active = schema.new({
            id = id.from(_N, "UpdateProvisioningArtifactInput", "Active"),
            type = "boolean",
            name = "Active",
            target_id = prelude.Boolean.id,
        }),
        Guidance = schema.new({
            id = id.from(_N, "UpdateProvisioningArtifactInput", "Guidance"),
            type = "string",
            name = "Guidance",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateProvisioningArtifactOutput = schema.new({
    id = id.from(_N, "UpdateProvisioningArtifactOutput"),
    type = "structure",
    members = {
        ProvisioningArtifactDetail = schema.new({
            id = id.from(_N, "UpdateProvisioningArtifactOutput", "ProvisioningArtifactDetail"),
            type = "structure",
            name = "ProvisioningArtifactDetail",
            target_id = id.from(_N, "ProvisioningArtifactDetail"),
            target = M.ProvisioningArtifactDetail,
        }),
        Info = schema.new({
            id = id.from(_N, "UpdateProvisioningArtifactOutput", "Info"),
            type = "map",
            name = "Info",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        Status = schema.new({
            id = id.from(_N, "UpdateProvisioningArtifactOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateServiceActionInput = schema.new({
    id = id.from(_N, "UpdateServiceActionInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdateServiceActionInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateServiceActionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Definition = schema.new({
            id = id.from(_N, "UpdateServiceActionInput", "Definition"),
            type = "map",
            name = "Definition",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateServiceActionInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        AcceptLanguage = schema.new({
            id = id.from(_N, "UpdateServiceActionInput", "AcceptLanguage"),
            type = "string",
            name = "AcceptLanguage",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateServiceActionOutput = schema.new({
    id = id.from(_N, "UpdateServiceActionOutput"),
    type = "structure",
    members = {
        ServiceActionDetail = schema.new({
            id = id.from(_N, "UpdateServiceActionOutput", "ServiceActionDetail"),
            type = "structure",
            name = "ServiceActionDetail",
            target_id = id.from(_N, "ServiceActionDetail"),
            target = M.ServiceActionDetail,
        }),
    },
})

M.UpdateTagOptionInput = schema.new({
    id = id.from(_N, "UpdateTagOptionInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdateTagOptionInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "UpdateTagOptionInput", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
        Active = schema.new({
            id = id.from(_N, "UpdateTagOptionInput", "Active"),
            type = "boolean",
            name = "Active",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateTagOptionOutput = schema.new({
    id = id.from(_N, "UpdateTagOptionOutput"),
    type = "structure",
    members = {
        TagOptionDetail = schema.new({
            id = id.from(_N, "UpdateTagOptionOutput", "TagOptionDetail"),
            type = "structure",
            name = "TagOptionDetail",
            target_id = id.from(_N, "TagOptionDetail"),
            target = M.TagOptionDetail,
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
