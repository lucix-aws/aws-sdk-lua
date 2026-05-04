local M = {}

M.AcceptGrantInput = {
    type = "structure",
    id = "AcceptGrantInput",
    members = {
        GrantArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GrantStatus = {
    PENDING_WORKFLOW = "PENDING_WORKFLOW",
    PENDING_ACCEPT = "PENDING_ACCEPT",
    REJECTED = "REJECTED",
    ACTIVE = "ACTIVE",
    FAILED_WORKFLOW = "FAILED_WORKFLOW",
    DELETED = "DELETED",
    PENDING_DELETE = "PENDING_DELETE",
    DISABLED = "DISABLED",
    WORKFLOW_COMPLETED = "WORKFLOW_COMPLETED",
}

M.AcceptGrantOutput = {
    type = "structure",
    id = "AcceptGrantOutput",
    members = {
        GrantArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AuthorizationException = {
    type = "structure",
    id = "AuthorizationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidParameterValueException = {
    type = "structure",
    id = "InvalidParameterValueException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RateLimitExceededException = {
    type = "structure",
    id = "RateLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceLimitExceededException = {
    type = "structure",
    id = "ResourceLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServerInternalException = {
    type = "structure",
    id = "ServerInternalException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ActivationOverrideBehavior = {
    DISTRIBUTED_GRANTS_ONLY = "DISTRIBUTED_GRANTS_ONLY",
    ALL_GRANTS_PERMITTED_BY_ISSUER = "ALL_GRANTS_PERMITTED_BY_ISSUER",
}

M.AllowedOperation = {
    CREATE_GRANT = "CreateGrant",
    CHECKOUT_LICENSE = "CheckoutLicense",
    CHECKOUT_BORROW_LICENSE = "CheckoutBorrowLicense",
    CHECK_IN_LICENSE = "CheckInLicense",
    EXTEND_CONSUMPTION_LICENSE = "ExtendConsumptionLicense",
    LIST_PURCHASED_LICENSES = "ListPurchasedLicenses",
    CREATE_TOKEN = "CreateToken",
}

M.MatchingRuleStatement = {
    type = "structure",
    id = "MatchingRuleStatement",
    members = {
        KeyToMatch = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Constraint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValueToMatch = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ScriptRuleStatement = {
    type = "structure",
    id = "ScriptRuleStatement",
    members = {
        KeyToMatch = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Script = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AndRuleStatement = {
    type = "structure",
    id = "AndRuleStatement",
    members = {
        MatchingRuleStatements = {
            type = "list",
            member = M.MatchingRuleStatement,
        },
        ScriptRuleStatements = {
            type = "list",
            member = M.ScriptRuleStatement,
        },
    },
}

M.Asset = {
    type = "structure",
    id = "Asset",
    members = {
        AssetArn = {
            type = "string",
        },
        LatestAssetDiscoveryTime = {
            type = "timestamp",
        },
    },
}

M.AutomatedDiscoveryInformation = {
    type = "structure",
    id = "AutomatedDiscoveryInformation",
    members = {
        LastRunTime = {
            type = "timestamp",
        },
    },
}

M.CheckInLicenseInput = {
    type = "structure",
    id = "CheckInLicenseInput",
    members = {
        LicenseConsumptionToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Beneficiary = {
            type = "string",
        },
    },
}

M.CheckInLicenseOutput = {
    type = "structure",
    id = "CheckInLicenseOutput",
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
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

M.Metadata = {
    type = "structure",
    id = "Metadata",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.DigitalSignatureMethod = {
    JWT_PS384 = "JWT_PS384",
}

M.EntitlementDataUnit = {
    COUNT = "Count",
    NONE = "None",
    SECONDS = "Seconds",
    MICROSECONDS = "Microseconds",
    MILLISECONDS = "Milliseconds",
    BYTES = "Bytes",
    KILOBYTES = "Kilobytes",
    MEGABYTES = "Megabytes",
    GIGABYTES = "Gigabytes",
    TERABYTES = "Terabytes",
    BITS = "Bits",
    KILOBITS = "Kilobits",
    MEGABITS = "Megabits",
    GIGABITS = "Gigabits",
    TERABITS = "Terabits",
    PERCENT = "Percent",
    BYTES_PER_SECOND = "Bytes/Second",
    KILOBYTES_PER_SECOND = "Kilobytes/Second",
    MEGABYTES_PER_SECOND = "Megabytes/Second",
    GIGABYTES_PER_SECOND = "Gigabytes/Second",
    TERABYTES_PER_SECOND = "Terabytes/Second",
    BITS_PER_SECOND = "Bits/Second",
    KILOBITS_PER_SECOND = "Kilobits/Second",
    MEGABITS_PER_SECOND = "Megabits/Second",
    GIGABITS_PER_SECOND = "Gigabits/Second",
    TERABITS_PER_SECOND = "Terabits/Second",
    COUNT_PER_SECOND = "Count/Second",
}

M.EntitlementData = {
    type = "structure",
    id = "EntitlementData",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
        },
        Unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CheckoutBorrowLicenseInput = {
    type = "structure",
    id = "CheckoutBorrowLicenseInput",
    members = {
        LicenseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Entitlements = {
            type = "list",
            member = M.EntitlementData,
            traits = {
                required = true,
            },
        },
        DigitalSignatureMethod = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NodeId = {
            type = "string",
        },
        CheckoutMetadata = {
            type = "list",
            member = M.Metadata,
        },
        ClientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CheckoutBorrowLicenseOutput = {
    type = "structure",
    id = "CheckoutBorrowLicenseOutput",
    members = {
        LicenseArn = {
            type = "string",
        },
        LicenseConsumptionToken = {
            type = "string",
        },
        EntitlementsAllowed = {
            type = "list",
            member = M.EntitlementData,
        },
        NodeId = {
            type = "string",
        },
        SignedToken = {
            type = "string",
        },
        IssuedAt = {
            type = "string",
        },
        Expiration = {
            type = "string",
        },
        CheckoutMetadata = {
            type = "list",
            member = M.Metadata,
        },
    },
}

M.EntitlementNotAllowedException = {
    type = "structure",
    id = "EntitlementNotAllowedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoEntitlementsAllowedException = {
    type = "structure",
    id = "NoEntitlementsAllowedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RedirectException = {
    type = "structure",
    id = "RedirectException",
    error = "client",
    members = {
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
            },
        },
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedDigitalSignatureMethodException = {
    type = "structure",
    id = "UnsupportedDigitalSignatureMethodException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CheckoutType = {
    PROVISIONAL = "PROVISIONAL",
    PERPETUAL = "PERPETUAL",
}

M.CheckoutLicenseInput = {
    type = "structure",
    id = "CheckoutLicenseInput",
    members = {
        ProductSKU = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CheckoutType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyFingerprint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Entitlements = {
            type = "list",
            member = M.EntitlementData,
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Beneficiary = {
            type = "string",
        },
        NodeId = {
            type = "string",
        },
    },
}

M.CheckoutLicenseOutput = {
    type = "structure",
    id = "CheckoutLicenseOutput",
    members = {
        CheckoutType = {
            type = "string",
        },
        LicenseConsumptionToken = {
            type = "string",
        },
        EntitlementsAllowed = {
            type = "list",
            member = M.EntitlementData,
        },
        SignedToken = {
            type = "string",
        },
        NodeId = {
            type = "string",
        },
        IssuedAt = {
            type = "string",
        },
        Expiration = {
            type = "string",
        },
        LicenseArn = {
            type = "string",
        },
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.CreateGrantInput = {
    type = "structure",
    id = "CreateGrantInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GrantName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LicenseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Principals = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        HomeRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AllowedOperations = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateGrantOutput = {
    type = "structure",
    id = "CreateGrantOutput",
    members = {
        GrantArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.Options = {
    type = "structure",
    id = "Options",
    members = {
        ActivationOverrideBehavior = {
            type = "string",
        },
    },
}

M.CreateGrantVersionInput = {
    type = "structure",
    id = "CreateGrantVersionInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GrantArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GrantName = {
            type = "string",
        },
        AllowedOperations = {
            type = "list",
            member = { type = "string" },
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        SourceVersion = {
            type = "string",
        },
        Options = M.Options,
    },
}

M.CreateGrantVersionOutput = {
    type = "structure",
    id = "CreateGrantVersionOutput",
    members = {
        GrantArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.BorrowConfiguration = {
    type = "structure",
    id = "BorrowConfiguration",
    members = {
        AllowEarlyCheckIn = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        MaxTimeToLiveInMinutes = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ProvisionalConfiguration = {
    type = "structure",
    id = "ProvisionalConfiguration",
    members = {
        MaxTimeToLiveInMinutes = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.RenewType = {
    NONE = "None",
    WEEKLY = "Weekly",
    MONTHLY = "Monthly",
}

M.ConsumptionConfiguration = {
    type = "structure",
    id = "ConsumptionConfiguration",
    members = {
        RenewType = {
            type = "string",
        },
        ProvisionalConfiguration = M.ProvisionalConfiguration,
        BorrowConfiguration = M.BorrowConfiguration,
    },
}

M.EntitlementUnit = {
    COUNT = "Count",
    NONE = "None",
    SECONDS = "Seconds",
    MICROSECONDS = "Microseconds",
    MILLISECONDS = "Milliseconds",
    BYTES = "Bytes",
    KILOBYTES = "Kilobytes",
    MEGABYTES = "Megabytes",
    GIGABYTES = "Gigabytes",
    TERABYTES = "Terabytes",
    BITS = "Bits",
    KILOBITS = "Kilobits",
    MEGABITS = "Megabits",
    GIGABITS = "Gigabits",
    TERABITS = "Terabits",
    PERCENT = "Percent",
    BYTES_PER_SECOND = "Bytes/Second",
    KILOBYTES_PER_SECOND = "Kilobytes/Second",
    MEGABYTES_PER_SECOND = "Megabytes/Second",
    GIGABYTES_PER_SECOND = "Gigabytes/Second",
    TERABYTES_PER_SECOND = "Terabytes/Second",
    BITS_PER_SECOND = "Bits/Second",
    KILOBITS_PER_SECOND = "Kilobits/Second",
    MEGABITS_PER_SECOND = "Megabits/Second",
    GIGABITS_PER_SECOND = "Gigabits/Second",
    TERABITS_PER_SECOND = "Terabits/Second",
    COUNT_PER_SECOND = "Count/Second",
}

M.Entitlement = {
    type = "structure",
    id = "Entitlement",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
        },
        MaxCount = {
            type = "long",
        },
        Overage = {
            type = "boolean",
        },
        Unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AllowCheckIn = {
            type = "boolean",
        },
    },
}

M.Issuer = {
    type = "structure",
    id = "Issuer",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SignKey = {
            type = "string",
        },
    },
}

M.DatetimeRange = {
    type = "structure",
    id = "DatetimeRange",
    members = {
        Begin = {
            type = "string",
            traits = {
                required = true,
            },
        },
        End = {
            type = "string",
        },
    },
}

M.CreateLicenseInput = {
    type = "structure",
    id = "CreateLicenseInput",
    members = {
        LicenseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProductName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProductSKU = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Issuer = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Issuer }),
        HomeRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Validity = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DatetimeRange }),
        Entitlements = {
            type = "list",
            member = M.Entitlement,
            traits = {
                required = true,
            },
        },
        Beneficiary = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConsumptionConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConsumptionConfiguration }),
        LicenseMetadata = {
            type = "list",
            member = M.Metadata,
        },
        ClientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.LicenseStatus = {
    AVAILABLE = "AVAILABLE",
    PENDING_AVAILABLE = "PENDING_AVAILABLE",
    DEACTIVATED = "DEACTIVATED",
    SUSPENDED = "SUSPENDED",
    EXPIRED = "EXPIRED",
    PENDING_DELETE = "PENDING_DELETE",
    DELETED = "DELETED",
}

M.CreateLicenseOutput = {
    type = "structure",
    id = "CreateLicenseOutput",
    members = {
        LicenseArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.LicenseAssetGroupConfiguration = {
    type = "structure",
    id = "LicenseAssetGroupConfiguration",
    members = {
        UsageDimension = {
            type = "string",
        },
    },
}

M.LicenseAssetGroupProperty = {
    type = "structure",
    id = "LicenseAssetGroupProperty",
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

M.CreateLicenseAssetGroupInput = {
    type = "structure",
    id = "CreateLicenseAssetGroupInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        LicenseAssetGroupConfigurations = {
            type = "list",
            member = M.LicenseAssetGroupConfiguration,
            traits = {
                required = true,
            },
        },
        AssociatedLicenseAssetRulesetARNs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Properties = {
            type = "list",
            member = M.LicenseAssetGroupProperty,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ClientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateLicenseAssetGroupOutput = {
    type = "structure",
    id = "CreateLicenseAssetGroupOutput",
    members = {
        LicenseAssetGroupArn = {
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
    },
}

M.OrRuleStatement = {
    type = "structure",
    id = "OrRuleStatement",
    members = {
        MatchingRuleStatements = {
            type = "list",
            member = M.MatchingRuleStatement,
        },
        ScriptRuleStatements = {
            type = "list",
            member = M.ScriptRuleStatement,
        },
    },
}

M.InstanceRuleStatement = {
    type = "structure",
    id = "InstanceRuleStatement",
    members = {
        AndRuleStatement = M.AndRuleStatement,
        OrRuleStatement = M.OrRuleStatement,
        MatchingRuleStatement = M.MatchingRuleStatement,
        ScriptRuleStatement = M.ScriptRuleStatement,
    },
}

M.LicenseConfigurationRuleStatement = {
    type = "structure",
    id = "LicenseConfigurationRuleStatement",
    members = {
        AndRuleStatement = M.AndRuleStatement,
        OrRuleStatement = M.OrRuleStatement,
        MatchingRuleStatement = M.MatchingRuleStatement,
    },
}

M.LicenseRuleStatement = {
    type = "structure",
    id = "LicenseRuleStatement",
    members = {
        AndRuleStatement = M.AndRuleStatement,
        OrRuleStatement = M.OrRuleStatement,
        MatchingRuleStatement = M.MatchingRuleStatement,
    },
}

M.RuleStatement = {
    type = "structure",
    id = "RuleStatement",
    members = {
        LicenseConfigurationRuleStatement = M.LicenseConfigurationRuleStatement,
        LicenseRuleStatement = M.LicenseRuleStatement,
        InstanceRuleStatement = M.InstanceRuleStatement,
    },
}

M.LicenseAssetRule = {
    type = "structure",
    id = "LicenseAssetRule",
    members = {
        RuleStatement = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleStatement }),
    },
}

M.CreateLicenseAssetRulesetInput = {
    type = "structure",
    id = "CreateLicenseAssetRulesetInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Rules = {
            type = "list",
            member = M.LicenseAssetRule,
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ClientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateLicenseAssetRulesetOutput = {
    type = "structure",
    id = "CreateLicenseAssetRulesetOutput",
    members = {
        LicenseAssetRulesetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LicenseCountingType = {
    VCPU = "vCPU",
    INSTANCE = "Instance",
    CORE = "Core",
    SOCKET = "Socket",
}

M.ProductInformationFilter = {
    type = "structure",
    id = "ProductInformationFilter",
    members = {
        ProductInformationFilterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProductInformationFilterValue = {
            type = "list",
            member = { type = "string" },
        },
        ProductInformationFilterComparator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProductInformation = {
    type = "structure",
    id = "ProductInformation",
    members = {
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProductInformationFilterList = {
            type = "list",
            member = M.ProductInformationFilter,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateLicenseConfigurationInput = {
    type = "structure",
    id = "CreateLicenseConfigurationInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        LicenseCountingType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LicenseCount = {
            type = "long",
        },
        LicenseCountHardLimit = {
            type = "boolean",
        },
        LicenseRules = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        DisassociateWhenNotFound = {
            type = "boolean",
        },
        ProductInformationList = {
            type = "list",
            member = M.ProductInformation,
        },
        LicenseExpiry = {
            type = "long",
        },
    },
}

M.CreateLicenseConfigurationOutput = {
    type = "structure",
    id = "CreateLicenseConfigurationOutput",
    members = {
        LicenseConfigurationArn = {
            type = "string",
        },
    },
}

M.ProductCodeType = {
    MARKETPLACE = "marketplace",
}

M.ProductCodeListItem = {
    type = "structure",
    id = "ProductCodeListItem",
    members = {
        ProductCodeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProductCodeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LicenseConversionContext = {
    type = "structure",
    id = "LicenseConversionContext",
    members = {
        UsageOperation = {
            type = "string",
        },
        ProductCodes = {
            type = "list",
            member = M.ProductCodeListItem,
        },
    },
}

M.CreateLicenseConversionTaskForResourceInput = {
    type = "structure",
    id = "CreateLicenseConversionTaskForResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceLicenseContext = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LicenseConversionContext }),
        DestinationLicenseContext = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LicenseConversionContext }),
    },
}

M.CreateLicenseConversionTaskForResourceOutput = {
    type = "structure",
    id = "CreateLicenseConversionTaskForResourceOutput",
    members = {
        LicenseConversionTaskId = {
            type = "string",
        },
    },
}

M.ReportContext = {
    type = "structure",
    id = "ReportContext",
    members = {
        licenseConfigurationArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                default = {},
            },
        },
        licenseAssetGroupArns = {
            type = "list",
            member = { type = "string" },
        },
        reportStartDate = {
            type = "timestamp",
        },
        reportEndDate = {
            type = "timestamp",
        },
    },
}

M.ReportFrequencyType = {
    DAY = "DAY",
    WEEK = "WEEK",
    MONTH = "MONTH",
    ONE_TIME = "ONE_TIME",
}

M.ReportFrequency = {
    type = "structure",
    id = "ReportFrequency",
    members = {
        value = {
            type = "integer",
        },
        period = {
            type = "string",
        },
    },
}

M.ReportType = {
    LICENSE_CONFIGURATION_SUMMARY_REPORT = "LicenseConfigurationSummaryReport",
    LICENSE_CONFIGURATION_USAGE_REPORT = "LicenseConfigurationUsageReport",
    LICENSE_ASSET_GROUP_USAGE_REPORT = "LicenseAssetGroupUsageReport",
}

M.CreateLicenseManagerReportGeneratorInput = {
    type = "structure",
    id = "CreateLicenseManagerReportGeneratorInput",
    members = {
        ReportGeneratorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ReportContext = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReportContext }),
        ReportFrequency = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReportFrequency }),
        ClientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateLicenseManagerReportGeneratorOutput = {
    type = "structure",
    id = "CreateLicenseManagerReportGeneratorOutput",
    members = {
        LicenseManagerReportGeneratorArn = {
            type = "string",
        },
    },
}

M.CreateLicenseVersionInput = {
    type = "structure",
    id = "CreateLicenseVersionInput",
    members = {
        LicenseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LicenseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProductName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Issuer = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Issuer }),
        HomeRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Validity = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DatetimeRange }),
        LicenseMetadata = {
            type = "list",
            member = M.Metadata,
        },
        Entitlements = {
            type = "list",
            member = M.Entitlement,
            traits = {
                required = true,
            },
        },
        ConsumptionConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConsumptionConfiguration }),
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceVersion = {
            type = "string",
        },
    },
}

M.CreateLicenseVersionOutput = {
    type = "structure",
    id = "CreateLicenseVersionOutput",
    members = {
        LicenseArn = {
            type = "string",
        },
        Version = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.CreateTokenInput = {
    type = "structure",
    id = "CreateTokenInput",
    members = {
        LicenseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArns = {
            type = "list",
            member = { type = "string" },
        },
        ExpirationInDays = {
            type = "integer",
        },
        TokenProperties = {
            type = "list",
            member = { type = "string" },
        },
        ClientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TokenType = {
    REFRESH_TOKEN = "REFRESH_TOKEN",
}

M.CreateTokenOutput = {
    type = "structure",
    id = "CreateTokenOutput",
    members = {
        TokenId = {
            type = "string",
        },
        TokenType = {
            type = "string",
        },
        Token = {
            type = "string",
        },
    },
}

M.DeleteGrantInput = {
    type = "structure",
    id = "DeleteGrantInput",
    members = {
        GrantArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StatusReason = {
            type = "string",
        },
        Version = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteGrantOutput = {
    type = "structure",
    id = "DeleteGrantOutput",
    members = {
        GrantArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.DeleteLicenseInput = {
    type = "structure",
    id = "DeleteLicenseInput",
    members = {
        LicenseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LicenseDeletionStatus = {
    PENDING_DELETE = "PENDING_DELETE",
    DELETED = "DELETED",
}

M.DeleteLicenseOutput = {
    type = "structure",
    id = "DeleteLicenseOutput",
    members = {
        Status = {
            type = "string",
        },
        DeletionDate = {
            type = "string",
        },
    },
}

M.DeleteLicenseAssetGroupInput = {
    type = "structure",
    id = "DeleteLicenseAssetGroupInput",
    members = {
        LicenseAssetGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LicenseAssetGroupStatus = {
    ACTIVE = "ACTIVE",
    DISABLED = "DISABLED",
    DELETED = "DELETED",
}

M.DeleteLicenseAssetGroupOutput = {
    type = "structure",
    id = "DeleteLicenseAssetGroupOutput",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLicenseAssetRulesetInput = {
    type = "structure",
    id = "DeleteLicenseAssetRulesetInput",
    members = {
        LicenseAssetRulesetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLicenseAssetRulesetOutput = {
    type = "structure",
    id = "DeleteLicenseAssetRulesetOutput",
}

M.DeleteLicenseConfigurationInput = {
    type = "structure",
    id = "DeleteLicenseConfigurationInput",
    members = {
        LicenseConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLicenseConfigurationOutput = {
    type = "structure",
    id = "DeleteLicenseConfigurationOutput",
}

M.DeleteLicenseManagerReportGeneratorInput = {
    type = "structure",
    id = "DeleteLicenseManagerReportGeneratorInput",
    members = {
        LicenseManagerReportGeneratorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLicenseManagerReportGeneratorOutput = {
    type = "structure",
    id = "DeleteLicenseManagerReportGeneratorOutput",
}

M.DeleteTokenInput = {
    type = "structure",
    id = "DeleteTokenInput",
    members = {
        TokenId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTokenOutput = {
    type = "structure",
    id = "DeleteTokenOutput",
}

M.ExtendLicenseConsumptionInput = {
    type = "structure",
    id = "ExtendLicenseConsumptionInput",
    members = {
        LicenseConsumptionToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DryRun = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ExtendLicenseConsumptionOutput = {
    type = "structure",
    id = "ExtendLicenseConsumptionOutput",
    members = {
        LicenseConsumptionToken = {
            type = "string",
        },
        Expiration = {
            type = "string",
        },
    },
}

M.GetAccessTokenInput = {
    type = "structure",
    id = "GetAccessTokenInput",
    members = {
        Token = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TokenProperties = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetAccessTokenOutput = {
    type = "structure",
    id = "GetAccessTokenOutput",
    members = {
        AccessToken = {
            type = "string",
        },
    },
}

M.GetGrantInput = {
    type = "structure",
    id = "GetGrantInput",
    members = {
        GrantArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "string",
        },
    },
}

M.Grant = {
    type = "structure",
    id = "Grant",
    members = {
        GrantArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GrantName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LicenseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GranteePrincipalArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HomeRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GrantStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StatusReason = {
            type = "string",
        },
        Version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GrantedOperations = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Options = M.Options,
    },
}

M.GetGrantOutput = {
    type = "structure",
    id = "GetGrantOutput",
    members = {
        Grant = M.Grant,
    },
}

M.GetLicenseInput = {
    type = "structure",
    id = "GetLicenseInput",
    members = {
        LicenseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "string",
        },
    },
}

M.IssuerDetails = {
    type = "structure",
    id = "IssuerDetails",
    members = {
        Name = {
            type = "string",
        },
        SignKey = {
            type = "string",
        },
        KeyFingerprint = {
            type = "string",
        },
    },
}

M.License = {
    type = "structure",
    id = "License",
    members = {
        LicenseArn = {
            type = "string",
        },
        LicenseName = {
            type = "string",
        },
        ProductName = {
            type = "string",
        },
        ProductSKU = {
            type = "string",
        },
        Issuer = M.IssuerDetails,
        HomeRegion = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Validity = M.DatetimeRange,
        Beneficiary = {
            type = "string",
        },
        Entitlements = {
            type = "list",
            member = M.Entitlement,
        },
        ConsumptionConfiguration = M.ConsumptionConfiguration,
        LicenseMetadata = {
            type = "list",
            member = M.Metadata,
        },
        CreateTime = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.GetLicenseOutput = {
    type = "structure",
    id = "GetLicenseOutput",
    members = {
        License = M.License,
    },
}

M.GetLicenseAssetGroupInput = {
    type = "structure",
    id = "GetLicenseAssetGroupInput",
    members = {
        LicenseAssetGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LicenseAssetGroup = {
    type = "structure",
    id = "LicenseAssetGroup",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        LicenseAssetGroupConfigurations = {
            type = "list",
            member = M.LicenseAssetGroupConfiguration,
        },
        AssociatedLicenseAssetRulesetARNs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Properties = {
            type = "list",
            member = M.LicenseAssetGroupProperty,
        },
        LicenseAssetGroupArn = {
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
        StatusMessage = {
            type = "string",
        },
        LatestUsageAnalysisTime = {
            type = "timestamp",
        },
        LatestResourceDiscoveryTime = {
            type = "timestamp",
        },
    },
}

M.GetLicenseAssetGroupOutput = {
    type = "structure",
    id = "GetLicenseAssetGroupOutput",
    members = {
        LicenseAssetGroup = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LicenseAssetGroup }),
    },
}

M.GetLicenseAssetRulesetInput = {
    type = "structure",
    id = "GetLicenseAssetRulesetInput",
    members = {
        LicenseAssetRulesetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LicenseAssetRuleset = {
    type = "structure",
    id = "LicenseAssetRuleset",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Rules = {
            type = "list",
            member = M.LicenseAssetRule,
            traits = {
                required = true,
            },
        },
        LicenseAssetRulesetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetLicenseAssetRulesetOutput = {
    type = "structure",
    id = "GetLicenseAssetRulesetOutput",
    members = {
        LicenseAssetRuleset = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LicenseAssetRuleset }),
    },
}

M.GetLicenseConfigurationInput = {
    type = "structure",
    id = "GetLicenseConfigurationInput",
    members = {
        LicenseConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceType = {
    EC2_INSTANCE = "EC2_INSTANCE",
    EC2_HOST = "EC2_HOST",
    EC2_AMI = "EC2_AMI",
    RDS = "RDS",
    SYSTEMS_MANAGER_MANAGED_INSTANCE = "SYSTEMS_MANAGER_MANAGED_INSTANCE",
}

M.ConsumedLicenseSummary = {
    type = "structure",
    id = "ConsumedLicenseSummary",
    members = {
        ResourceType = {
            type = "string",
        },
        ConsumedLicenses = {
            type = "long",
        },
    },
}

M.ManagedResourceSummary = {
    type = "structure",
    id = "ManagedResourceSummary",
    members = {
        ResourceType = {
            type = "string",
        },
        AssociationCount = {
            type = "long",
        },
    },
}

M.GetLicenseConfigurationOutput = {
    type = "structure",
    id = "GetLicenseConfigurationOutput",
    members = {
        LicenseConfigurationId = {
            type = "string",
        },
        LicenseConfigurationArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        LicenseCountingType = {
            type = "string",
        },
        LicenseRules = {
            type = "list",
            member = { type = "string" },
        },
        LicenseCount = {
            type = "long",
        },
        LicenseCountHardLimit = {
            type = "boolean",
        },
        ConsumedLicenses = {
            type = "long",
        },
        Status = {
            type = "string",
        },
        OwnerAccountId = {
            type = "string",
        },
        ConsumedLicenseSummaryList = {
            type = "list",
            member = M.ConsumedLicenseSummary,
        },
        ManagedResourceSummaryList = {
            type = "list",
            member = M.ManagedResourceSummary,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ProductInformationList = {
            type = "list",
            member = M.ProductInformation,
        },
        AutomatedDiscoveryInformation = M.AutomatedDiscoveryInformation,
        DisassociateWhenNotFound = {
            type = "boolean",
        },
        LicenseExpiry = {
            type = "long",
        },
    },
}

M.GetLicenseConversionTaskInput = {
    type = "structure",
    id = "GetLicenseConversionTaskInput",
    members = {
        LicenseConversionTaskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LicenseConversionTaskStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.GetLicenseConversionTaskOutput = {
    type = "structure",
    id = "GetLicenseConversionTaskOutput",
    members = {
        LicenseConversionTaskId = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        SourceLicenseContext = M.LicenseConversionContext,
        DestinationLicenseContext = M.LicenseConversionContext,
        StatusMessage = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        LicenseConversionTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
    },
}

M.GetLicenseManagerReportGeneratorInput = {
    type = "structure",
    id = "GetLicenseManagerReportGeneratorInput",
    members = {
        LicenseManagerReportGeneratorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.S3Location = {
    type = "structure",
    id = "S3Location",
    members = {
        bucket = {
            type = "string",
        },
        keyPrefix = {
            type = "string",
        },
    },
}

M.ReportGenerator = {
    type = "structure",
    id = "ReportGenerator",
    members = {
        ReportGeneratorName = {
            type = "string",
        },
        ReportType = {
            type = "list",
            member = { type = "string" },
        },
        ReportContext = M.ReportContext,
        ReportFrequency = M.ReportFrequency,
        LicenseManagerReportGeneratorArn = {
            type = "string",
        },
        LastRunStatus = {
            type = "string",
        },
        LastRunFailureReason = {
            type = "string",
        },
        LastReportGenerationTime = {
            type = "string",
        },
        ReportCreatorAccount = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        S3Location = M.S3Location,
        CreateTime = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.GetLicenseManagerReportGeneratorOutput = {
    type = "structure",
    id = "GetLicenseManagerReportGeneratorOutput",
    members = {
        ReportGenerator = M.ReportGenerator,
    },
}

M.GetLicenseUsageInput = {
    type = "structure",
    id = "GetLicenseUsageInput",
    members = {
        LicenseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EntitlementUsage = {
    type = "structure",
    id = "EntitlementUsage",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConsumedValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxCount = {
            type = "string",
        },
        Unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LicenseUsage = {
    type = "structure",
    id = "LicenseUsage",
    members = {
        EntitlementUsages = {
            type = "list",
            member = M.EntitlementUsage,
        },
    },
}

M.GetLicenseUsageOutput = {
    type = "structure",
    id = "GetLicenseUsageOutput",
    members = {
        LicenseUsage = M.LicenseUsage,
    },
}

M.GetServiceSettingsInput = {
    type = "structure",
    id = "GetServiceSettingsInput",
}

M.OrganizationConfiguration = {
    type = "structure",
    id = "OrganizationConfiguration",
    members = {
        EnableIntegration = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.CrossAccountDiscoveryServiceStatus = {
    type = "structure",
    id = "CrossAccountDiscoveryServiceStatus",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RegionStatus = {
    type = "structure",
    id = "RegionStatus",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.CrossRegionDiscoveryStatus = {
    type = "structure",
    id = "CrossRegionDiscoveryStatus",
    members = {
        Message = {
            type = "map",
            key = { type = "string" },
            value = M.RegionStatus,
        },
    },
}

M.ServiceStatus = {
    type = "structure",
    id = "ServiceStatus",
    members = {
        CrossAccountDiscovery = M.CrossAccountDiscoveryServiceStatus,
        CrossRegionDiscovery = M.CrossRegionDiscoveryStatus,
    },
}

M.GetServiceSettingsOutput = {
    type = "structure",
    id = "GetServiceSettingsOutput",
    members = {
        S3BucketArn = {
            type = "string",
        },
        SnsTopicArn = {
            type = "string",
        },
        OrganizationConfiguration = M.OrganizationConfiguration,
        EnableCrossAccountsDiscovery = {
            type = "boolean",
        },
        LicenseManagerResourceShareArn = {
            type = "string",
        },
        CrossRegionDiscoveryHomeRegion = {
            type = "string",
        },
        CrossRegionDiscoverySourceRegions = {
            type = "list",
            member = { type = "string" },
        },
        ServiceStatus = M.ServiceStatus,
    },
}

M.ListAssetsForLicenseAssetGroupInput = {
    type = "structure",
    id = "ListAssetsForLicenseAssetGroupInput",
    members = {
        LicenseAssetGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AssetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAssetsForLicenseAssetGroupOutput = {
    type = "structure",
    id = "ListAssetsForLicenseAssetGroupOutput",
    members = {
        Assets = {
            type = "list",
            member = M.Asset,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.FilterLimitExceededException = {
    type = "structure",
    id = "FilterLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListAssociationsForLicenseConfigurationInput = {
    type = "structure",
    id = "ListAssociationsForLicenseConfigurationInput",
    members = {
        LicenseConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.LicenseConfigurationAssociation = {
    type = "structure",
    id = "LicenseConfigurationAssociation",
    members = {
        ResourceArn = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ResourceOwnerId = {
            type = "string",
        },
        AssociationTime = {
            type = "timestamp",
        },
        AmiAssociationScope = {
            type = "string",
        },
    },
}

M.ListAssociationsForLicenseConfigurationOutput = {
    type = "structure",
    id = "ListAssociationsForLicenseConfigurationOutput",
    members = {
        LicenseConfigurationAssociations = {
            type = "list",
            member = M.LicenseConfigurationAssociation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Filter = {
    type = "structure",
    id = "Filter",
    members = {
        Name = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListDistributedGrantsInput = {
    type = "structure",
    id = "ListDistributedGrantsInput",
    members = {
        GrantArns = {
            type = "list",
            member = { type = "string" },
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListDistributedGrantsOutput = {
    type = "structure",
    id = "ListDistributedGrantsOutput",
    members = {
        Grants = {
            type = "list",
            member = M.Grant,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFailuresForLicenseConfigurationOperationsInput = {
    type = "structure",
    id = "ListFailuresForLicenseConfigurationOperationsInput",
    members = {
        LicenseConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.LicenseOperationFailure = {
    type = "structure",
    id = "LicenseOperationFailure",
    members = {
        ResourceArn = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        FailureTime = {
            type = "timestamp",
        },
        OperationName = {
            type = "string",
        },
        ResourceOwnerId = {
            type = "string",
        },
        OperationRequestedBy = {
            type = "string",
        },
        MetadataList = {
            type = "list",
            member = M.Metadata,
        },
    },
}

M.ListFailuresForLicenseConfigurationOperationsOutput = {
    type = "structure",
    id = "ListFailuresForLicenseConfigurationOperationsOutput",
    members = {
        LicenseOperationFailureList = {
            type = "list",
            member = M.LicenseOperationFailure,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLicenseAssetGroupsInput = {
    type = "structure",
    id = "ListLicenseAssetGroupsInput",
    members = {
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLicenseAssetGroupsOutput = {
    type = "structure",
    id = "ListLicenseAssetGroupsOutput",
    members = {
        LicenseAssetGroups = {
            type = "list",
            member = M.LicenseAssetGroup,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLicenseAssetRulesetsInput = {
    type = "structure",
    id = "ListLicenseAssetRulesetsInput",
    members = {
        Filters = {
            type = "list",
            member = M.Filter,
        },
        ShowAWSManagedLicenseAssetRulesets = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLicenseAssetRulesetsOutput = {
    type = "structure",
    id = "ListLicenseAssetRulesetsOutput",
    members = {
        LicenseAssetRulesets = {
            type = "list",
            member = M.LicenseAssetRuleset,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLicenseConfigurationsInput = {
    type = "structure",
    id = "ListLicenseConfigurationsInput",
    members = {
        LicenseConfigurationArns = {
            type = "list",
            member = { type = "string" },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.LicenseConfiguration = {
    type = "structure",
    id = "LicenseConfiguration",
    members = {
        LicenseConfigurationId = {
            type = "string",
        },
        LicenseConfigurationArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        LicenseCountingType = {
            type = "string",
        },
        LicenseRules = {
            type = "list",
            member = { type = "string" },
        },
        LicenseCount = {
            type = "long",
        },
        LicenseCountHardLimit = {
            type = "boolean",
        },
        DisassociateWhenNotFound = {
            type = "boolean",
        },
        ConsumedLicenses = {
            type = "long",
        },
        Status = {
            type = "string",
        },
        OwnerAccountId = {
            type = "string",
        },
        ConsumedLicenseSummaryList = {
            type = "list",
            member = M.ConsumedLicenseSummary,
        },
        ManagedResourceSummaryList = {
            type = "list",
            member = M.ManagedResourceSummary,
        },
        ProductInformationList = {
            type = "list",
            member = M.ProductInformation,
        },
        AutomatedDiscoveryInformation = M.AutomatedDiscoveryInformation,
        LicenseExpiry = {
            type = "long",
        },
    },
}

M.ListLicenseConfigurationsOutput = {
    type = "structure",
    id = "ListLicenseConfigurationsOutput",
    members = {
        LicenseConfigurations = {
            type = "list",
            member = M.LicenseConfiguration,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLicenseConfigurationsForOrganizationInput = {
    type = "structure",
    id = "ListLicenseConfigurationsForOrganizationInput",
    members = {
        LicenseConfigurationArns = {
            type = "list",
            member = { type = "string" },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.ListLicenseConfigurationsForOrganizationOutput = {
    type = "structure",
    id = "ListLicenseConfigurationsForOrganizationOutput",
    members = {
        LicenseConfigurations = {
            type = "list",
            member = M.LicenseConfiguration,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLicenseConversionTasksInput = {
    type = "structure",
    id = "ListLicenseConversionTasksInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.LicenseConversionTask = {
    type = "structure",
    id = "LicenseConversionTask",
    members = {
        LicenseConversionTaskId = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        SourceLicenseContext = M.LicenseConversionContext,
        DestinationLicenseContext = M.LicenseConversionContext,
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        LicenseConversionTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
    },
}

M.ListLicenseConversionTasksOutput = {
    type = "structure",
    id = "ListLicenseConversionTasksOutput",
    members = {
        LicenseConversionTasks = {
            type = "list",
            member = M.LicenseConversionTask,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLicenseManagerReportGeneratorsInput = {
    type = "structure",
    id = "ListLicenseManagerReportGeneratorsInput",
    members = {
        Filters = {
            type = "list",
            member = M.Filter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListLicenseManagerReportGeneratorsOutput = {
    type = "structure",
    id = "ListLicenseManagerReportGeneratorsOutput",
    members = {
        ReportGenerators = {
            type = "list",
            member = M.ReportGenerator,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLicensesInput = {
    type = "structure",
    id = "ListLicensesInput",
    members = {
        LicenseArns = {
            type = "list",
            member = { type = "string" },
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListLicensesOutput = {
    type = "structure",
    id = "ListLicensesOutput",
    members = {
        Licenses = {
            type = "list",
            member = M.License,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLicenseSpecificationsForResourceInput = {
    type = "structure",
    id = "ListLicenseSpecificationsForResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.LicenseSpecification = {
    type = "structure",
    id = "LicenseSpecification",
    members = {
        LicenseConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AmiAssociationScope = {
            type = "string",
        },
    },
}

M.ListLicenseSpecificationsForResourceOutput = {
    type = "structure",
    id = "ListLicenseSpecificationsForResourceOutput",
    members = {
        LicenseSpecifications = {
            type = "list",
            member = M.LicenseSpecification,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLicenseVersionsInput = {
    type = "structure",
    id = "ListLicenseVersionsInput",
    members = {
        LicenseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListLicenseVersionsOutput = {
    type = "structure",
    id = "ListLicenseVersionsOutput",
    members = {
        Licenses = {
            type = "list",
            member = M.License,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListReceivedGrantsInput = {
    type = "structure",
    id = "ListReceivedGrantsInput",
    members = {
        GrantArns = {
            type = "list",
            member = { type = "string" },
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListReceivedGrantsOutput = {
    type = "structure",
    id = "ListReceivedGrantsOutput",
    members = {
        Grants = {
            type = "list",
            member = M.Grant,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListReceivedGrantsForOrganizationInput = {
    type = "structure",
    id = "ListReceivedGrantsForOrganizationInput",
    members = {
        LicenseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListReceivedGrantsForOrganizationOutput = {
    type = "structure",
    id = "ListReceivedGrantsForOrganizationOutput",
    members = {
        Grants = {
            type = "list",
            member = M.Grant,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListReceivedLicensesInput = {
    type = "structure",
    id = "ListReceivedLicensesInput",
    members = {
        LicenseArns = {
            type = "list",
            member = { type = "string" },
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ReceivedStatus = {
    PENDING_WORKFLOW = "PENDING_WORKFLOW",
    PENDING_ACCEPT = "PENDING_ACCEPT",
    REJECTED = "REJECTED",
    ACTIVE = "ACTIVE",
    FAILED_WORKFLOW = "FAILED_WORKFLOW",
    DELETED = "DELETED",
    DISABLED = "DISABLED",
    WORKFLOW_COMPLETED = "WORKFLOW_COMPLETED",
}

M.ReceivedMetadata = {
    type = "structure",
    id = "ReceivedMetadata",
    members = {
        ReceivedStatus = {
            type = "string",
        },
        ReceivedStatusReason = {
            type = "string",
        },
        AllowedOperations = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GrantedLicense = {
    type = "structure",
    id = "GrantedLicense",
    members = {
        LicenseArn = {
            type = "string",
        },
        LicenseName = {
            type = "string",
        },
        ProductName = {
            type = "string",
        },
        ProductSKU = {
            type = "string",
        },
        Issuer = M.IssuerDetails,
        HomeRegion = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Validity = M.DatetimeRange,
        Beneficiary = {
            type = "string",
        },
        Entitlements = {
            type = "list",
            member = M.Entitlement,
        },
        ConsumptionConfiguration = M.ConsumptionConfiguration,
        LicenseMetadata = {
            type = "list",
            member = M.Metadata,
        },
        CreateTime = {
            type = "string",
        },
        Version = {
            type = "string",
        },
        ReceivedMetadata = M.ReceivedMetadata,
    },
}

M.ListReceivedLicensesOutput = {
    type = "structure",
    id = "ListReceivedLicensesOutput",
    members = {
        Licenses = {
            type = "list",
            member = M.GrantedLicense,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListReceivedLicensesForOrganizationInput = {
    type = "structure",
    id = "ListReceivedLicensesForOrganizationInput",
    members = {
        Filters = {
            type = "list",
            member = M.Filter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListReceivedLicensesForOrganizationOutput = {
    type = "structure",
    id = "ListReceivedLicensesForOrganizationOutput",
    members = {
        Licenses = {
            type = "list",
            member = M.GrantedLicense,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.FailedDependencyException = {
    type = "structure",
    id = "FailedDependencyException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
    },
}

M.InventoryFilterCondition = {
    EQUALS = "EQUALS",
    NOT_EQUALS = "NOT_EQUALS",
    BEGINS_WITH = "BEGINS_WITH",
    CONTAINS = "CONTAINS",
}

M.InventoryFilter = {
    type = "structure",
    id = "InventoryFilter",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Condition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
        },
    },
}

M.ListResourceInventoryInput = {
    type = "structure",
    id = "ListResourceInventoryInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.InventoryFilter,
        },
    },
}

M.ResourceInventory = {
    type = "structure",
    id = "ResourceInventory",
    members = {
        ResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        Platform = {
            type = "string",
        },
        PlatformVersion = {
            type = "string",
        },
        ResourceOwningAccountId = {
            type = "string",
        },
        MarketplaceProductCodes = {
            type = "list",
            member = { type = "string" },
        },
        UsageOperation = {
            type = "string",
        },
        AmiId = {
            type = "string",
        },
        HostId = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        InstanceType = {
            type = "string",
        },
    },
}

M.ListResourceInventoryOutput = {
    type = "structure",
    id = "ListResourceInventoryOutput",
    members = {
        ResourceInventoryList = {
            type = "list",
            member = M.ResourceInventory,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListTokensInput = {
    type = "structure",
    id = "ListTokensInput",
    members = {
        TokenIds = {
            type = "list",
            member = { type = "string" },
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.TokenData = {
    type = "structure",
    id = "TokenData",
    members = {
        TokenId = {
            type = "string",
        },
        TokenType = {
            type = "string",
        },
        LicenseArn = {
            type = "string",
        },
        ExpirationTime = {
            type = "string",
        },
        TokenProperties = {
            type = "list",
            member = { type = "string" },
        },
        RoleArns = {
            type = "list",
            member = { type = "string" },
        },
        Status = {
            type = "string",
        },
    },
}

M.ListTokensOutput = {
    type = "structure",
    id = "ListTokensOutput",
    members = {
        Tokens = {
            type = "list",
            member = M.TokenData,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListUsageForLicenseConfigurationInput = {
    type = "structure",
    id = "ListUsageForLicenseConfigurationInput",
    members = {
        LicenseConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.LicenseConfigurationUsage = {
    type = "structure",
    id = "LicenseConfigurationUsage",
    members = {
        ResourceArn = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ResourceStatus = {
            type = "string",
        },
        ResourceOwnerId = {
            type = "string",
        },
        AssociationTime = {
            type = "timestamp",
        },
        ConsumedLicenses = {
            type = "long",
        },
    },
}

M.ListUsageForLicenseConfigurationOutput = {
    type = "structure",
    id = "ListUsageForLicenseConfigurationOutput",
    members = {
        LicenseConfigurationUsageList = {
            type = "list",
            member = M.LicenseConfigurationUsage,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RejectGrantInput = {
    type = "structure",
    id = "RejectGrantInput",
    members = {
        GrantArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RejectGrantOutput = {
    type = "structure",
    id = "RejectGrantOutput",
    members = {
        GrantArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
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
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.UpdateLicenseAssetGroupInput = {
    type = "structure",
    id = "UpdateLicenseAssetGroupInput",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        LicenseAssetGroupConfigurations = {
            type = "list",
            member = M.LicenseAssetGroupConfiguration,
        },
        AssociatedLicenseAssetRulesetARNs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Properties = {
            type = "list",
            member = M.LicenseAssetGroupProperty,
        },
        LicenseAssetGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateLicenseAssetGroupOutput = {
    type = "structure",
    id = "UpdateLicenseAssetGroupOutput",
    members = {
        LicenseAssetGroupArn = {
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
    },
}

M.UpdateLicenseAssetRulesetInput = {
    type = "structure",
    id = "UpdateLicenseAssetRulesetInput",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Rules = {
            type = "list",
            member = M.LicenseAssetRule,
            traits = {
                required = true,
            },
        },
        LicenseAssetRulesetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateLicenseAssetRulesetOutput = {
    type = "structure",
    id = "UpdateLicenseAssetRulesetOutput",
    members = {
        LicenseAssetRulesetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LicenseConfigurationStatus = {
    AVAILABLE = "AVAILABLE",
    DISABLED = "DISABLED",
}

M.UpdateLicenseConfigurationInput = {
    type = "structure",
    id = "UpdateLicenseConfigurationInput",
    members = {
        LicenseConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LicenseConfigurationStatus = {
            type = "string",
        },
        LicenseRules = {
            type = "list",
            member = { type = "string" },
        },
        LicenseCount = {
            type = "long",
        },
        LicenseCountHardLimit = {
            type = "boolean",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ProductInformationList = {
            type = "list",
            member = M.ProductInformation,
        },
        DisassociateWhenNotFound = {
            type = "boolean",
        },
        LicenseExpiry = {
            type = "long",
        },
    },
}

M.UpdateLicenseConfigurationOutput = {
    type = "structure",
    id = "UpdateLicenseConfigurationOutput",
}

M.UpdateLicenseManagerReportGeneratorInput = {
    type = "structure",
    id = "UpdateLicenseManagerReportGeneratorInput",
    members = {
        LicenseManagerReportGeneratorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReportGeneratorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ReportContext = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReportContext }),
        ReportFrequency = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReportFrequency }),
        ClientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateLicenseManagerReportGeneratorOutput = {
    type = "structure",
    id = "UpdateLicenseManagerReportGeneratorOutput",
}

M.InvalidResourceStateException = {
    type = "structure",
    id = "InvalidResourceStateException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.LicenseUsageException = {
    type = "structure",
    id = "LicenseUsageException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateLicenseSpecificationsForResourceInput = {
    type = "structure",
    id = "UpdateLicenseSpecificationsForResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AddLicenseSpecifications = {
            type = "list",
            member = M.LicenseSpecification,
        },
        RemoveLicenseSpecifications = {
            type = "list",
            member = M.LicenseSpecification,
        },
    },
}

M.UpdateLicenseSpecificationsForResourceOutput = {
    type = "structure",
    id = "UpdateLicenseSpecificationsForResourceOutput",
}

M.UpdateServiceSettingsInput = {
    type = "structure",
    id = "UpdateServiceSettingsInput",
    members = {
        S3BucketArn = {
            type = "string",
        },
        SnsTopicArn = {
            type = "string",
        },
        OrganizationConfiguration = M.OrganizationConfiguration,
        EnableCrossAccountsDiscovery = {
            type = "boolean",
        },
        EnabledDiscoverySourceRegions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateServiceSettingsOutput = {
    type = "structure",
    id = "UpdateServiceSettingsOutput",
}

return M
