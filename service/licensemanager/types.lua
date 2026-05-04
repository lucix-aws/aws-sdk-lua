local M = {}

M.AcceptGrantInput = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AuthorizationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidParameterValueException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RateLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServerInternalException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ScriptRuleStatement = {
    type = "structure",
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
    members = {
        MatchingRuleStatements = {
            type = "list",
            member_type = "structure",
        },
        ScriptRuleStatements = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Asset = {
    type = "structure",
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
    members = {
        LastRunTime = {
            type = "timestamp",
        },
    },
}

M.CheckInLicenseInput = {
    type = "structure",
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
}

M.ConflictException = {
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

M.Metadata = {
    type = "structure",
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
    members = {
        LicenseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Entitlements = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
    members = {
        LicenseArn = {
            type = "string",
        },
        LicenseConsumptionToken = {
            type = "string",
        },
        EntitlementsAllowed = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
    },
}

M.EntitlementNotAllowedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoEntitlementsAllowedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RedirectException = {
    type = "structure",
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
            member_type = "structure",
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
    members = {
        CheckoutType = {
            type = "string",
        },
        LicenseConsumptionToken = {
            type = "string",
        },
        EntitlementsAllowed = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "string",
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

M.CreateGrantOutput = {
    type = "structure",
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
    members = {
        ActivationOverrideBehavior = {
            type = "string",
        },
    },
}

M.CreateGrantVersionInput = {
    type = "structure",
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
            member_type = "string",
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
        Options = {
            type = "structure",
        },
    },
}

M.CreateGrantVersionOutput = {
    type = "structure",
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
    members = {
        AllowEarlyCheckIn = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        MaxTimeToLiveInMinutes = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ProvisionalConfiguration = {
    type = "structure",
    members = {
        MaxTimeToLiveInMinutes = {
            type = "number",
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
    members = {
        RenewType = {
            type = "string",
        },
        ProvisionalConfiguration = {
            type = "structure",
        },
        BorrowConfiguration = {
            type = "structure",
        },
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
            type = "number",
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
        Issuer = {
            type = "structure",
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
        Validity = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Entitlements = {
            type = "list",
            member_type = "structure",
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
        ConsumptionConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        LicenseMetadata = {
            type = "list",
            member_type = "structure",
        },
        ClientToken = {
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
    members = {
        UsageDimension = {
            type = "string",
        },
    },
}

M.LicenseAssetGroupProperty = {
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

M.CreateLicenseAssetGroupInput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        AssociatedLicenseAssetRulesetARNs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Properties = {
            type = "list",
            member_type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
    members = {
        MatchingRuleStatements = {
            type = "list",
            member_type = "structure",
        },
        ScriptRuleStatements = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.InstanceRuleStatement = {
    type = "structure",
    members = {
        AndRuleStatement = {
            type = "structure",
        },
        OrRuleStatement = {
            type = "structure",
        },
        MatchingRuleStatement = {
            type = "structure",
        },
        ScriptRuleStatement = {
            type = "structure",
        },
    },
}

M.LicenseConfigurationRuleStatement = {
    type = "structure",
    members = {
        AndRuleStatement = {
            type = "structure",
        },
        OrRuleStatement = {
            type = "structure",
        },
        MatchingRuleStatement = {
            type = "structure",
        },
    },
}

M.LicenseRuleStatement = {
    type = "structure",
    members = {
        AndRuleStatement = {
            type = "structure",
        },
        OrRuleStatement = {
            type = "structure",
        },
        MatchingRuleStatement = {
            type = "structure",
        },
    },
}

M.RuleStatement = {
    type = "structure",
    members = {
        LicenseConfigurationRuleStatement = {
            type = "structure",
        },
        LicenseRuleStatement = {
            type = "structure",
        },
        InstanceRuleStatement = {
            type = "structure",
        },
    },
}

M.LicenseAssetRule = {
    type = "structure",
    members = {
        RuleStatement = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateLicenseAssetRulesetInput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
    members = {
        ProductInformationFilterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProductInformationFilterValue = {
            type = "list",
            member_type = "string",
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
    members = {
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProductInformationFilterList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateLicenseConfigurationInput = {
    type = "structure",
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
            type = "number",
        },
        LicenseCountHardLimit = {
            type = "boolean",
        },
        LicenseRules = {
            type = "list",
            member_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        DisassociateWhenNotFound = {
            type = "boolean",
        },
        ProductInformationList = {
            type = "list",
            member_type = "structure",
        },
        LicenseExpiry = {
            type = "number",
        },
    },
}

M.CreateLicenseConfigurationOutput = {
    type = "structure",
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
    members = {
        UsageOperation = {
            type = "string",
        },
        ProductCodes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateLicenseConversionTaskForResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceLicenseContext = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DestinationLicenseContext = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateLicenseConversionTaskForResourceOutput = {
    type = "structure",
    members = {
        LicenseConversionTaskId = {
            type = "string",
        },
    },
}

M.ReportContext = {
    type = "structure",
    members = {
        licenseConfigurationArns = {
            type = "list",
            member_type = "string",
        },
        licenseAssetGroupArns = {
            type = "list",
            member_type = "string",
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
    members = {
        value = {
            type = "number",
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
    members = {
        ReportGeneratorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        ReportContext = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ReportFrequency = {
            type = "structure",
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
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateLicenseManagerReportGeneratorOutput = {
    type = "structure",
    members = {
        LicenseManagerReportGeneratorArn = {
            type = "string",
        },
    },
}

M.CreateLicenseVersionInput = {
    type = "structure",
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
        Issuer = {
            type = "structure",
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
        Validity = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        LicenseMetadata = {
            type = "list",
            member_type = "structure",
        },
        Entitlements = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ConsumptionConfiguration = {
            type = "structure",
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
    members = {
        LicenseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArns = {
            type = "list",
            member_type = "string",
        },
        ExpirationInDays = {
            type = "number",
        },
        TokenProperties = {
            type = "list",
            member_type = "string",
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
}

M.DeleteLicenseConfigurationInput = {
    type = "structure",
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
}

M.DeleteLicenseManagerReportGeneratorInput = {
    type = "structure",
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
}

M.DeleteTokenInput = {
    type = "structure",
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
}

M.ExtendLicenseConsumptionInput = {
    type = "structure",
    members = {
        LicenseConsumptionToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.ExtendLicenseConsumptionOutput = {
    type = "structure",
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
    members = {
        Token = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TokenProperties = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GetAccessTokenOutput = {
    type = "structure",
    members = {
        AccessToken = {
            type = "string",
        },
    },
}

M.GetGrantInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Options = {
            type = "structure",
        },
    },
}

M.GetGrantOutput = {
    type = "structure",
    members = {
        Grant = {
            type = "structure",
        },
    },
}

M.GetLicenseInput = {
    type = "structure",
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
        Issuer = {
            type = "structure",
        },
        HomeRegion = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Validity = {
            type = "structure",
        },
        Beneficiary = {
            type = "string",
        },
        Entitlements = {
            type = "list",
            member_type = "structure",
        },
        ConsumptionConfiguration = {
            type = "structure",
        },
        LicenseMetadata = {
            type = "list",
            member_type = "structure",
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
    members = {
        License = {
            type = "structure",
        },
    },
}

M.GetLicenseAssetGroupInput = {
    type = "structure",
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
            member_type = "structure",
        },
        AssociatedLicenseAssetRulesetARNs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Properties = {
            type = "list",
            member_type = "structure",
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
    members = {
        LicenseAssetGroup = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetLicenseAssetRulesetInput = {
    type = "structure",
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
            member_type = "structure",
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
    members = {
        LicenseAssetRuleset = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetLicenseConfigurationInput = {
    type = "structure",
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
    members = {
        ResourceType = {
            type = "string",
        },
        ConsumedLicenses = {
            type = "number",
        },
    },
}

M.ManagedResourceSummary = {
    type = "structure",
    members = {
        ResourceType = {
            type = "string",
        },
        AssociationCount = {
            type = "number",
        },
    },
}

M.GetLicenseConfigurationOutput = {
    type = "structure",
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
            member_type = "string",
        },
        LicenseCount = {
            type = "number",
        },
        LicenseCountHardLimit = {
            type = "boolean",
        },
        ConsumedLicenses = {
            type = "number",
        },
        Status = {
            type = "string",
        },
        OwnerAccountId = {
            type = "string",
        },
        ConsumedLicenseSummaryList = {
            type = "list",
            member_type = "structure",
        },
        ManagedResourceSummaryList = {
            type = "list",
            member_type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ProductInformationList = {
            type = "list",
            member_type = "structure",
        },
        AutomatedDiscoveryInformation = {
            type = "structure",
        },
        DisassociateWhenNotFound = {
            type = "boolean",
        },
        LicenseExpiry = {
            type = "number",
        },
    },
}

M.GetLicenseConversionTaskInput = {
    type = "structure",
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
    members = {
        LicenseConversionTaskId = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        SourceLicenseContext = {
            type = "structure",
        },
        DestinationLicenseContext = {
            type = "structure",
        },
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
    members = {
        ReportGeneratorName = {
            type = "string",
        },
        ReportType = {
            type = "list",
            member_type = "string",
        },
        ReportContext = {
            type = "structure",
        },
        ReportFrequency = {
            type = "structure",
        },
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
        S3Location = {
            type = "structure",
        },
        CreateTime = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetLicenseManagerReportGeneratorOutput = {
    type = "structure",
    members = {
        ReportGenerator = {
            type = "structure",
        },
    },
}

M.GetLicenseUsageInput = {
    type = "structure",
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
    members = {
        EntitlementUsages = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetLicenseUsageOutput = {
    type = "structure",
    members = {
        LicenseUsage = {
            type = "structure",
        },
    },
}

M.GetServiceSettingsInput = {
    type = "structure",
}

M.OrganizationConfiguration = {
    type = "structure",
    members = {
        EnableIntegration = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.CrossAccountDiscoveryServiceStatus = {
    type = "structure",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RegionStatus = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.CrossRegionDiscoveryStatus = {
    type = "structure",
    members = {
        Message = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.ServiceStatus = {
    type = "structure",
    members = {
        CrossAccountDiscovery = {
            type = "structure",
        },
        CrossRegionDiscovery = {
            type = "structure",
        },
    },
}

M.GetServiceSettingsOutput = {
    type = "structure",
    members = {
        S3BucketArn = {
            type = "string",
        },
        SnsTopicArn = {
            type = "string",
        },
        OrganizationConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
        },
        ServiceStatus = {
            type = "structure",
        },
    },
}

M.ListAssetsForLicenseAssetGroupInput = {
    type = "structure",
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
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAssetsForLicenseAssetGroupOutput = {
    type = "structure",
    members = {
        Assets = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.FilterLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListAssociationsForLicenseConfigurationInput = {
    type = "structure",
    members = {
        LicenseConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.LicenseConfigurationAssociation = {
    type = "structure",
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
    members = {
        LicenseConfigurationAssociations = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Filter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Values = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListDistributedGrantsInput = {
    type = "structure",
    members = {
        GrantArns = {
            type = "list",
            member_type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListDistributedGrantsOutput = {
    type = "structure",
    members = {
        Grants = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFailuresForLicenseConfigurationOperationsInput = {
    type = "structure",
    members = {
        LicenseConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.LicenseOperationFailure = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.ListFailuresForLicenseConfigurationOperationsOutput = {
    type = "structure",
    members = {
        LicenseOperationFailureList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLicenseAssetGroupsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLicenseAssetGroupsOutput = {
    type = "structure",
    members = {
        LicenseAssetGroups = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLicenseAssetRulesetsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        ShowAWSManagedLicenseAssetRulesets = {
            type = "boolean",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLicenseAssetRulesetsOutput = {
    type = "structure",
    members = {
        LicenseAssetRulesets = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLicenseConfigurationsInput = {
    type = "structure",
    members = {
        LicenseConfigurationArns = {
            type = "list",
            member_type = "string",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.LicenseConfiguration = {
    type = "structure",
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
            member_type = "string",
        },
        LicenseCount = {
            type = "number",
        },
        LicenseCountHardLimit = {
            type = "boolean",
        },
        DisassociateWhenNotFound = {
            type = "boolean",
        },
        ConsumedLicenses = {
            type = "number",
        },
        Status = {
            type = "string",
        },
        OwnerAccountId = {
            type = "string",
        },
        ConsumedLicenseSummaryList = {
            type = "list",
            member_type = "structure",
        },
        ManagedResourceSummaryList = {
            type = "list",
            member_type = "structure",
        },
        ProductInformationList = {
            type = "list",
            member_type = "structure",
        },
        AutomatedDiscoveryInformation = {
            type = "structure",
        },
        LicenseExpiry = {
            type = "number",
        },
    },
}

M.ListLicenseConfigurationsOutput = {
    type = "structure",
    members = {
        LicenseConfigurations = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLicenseConfigurationsForOrganizationInput = {
    type = "structure",
    members = {
        LicenseConfigurationArns = {
            type = "list",
            member_type = "string",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListLicenseConfigurationsForOrganizationOutput = {
    type = "structure",
    members = {
        LicenseConfigurations = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLicenseConversionTasksInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.LicenseConversionTask = {
    type = "structure",
    members = {
        LicenseConversionTaskId = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        SourceLicenseContext = {
            type = "structure",
        },
        DestinationLicenseContext = {
            type = "structure",
        },
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
    members = {
        LicenseConversionTasks = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLicenseManagerReportGeneratorsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListLicenseManagerReportGeneratorsOutput = {
    type = "structure",
    members = {
        ReportGenerators = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLicensesInput = {
    type = "structure",
    members = {
        LicenseArns = {
            type = "list",
            member_type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListLicensesOutput = {
    type = "structure",
    members = {
        Licenses = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLicenseSpecificationsForResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.LicenseSpecification = {
    type = "structure",
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
    members = {
        LicenseSpecifications = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLicenseVersionsInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.ListLicenseVersionsOutput = {
    type = "structure",
    members = {
        Licenses = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListReceivedGrantsInput = {
    type = "structure",
    members = {
        GrantArns = {
            type = "list",
            member_type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListReceivedGrantsOutput = {
    type = "structure",
    members = {
        Grants = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListReceivedGrantsForOrganizationInput = {
    type = "structure",
    members = {
        LicenseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListReceivedGrantsForOrganizationOutput = {
    type = "structure",
    members = {
        Grants = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListReceivedLicensesInput = {
    type = "structure",
    members = {
        LicenseArns = {
            type = "list",
            member_type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
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
    members = {
        ReceivedStatus = {
            type = "string",
        },
        ReceivedStatusReason = {
            type = "string",
        },
        AllowedOperations = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GrantedLicense = {
    type = "structure",
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
        Issuer = {
            type = "structure",
        },
        HomeRegion = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Validity = {
            type = "structure",
        },
        Beneficiary = {
            type = "string",
        },
        Entitlements = {
            type = "list",
            member_type = "structure",
        },
        ConsumptionConfiguration = {
            type = "structure",
        },
        LicenseMetadata = {
            type = "list",
            member_type = "structure",
        },
        CreateTime = {
            type = "string",
        },
        Version = {
            type = "string",
        },
        ReceivedMetadata = {
            type = "structure",
        },
    },
}

M.ListReceivedLicensesOutput = {
    type = "structure",
    members = {
        Licenses = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListReceivedLicensesForOrganizationInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListReceivedLicensesForOrganizationOutput = {
    type = "structure",
    members = {
        Licenses = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.FailedDependencyException = {
    type = "structure",
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
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ResourceInventory = {
    type = "structure",
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
            member_type = "string",
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
    members = {
        ResourceInventoryList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
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
    members = {
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListTokensInput = {
    type = "structure",
    members = {
        TokenIds = {
            type = "list",
            member_type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.TokenData = {
    type = "structure",
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
            member_type = "string",
        },
        RoleArns = {
            type = "list",
            member_type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.ListTokensOutput = {
    type = "structure",
    members = {
        Tokens = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListUsageForLicenseConfigurationInput = {
    type = "structure",
    members = {
        LicenseConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.LicenseConfigurationUsage = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.ListUsageForLicenseConfigurationOutput = {
    type = "structure",
    members = {
        LicenseConfigurationUsageList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RejectGrantInput = {
    type = "structure",
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
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateLicenseAssetGroupInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        LicenseAssetGroupConfigurations = {
            type = "list",
            member_type = "structure",
        },
        AssociatedLicenseAssetRulesetARNs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Properties = {
            type = "list",
            member_type = "structure",
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
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Rules = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        LicenseCount = {
            type = "number",
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
            member_type = "structure",
        },
        DisassociateWhenNotFound = {
            type = "boolean",
        },
        LicenseExpiry = {
            type = "number",
        },
    },
}

M.UpdateLicenseConfigurationOutput = {
    type = "structure",
}

M.UpdateLicenseManagerReportGeneratorInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        ReportContext = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ReportFrequency = {
            type = "structure",
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
        Description = {
            type = "string",
        },
    },
}

M.UpdateLicenseManagerReportGeneratorOutput = {
    type = "structure",
}

M.InvalidResourceStateException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.LicenseUsageException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateLicenseSpecificationsForResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AddLicenseSpecifications = {
            type = "list",
            member_type = "structure",
        },
        RemoveLicenseSpecifications = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateLicenseSpecificationsForResourceOutput = {
    type = "structure",
}

M.UpdateServiceSettingsInput = {
    type = "structure",
    members = {
        S3BucketArn = {
            type = "string",
        },
        SnsTopicArn = {
            type = "string",
        },
        OrganizationConfiguration = {
            type = "structure",
        },
        EnableCrossAccountsDiscovery = {
            type = "boolean",
        },
        EnabledDiscoverySourceRegions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UpdateServiceSettingsOutput = {
    type = "structure",
}

return M
