local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AccessRequestStatus = {
    APPROVED = "Approved",
    REJECTED = "Rejected",
    REVOKED = "Revoked",
    EXPIRED = "Expired",
    PENDING = "Pending",
}

M.AccessType = {
    STANDARD = "Standard",
    JUSTINTIME = "JustInTime",
}

M.AccountSharingInfo = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
        },
        SharedDocumentVersion = {
            type = "string",
        },
    },
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

M.Activation = {
    type = "structure",
    members = {
        ActivationId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DefaultInstanceName = {
            type = "string",
        },
        IamRole = {
            type = "string",
        },
        RegistrationLimit = {
            type = "integer",
        },
        RegistrationsCount = {
            type = "integer",
        },
        ExpirationDate = {
            type = "timestamp",
        },
        Expired = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CreatedDate = {
            type = "timestamp",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ResourceTypeForTagging = {
    DOCUMENT = "Document",
    MANAGED_INSTANCE = "ManagedInstance",
    MAINTENANCE_WINDOW = "MaintenanceWindow",
    PARAMETER = "Parameter",
    PATCH_BASELINE = "PatchBaseline",
    OPS_ITEM = "OpsItem",
    OPSMETADATA = "OpsMetadata",
    AUTOMATION = "Automation",
    ASSOCIATION = "Association",
}

M.AddTagsToResourceInput = {
    type = "structure",
    members = {
        ResourceType = {
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
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.AddTagsToResourceOutput = {
    type = "structure",
}

M.InternalServerError = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidResourceId = {
    type = "structure",
    error = "client",
}

M.InvalidResourceType = {
    type = "structure",
    error = "client",
}

M.TooManyTagsError = {
    type = "structure",
    error = "client",
}

M.TooManyUpdates = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Alarm = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AlarmConfiguration = {
    type = "structure",
    members = {
        IgnorePollAlarmFailure = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Alarms = {
            type = "list",
            member = M.Alarm,
            traits = {
                required = true,
            },
        },
    },
}

M.ExternalAlarmState = {
    UNKNOWN = "UNKNOWN",
    ALARM = "ALARM",
}

M.AlarmStateInformation = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociateOpsItemRelatedItemInput = {
    type = "structure",
    members = {
        OpsItemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AssociationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateOpsItemRelatedItemOutput = {
    type = "structure",
    members = {
        AssociationId = {
            type = "string",
        },
    },
}

M.OpsItemConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OpsItemInvalidParameterException = {
    type = "structure",
    error = "client",
    members = {
        ParameterNames = {
            type = "list",
            member = { type = "string" },
        },
        Message = {
            type = "string",
        },
    },
}

M.OpsItemLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        ResourceTypes = {
            type = "list",
            member = { type = "string" },
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        LimitType = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.OpsItemNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OpsItemRelatedItemAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ResourceUri = {
            type = "string",
        },
        OpsItemId = {
            type = "string",
        },
    },
}

M.CancelCommandInput = {
    type = "structure",
    members = {
        CommandId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CancelCommandOutput = {
    type = "structure",
}

M.DuplicateInstanceId = {
    type = "structure",
    error = "client",
}

M.InvalidCommandId = {
    type = "structure",
    error = "client",
}

M.InvalidInstanceId = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CancelMaintenanceWindowExecutionInput = {
    type = "structure",
    members = {
        WindowExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelMaintenanceWindowExecutionOutput = {
    type = "structure",
    members = {
        WindowExecutionId = {
            type = "string",
        },
    },
}

M.DoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RegistrationMetadataItem = {
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

M.CreateActivationInput = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        DefaultInstanceName = {
            type = "string",
        },
        IamRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationLimit = {
            type = "integer",
        },
        ExpirationDate = {
            type = "timestamp",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        RegistrationMetadata = {
            type = "list",
            member = M.RegistrationMetadataItem,
        },
    },
}

M.CreateActivationOutput = {
    type = "structure",
    members = {
        ActivationId = {
            type = "string",
        },
        ActivationCode = {
            type = "string",
        },
    },
}

M.InvalidParameters = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociationAlreadyExists = {
    type = "structure",
    error = "client",
}

M.AssociationLimitExceeded = {
    type = "structure",
    error = "client",
}

M.AssociationComplianceSeverity = {
    Critical = "CRITICAL",
    High = "HIGH",
    Medium = "MEDIUM",
    Low = "LOW",
    Unspecified = "UNSPECIFIED",
}

M.S3OutputLocation = {
    type = "structure",
    members = {
        OutputS3Region = {
            type = "string",
        },
        OutputS3BucketName = {
            type = "string",
        },
        OutputS3KeyPrefix = {
            type = "string",
        },
    },
}

M.InstanceAssociationOutputLocation = {
    type = "structure",
    members = {
        S3Location = M.S3OutputLocation,
    },
}

M.AssociationSyncCompliance = {
    Auto = "AUTO",
    Manual = "MANUAL",
}

M.Target = {
    type = "structure",
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

M.TargetLocation = {
    type = "structure",
    members = {
        Accounts = {
            type = "list",
            member = { type = "string" },
        },
        Regions = {
            type = "list",
            member = { type = "string" },
        },
        TargetLocationMaxConcurrency = {
            type = "string",
        },
        TargetLocationMaxErrors = {
            type = "string",
        },
        ExecutionRoleName = {
            type = "string",
        },
        TargetLocationAlarmConfiguration = M.AlarmConfiguration,
        IncludeChildOrganizationUnits = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ExcludeAccounts = {
            type = "list",
            member = { type = "string" },
        },
        Targets = {
            type = "list",
            member = M.Target,
        },
        TargetsMaxConcurrency = {
            type = "string",
        },
        TargetsMaxErrors = {
            type = "string",
        },
    },
}

M.CreateAssociationInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentVersion = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        Targets = {
            type = "list",
            member = M.Target,
        },
        ScheduleExpression = {
            type = "string",
        },
        OutputLocation = M.InstanceAssociationOutputLocation,
        AssociationName = {
            type = "string",
        },
        AutomationTargetParameterName = {
            type = "string",
        },
        MaxErrors = {
            type = "string",
        },
        MaxConcurrency = {
            type = "string",
        },
        ComplianceSeverity = {
            type = "string",
        },
        SyncCompliance = {
            type = "string",
        },
        ApplyOnlyAtCronInterval = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CalendarNames = {
            type = "list",
            member = { type = "string" },
        },
        TargetLocations = {
            type = "list",
            member = M.TargetLocation,
        },
        ScheduleOffset = {
            type = "integer",
        },
        Duration = {
            type = "integer",
        },
        TargetMaps = {
            type = "list",
            member = { type = "map" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        AlarmConfiguration = M.AlarmConfiguration,
        AssociationDispatchAssumeRole = {
            type = "string",
        },
    },
}

M.AssociationOverview = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        DetailedStatus = {
            type = "string",
        },
        AssociationStatusAggregatedCount = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
    },
}

M.AssociationStatusName = {
    Pending = "Pending",
    Success = "Success",
    Failed = "Failed",
}

M.AssociationStatus = {
    type = "structure",
    members = {
        Date = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdditionalInfo = {
            type = "string",
        },
    },
}

M.AssociationDescription = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        AssociationVersion = {
            type = "string",
        },
        Date = {
            type = "timestamp",
        },
        LastUpdateAssociationDate = {
            type = "timestamp",
        },
        Status = M.AssociationStatus,
        Overview = M.AssociationOverview,
        DocumentVersion = {
            type = "string",
        },
        AutomationTargetParameterName = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        AssociationId = {
            type = "string",
        },
        Targets = {
            type = "list",
            member = M.Target,
        },
        ScheduleExpression = {
            type = "string",
        },
        OutputLocation = M.InstanceAssociationOutputLocation,
        LastExecutionDate = {
            type = "timestamp",
        },
        LastSuccessfulExecutionDate = {
            type = "timestamp",
        },
        AssociationName = {
            type = "string",
        },
        MaxErrors = {
            type = "string",
        },
        MaxConcurrency = {
            type = "string",
        },
        ComplianceSeverity = {
            type = "string",
        },
        SyncCompliance = {
            type = "string",
        },
        ApplyOnlyAtCronInterval = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CalendarNames = {
            type = "list",
            member = { type = "string" },
        },
        TargetLocations = {
            type = "list",
            member = M.TargetLocation,
        },
        ScheduleOffset = {
            type = "integer",
        },
        Duration = {
            type = "integer",
        },
        TargetMaps = {
            type = "list",
            member = { type = "map" },
        },
        AlarmConfiguration = M.AlarmConfiguration,
        TriggeredAlarms = {
            type = "list",
            member = M.AlarmStateInformation,
        },
        AssociationDispatchAssumeRole = {
            type = "string",
        },
    },
}

M.CreateAssociationOutput = {
    type = "structure",
    members = {
        AssociationDescription = M.AssociationDescription,
    },
}

M.InvalidDocument = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidDocumentVersion = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidOutputLocation = {
    type = "structure",
    error = "client",
}

M.InvalidSchedule = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidTag = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidTarget = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidTargetMaps = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedPlatformType = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateAssociationBatchRequestEntry = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceId = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        AutomationTargetParameterName = {
            type = "string",
        },
        DocumentVersion = {
            type = "string",
        },
        Targets = {
            type = "list",
            member = M.Target,
        },
        ScheduleExpression = {
            type = "string",
        },
        OutputLocation = M.InstanceAssociationOutputLocation,
        AssociationName = {
            type = "string",
        },
        MaxErrors = {
            type = "string",
        },
        MaxConcurrency = {
            type = "string",
        },
        ComplianceSeverity = {
            type = "string",
        },
        SyncCompliance = {
            type = "string",
        },
        ApplyOnlyAtCronInterval = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CalendarNames = {
            type = "list",
            member = { type = "string" },
        },
        TargetLocations = {
            type = "list",
            member = M.TargetLocation,
        },
        ScheduleOffset = {
            type = "integer",
        },
        Duration = {
            type = "integer",
        },
        TargetMaps = {
            type = "list",
            member = { type = "map" },
        },
        AlarmConfiguration = M.AlarmConfiguration,
    },
}

M.CreateAssociationBatchInput = {
    type = "structure",
    members = {
        Entries = {
            type = "list",
            member = M.CreateAssociationBatchRequestEntry,
            traits = {
                required = true,
            },
        },
        AssociationDispatchAssumeRole = {
            type = "string",
        },
    },
}

M.Fault = {
    Client = "Client",
    Server = "Server",
    Unknown = "Unknown",
}

M.FailedCreateAssociation = {
    type = "structure",
    members = {
        Entry = M.CreateAssociationBatchRequestEntry,
        Message = {
            type = "string",
        },
        Fault = {
            type = "string",
        },
    },
}

M.CreateAssociationBatchOutput = {
    type = "structure",
    members = {
        Successful = {
            type = "list",
            member = M.AssociationDescription,
        },
        Failed = {
            type = "list",
            member = M.FailedCreateAssociation,
        },
    },
}

M.AttachmentsSourceKey = {
    SourceUrl = "SourceUrl",
    S3FileUrl = "S3FileUrl",
    AttachmentReference = "AttachmentReference",
}

M.AttachmentsSource = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
        Name = {
            type = "string",
        },
    },
}

M.DocumentFormat = {
    YAML = "YAML",
    JSON = "JSON",
    TEXT = "TEXT",
}

M.DocumentType = {
    Command = "Command",
    Policy = "Policy",
    Automation = "Automation",
    Session = "Session",
    Package = "Package",
    ApplicationConfiguration = "ApplicationConfiguration",
    ApplicationConfigurationSchema = "ApplicationConfigurationSchema",
    DeploymentStrategy = "DeploymentStrategy",
    ChangeCalendar = "ChangeCalendar",
    ChangeTemplate = "Automation.ChangeTemplate",
    ProblemAnalysis = "ProblemAnalysis",
    ProblemAnalysisTemplate = "ProblemAnalysisTemplate",
    CloudFormation = "CloudFormation",
    ConformancePackTemplate = "ConformancePackTemplate",
    QuickSetup = "QuickSetup",
    ManualApprovalPolicy = "ManualApprovalPolicy",
    AutoApprovalPolicy = "AutoApprovalPolicy",
}

M.DocumentRequires = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "string",
        },
        RequireType = {
            type = "string",
        },
        VersionName = {
            type = "string",
        },
    },
}

M.CreateDocumentInput = {
    type = "structure",
    members = {
        Content = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Requires = {
            type = "list",
            member = M.DocumentRequires,
        },
        Attachments = {
            type = "list",
            member = M.AttachmentsSource,
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
        },
        VersionName = {
            type = "string",
        },
        DocumentType = {
            type = "string",
        },
        DocumentFormat = {
            type = "string",
        },
        TargetType = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.AttachmentInformation = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.DocumentHashType = {
    SHA256 = "Sha256",
    SHA1 = "Sha1",
}

M.DocumentParameterType = {
    String = "String",
    StringList = "StringList",
}

M.DocumentParameter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DefaultValue = {
            type = "string",
        },
    },
}

M.PlatformType = {
    WINDOWS = "Windows",
    LINUX = "Linux",
    MACOS = "MacOS",
}

M.ReviewStatus = {
    APPROVED = "APPROVED",
    NOT_REVIEWED = "NOT_REVIEWED",
    PENDING = "PENDING",
    REJECTED = "REJECTED",
}

M.ReviewInformation = {
    type = "structure",
    members = {
        ReviewedTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        Reviewer = {
            type = "string",
        },
    },
}

M.DocumentStatus = {
    Creating = "Creating",
    Active = "Active",
    Updating = "Updating",
    Deleting = "Deleting",
    Failed = "Failed",
}

M.DocumentDescription = {
    type = "structure",
    members = {
        Sha1 = {
            type = "string",
        },
        Hash = {
            type = "string",
        },
        HashType = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        VersionName = {
            type = "string",
        },
        Owner = {
            type = "string",
        },
        CreatedDate = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        StatusInformation = {
            type = "string",
        },
        DocumentVersion = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Parameters = {
            type = "list",
            member = M.DocumentParameter,
        },
        PlatformTypes = {
            type = "list",
            member = { type = "string" },
        },
        DocumentType = {
            type = "string",
        },
        SchemaVersion = {
            type = "string",
        },
        LatestVersion = {
            type = "string",
        },
        DefaultVersion = {
            type = "string",
        },
        DocumentFormat = {
            type = "string",
        },
        TargetType = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        AttachmentsInformation = {
            type = "list",
            member = M.AttachmentInformation,
        },
        Requires = {
            type = "list",
            member = M.DocumentRequires,
        },
        Author = {
            type = "string",
        },
        ReviewInformation = {
            type = "list",
            member = M.ReviewInformation,
        },
        ApprovedVersion = {
            type = "string",
        },
        PendingReviewVersion = {
            type = "string",
        },
        ReviewStatus = {
            type = "string",
        },
        Category = {
            type = "list",
            member = { type = "string" },
        },
        CategoryEnum = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateDocumentOutput = {
    type = "structure",
    members = {
        DocumentDescription = M.DocumentDescription,
    },
}

M.DocumentAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DocumentLimitExceeded = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidDocumentContent = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidDocumentSchemaVersion = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MaxDocumentSizeExceeded = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoLongerSupportedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateMaintenanceWindowInput = {
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
        StartDate = {
            type = "string",
        },
        EndDate = {
            type = "string",
        },
        Schedule = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScheduleTimezone = {
            type = "string",
        },
        ScheduleOffset = {
            type = "integer",
        },
        Duration = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Cutoff = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        AllowUnassociatedTargets = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateMaintenanceWindowOutput = {
    type = "structure",
    members = {
        WindowId = {
            type = "string",
        },
    },
}

M.IdempotentParameterMismatch = {
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

M.OpsItemNotification = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.OpsItemDataType = {
    SEARCHABLE_STRING = "SearchableString",
    STRING = "String",
}

M.OpsItemDataValue = {
    type = "structure",
    members = {
        Value = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.RelatedOpsItem = {
    type = "structure",
    members = {
        OpsItemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateOpsItemInput = {
    type = "structure",
    members = {
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OpsItemType = {
            type = "string",
        },
        OperationalData = {
            type = "map",
            key = { type = "string" },
            value = M.OpsItemDataValue,
        },
        Notifications = {
            type = "list",
            member = M.OpsItemNotification,
        },
        Priority = {
            type = "integer",
        },
        RelatedOpsItems = {
            type = "list",
            member = M.RelatedOpsItem,
        },
        Source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        Category = {
            type = "string",
        },
        Severity = {
            type = "string",
        },
        ActualStartTime = {
            type = "timestamp",
        },
        ActualEndTime = {
            type = "timestamp",
        },
        PlannedStartTime = {
            type = "timestamp",
        },
        PlannedEndTime = {
            type = "timestamp",
        },
        AccountId = {
            type = "string",
        },
    },
}

M.CreateOpsItemOutput = {
    type = "structure",
    members = {
        OpsItemId = {
            type = "string",
        },
        OpsItemArn = {
            type = "string",
        },
    },
}

M.OpsItemAccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OpsItemAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        OpsItemId = {
            type = "string",
        },
    },
}

M.MetadataValue = {
    type = "structure",
    members = {
        Value = {
            type = "string",
        },
    },
}

M.CreateOpsMetadataInput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Metadata = {
            type = "map",
            key = { type = "string" },
            value = M.MetadataValue,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateOpsMetadataOutput = {
    type = "structure",
    members = {
        OpsMetadataArn = {
            type = "string",
        },
    },
}

M.OpsMetadataAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OpsMetadataInvalidArgumentException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OpsMetadataLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OpsMetadataTooManyUpdatesException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PatchComplianceLevel = {
    Critical = "CRITICAL",
    High = "HIGH",
    Medium = "MEDIUM",
    Low = "LOW",
    Informational = "INFORMATIONAL",
    Unspecified = "UNSPECIFIED",
}

M.PatchFilterKey = {
    Arch = "ARCH",
    AdvisoryId = "ADVISORY_ID",
    BugzillaId = "BUGZILLA_ID",
    PatchSet = "PATCH_SET",
    Product = "PRODUCT",
    ProductFamily = "PRODUCT_FAMILY",
    Classification = "CLASSIFICATION",
    CVEId = "CVE_ID",
    Epoch = "EPOCH",
    MsrcSeverity = "MSRC_SEVERITY",
    Name = "NAME",
    PatchId = "PATCH_ID",
    Section = "SECTION",
    Priority = "PRIORITY",
    Repository = "REPOSITORY",
    Release = "RELEASE",
    Severity = "SEVERITY",
    Security = "SECURITY",
    Version = "VERSION",
}

M.PatchFilter = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.PatchFilterGroup = {
    type = "structure",
    members = {
        PatchFilters = {
            type = "list",
            member = M.PatchFilter,
            traits = {
                required = true,
            },
        },
    },
}

M.PatchRule = {
    type = "structure",
    members = {
        PatchFilterGroup = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PatchFilterGroup }),
        ComplianceLevel = {
            type = "string",
        },
        ApproveAfterDays = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        ApproveUntilDate = {
            type = "string",
        },
        EnableNonSecurity = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.PatchRuleGroup = {
    type = "structure",
    members = {
        PatchRules = {
            type = "list",
            member = M.PatchRule,
            traits = {
                required = true,
            },
        },
    },
}

M.PatchComplianceStatus = {
    Compliant = "COMPLIANT",
    NonCompliant = "NON_COMPLIANT",
}

M.OperatingSystem = {
    Windows = "WINDOWS",
    AmazonLinux = "AMAZON_LINUX",
    AmazonLinux2 = "AMAZON_LINUX_2",
    AmazonLinux2022 = "AMAZON_LINUX_2022",
    Ubuntu = "UBUNTU",
    RedhatEnterpriseLinux = "REDHAT_ENTERPRISE_LINUX",
    Suse = "SUSE",
    CentOS = "CENTOS",
    OracleLinux = "ORACLE_LINUX",
    Debian = "DEBIAN",
    MacOS = "MACOS",
    Raspbian = "RASPBIAN",
    Rocky_Linux = "ROCKY_LINUX",
    AlmaLinux = "ALMA_LINUX",
    AmazonLinux2023 = "AMAZON_LINUX_2023",
}

M.PatchAction = {
    AllowAsDependency = "ALLOW_AS_DEPENDENCY",
    Block = "BLOCK",
}

M.PatchSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Products = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Configuration = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreatePatchBaselineInput = {
    type = "structure",
    members = {
        OperatingSystem = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GlobalFilters = M.PatchFilterGroup,
        ApprovalRules = M.PatchRuleGroup,
        ApprovedPatches = {
            type = "list",
            member = { type = "string" },
        },
        ApprovedPatchesComplianceLevel = {
            type = "string",
        },
        ApprovedPatchesEnableNonSecurity = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        RejectedPatches = {
            type = "list",
            member = { type = "string" },
        },
        RejectedPatchesAction = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Sources = {
            type = "list",
            member = M.PatchSource,
        },
        AvailableSecurityUpdatesComplianceStatus = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreatePatchBaselineOutput = {
    type = "structure",
    members = {
        BaselineId = {
            type = "string",
        },
    },
}

M.ResourceDataSyncDestinationDataSharing = {
    type = "structure",
    members = {
        DestinationDataSharingType = {
            type = "string",
        },
    },
}

M.ResourceDataSyncS3Format = {
    JSON_SERDE = "JsonSerDe",
}

M.ResourceDataSyncS3Destination = {
    type = "structure",
    members = {
        BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Prefix = {
            type = "string",
        },
        SyncFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Region = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AWSKMSKeyARN = {
            type = "string",
        },
        DestinationDataSharing = M.ResourceDataSyncDestinationDataSharing,
    },
}

M.ResourceDataSyncOrganizationalUnit = {
    type = "structure",
    members = {
        OrganizationalUnitId = {
            type = "string",
        },
    },
}

M.ResourceDataSyncAwsOrganizationsSource = {
    type = "structure",
    members = {
        OrganizationSourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OrganizationalUnits = {
            type = "list",
            member = M.ResourceDataSyncOrganizationalUnit,
        },
    },
}

M.ResourceDataSyncSource = {
    type = "structure",
    members = {
        SourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AwsOrganizationsSource = M.ResourceDataSyncAwsOrganizationsSource,
        SourceRegions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        IncludeFutureRegions = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        EnableAllOpsDataSources = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CreateResourceDataSyncInput = {
    type = "structure",
    members = {
        SyncName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Destination = M.ResourceDataSyncS3Destination,
        SyncType = {
            type = "string",
        },
        SyncSource = M.ResourceDataSyncSource,
    },
}

M.CreateResourceDataSyncOutput = {
    type = "structure",
}

M.ResourceDataSyncAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        SyncName = {
            type = "string",
        },
    },
}

M.ResourceDataSyncCountExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceDataSyncInvalidConfigurationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteActivationInput = {
    type = "structure",
    members = {
        ActivationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteActivationOutput = {
    type = "structure",
}

M.InvalidActivation = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidActivationId = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociationDoesNotExist = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteAssociationInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        AssociationId = {
            type = "string",
        },
    },
}

M.DeleteAssociationOutput = {
    type = "structure",
}

M.AssociatedInstances = {
    type = "structure",
    error = "client",
}

M.DeleteDocumentInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentVersion = {
            type = "string",
        },
        VersionName = {
            type = "string",
        },
        Force = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DeleteDocumentOutput = {
    type = "structure",
}

M.InvalidDocumentOperation = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InventorySchemaDeleteOption = {
    DISABLE_SCHEMA = "DisableSchema",
    DELETE_SCHEMA = "DeleteSchema",
}

M.DeleteInventoryInput = {
    type = "structure",
    members = {
        TypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SchemaDeleteOption = {
            type = "string",
        },
        DryRun = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.InventoryDeletionSummaryItem = {
    type = "structure",
    members = {
        Version = {
            type = "string",
        },
        Count = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        RemainingCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.InventoryDeletionSummary = {
    type = "structure",
    members = {
        TotalCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        RemainingCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        SummaryItems = {
            type = "list",
            member = M.InventoryDeletionSummaryItem,
        },
    },
}

M.DeleteInventoryOutput = {
    type = "structure",
    members = {
        DeletionId = {
            type = "string",
        },
        TypeName = {
            type = "string",
        },
        DeletionSummary = M.InventoryDeletionSummary,
    },
}

M.InvalidDeleteInventoryParametersException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidInventoryRequestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidOptionException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidTypeNameException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteMaintenanceWindowInput = {
    type = "structure",
    members = {
        WindowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMaintenanceWindowOutput = {
    type = "structure",
    members = {
        WindowId = {
            type = "string",
        },
    },
}

M.DeleteOpsItemInput = {
    type = "structure",
    members = {
        OpsItemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteOpsItemOutput = {
    type = "structure",
}

M.DeleteOpsMetadataInput = {
    type = "structure",
    members = {
        OpsMetadataArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteOpsMetadataOutput = {
    type = "structure",
}

M.OpsMetadataNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteParameterInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteParameterOutput = {
    type = "structure",
}

M.ParameterNotFound = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteParametersInput = {
    type = "structure",
    members = {
        Names = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteParametersOutput = {
    type = "structure",
    members = {
        DeletedParameters = {
            type = "list",
            member = { type = "string" },
        },
        InvalidParameters = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DeletePatchBaselineInput = {
    type = "structure",
    members = {
        BaselineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePatchBaselineOutput = {
    type = "structure",
    members = {
        BaselineId = {
            type = "string",
        },
    },
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

M.DeleteResourceDataSyncInput = {
    type = "structure",
    members = {
        SyncName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SyncType = {
            type = "string",
        },
    },
}

M.DeleteResourceDataSyncOutput = {
    type = "structure",
}

M.ResourceDataSyncNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        SyncName = {
            type = "string",
        },
        SyncType = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyHash = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteResourcePolicyOutput = {
    type = "structure",
}

M.MalformedResourcePolicyDocumentException = {
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

M.ResourcePolicyConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourcePolicyInvalidParameterException = {
    type = "structure",
    error = "client",
    members = {
        ParameterNames = {
            type = "list",
            member = { type = "string" },
        },
        Message = {
            type = "string",
        },
    },
}

M.ResourcePolicyNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeregisterManagedInstanceInput = {
    type = "structure",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeregisterManagedInstanceOutput = {
    type = "structure",
}

M.DeregisterPatchBaselineForPatchGroupInput = {
    type = "structure",
    members = {
        BaselineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PatchGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeregisterPatchBaselineForPatchGroupOutput = {
    type = "structure",
    members = {
        BaselineId = {
            type = "string",
        },
        PatchGroup = {
            type = "string",
        },
    },
}

M.DeregisterTargetFromMaintenanceWindowInput = {
    type = "structure",
    members = {
        WindowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WindowTargetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Safe = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.DeregisterTargetFromMaintenanceWindowOutput = {
    type = "structure",
    members = {
        WindowId = {
            type = "string",
        },
        WindowTargetId = {
            type = "string",
        },
    },
}

M.TargetInUseException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeregisterTaskFromMaintenanceWindowInput = {
    type = "structure",
    members = {
        WindowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WindowTaskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeregisterTaskFromMaintenanceWindowOutput = {
    type = "structure",
    members = {
        WindowId = {
            type = "string",
        },
        WindowTaskId = {
            type = "string",
        },
    },
}

M.DescribeActivationsFilterKeys = {
    ACTIVATION_IDS = "ActivationIds",
    DEFAULT_INSTANCE_NAME = "DefaultInstanceName",
    IAM_ROLE = "IamRole",
}

M.DescribeActivationsFilter = {
    type = "structure",
    members = {
        FilterKey = {
            type = "string",
        },
        FilterValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeActivationsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member = M.DescribeActivationsFilter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeActivationsOutput = {
    type = "structure",
    members = {
        ActivationList = {
            type = "list",
            member = M.Activation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InvalidFilter = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidNextToken = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeAssociationInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        AssociationId = {
            type = "string",
        },
        AssociationVersion = {
            type = "string",
        },
    },
}

M.DescribeAssociationOutput = {
    type = "structure",
    members = {
        AssociationDescription = M.AssociationDescription,
    },
}

M.InvalidAssociationVersion = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociationExecutionFilterKey = {
    ExecutionId = "ExecutionId",
    Status = "Status",
    CreatedTime = "CreatedTime",
}

M.AssociationFilterOperatorType = {
    Equal = "EQUAL",
    LessThan = "LESS_THAN",
    GreaterThan = "GREATER_THAN",
}

M.AssociationExecutionFilter = {
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
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAssociationExecutionsInput = {
    type = "structure",
    members = {
        AssociationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.AssociationExecutionFilter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.AssociationExecution = {
    type = "structure",
    members = {
        AssociationId = {
            type = "string",
        },
        AssociationVersion = {
            type = "string",
        },
        ExecutionId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        DetailedStatus = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastExecutionDate = {
            type = "timestamp",
        },
        ResourceCountByStatus = {
            type = "string",
        },
        AlarmConfiguration = M.AlarmConfiguration,
        TriggeredAlarms = {
            type = "list",
            member = M.AlarmStateInformation,
        },
    },
}

M.DescribeAssociationExecutionsOutput = {
    type = "structure",
    members = {
        AssociationExecutions = {
            type = "list",
            member = M.AssociationExecution,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.AssociationExecutionDoesNotExist = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociationExecutionTargetsFilterKey = {
    Status = "Status",
    ResourceId = "ResourceId",
    ResourceType = "ResourceType",
}

M.AssociationExecutionTargetsFilter = {
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

M.DescribeAssociationExecutionTargetsInput = {
    type = "structure",
    members = {
        AssociationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.AssociationExecutionTargetsFilter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.OutputSource = {
    type = "structure",
    members = {
        OutputSourceId = {
            type = "string",
        },
        OutputSourceType = {
            type = "string",
        },
    },
}

M.AssociationExecutionTarget = {
    type = "structure",
    members = {
        AssociationId = {
            type = "string",
        },
        AssociationVersion = {
            type = "string",
        },
        ExecutionId = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        DetailedStatus = {
            type = "string",
        },
        LastExecutionDate = {
            type = "timestamp",
        },
        OutputSource = M.OutputSource,
    },
}

M.DescribeAssociationExecutionTargetsOutput = {
    type = "structure",
    members = {
        AssociationExecutionTargets = {
            type = "list",
            member = M.AssociationExecutionTarget,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.AutomationExecutionFilterKey = {
    DOCUMENT_NAME_PREFIX = "DocumentNamePrefix",
    EXECUTION_STATUS = "ExecutionStatus",
    EXECUTION_ID = "ExecutionId",
    PARENT_EXECUTION_ID = "ParentExecutionId",
    CURRENT_ACTION = "CurrentAction",
    START_TIME_BEFORE = "StartTimeBefore",
    START_TIME_AFTER = "StartTimeAfter",
    AUTOMATION_TYPE = "AutomationType",
    TAG_KEY = "TagKey",
    TARGET_RESOURCE_GROUP = "TargetResourceGroup",
    AUTOMATION_SUBTYPE = "AutomationSubtype",
    OPS_ITEM_ID = "OpsItemId",
}

M.AutomationExecutionFilter = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAutomationExecutionsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member = M.AutomationExecutionFilter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.AutomationExecutionStatus = {
    PENDING = "Pending",
    INPROGRESS = "InProgress",
    WAITING = "Waiting",
    SUCCESS = "Success",
    TIMEDOUT = "TimedOut",
    CANCELLING = "Cancelling",
    CANCELLED = "Cancelled",
    FAILED = "Failed",
    PENDING_APPROVAL = "PendingApproval",
    APPROVED = "Approved",
    REJECTED = "Rejected",
    SCHEDULED = "Scheduled",
    RUNBOOK_INPROGRESS = "RunbookInProgress",
    PENDING_CHANGE_CALENDAR_OVERRIDE = "PendingChangeCalendarOverride",
    CHANGE_CALENDAR_OVERRIDE_APPROVED = "ChangeCalendarOverrideApproved",
    CHANGE_CALENDAR_OVERRIDE_REJECTED = "ChangeCalendarOverrideRejected",
    COMPLETED_WITH_SUCCESS = "CompletedWithSuccess",
    COMPLETED_WITH_FAILURE = "CompletedWithFailure",
    EXITED = "Exited",
}

M.AutomationSubtype = {
    ChangeRequest = "ChangeRequest",
    AccessRequest = "AccessRequest",
}

M.AutomationType = {
    CrossAccount = "CrossAccount",
    Local = "Local",
}

M.ExecutionMode = {
    Auto = "Auto",
    Interactive = "Interactive",
}

M.ResolvedTargets = {
    type = "structure",
    members = {
        ParameterValues = {
            type = "list",
            member = { type = "string" },
        },
        Truncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.Runbook = {
    type = "structure",
    members = {
        DocumentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentVersion = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        TargetParameterName = {
            type = "string",
        },
        Targets = {
            type = "list",
            member = M.Target,
        },
        TargetMaps = {
            type = "list",
            member = { type = "map" },
        },
        MaxConcurrency = {
            type = "string",
        },
        MaxErrors = {
            type = "string",
        },
        TargetLocations = {
            type = "list",
            member = M.TargetLocation,
        },
    },
}

M.AutomationExecutionMetadata = {
    type = "structure",
    members = {
        AutomationExecutionId = {
            type = "string",
        },
        DocumentName = {
            type = "string",
        },
        DocumentVersion = {
            type = "string",
        },
        AutomationExecutionStatus = {
            type = "string",
        },
        ExecutionStartTime = {
            type = "timestamp",
        },
        ExecutionEndTime = {
            type = "timestamp",
        },
        ExecutedBy = {
            type = "string",
        },
        LogFile = {
            type = "string",
        },
        Outputs = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        Mode = {
            type = "string",
        },
        ParentAutomationExecutionId = {
            type = "string",
        },
        CurrentStepName = {
            type = "string",
        },
        CurrentAction = {
            type = "string",
        },
        FailureMessage = {
            type = "string",
        },
        TargetParameterName = {
            type = "string",
        },
        Targets = {
            type = "list",
            member = M.Target,
        },
        TargetMaps = {
            type = "list",
            member = { type = "map" },
        },
        ResolvedTargets = M.ResolvedTargets,
        MaxConcurrency = {
            type = "string",
        },
        MaxErrors = {
            type = "string",
        },
        Target = {
            type = "string",
        },
        AutomationType = {
            type = "string",
        },
        AlarmConfiguration = M.AlarmConfiguration,
        TriggeredAlarms = {
            type = "list",
            member = M.AlarmStateInformation,
        },
        TargetLocationsURL = {
            type = "string",
        },
        AutomationSubtype = {
            type = "string",
        },
        ScheduledTime = {
            type = "timestamp",
        },
        Runbooks = {
            type = "list",
            member = M.Runbook,
        },
        OpsItemId = {
            type = "string",
        },
        AssociationId = {
            type = "string",
        },
        ChangeRequestName = {
            type = "string",
        },
    },
}

M.DescribeAutomationExecutionsOutput = {
    type = "structure",
    members = {
        AutomationExecutionMetadataList = {
            type = "list",
            member = M.AutomationExecutionMetadata,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InvalidFilterKey = {
    type = "structure",
    error = "client",
}

M.InvalidFilterValue = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AutomationExecutionNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StepExecutionFilterKey = {
    START_TIME_BEFORE = "StartTimeBefore",
    START_TIME_AFTER = "StartTimeAfter",
    STEP_EXECUTION_STATUS = "StepExecutionStatus",
    STEP_EXECUTION_ID = "StepExecutionId",
    STEP_NAME = "StepName",
    ACTION = "Action",
    PARENT_STEP_EXECUTION_ID = "ParentStepExecutionId",
    PARENT_STEP_ITERATION = "ParentStepIteration",
    PARENT_STEP_ITERATOR_VALUE = "ParentStepIteratorValue",
}

M.StepExecutionFilter = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAutomationStepExecutionsInput = {
    type = "structure",
    members = {
        AutomationExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.StepExecutionFilter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        ReverseOrder = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.FailureDetails = {
    type = "structure",
    members = {
        FailureStage = {
            type = "string",
        },
        FailureType = {
            type = "string",
        },
        Details = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.ParentStepDetails = {
    type = "structure",
    members = {
        StepExecutionId = {
            type = "string",
        },
        StepName = {
            type = "string",
        },
        Action = {
            type = "string",
        },
        Iteration = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        IteratorValue = {
            type = "string",
        },
    },
}

M.StepExecution = {
    type = "structure",
    members = {
        StepName = {
            type = "string",
        },
        Action = {
            type = "string",
        },
        TimeoutSeconds = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        OnFailure = {
            type = "string",
        },
        MaxAttempts = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        ExecutionStartTime = {
            type = "timestamp",
        },
        ExecutionEndTime = {
            type = "timestamp",
        },
        StepStatus = {
            type = "string",
        },
        ResponseCode = {
            type = "string",
        },
        Inputs = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Outputs = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        Response = {
            type = "string",
        },
        FailureMessage = {
            type = "string",
        },
        FailureDetails = M.FailureDetails,
        StepExecutionId = {
            type = "string",
        },
        OverriddenParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        IsEnd = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        NextStep = {
            type = "string",
        },
        IsCritical = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        ValidNextSteps = {
            type = "list",
            member = { type = "string" },
        },
        Targets = {
            type = "list",
            member = M.Target,
        },
        TargetLocation = M.TargetLocation,
        TriggeredAlarms = {
            type = "list",
            member = M.AlarmStateInformation,
        },
        ParentStepDetails = M.ParentStepDetails,
    },
}

M.DescribeAutomationStepExecutionsOutput = {
    type = "structure",
    members = {
        StepExecutions = {
            type = "list",
            member = M.StepExecution,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PatchOrchestratorFilter = {
    type = "structure",
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

M.DescribeAvailablePatchesInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member = M.PatchOrchestratorFilter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Patch = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        ReleaseDate = {
            type = "timestamp",
        },
        Title = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ContentUrl = {
            type = "string",
        },
        Vendor = {
            type = "string",
        },
        ProductFamily = {
            type = "string",
        },
        Product = {
            type = "string",
        },
        Classification = {
            type = "string",
        },
        MsrcSeverity = {
            type = "string",
        },
        KbNumber = {
            type = "string",
        },
        MsrcNumber = {
            type = "string",
        },
        Language = {
            type = "string",
        },
        AdvisoryIds = {
            type = "list",
            member = { type = "string" },
        },
        BugzillaIds = {
            type = "list",
            member = { type = "string" },
        },
        CVEIds = {
            type = "list",
            member = { type = "string" },
        },
        Name = {
            type = "string",
        },
        Epoch = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Version = {
            type = "string",
        },
        Release = {
            type = "string",
        },
        Arch = {
            type = "string",
        },
        Severity = {
            type = "string",
        },
        Repository = {
            type = "string",
        },
    },
}

M.DescribeAvailablePatchesOutput = {
    type = "structure",
    members = {
        Patches = {
            type = "list",
            member = M.Patch,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeDocumentInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentVersion = {
            type = "string",
        },
        VersionName = {
            type = "string",
        },
    },
}

M.DescribeDocumentOutput = {
    type = "structure",
    members = {
        Document = M.DocumentDescription,
    },
}

M.DocumentPermissionType = {
    SHARE = "Share",
}

M.DescribeDocumentPermissionInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermissionType = {
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

M.DescribeDocumentPermissionOutput = {
    type = "structure",
    members = {
        AccountIds = {
            type = "list",
            member = { type = "string" },
        },
        AccountSharingInfoList = {
            type = "list",
            member = M.AccountSharingInfo,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InvalidPermissionType = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeEffectiveInstanceAssociationsInput = {
    type = "structure",
    members = {
        InstanceId = {
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

M.InstanceAssociation = {
    type = "structure",
    members = {
        AssociationId = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        Content = {
            type = "string",
        },
        AssociationVersion = {
            type = "string",
        },
    },
}

M.DescribeEffectiveInstanceAssociationsOutput = {
    type = "structure",
    members = {
        Associations = {
            type = "list",
            member = M.InstanceAssociation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeEffectivePatchesForPatchBaselineInput = {
    type = "structure",
    members = {
        BaselineId = {
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

M.PatchDeploymentStatus = {
    Approved = "APPROVED",
    PendingApproval = "PENDING_APPROVAL",
    ExplicitApproved = "EXPLICIT_APPROVED",
    ExplicitRejected = "EXPLICIT_REJECTED",
}

M.PatchStatus = {
    type = "structure",
    members = {
        DeploymentStatus = {
            type = "string",
        },
        ComplianceLevel = {
            type = "string",
        },
        ApprovalDate = {
            type = "timestamp",
        },
    },
}

M.EffectivePatch = {
    type = "structure",
    members = {
        Patch = M.Patch,
        PatchStatus = M.PatchStatus,
    },
}

M.DescribeEffectivePatchesForPatchBaselineOutput = {
    type = "structure",
    members = {
        EffectivePatches = {
            type = "list",
            member = M.EffectivePatch,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UnsupportedOperatingSystem = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeInstanceAssociationsStatusInput = {
    type = "structure",
    members = {
        InstanceId = {
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

M.S3OutputUrl = {
    type = "structure",
    members = {
        OutputUrl = {
            type = "string",
        },
    },
}

M.InstanceAssociationOutputUrl = {
    type = "structure",
    members = {
        S3OutputUrl = M.S3OutputUrl,
    },
}

M.InstanceAssociationStatusInfo = {
    type = "structure",
    members = {
        AssociationId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        DocumentVersion = {
            type = "string",
        },
        AssociationVersion = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        ExecutionDate = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        DetailedStatus = {
            type = "string",
        },
        ExecutionSummary = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        OutputUrl = M.InstanceAssociationOutputUrl,
        AssociationName = {
            type = "string",
        },
    },
}

M.DescribeInstanceAssociationsStatusOutput = {
    type = "structure",
    members = {
        InstanceAssociationStatusInfos = {
            type = "list",
            member = M.InstanceAssociationStatusInfo,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InstanceInformationStringFilter = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.InstanceInformationFilterKey = {
    INSTANCE_IDS = "InstanceIds",
    AGENT_VERSION = "AgentVersion",
    PING_STATUS = "PingStatus",
    PLATFORM_TYPES = "PlatformTypes",
    ACTIVATION_IDS = "ActivationIds",
    IAM_ROLE = "IamRole",
    RESOURCE_TYPE = "ResourceType",
    ASSOCIATION_STATUS = "AssociationStatus",
}

M.InstanceInformationFilter = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        valueSet = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeInstanceInformationInput = {
    type = "structure",
    members = {
        InstanceInformationFilterList = {
            type = "list",
            member = M.InstanceInformationFilter,
        },
        Filters = {
            type = "list",
            member = M.InstanceInformationStringFilter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InstanceAggregatedAssociationOverview = {
    type = "structure",
    members = {
        DetailedStatus = {
            type = "string",
        },
        InstanceAssociationStatusAggregatedCount = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
    },
}

M.PingStatus = {
    ONLINE = "Online",
    CONNECTION_LOST = "ConnectionLost",
    INACTIVE = "Inactive",
}

M.ResourceType = {
    MANAGED_INSTANCE = "ManagedInstance",
    EC2_INSTANCE = "EC2Instance",
}

M.SourceType = {
    AWS_EC2_INSTANCE = "AWS::EC2::Instance",
    AWS_IOT_THING = "AWS::IoT::Thing",
    AWS_SSM_MANAGEDINSTANCE = "AWS::SSM::ManagedInstance",
}

M.InstanceInformation = {
    type = "structure",
    members = {
        InstanceId = {
            type = "string",
        },
        PingStatus = {
            type = "string",
        },
        LastPingDateTime = {
            type = "timestamp",
        },
        AgentVersion = {
            type = "string",
        },
        IsLatestVersion = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        PlatformType = {
            type = "string",
        },
        PlatformName = {
            type = "string",
        },
        PlatformVersion = {
            type = "string",
        },
        ActivationId = {
            type = "string",
        },
        IamRole = {
            type = "string",
        },
        RegistrationDate = {
            type = "timestamp",
        },
        ResourceType = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        IPAddress = {
            type = "string",
        },
        ComputerName = {
            type = "string",
        },
        AssociationStatus = {
            type = "string",
        },
        LastAssociationExecutionDate = {
            type = "timestamp",
        },
        LastSuccessfulAssociationExecutionDate = {
            type = "timestamp",
        },
        AssociationOverview = M.InstanceAggregatedAssociationOverview,
        SourceId = {
            type = "string",
        },
        SourceType = {
            type = "string",
        },
    },
}

M.DescribeInstanceInformationOutput = {
    type = "structure",
    members = {
        InstanceInformationList = {
            type = "list",
            member = M.InstanceInformation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InvalidInstanceInformationFilterValue = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeInstancePatchesInput = {
    type = "structure",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.PatchOrchestratorFilter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.PatchComplianceDataState = {
    Installed = "INSTALLED",
    InstalledOther = "INSTALLED_OTHER",
    InstalledPendingReboot = "INSTALLED_PENDING_REBOOT",
    InstalledRejected = "INSTALLED_REJECTED",
    Missing = "MISSING",
    NotApplicable = "NOT_APPLICABLE",
    Failed = "FAILED",
    AvailableSecurityUpdate = "AVAILABLE_SECURITY_UPDATE",
}

M.PatchComplianceData = {
    type = "structure",
    members = {
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KBId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Classification = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Severity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstalledTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        CVEIds = {
            type = "string",
        },
    },
}

M.DescribeInstancePatchesOutput = {
    type = "structure",
    members = {
        Patches = {
            type = "list",
            member = M.PatchComplianceData,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeInstancePatchStatesInput = {
    type = "structure",
    members = {
        InstanceIds = {
            type = "list",
            member = { type = "string" },
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

M.PatchOperationType = {
    SCAN = "Scan",
    INSTALL = "Install",
}

M.RebootOption = {
    REBOOT_IF_NEEDED = "RebootIfNeeded",
    NO_REBOOT = "NoReboot",
}

M.InstancePatchState = {
    type = "structure",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PatchGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BaselineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnapshotId = {
            type = "string",
        },
        InstallOverrideList = {
            type = "string",
        },
        OwnerInformation = {
            type = "string",
        },
        InstalledCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        InstalledOtherCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        InstalledPendingRebootCount = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        InstalledRejectedCount = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        MissingCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        FailedCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        UnreportedNotApplicableCount = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        NotApplicableCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        AvailableSecurityUpdateCount = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        OperationStartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        OperationEndTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Operation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastNoRebootInstallOperationTime = {
            type = "timestamp",
        },
        RebootOption = {
            type = "string",
        },
        CriticalNonCompliantCount = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        SecurityNonCompliantCount = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        OtherNonCompliantCount = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
    },
}

M.DescribeInstancePatchStatesOutput = {
    type = "structure",
    members = {
        InstancePatchStates = {
            type = "list",
            member = M.InstancePatchState,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InstancePatchStateOperatorType = {
    EQUAL = "Equal",
    NOT_EQUAL = "NotEqual",
    LESS_THAN = "LessThan",
    GREATER_THAN = "GreaterThan",
}

M.InstancePatchStateFilter = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
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
    },
}

M.DescribeInstancePatchStatesForPatchGroupInput = {
    type = "structure",
    members = {
        PatchGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.InstancePatchStateFilter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.DescribeInstancePatchStatesForPatchGroupOutput = {
    type = "structure",
    members = {
        InstancePatchStates = {
            type = "list",
            member = M.InstancePatchState,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InstancePropertyFilterOperator = {
    EQUAL = "Equal",
    NOT_EQUAL = "NotEqual",
    BEGIN_WITH = "BeginWith",
    LESS_THAN = "LessThan",
    GREATER_THAN = "GreaterThan",
}

M.InstancePropertyStringFilter = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Operator = {
            type = "string",
        },
    },
}

M.InstancePropertyFilterKey = {
    INSTANCE_IDS = "InstanceIds",
    AGENT_VERSION = "AgentVersion",
    PING_STATUS = "PingStatus",
    PLATFORM_TYPES = "PlatformTypes",
    DOCUMENT_NAME = "DocumentName",
    ACTIVATION_IDS = "ActivationIds",
    IAM_ROLE = "IamRole",
    RESOURCE_TYPE = "ResourceType",
    ASSOCIATION_STATUS = "AssociationStatus",
}

M.InstancePropertyFilter = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        valueSet = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeInstancePropertiesInput = {
    type = "structure",
    members = {
        InstancePropertyFilterList = {
            type = "list",
            member = M.InstancePropertyFilter,
        },
        FiltersWithOperator = {
            type = "list",
            member = M.InstancePropertyStringFilter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InstanceProperty = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        InstanceType = {
            type = "string",
        },
        InstanceRole = {
            type = "string",
        },
        KeyName = {
            type = "string",
        },
        InstanceState = {
            type = "string",
        },
        Architecture = {
            type = "string",
        },
        IPAddress = {
            type = "string",
        },
        LaunchTime = {
            type = "timestamp",
        },
        PingStatus = {
            type = "string",
        },
        LastPingDateTime = {
            type = "timestamp",
        },
        AgentVersion = {
            type = "string",
        },
        PlatformType = {
            type = "string",
        },
        PlatformName = {
            type = "string",
        },
        PlatformVersion = {
            type = "string",
        },
        ActivationId = {
            type = "string",
        },
        IamRole = {
            type = "string",
        },
        RegistrationDate = {
            type = "timestamp",
        },
        ResourceType = {
            type = "string",
        },
        ComputerName = {
            type = "string",
        },
        AssociationStatus = {
            type = "string",
        },
        LastAssociationExecutionDate = {
            type = "timestamp",
        },
        LastSuccessfulAssociationExecutionDate = {
            type = "timestamp",
        },
        AssociationOverview = M.InstanceAggregatedAssociationOverview,
        SourceId = {
            type = "string",
        },
        SourceType = {
            type = "string",
        },
    },
}

M.DescribeInstancePropertiesOutput = {
    type = "structure",
    members = {
        InstanceProperties = {
            type = "list",
            member = M.InstanceProperty,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InvalidInstancePropertyFilterValue = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeInventoryDeletionsInput = {
    type = "structure",
    members = {
        DeletionId = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.InventoryDeletionStatus = {
    IN_PROGRESS = "InProgress",
    COMPLETE = "Complete",
}

M.InventoryDeletionStatusItem = {
    type = "structure",
    members = {
        DeletionId = {
            type = "string",
        },
        TypeName = {
            type = "string",
        },
        DeletionStartTime = {
            type = "timestamp",
        },
        LastStatus = {
            type = "string",
        },
        LastStatusMessage = {
            type = "string",
        },
        DeletionSummary = M.InventoryDeletionSummary,
        LastStatusUpdateTime = {
            type = "timestamp",
        },
    },
}

M.DescribeInventoryDeletionsOutput = {
    type = "structure",
    members = {
        InventoryDeletions = {
            type = "list",
            member = M.InventoryDeletionStatusItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InvalidDeletionIdException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MaintenanceWindowFilter = {
    type = "structure",
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

M.DescribeMaintenanceWindowExecutionsInput = {
    type = "structure",
    members = {
        WindowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.MaintenanceWindowFilter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.MaintenanceWindowExecutionStatus = {
    Pending = "PENDING",
    InProgress = "IN_PROGRESS",
    Success = "SUCCESS",
    Failed = "FAILED",
    TimedOut = "TIMED_OUT",
    Cancelling = "CANCELLING",
    Cancelled = "CANCELLED",
    SkippedOverlapping = "SKIPPED_OVERLAPPING",
}

M.MaintenanceWindowExecution = {
    type = "structure",
    members = {
        WindowId = {
            type = "string",
        },
        WindowExecutionId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusDetails = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
    },
}

M.DescribeMaintenanceWindowExecutionsOutput = {
    type = "structure",
    members = {
        WindowExecutions = {
            type = "list",
            member = M.MaintenanceWindowExecution,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeMaintenanceWindowExecutionTaskInvocationsInput = {
    type = "structure",
    members = {
        WindowExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TaskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.MaintenanceWindowFilter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.MaintenanceWindowTaskType = {
    RunCommand = "RUN_COMMAND",
    Automation = "AUTOMATION",
    StepFunctions = "STEP_FUNCTIONS",
    Lambda = "LAMBDA",
}

M.MaintenanceWindowExecutionTaskInvocationIdentity = {
    type = "structure",
    members = {
        WindowExecutionId = {
            type = "string",
        },
        TaskExecutionId = {
            type = "string",
        },
        InvocationId = {
            type = "string",
        },
        ExecutionId = {
            type = "string",
        },
        TaskType = {
            type = "string",
        },
        Parameters = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusDetails = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        OwnerInformation = {
            type = "string",
        },
        WindowTargetId = {
            type = "string",
        },
    },
}

M.DescribeMaintenanceWindowExecutionTaskInvocationsOutput = {
    type = "structure",
    members = {
        WindowExecutionTaskInvocationIdentities = {
            type = "list",
            member = M.MaintenanceWindowExecutionTaskInvocationIdentity,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeMaintenanceWindowExecutionTasksInput = {
    type = "structure",
    members = {
        WindowExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.MaintenanceWindowFilter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.MaintenanceWindowExecutionTaskIdentity = {
    type = "structure",
    members = {
        WindowExecutionId = {
            type = "string",
        },
        TaskExecutionId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusDetails = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        TaskArn = {
            type = "string",
        },
        TaskType = {
            type = "string",
        },
        AlarmConfiguration = M.AlarmConfiguration,
        TriggeredAlarms = {
            type = "list",
            member = M.AlarmStateInformation,
        },
    },
}

M.DescribeMaintenanceWindowExecutionTasksOutput = {
    type = "structure",
    members = {
        WindowExecutionTaskIdentities = {
            type = "list",
            member = M.MaintenanceWindowExecutionTaskIdentity,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeMaintenanceWindowsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member = M.MaintenanceWindowFilter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.MaintenanceWindowIdentity = {
    type = "structure",
    members = {
        WindowId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Duration = {
            type = "integer",
        },
        Cutoff = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Schedule = {
            type = "string",
        },
        ScheduleTimezone = {
            type = "string",
        },
        ScheduleOffset = {
            type = "integer",
        },
        EndDate = {
            type = "string",
        },
        StartDate = {
            type = "string",
        },
        NextExecutionTime = {
            type = "string",
        },
    },
}

M.DescribeMaintenanceWindowsOutput = {
    type = "structure",
    members = {
        WindowIdentities = {
            type = "list",
            member = M.MaintenanceWindowIdentity,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.MaintenanceWindowResourceType = {
    Instance = "INSTANCE",
    ResourceGroup = "RESOURCE_GROUP",
}

M.DescribeMaintenanceWindowScheduleInput = {
    type = "structure",
    members = {
        WindowId = {
            type = "string",
        },
        Targets = {
            type = "list",
            member = M.Target,
        },
        ResourceType = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.PatchOrchestratorFilter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ScheduledWindowExecution = {
    type = "structure",
    members = {
        WindowId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        ExecutionTime = {
            type = "string",
        },
    },
}

M.DescribeMaintenanceWindowScheduleOutput = {
    type = "structure",
    members = {
        ScheduledWindowExecutions = {
            type = "list",
            member = M.ScheduledWindowExecution,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeMaintenanceWindowsForTargetInput = {
    type = "structure",
    members = {
        Targets = {
            type = "list",
            member = M.Target,
            traits = {
                required = true,
            },
        },
        ResourceType = {
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

M.MaintenanceWindowIdentityForTarget = {
    type = "structure",
    members = {
        WindowId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.DescribeMaintenanceWindowsForTargetOutput = {
    type = "structure",
    members = {
        WindowIdentities = {
            type = "list",
            member = M.MaintenanceWindowIdentityForTarget,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeMaintenanceWindowTargetsInput = {
    type = "structure",
    members = {
        WindowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.MaintenanceWindowFilter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.MaintenanceWindowTarget = {
    type = "structure",
    members = {
        WindowId = {
            type = "string",
        },
        WindowTargetId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        Targets = {
            type = "list",
            member = M.Target,
        },
        OwnerInformation = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.DescribeMaintenanceWindowTargetsOutput = {
    type = "structure",
    members = {
        Targets = {
            type = "list",
            member = M.MaintenanceWindowTarget,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeMaintenanceWindowTasksInput = {
    type = "structure",
    members = {
        WindowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.MaintenanceWindowFilter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.MaintenanceWindowTaskCutoffBehavior = {
    ContinueTask = "CONTINUE_TASK",
    CancelTask = "CANCEL_TASK",
}

M.LoggingInfo = {
    type = "structure",
    members = {
        S3BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3KeyPrefix = {
            type = "string",
        },
        S3Region = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MaintenanceWindowTaskParameterValueExpression = {
    type = "structure",
    members = {
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.MaintenanceWindowTask = {
    type = "structure",
    members = {
        WindowId = {
            type = "string",
        },
        WindowTaskId = {
            type = "string",
        },
        TaskArn = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Targets = {
            type = "list",
            member = M.Target,
        },
        TaskParameters = {
            type = "map",
            key = { type = "string" },
            value = M.MaintenanceWindowTaskParameterValueExpression,
        },
        Priority = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        LoggingInfo = M.LoggingInfo,
        ServiceRoleArn = {
            type = "string",
        },
        MaxConcurrency = {
            type = "string",
        },
        MaxErrors = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CutoffBehavior = {
            type = "string",
        },
        AlarmConfiguration = M.AlarmConfiguration,
    },
}

M.DescribeMaintenanceWindowTasksOutput = {
    type = "structure",
    members = {
        Tasks = {
            type = "list",
            member = M.MaintenanceWindowTask,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.OpsItemFilterKey = {
    STATUS = "Status",
    CREATED_BY = "CreatedBy",
    SOURCE = "Source",
    PRIORITY = "Priority",
    TITLE = "Title",
    OPSITEM_ID = "OpsItemId",
    CREATED_TIME = "CreatedTime",
    LAST_MODIFIED_TIME = "LastModifiedTime",
    ACTUAL_START_TIME = "ActualStartTime",
    ACTUAL_END_TIME = "ActualEndTime",
    PLANNED_START_TIME = "PlannedStartTime",
    PLANNED_END_TIME = "PlannedEndTime",
    OPERATIONAL_DATA = "OperationalData",
    OPERATIONAL_DATA_KEY = "OperationalDataKey",
    OPERATIONAL_DATA_VALUE = "OperationalDataValue",
    RESOURCE_ID = "ResourceId",
    AUTOMATION_ID = "AutomationId",
    CATEGORY = "Category",
    SEVERITY = "Severity",
    OPSITEM_TYPE = "OpsItemType",
    ACCESS_REQUEST_REQUESTER_ARN = "AccessRequestByRequesterArn",
    ACCESS_REQUEST_REQUESTER_ID = "AccessRequestByRequesterId",
    ACCESS_REQUEST_APPROVER_ARN = "AccessRequestByApproverArn",
    ACCESS_REQUEST_APPROVER_ID = "AccessRequestByApproverId",
    ACCESS_REQUEST_SOURCE_ACCOUNT_ID = "AccessRequestBySourceAccountId",
    ACCESS_REQUEST_SOURCE_OPS_ITEM_ID = "AccessRequestBySourceOpsItemId",
    ACCESS_REQUEST_SOURCE_REGION = "AccessRequestBySourceRegion",
    ACCESS_REQUEST_IS_REPLICA = "AccessRequestByIsReplica",
    ACCESS_REQUEST_TARGET_RESOURCE_ID = "AccessRequestByTargetResourceId",
    CHANGE_REQUEST_REQUESTER_ARN = "ChangeRequestByRequesterArn",
    CHANGE_REQUEST_REQUESTER_NAME = "ChangeRequestByRequesterName",
    CHANGE_REQUEST_APPROVER_ARN = "ChangeRequestByApproverArn",
    CHANGE_REQUEST_APPROVER_NAME = "ChangeRequestByApproverName",
    CHANGE_REQUEST_TEMPLATE = "ChangeRequestByTemplate",
    CHANGE_REQUEST_TARGETS_RESOURCE_GROUP = "ChangeRequestByTargetsResourceGroup",
    INSIGHT_TYPE = "InsightByType",
    ACCOUNT_ID = "AccountId",
}

M.OpsItemFilterOperator = {
    EQUAL = "Equal",
    CONTAINS = "Contains",
    GREATER_THAN = "GreaterThan",
    LESS_THAN = "LessThan",
}

M.OpsItemFilter = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeOpsItemsInput = {
    type = "structure",
    members = {
        OpsItemFilters = {
            type = "list",
            member = M.OpsItemFilter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.OpsItemStatus = {
    OPEN = "Open",
    IN_PROGRESS = "InProgress",
    RESOLVED = "Resolved",
    PENDING = "Pending",
    TIMED_OUT = "TimedOut",
    CANCELLING = "Cancelling",
    CANCELLED = "Cancelled",
    FAILED = "Failed",
    COMPLETED_WITH_SUCCESS = "CompletedWithSuccess",
    COMPLETED_WITH_FAILURE = "CompletedWithFailure",
    SCHEDULED = "Scheduled",
    RUNBOOK_IN_PROGRESS = "RunbookInProgress",
    PENDING_CHANGE_CALENDAR_OVERRIDE = "PendingChangeCalendarOverride",
    CHANGE_CALENDAR_OVERRIDE_APPROVED = "ChangeCalendarOverrideApproved",
    CHANGE_CALENDAR_OVERRIDE_REJECTED = "ChangeCalendarOverrideRejected",
    PENDING_APPROVAL = "PendingApproval",
    APPROVED = "Approved",
    REVOKED = "Revoked",
    REJECTED = "Rejected",
    CLOSED = "Closed",
}

M.OpsItemSummary = {
    type = "structure",
    members = {
        CreatedBy = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        Priority = {
            type = "integer",
        },
        Source = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        OpsItemId = {
            type = "string",
        },
        Title = {
            type = "string",
        },
        OperationalData = {
            type = "map",
            key = { type = "string" },
            value = M.OpsItemDataValue,
        },
        Category = {
            type = "string",
        },
        Severity = {
            type = "string",
        },
        OpsItemType = {
            type = "string",
        },
        ActualStartTime = {
            type = "timestamp",
        },
        ActualEndTime = {
            type = "timestamp",
        },
        PlannedStartTime = {
            type = "timestamp",
        },
        PlannedEndTime = {
            type = "timestamp",
        },
    },
}

M.DescribeOpsItemsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        OpsItemSummaries = {
            type = "list",
            member = M.OpsItemSummary,
        },
    },
}

M.ParametersFilterKey = {
    NAME = "Name",
    TYPE = "Type",
    KEY_ID = "KeyId",
}

M.ParametersFilter = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ParameterStringFilter = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Option = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeParametersInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member = M.ParametersFilter,
        },
        ParameterFilters = {
            type = "list",
            member = M.ParameterStringFilter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Shared = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.ParameterInlinePolicy = {
    type = "structure",
    members = {
        PolicyText = {
            type = "string",
        },
        PolicyType = {
            type = "string",
        },
        PolicyStatus = {
            type = "string",
        },
    },
}

M.ParameterTier = {
    STANDARD = "Standard",
    ADVANCED = "Advanced",
    INTELLIGENT_TIERING = "Intelligent-Tiering",
}

M.ParameterType = {
    STRING = "String",
    STRING_LIST = "StringList",
    SECURE_STRING = "SecureString",
}

M.ParameterMetadata = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        ARN = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        KeyId = {
            type = "string",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
        LastModifiedUser = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        AllowedPattern = {
            type = "string",
        },
        Version = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Tier = {
            type = "string",
        },
        Policies = {
            type = "list",
            member = M.ParameterInlinePolicy,
        },
        DataType = {
            type = "string",
        },
    },
}

M.DescribeParametersOutput = {
    type = "structure",
    members = {
        Parameters = {
            type = "list",
            member = M.ParameterMetadata,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InvalidFilterOption = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribePatchBaselinesInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member = M.PatchOrchestratorFilter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PatchBaselineIdentity = {
    type = "structure",
    members = {
        BaselineId = {
            type = "string",
        },
        BaselineName = {
            type = "string",
        },
        OperatingSystem = {
            type = "string",
        },
        BaselineDescription = {
            type = "string",
        },
        DefaultBaseline = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DescribePatchBaselinesOutput = {
    type = "structure",
    members = {
        BaselineIdentities = {
            type = "list",
            member = M.PatchBaselineIdentity,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribePatchGroupsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
        },
        Filters = {
            type = "list",
            member = M.PatchOrchestratorFilter,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PatchGroupPatchBaselineMapping = {
    type = "structure",
    members = {
        PatchGroup = {
            type = "string",
        },
        BaselineIdentity = M.PatchBaselineIdentity,
    },
}

M.DescribePatchGroupsOutput = {
    type = "structure",
    members = {
        Mappings = {
            type = "list",
            member = M.PatchGroupPatchBaselineMapping,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribePatchGroupStateInput = {
    type = "structure",
    members = {
        PatchGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribePatchGroupStateOutput = {
    type = "structure",
    members = {
        Instances = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        InstancesWithInstalledPatches = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        InstancesWithInstalledOtherPatches = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        InstancesWithInstalledPendingRebootPatches = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        InstancesWithInstalledRejectedPatches = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        InstancesWithMissingPatches = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        InstancesWithFailedPatches = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        InstancesWithNotApplicablePatches = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        InstancesWithUnreportedNotApplicablePatches = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        InstancesWithCriticalNonCompliantPatches = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        InstancesWithSecurityNonCompliantPatches = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        InstancesWithOtherNonCompliantPatches = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        InstancesWithAvailableSecurityUpdates = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
    },
}

M.PatchSet = {
    Os = "OS",
    Application = "APPLICATION",
}

M.PatchProperty = {
    Product = "PRODUCT",
    PatchProductFamily = "PRODUCT_FAMILY",
    PatchClassification = "CLASSIFICATION",
    PatchMsrcSeverity = "MSRC_SEVERITY",
    PatchPriority = "PRIORITY",
    PatchSeverity = "SEVERITY",
}

M.DescribePatchPropertiesInput = {
    type = "structure",
    members = {
        OperatingSystem = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Property = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PatchSet = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribePatchPropertiesOutput = {
    type = "structure",
    members = {
        Properties = {
            type = "list",
            member = { type = "map" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SessionFilterKey = {
    INVOKED_AFTER = "InvokedAfter",
    INVOKED_BEFORE = "InvokedBefore",
    TARGET_ID = "Target",
    OWNER = "Owner",
    STATUS = "Status",
    SESSION_ID = "SessionId",
    ACCESS_TYPE = "AccessType",
}

M.SessionFilter = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SessionState = {
    ACTIVE = "Active",
    HISTORY = "History",
}

M.DescribeSessionsInput = {
    type = "structure",
    members = {
        State = {
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
            member = M.SessionFilter,
        },
    },
}

M.SessionManagerOutputUrl = {
    type = "structure",
    members = {
        S3OutputUrl = {
            type = "string",
        },
        CloudWatchOutputUrl = {
            type = "string",
        },
    },
}

M.SessionStatus = {
    CONNECTED = "Connected",
    CONNECTING = "Connecting",
    DISCONNECTED = "Disconnected",
    TERMINATED = "Terminated",
    TERMINATING = "Terminating",
    FAILED = "Failed",
}

M.Session = {
    type = "structure",
    members = {
        SessionId = {
            type = "string",
        },
        Target = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StartDate = {
            type = "timestamp",
        },
        EndDate = {
            type = "timestamp",
        },
        DocumentName = {
            type = "string",
        },
        Owner = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
        Details = {
            type = "string",
        },
        OutputUrl = M.SessionManagerOutputUrl,
        MaxSessionDuration = {
            type = "string",
        },
        AccessType = {
            type = "string",
        },
    },
}

M.DescribeSessionsOutput = {
    type = "structure",
    members = {
        Sessions = {
            type = "list",
            member = M.Session,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DisassociateOpsItemRelatedItemInput = {
    type = "structure",
    members = {
        OpsItemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AssociationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateOpsItemRelatedItemOutput = {
    type = "structure",
}

M.OpsItemRelatedItemAssociationNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetAccessTokenInput = {
    type = "structure",
    members = {
        AccessRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Credentials = {
    type = "structure",
    members = {
        AccessKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecretAccessKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SessionToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExpirationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAccessTokenOutput = {
    type = "structure",
    members = {
        Credentials = M.Credentials,
        AccessRequestStatus = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QuotaCode = {
            type = "string",
        },
        ServiceCode = {
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
        ReasonCode = {
            type = "string",
        },
    },
}

M.GetAutomationExecutionInput = {
    type = "structure",
    members = {
        AutomationExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProgressCounters = {
    type = "structure",
    members = {
        TotalSteps = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        SuccessSteps = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        FailedSteps = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        CancelledSteps = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        TimedOutSteps = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.AutomationExecution = {
    type = "structure",
    members = {
        AutomationExecutionId = {
            type = "string",
        },
        DocumentName = {
            type = "string",
        },
        DocumentVersion = {
            type = "string",
        },
        ExecutionStartTime = {
            type = "timestamp",
        },
        ExecutionEndTime = {
            type = "timestamp",
        },
        AutomationExecutionStatus = {
            type = "string",
        },
        StepExecutions = {
            type = "list",
            member = M.StepExecution,
        },
        StepExecutionsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        Outputs = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        FailureMessage = {
            type = "string",
        },
        Mode = {
            type = "string",
        },
        ParentAutomationExecutionId = {
            type = "string",
        },
        ExecutedBy = {
            type = "string",
        },
        CurrentStepName = {
            type = "string",
        },
        CurrentAction = {
            type = "string",
        },
        TargetParameterName = {
            type = "string",
        },
        Targets = {
            type = "list",
            member = M.Target,
        },
        TargetMaps = {
            type = "list",
            member = { type = "map" },
        },
        ResolvedTargets = M.ResolvedTargets,
        MaxConcurrency = {
            type = "string",
        },
        MaxErrors = {
            type = "string",
        },
        Target = {
            type = "string",
        },
        TargetLocations = {
            type = "list",
            member = M.TargetLocation,
        },
        ProgressCounters = M.ProgressCounters,
        AlarmConfiguration = M.AlarmConfiguration,
        TriggeredAlarms = {
            type = "list",
            member = M.AlarmStateInformation,
        },
        TargetLocationsURL = {
            type = "string",
        },
        AutomationSubtype = {
            type = "string",
        },
        ScheduledTime = {
            type = "timestamp",
        },
        Runbooks = {
            type = "list",
            member = M.Runbook,
        },
        OpsItemId = {
            type = "string",
        },
        AssociationId = {
            type = "string",
        },
        ChangeRequestName = {
            type = "string",
        },
        Variables = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.GetAutomationExecutionOutput = {
    type = "structure",
    members = {
        AutomationExecution = M.AutomationExecution,
    },
}

M.GetCalendarStateInput = {
    type = "structure",
    members = {
        CalendarNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        AtTime = {
            type = "string",
        },
    },
}

M.CalendarState = {
    OPEN = "OPEN",
    CLOSED = "CLOSED",
}

M.GetCalendarStateOutput = {
    type = "structure",
    members = {
        State = {
            type = "string",
        },
        AtTime = {
            type = "string",
        },
        NextTransitionTime = {
            type = "string",
        },
    },
}

M.InvalidDocumentType = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedCalendarException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetCommandInvocationInput = {
    type = "structure",
    members = {
        CommandId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PluginName = {
            type = "string",
        },
    },
}

M.CloudWatchOutputConfig = {
    type = "structure",
    members = {
        CloudWatchLogGroupName = {
            type = "string",
        },
        CloudWatchOutputEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CommandInvocationStatus = {
    PENDING = "Pending",
    IN_PROGRESS = "InProgress",
    DELAYED = "Delayed",
    SUCCESS = "Success",
    CANCELLED = "Cancelled",
    TIMED_OUT = "TimedOut",
    FAILED = "Failed",
    CANCELLING = "Cancelling",
}

M.GetCommandInvocationOutput = {
    type = "structure",
    members = {
        CommandId = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        Comment = {
            type = "string",
        },
        DocumentName = {
            type = "string",
        },
        DocumentVersion = {
            type = "string",
        },
        PluginName = {
            type = "string",
        },
        ResponseCode = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        ExecutionStartDateTime = {
            type = "string",
        },
        ExecutionElapsedTime = {
            type = "string",
        },
        ExecutionEndDateTime = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusDetails = {
            type = "string",
        },
        StandardOutputContent = {
            type = "string",
        },
        StandardOutputUrl = {
            type = "string",
        },
        StandardErrorContent = {
            type = "string",
        },
        StandardErrorUrl = {
            type = "string",
        },
        CloudWatchOutputConfig = M.CloudWatchOutputConfig,
    },
}

M.InvalidPluginName = {
    type = "structure",
    error = "client",
}

M.InvocationDoesNotExist = {
    type = "structure",
    error = "client",
}

M.GetConnectionStatusInput = {
    type = "structure",
    members = {
        Target = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConnectionStatus = {
    CONNECTED = "connected",
    NOT_CONNECTED = "notconnected",
}

M.GetConnectionStatusOutput = {
    type = "structure",
    members = {
        Target = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.GetDefaultPatchBaselineInput = {
    type = "structure",
    members = {
        OperatingSystem = {
            type = "string",
        },
    },
}

M.GetDefaultPatchBaselineOutput = {
    type = "structure",
    members = {
        BaselineId = {
            type = "string",
        },
        OperatingSystem = {
            type = "string",
        },
    },
}

M.BaselineOverride = {
    type = "structure",
    members = {
        OperatingSystem = {
            type = "string",
        },
        GlobalFilters = M.PatchFilterGroup,
        ApprovalRules = M.PatchRuleGroup,
        ApprovedPatches = {
            type = "list",
            member = { type = "string" },
        },
        ApprovedPatchesComplianceLevel = {
            type = "string",
        },
        RejectedPatches = {
            type = "list",
            member = { type = "string" },
        },
        RejectedPatchesAction = {
            type = "string",
        },
        ApprovedPatchesEnableNonSecurity = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Sources = {
            type = "list",
            member = M.PatchSource,
        },
        AvailableSecurityUpdatesComplianceStatus = {
            type = "string",
        },
    },
}

M.GetDeployablePatchSnapshotForInstanceInput = {
    type = "structure",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnapshotId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BaselineOverride = M.BaselineOverride,
        UseS3DualStackEndpoint = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.GetDeployablePatchSnapshotForInstanceOutput = {
    type = "structure",
    members = {
        InstanceId = {
            type = "string",
        },
        SnapshotId = {
            type = "string",
        },
        SnapshotDownloadUrl = {
            type = "string",
        },
        Product = {
            type = "string",
        },
    },
}

M.UnsupportedFeatureRequiredException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetDocumentInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionName = {
            type = "string",
        },
        DocumentVersion = {
            type = "string",
        },
        DocumentFormat = {
            type = "string",
        },
    },
}

M.AttachmentHashType = {
    SHA256 = "Sha256",
}

M.AttachmentContent = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Size = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Hash = {
            type = "string",
        },
        HashType = {
            type = "string",
        },
        Url = {
            type = "string",
        },
    },
}

M.GetDocumentOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        CreatedDate = {
            type = "timestamp",
        },
        DisplayName = {
            type = "string",
        },
        VersionName = {
            type = "string",
        },
        DocumentVersion = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusInformation = {
            type = "string",
        },
        Content = {
            type = "string",
        },
        DocumentType = {
            type = "string",
        },
        DocumentFormat = {
            type = "string",
        },
        Requires = {
            type = "list",
            member = M.DocumentRequires,
        },
        AttachmentsContent = {
            type = "list",
            member = M.AttachmentContent,
        },
        ReviewStatus = {
            type = "string",
        },
    },
}

M.GetExecutionPreviewInput = {
    type = "structure",
    members = {
        ExecutionPreviewId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImpactType = {
    MUTATING = "Mutating",
    NON_MUTATING = "NonMutating",
    UNDETERMINED = "Undetermined",
}

M.TargetPreview = {
    type = "structure",
    members = {
        Count = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        TargetType = {
            type = "string",
        },
    },
}

M.AutomationExecutionPreview = {
    type = "structure",
    members = {
        StepPreviews = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
        Regions = {
            type = "list",
            member = { type = "string" },
        },
        TargetPreviews = {
            type = "list",
            member = M.TargetPreview,
        },
        TotalAccounts = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.ExecutionPreview = {
    type = "union",
    members = {
        Automation = M.AutomationExecutionPreview,
    },
}

M.ExecutionPreviewStatus = {
    PENDING = "Pending",
    IN_PROGRESS = "InProgress",
    SUCCESS = "Success",
    FAILED = "Failed",
}

M.GetExecutionPreviewOutput = {
    type = "structure",
    members = {
        ExecutionPreviewId = {
            type = "string",
        },
        EndedAt = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        ExecutionPreview = M.ExecutionPreview,
    },
}

M.InventoryQueryOperatorType = {
    EQUAL = "Equal",
    NOT_EQUAL = "NotEqual",
    BEGIN_WITH = "BeginWith",
    LESS_THAN = "LessThan",
    GREATER_THAN = "GreaterThan",
    EXISTS = "Exists",
}

M.InventoryFilter = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
        },
    },
}

M.InventoryGroup = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.InventoryFilter,
            traits = {
                required = true,
            },
        },
    },
}

M.ResultAttribute = {
    type = "structure",
    members = {
        TypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InventoryResultItem = {
    type = "structure",
    members = {
        TypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SchemaVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CaptureTime = {
            type = "string",
        },
        ContentHash = {
            type = "string",
        },
        Content = {
            type = "list",
            member = { type = "map" },
            traits = {
                required = true,
            },
        },
    },
}

M.InventoryResultEntity = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Data = {
            type = "map",
            key = { type = "string" },
            value = M.InventoryResultItem,
        },
    },
}

M.GetInventoryOutput = {
    type = "structure",
    members = {
        Entities = {
            type = "list",
            member = M.InventoryResultEntity,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InvalidAggregatorException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidInventoryGroupException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidResultAttributeException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetInventorySchemaInput = {
    type = "structure",
    members = {
        TypeName = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Aggregator = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        SubType = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.InventoryAttributeDataType = {
    STRING = "string",
    NUMBER = "number",
}

M.InventoryItemAttribute = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InventoryItemSchema = {
    type = "structure",
    members = {
        TypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "string",
        },
        Attributes = {
            type = "list",
            member = M.InventoryItemAttribute,
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
        },
    },
}

M.GetInventorySchemaOutput = {
    type = "structure",
    members = {
        Schemas = {
            type = "list",
            member = M.InventoryItemSchema,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetMaintenanceWindowInput = {
    type = "structure",
    members = {
        WindowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetMaintenanceWindowOutput = {
    type = "structure",
    members = {
        WindowId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        StartDate = {
            type = "string",
        },
        EndDate = {
            type = "string",
        },
        Schedule = {
            type = "string",
        },
        ScheduleTimezone = {
            type = "string",
        },
        ScheduleOffset = {
            type = "integer",
        },
        NextExecutionTime = {
            type = "string",
        },
        Duration = {
            type = "integer",
        },
        Cutoff = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        AllowUnassociatedTargets = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CreatedDate = {
            type = "timestamp",
        },
        ModifiedDate = {
            type = "timestamp",
        },
    },
}

M.GetMaintenanceWindowExecutionInput = {
    type = "structure",
    members = {
        WindowExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetMaintenanceWindowExecutionOutput = {
    type = "structure",
    members = {
        WindowExecutionId = {
            type = "string",
        },
        TaskIds = {
            type = "list",
            member = { type = "string" },
        },
        Status = {
            type = "string",
        },
        StatusDetails = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
    },
}

M.GetMaintenanceWindowExecutionTaskInput = {
    type = "structure",
    members = {
        WindowExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TaskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetMaintenanceWindowExecutionTaskOutput = {
    type = "structure",
    members = {
        WindowExecutionId = {
            type = "string",
        },
        TaskExecutionId = {
            type = "string",
        },
        TaskArn = {
            type = "string",
        },
        ServiceRole = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        TaskParameters = {
            type = "list",
            member = { type = "map" },
        },
        Priority = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        MaxConcurrency = {
            type = "string",
        },
        MaxErrors = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusDetails = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        AlarmConfiguration = M.AlarmConfiguration,
        TriggeredAlarms = {
            type = "list",
            member = M.AlarmStateInformation,
        },
    },
}

M.GetMaintenanceWindowExecutionTaskInvocationInput = {
    type = "structure",
    members = {
        WindowExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TaskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InvocationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetMaintenanceWindowExecutionTaskInvocationOutput = {
    type = "structure",
    members = {
        WindowExecutionId = {
            type = "string",
        },
        TaskExecutionId = {
            type = "string",
        },
        InvocationId = {
            type = "string",
        },
        ExecutionId = {
            type = "string",
        },
        TaskType = {
            type = "string",
        },
        Parameters = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusDetails = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        OwnerInformation = {
            type = "string",
        },
        WindowTargetId = {
            type = "string",
        },
    },
}

M.GetMaintenanceWindowTaskInput = {
    type = "structure",
    members = {
        WindowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WindowTaskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MaintenanceWindowAutomationParameters = {
    type = "structure",
    members = {
        DocumentVersion = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.MaintenanceWindowLambdaParameters = {
    type = "structure",
    members = {
        ClientContext = {
            type = "string",
        },
        Qualifier = {
            type = "string",
        },
        Payload = {
            type = "blob",
        },
    },
}

M.NotificationEvent = {
    ALL = "All",
    IN_PROGRESS = "InProgress",
    SUCCESS = "Success",
    TIMED_OUT = "TimedOut",
    CANCELLED = "Cancelled",
    FAILED = "Failed",
}

M.NotificationType = {
    Command = "Command",
    Invocation = "Invocation",
}

M.NotificationConfig = {
    type = "structure",
    members = {
        NotificationArn = {
            type = "string",
        },
        NotificationEvents = {
            type = "list",
            member = { type = "string" },
        },
        NotificationType = {
            type = "string",
        },
    },
}

M.MaintenanceWindowRunCommandParameters = {
    type = "structure",
    members = {
        Comment = {
            type = "string",
        },
        CloudWatchOutputConfig = M.CloudWatchOutputConfig,
        DocumentHash = {
            type = "string",
        },
        DocumentHashType = {
            type = "string",
        },
        DocumentVersion = {
            type = "string",
        },
        NotificationConfig = M.NotificationConfig,
        OutputS3BucketName = {
            type = "string",
        },
        OutputS3KeyPrefix = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        ServiceRoleArn = {
            type = "string",
        },
        TimeoutSeconds = {
            type = "integer",
        },
    },
}

M.MaintenanceWindowStepFunctionsParameters = {
    type = "structure",
    members = {
        Input = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.MaintenanceWindowTaskInvocationParameters = {
    type = "structure",
    members = {
        RunCommand = M.MaintenanceWindowRunCommandParameters,
        Automation = M.MaintenanceWindowAutomationParameters,
        StepFunctions = M.MaintenanceWindowStepFunctionsParameters,
        Lambda = M.MaintenanceWindowLambdaParameters,
    },
}

M.GetMaintenanceWindowTaskOutput = {
    type = "structure",
    members = {
        WindowId = {
            type = "string",
        },
        WindowTaskId = {
            type = "string",
        },
        Targets = {
            type = "list",
            member = M.Target,
        },
        TaskArn = {
            type = "string",
        },
        ServiceRoleArn = {
            type = "string",
        },
        TaskType = {
            type = "string",
        },
        TaskParameters = {
            type = "map",
            key = { type = "string" },
            value = M.MaintenanceWindowTaskParameterValueExpression,
        },
        TaskInvocationParameters = M.MaintenanceWindowTaskInvocationParameters,
        Priority = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        MaxConcurrency = {
            type = "string",
        },
        MaxErrors = {
            type = "string",
        },
        LoggingInfo = M.LoggingInfo,
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CutoffBehavior = {
            type = "string",
        },
        AlarmConfiguration = M.AlarmConfiguration,
    },
}

M.GetOpsItemInput = {
    type = "structure",
    members = {
        OpsItemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OpsItemArn = {
            type = "string",
        },
    },
}

M.OpsItem = {
    type = "structure",
    members = {
        CreatedBy = {
            type = "string",
        },
        OpsItemType = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        LastModifiedBy = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        Notifications = {
            type = "list",
            member = M.OpsItemNotification,
        },
        Priority = {
            type = "integer",
        },
        RelatedOpsItems = {
            type = "list",
            member = M.RelatedOpsItem,
        },
        Status = {
            type = "string",
        },
        OpsItemId = {
            type = "string",
        },
        Version = {
            type = "string",
        },
        Title = {
            type = "string",
        },
        Source = {
            type = "string",
        },
        OperationalData = {
            type = "map",
            key = { type = "string" },
            value = M.OpsItemDataValue,
        },
        Category = {
            type = "string",
        },
        Severity = {
            type = "string",
        },
        ActualStartTime = {
            type = "timestamp",
        },
        ActualEndTime = {
            type = "timestamp",
        },
        PlannedStartTime = {
            type = "timestamp",
        },
        PlannedEndTime = {
            type = "timestamp",
        },
        OpsItemArn = {
            type = "string",
        },
    },
}

M.GetOpsItemOutput = {
    type = "structure",
    members = {
        OpsItem = M.OpsItem,
    },
}

M.GetOpsMetadataInput = {
    type = "structure",
    members = {
        OpsMetadataArn = {
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

M.GetOpsMetadataOutput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
        },
        Metadata = {
            type = "map",
            key = { type = "string" },
            value = M.MetadataValue,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.OpsFilterOperatorType = {
    EQUAL = "Equal",
    NOT_EQUAL = "NotEqual",
    BEGIN_WITH = "BeginWith",
    LESS_THAN = "LessThan",
    GREATER_THAN = "GreaterThan",
    EXISTS = "Exists",
}

M.OpsFilter = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
        },
    },
}

M.OpsResultAttribute = {
    type = "structure",
    members = {
        TypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OpsEntityItem = {
    type = "structure",
    members = {
        CaptureTime = {
            type = "string",
        },
        Content = {
            type = "list",
            member = { type = "map" },
        },
    },
}

M.OpsEntity = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Data = {
            type = "map",
            key = { type = "string" },
            value = M.OpsEntityItem,
        },
    },
}

M.GetOpsSummaryOutput = {
    type = "structure",
    members = {
        Entities = {
            type = "list",
            member = M.OpsEntity,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetParameterInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WithDecryption = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.Parameter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        Version = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Selector = {
            type = "string",
        },
        SourceResult = {
            type = "string",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
        ARN = {
            type = "string",
        },
        DataType = {
            type = "string",
        },
    },
}

M.GetParameterOutput = {
    type = "structure",
    members = {
        Parameter = M.Parameter,
    },
}

M.InvalidKeyId = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ParameterVersionNotFound = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetParameterHistoryInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WithDecryption = {
            type = "boolean",
            traits = {
                default = nil,
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

M.ParameterHistory = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        KeyId = {
            type = "string",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
        LastModifiedUser = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        AllowedPattern = {
            type = "string",
        },
        Version = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Labels = {
            type = "list",
            member = { type = "string" },
        },
        Tier = {
            type = "string",
        },
        Policies = {
            type = "list",
            member = M.ParameterInlinePolicy,
        },
        DataType = {
            type = "string",
        },
    },
}

M.GetParameterHistoryOutput = {
    type = "structure",
    members = {
        Parameters = {
            type = "list",
            member = M.ParameterHistory,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetParametersInput = {
    type = "structure",
    members = {
        Names = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        WithDecryption = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.GetParametersOutput = {
    type = "structure",
    members = {
        Parameters = {
            type = "list",
            member = M.Parameter,
        },
        InvalidParameters = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetParametersByPathInput = {
    type = "structure",
    members = {
        Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Recursive = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        ParameterFilters = {
            type = "list",
            member = M.ParameterStringFilter,
        },
        WithDecryption = {
            type = "boolean",
            traits = {
                default = nil,
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

M.GetParametersByPathOutput = {
    type = "structure",
    members = {
        Parameters = {
            type = "list",
            member = M.Parameter,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetPatchBaselineInput = {
    type = "structure",
    members = {
        BaselineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPatchBaselineOutput = {
    type = "structure",
    members = {
        BaselineId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        OperatingSystem = {
            type = "string",
        },
        GlobalFilters = M.PatchFilterGroup,
        ApprovalRules = M.PatchRuleGroup,
        ApprovedPatches = {
            type = "list",
            member = { type = "string" },
        },
        ApprovedPatchesComplianceLevel = {
            type = "string",
        },
        ApprovedPatchesEnableNonSecurity = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        RejectedPatches = {
            type = "list",
            member = { type = "string" },
        },
        RejectedPatchesAction = {
            type = "string",
        },
        PatchGroups = {
            type = "list",
            member = { type = "string" },
        },
        CreatedDate = {
            type = "timestamp",
        },
        ModifiedDate = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        Sources = {
            type = "list",
            member = M.PatchSource,
        },
        AvailableSecurityUpdatesComplianceStatus = {
            type = "string",
        },
    },
}

M.GetPatchBaselineForPatchGroupInput = {
    type = "structure",
    members = {
        PatchGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OperatingSystem = {
            type = "string",
        },
    },
}

M.GetPatchBaselineForPatchGroupOutput = {
    type = "structure",
    members = {
        BaselineId = {
            type = "string",
        },
        PatchGroup = {
            type = "string",
        },
        OperatingSystem = {
            type = "string",
        },
    },
}

M.GetResourcePoliciesInput = {
    type = "structure",
    members = {
        ResourceArn = {
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

M.GetResourcePoliciesResponseEntry = {
    type = "structure",
    members = {
        PolicyId = {
            type = "string",
        },
        PolicyHash = {
            type = "string",
        },
        Policy = {
            type = "string",
        },
    },
}

M.GetResourcePoliciesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Policies = {
            type = "list",
            member = M.GetResourcePoliciesResponseEntry,
        },
    },
}

M.GetServiceSettingInput = {
    type = "structure",
    members = {
        SettingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceSetting = {
    type = "structure",
    members = {
        SettingId = {
            type = "string",
        },
        SettingValue = {
            type = "string",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
        LastModifiedUser = {
            type = "string",
        },
        ARN = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.GetServiceSettingOutput = {
    type = "structure",
    members = {
        ServiceSetting = M.ServiceSetting,
    },
}

M.ServiceSettingNotFound = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.LabelParameterVersionInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParameterVersion = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        Labels = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.LabelParameterVersionOutput = {
    type = "structure",
    members = {
        InvalidLabels = {
            type = "list",
            member = { type = "string" },
        },
        ParameterVersion = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.ParameterVersionLabelLimitExceeded = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AssociationFilterKey = {
    InstanceId = "InstanceId",
    Name = "Name",
    AssociationId = "AssociationId",
    Status = "AssociationStatusName",
    LastExecutedBefore = "LastExecutedBefore",
    LastExecutedAfter = "LastExecutedAfter",
    AssociationName = "AssociationName",
    ResourceGroupName = "ResourceGroupName",
}

M.AssociationFilter = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAssociationsInput = {
    type = "structure",
    members = {
        AssociationFilterList = {
            type = "list",
            member = M.AssociationFilter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Association = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        AssociationId = {
            type = "string",
        },
        AssociationVersion = {
            type = "string",
        },
        DocumentVersion = {
            type = "string",
        },
        Targets = {
            type = "list",
            member = M.Target,
        },
        LastExecutionDate = {
            type = "timestamp",
        },
        Overview = M.AssociationOverview,
        ScheduleExpression = {
            type = "string",
        },
        AssociationName = {
            type = "string",
        },
        ScheduleOffset = {
            type = "integer",
        },
        Duration = {
            type = "integer",
        },
        TargetMaps = {
            type = "list",
            member = { type = "map" },
        },
    },
}

M.ListAssociationsOutput = {
    type = "structure",
    members = {
        Associations = {
            type = "list",
            member = M.Association,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAssociationVersionsInput = {
    type = "structure",
    members = {
        AssociationId = {
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

M.AssociationVersionInfo = {
    type = "structure",
    members = {
        AssociationId = {
            type = "string",
        },
        AssociationVersion = {
            type = "string",
        },
        CreatedDate = {
            type = "timestamp",
        },
        Name = {
            type = "string",
        },
        DocumentVersion = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        Targets = {
            type = "list",
            member = M.Target,
        },
        ScheduleExpression = {
            type = "string",
        },
        OutputLocation = M.InstanceAssociationOutputLocation,
        AssociationName = {
            type = "string",
        },
        MaxErrors = {
            type = "string",
        },
        MaxConcurrency = {
            type = "string",
        },
        ComplianceSeverity = {
            type = "string",
        },
        SyncCompliance = {
            type = "string",
        },
        ApplyOnlyAtCronInterval = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CalendarNames = {
            type = "list",
            member = { type = "string" },
        },
        TargetLocations = {
            type = "list",
            member = M.TargetLocation,
        },
        ScheduleOffset = {
            type = "integer",
        },
        Duration = {
            type = "integer",
        },
        TargetMaps = {
            type = "list",
            member = { type = "map" },
        },
        AssociationDispatchAssumeRole = {
            type = "string",
        },
    },
}

M.ListAssociationVersionsOutput = {
    type = "structure",
    members = {
        AssociationVersions = {
            type = "list",
            member = M.AssociationVersionInfo,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.CommandFilterKey = {
    INVOKED_AFTER = "InvokedAfter",
    INVOKED_BEFORE = "InvokedBefore",
    STATUS = "Status",
    EXECUTION_STAGE = "ExecutionStage",
    DOCUMENT_NAME = "DocumentName",
}

M.CommandFilter = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCommandInvocationsInput = {
    type = "structure",
    members = {
        CommandId = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.CommandFilter,
        },
        Details = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CommandPluginStatus = {
    PENDING = "Pending",
    IN_PROGRESS = "InProgress",
    SUCCESS = "Success",
    TIMED_OUT = "TimedOut",
    CANCELLED = "Cancelled",
    FAILED = "Failed",
}

M.CommandPlugin = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusDetails = {
            type = "string",
        },
        ResponseCode = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        ResponseStartDateTime = {
            type = "timestamp",
        },
        ResponseFinishDateTime = {
            type = "timestamp",
        },
        Output = {
            type = "string",
        },
        StandardOutputUrl = {
            type = "string",
        },
        StandardErrorUrl = {
            type = "string",
        },
        OutputS3Region = {
            type = "string",
        },
        OutputS3BucketName = {
            type = "string",
        },
        OutputS3KeyPrefix = {
            type = "string",
        },
    },
}

M.CommandInvocation = {
    type = "structure",
    members = {
        CommandId = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        InstanceName = {
            type = "string",
        },
        Comment = {
            type = "string",
        },
        DocumentName = {
            type = "string",
        },
        DocumentVersion = {
            type = "string",
        },
        RequestedDateTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        StatusDetails = {
            type = "string",
        },
        TraceOutput = {
            type = "string",
        },
        StandardOutputUrl = {
            type = "string",
        },
        StandardErrorUrl = {
            type = "string",
        },
        CommandPlugins = {
            type = "list",
            member = M.CommandPlugin,
        },
        ServiceRole = {
            type = "string",
        },
        NotificationConfig = M.NotificationConfig,
        CloudWatchOutputConfig = M.CloudWatchOutputConfig,
    },
}

M.ListCommandInvocationsOutput = {
    type = "structure",
    members = {
        CommandInvocations = {
            type = "list",
            member = M.CommandInvocation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCommandsInput = {
    type = "structure",
    members = {
        CommandId = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.CommandFilter,
        },
    },
}

M.CommandStatus = {
    PENDING = "Pending",
    IN_PROGRESS = "InProgress",
    SUCCESS = "Success",
    CANCELLED = "Cancelled",
    FAILED = "Failed",
    TIMED_OUT = "TimedOut",
    CANCELLING = "Cancelling",
}

M.Command = {
    type = "structure",
    members = {
        CommandId = {
            type = "string",
        },
        DocumentName = {
            type = "string",
        },
        DocumentVersion = {
            type = "string",
        },
        Comment = {
            type = "string",
        },
        ExpiresAfter = {
            type = "timestamp",
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        InstanceIds = {
            type = "list",
            member = { type = "string" },
        },
        Targets = {
            type = "list",
            member = M.Target,
        },
        RequestedDateTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        StatusDetails = {
            type = "string",
        },
        OutputS3Region = {
            type = "string",
        },
        OutputS3BucketName = {
            type = "string",
        },
        OutputS3KeyPrefix = {
            type = "string",
        },
        MaxConcurrency = {
            type = "string",
        },
        MaxErrors = {
            type = "string",
        },
        TargetCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        CompletedCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        ErrorCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        DeliveryTimedOutCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        ServiceRole = {
            type = "string",
        },
        NotificationConfig = M.NotificationConfig,
        CloudWatchOutputConfig = M.CloudWatchOutputConfig,
        TimeoutSeconds = {
            type = "integer",
        },
        AlarmConfiguration = M.AlarmConfiguration,
        TriggeredAlarms = {
            type = "list",
            member = M.AlarmStateInformation,
        },
    },
}

M.ListCommandsOutput = {
    type = "structure",
    members = {
        Commands = {
            type = "list",
            member = M.Command,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ComplianceQueryOperatorType = {
    Equal = "EQUAL",
    NotEqual = "NOT_EQUAL",
    BeginWith = "BEGIN_WITH",
    LessThan = "LESS_THAN",
    GreaterThan = "GREATER_THAN",
}

M.ComplianceStringFilter = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
        Type = {
            type = "string",
        },
    },
}

M.ListComplianceItemsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member = M.ComplianceStringFilter,
        },
        ResourceIds = {
            type = "list",
            member = { type = "string" },
        },
        ResourceTypes = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ComplianceExecutionSummary = {
    type = "structure",
    members = {
        ExecutionTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ExecutionId = {
            type = "string",
        },
        ExecutionType = {
            type = "string",
        },
    },
}

M.ComplianceSeverity = {
    Critical = "CRITICAL",
    High = "HIGH",
    Medium = "MEDIUM",
    Low = "LOW",
    Informational = "INFORMATIONAL",
    Unspecified = "UNSPECIFIED",
}

M.ComplianceStatus = {
    Compliant = "COMPLIANT",
    NonCompliant = "NON_COMPLIANT",
}

M.ComplianceItem = {
    type = "structure",
    members = {
        ComplianceType = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Title = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Severity = {
            type = "string",
        },
        ExecutionSummary = M.ComplianceExecutionSummary,
        Details = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListComplianceItemsOutput = {
    type = "structure",
    members = {
        ComplianceItems = {
            type = "list",
            member = M.ComplianceItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListComplianceSummariesInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member = M.ComplianceStringFilter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.SeveritySummary = {
    type = "structure",
    members = {
        CriticalCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        HighCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        MediumCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        LowCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        InformationalCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        UnspecifiedCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.CompliantSummary = {
    type = "structure",
    members = {
        CompliantCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        SeveritySummary = M.SeveritySummary,
    },
}

M.NonCompliantSummary = {
    type = "structure",
    members = {
        NonCompliantCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        SeveritySummary = M.SeveritySummary,
    },
}

M.ComplianceSummaryItem = {
    type = "structure",
    members = {
        ComplianceType = {
            type = "string",
        },
        CompliantSummary = M.CompliantSummary,
        NonCompliantSummary = M.NonCompliantSummary,
    },
}

M.ListComplianceSummariesOutput = {
    type = "structure",
    members = {
        ComplianceSummaryItems = {
            type = "list",
            member = M.ComplianceSummaryItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DocumentMetadataEnum = {
    DocumentReviews = "DocumentReviews",
}

M.ListDocumentMetadataHistoryInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentVersion = {
            type = "string",
        },
        Metadata = {
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

M.DocumentReviewCommentType = {
    Comment = "Comment",
}

M.DocumentReviewCommentSource = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Content = {
            type = "string",
        },
    },
}

M.DocumentReviewerResponseSource = {
    type = "structure",
    members = {
        CreateTime = {
            type = "timestamp",
        },
        UpdatedTime = {
            type = "timestamp",
        },
        ReviewStatus = {
            type = "string",
        },
        Comment = {
            type = "list",
            member = M.DocumentReviewCommentSource,
        },
        Reviewer = {
            type = "string",
        },
    },
}

M.DocumentMetadataResponseInfo = {
    type = "structure",
    members = {
        ReviewerResponse = {
            type = "list",
            member = M.DocumentReviewerResponseSource,
        },
    },
}

M.ListDocumentMetadataHistoryOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        DocumentVersion = {
            type = "string",
        },
        Author = {
            type = "string",
        },
        Metadata = M.DocumentMetadataResponseInfo,
        NextToken = {
            type = "string",
        },
    },
}

M.DocumentFilterKey = {
    Name = "Name",
    Owner = "Owner",
    PlatformTypes = "PlatformTypes",
    DocumentType = "DocumentType",
}

M.DocumentFilter = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DocumentKeyValuesFilter = {
    type = "structure",
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

M.ListDocumentsInput = {
    type = "structure",
    members = {
        DocumentFilterList = {
            type = "list",
            member = M.DocumentFilter,
        },
        Filters = {
            type = "list",
            member = M.DocumentKeyValuesFilter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DocumentIdentifier = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        CreatedDate = {
            type = "timestamp",
        },
        DisplayName = {
            type = "string",
        },
        Owner = {
            type = "string",
        },
        VersionName = {
            type = "string",
        },
        PlatformTypes = {
            type = "list",
            member = { type = "string" },
        },
        DocumentVersion = {
            type = "string",
        },
        DocumentType = {
            type = "string",
        },
        SchemaVersion = {
            type = "string",
        },
        DocumentFormat = {
            type = "string",
        },
        TargetType = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        Requires = {
            type = "list",
            member = M.DocumentRequires,
        },
        ReviewStatus = {
            type = "string",
        },
        Author = {
            type = "string",
        },
    },
}

M.ListDocumentsOutput = {
    type = "structure",
    members = {
        DocumentIdentifiers = {
            type = "list",
            member = M.DocumentIdentifier,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDocumentVersionsInput = {
    type = "structure",
    members = {
        Name = {
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

M.DocumentVersionInfo = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        DocumentVersion = {
            type = "string",
        },
        VersionName = {
            type = "string",
        },
        CreatedDate = {
            type = "timestamp",
        },
        IsDefaultVersion = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        DocumentFormat = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusInformation = {
            type = "string",
        },
        ReviewStatus = {
            type = "string",
        },
    },
}

M.ListDocumentVersionsOutput = {
    type = "structure",
    members = {
        DocumentVersions = {
            type = "list",
            member = M.DocumentVersionInfo,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListInventoryEntriesInput = {
    type = "structure",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.InventoryFilter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListInventoryEntriesOutput = {
    type = "structure",
    members = {
        TypeName = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        SchemaVersion = {
            type = "string",
        },
        CaptureTime = {
            type = "string",
        },
        Entries = {
            type = "list",
            member = { type = "map" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.NodeFilterKey = {
    AGENT_TYPE = "AgentType",
    AGENT_VERSION = "AgentVersion",
    COMPUTER_NAME = "ComputerName",
    INSTANCE_ID = "InstanceId",
    INSTANCE_STATUS = "InstanceStatus",
    IP_ADDRESS = "IpAddress",
    MANAGED_STATUS = "ManagedStatus",
    PLATFORM_NAME = "PlatformName",
    PLATFORM_TYPE = "PlatformType",
    PLATFORM_VERSION = "PlatformVersion",
    RESOURCE_TYPE = "ResourceType",
    ORGANIZATIONAL_UNIT_ID = "OrganizationalUnitId",
    ORGANIZATIONAL_UNIT_PATH = "OrganizationalUnitPath",
    REGION = "Region",
    ACCOUNT_ID = "AccountId",
}

M.NodeFilterOperatorType = {
    EQUAL = "Equal",
    NOT_EQUAL = "NotEqual",
    BEGIN_WITH = "BeginWith",
}

M.NodeFilter = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
        },
    },
}

M.ListNodesInput = {
    type = "structure",
    members = {
        SyncName = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.NodeFilter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ManagedStatus = {
    ALL = "All",
    MANAGED = "Managed",
    UNMANAGED = "Unmanaged",
}

M.InstanceInfo = {
    type = "structure",
    members = {
        AgentType = {
            type = "string",
        },
        AgentVersion = {
            type = "string",
        },
        ComputerName = {
            type = "string",
        },
        InstanceStatus = {
            type = "string",
        },
        IpAddress = {
            type = "string",
        },
        ManagedStatus = {
            type = "string",
        },
        PlatformType = {
            type = "string",
        },
        PlatformName = {
            type = "string",
        },
        PlatformVersion = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.NodeType = {
    type = "union",
    members = {
        Instance = M.InstanceInfo,
    },
}

M.NodeOwnerInfo = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
        },
        OrganizationalUnitId = {
            type = "string",
        },
        OrganizationalUnitPath = {
            type = "string",
        },
    },
}

M.Node = {
    type = "structure",
    members = {
        CaptureTime = {
            type = "timestamp",
        },
        Id = {
            type = "string",
        },
        Owner = M.NodeOwnerInfo,
        Region = {
            type = "string",
        },
        NodeType = M.NodeType,
    },
}

M.ListNodesOutput = {
    type = "structure",
    members = {
        Nodes = {
            type = "list",
            member = M.Node,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UnsupportedOperationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NodeAggregatorType = {
    COUNT = "Count",
}

M.NodeAttributeName = {
    AGENT_VERSION = "AgentVersion",
    PLATFORM_NAME = "PlatformName",
    PLATFORM_TYPE = "PlatformType",
    PLATFORM_VERSION = "PlatformVersion",
    REGION = "Region",
    RESOURCE_TYPE = "ResourceType",
}

M.NodeTypeName = {
    INSTANCE = "Instance",
}

M.ListNodesSummaryOutput = {
    type = "structure",
    members = {
        Summary = {
            type = "list",
            member = { type = "map" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.OpsItemEventFilterKey = {
    OPSITEM_ID = "OpsItemId",
}

M.OpsItemEventFilterOperator = {
    EQUAL = "Equal",
}

M.OpsItemEventFilter = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListOpsItemEventsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member = M.OpsItemEventFilter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.OpsItemIdentity = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.OpsItemEventSummary = {
    type = "structure",
    members = {
        OpsItemId = {
            type = "string",
        },
        EventId = {
            type = "string",
        },
        Source = {
            type = "string",
        },
        DetailType = {
            type = "string",
        },
        Detail = {
            type = "string",
        },
        CreatedBy = M.OpsItemIdentity,
        CreatedTime = {
            type = "timestamp",
        },
    },
}

M.ListOpsItemEventsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Summaries = {
            type = "list",
            member = M.OpsItemEventSummary,
        },
    },
}

M.OpsItemRelatedItemsFilterKey = {
    RESOURCE_TYPE = "ResourceType",
    ASSOCIATION_ID = "AssociationId",
    RESOURCE_URI = "ResourceUri",
}

M.OpsItemRelatedItemsFilterOperator = {
    EQUAL = "Equal",
}

M.OpsItemRelatedItemsFilter = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListOpsItemRelatedItemsInput = {
    type = "structure",
    members = {
        OpsItemId = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.OpsItemRelatedItemsFilter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.OpsItemRelatedItemSummary = {
    type = "structure",
    members = {
        OpsItemId = {
            type = "string",
        },
        AssociationId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        AssociationType = {
            type = "string",
        },
        ResourceUri = {
            type = "string",
        },
        CreatedBy = M.OpsItemIdentity,
        CreatedTime = {
            type = "timestamp",
        },
        LastModifiedBy = M.OpsItemIdentity,
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.ListOpsItemRelatedItemsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Summaries = {
            type = "list",
            member = M.OpsItemRelatedItemSummary,
        },
    },
}

M.OpsMetadataFilter = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ListOpsMetadataInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member = M.OpsMetadataFilter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.OpsMetadata = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
        },
        OpsMetadataArn = {
            type = "string",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
        LastModifiedUser = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
    },
}

M.ListOpsMetadataOutput = {
    type = "structure",
    members = {
        OpsMetadataList = {
            type = "list",
            member = M.OpsMetadata,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListResourceComplianceSummariesInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member = M.ComplianceStringFilter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ResourceComplianceSummaryItem = {
    type = "structure",
    members = {
        ComplianceType = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        OverallSeverity = {
            type = "string",
        },
        ExecutionSummary = M.ComplianceExecutionSummary,
        CompliantSummary = M.CompliantSummary,
        NonCompliantSummary = M.NonCompliantSummary,
    },
}

M.ListResourceComplianceSummariesOutput = {
    type = "structure",
    members = {
        ResourceComplianceSummaryItems = {
            type = "list",
            member = M.ResourceComplianceSummaryItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListResourceDataSyncInput = {
    type = "structure",
    members = {
        SyncType = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.LastResourceDataSyncStatus = {
    SUCCESSFUL = "Successful",
    FAILED = "Failed",
    INPROGRESS = "InProgress",
}

M.ResourceDataSyncSourceWithState = {
    type = "structure",
    members = {
        SourceType = {
            type = "string",
        },
        AwsOrganizationsSource = M.ResourceDataSyncAwsOrganizationsSource,
        SourceRegions = {
            type = "list",
            member = { type = "string" },
        },
        IncludeFutureRegions = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        State = {
            type = "string",
        },
        EnableAllOpsDataSources = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ResourceDataSyncItem = {
    type = "structure",
    members = {
        SyncName = {
            type = "string",
        },
        SyncType = {
            type = "string",
        },
        SyncSource = M.ResourceDataSyncSourceWithState,
        S3Destination = M.ResourceDataSyncS3Destination,
        LastSyncTime = {
            type = "timestamp",
        },
        LastSuccessfulSyncTime = {
            type = "timestamp",
        },
        SyncLastModifiedTime = {
            type = "timestamp",
        },
        LastStatus = {
            type = "string",
        },
        SyncCreatedTime = {
            type = "timestamp",
        },
        LastSyncStatusMessage = {
            type = "string",
        },
    },
}

M.ListResourceDataSyncOutput = {
    type = "structure",
    members = {
        ResourceDataSyncItems = {
            type = "list",
            member = M.ResourceDataSyncItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceType = {
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

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DocumentPermissionLimit = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ModifyDocumentPermissionInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermissionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountIdsToAdd = {
            type = "list",
            member = { type = "string" },
        },
        AccountIdsToRemove = {
            type = "list",
            member = { type = "string" },
        },
        SharedDocumentVersion = {
            type = "string",
        },
    },
}

M.ModifyDocumentPermissionOutput = {
    type = "structure",
}

M.ComplianceTypeCountLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidItemContentException = {
    type = "structure",
    error = "client",
    members = {
        TypeName = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ItemSizeLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        TypeName = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ComplianceItemEntry = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Title = {
            type = "string",
        },
        Severity = {
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
        Details = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ComplianceUploadType = {
    Complete = "COMPLETE",
    Partial = "PARTIAL",
}

M.PutComplianceItemsInput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComplianceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExecutionSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ComplianceExecutionSummary }),
        Items = {
            type = "list",
            member = M.ComplianceItemEntry,
            traits = {
                required = true,
            },
        },
        ItemContentHash = {
            type = "string",
        },
        UploadType = {
            type = "string",
        },
    },
}

M.PutComplianceItemsOutput = {
    type = "structure",
}

M.TotalSizeLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CustomSchemaCountLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidInventoryItemContextException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ItemContentMismatchException = {
    type = "structure",
    error = "client",
    members = {
        TypeName = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.InventoryItem = {
    type = "structure",
    members = {
        TypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SchemaVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CaptureTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContentHash = {
            type = "string",
        },
        Content = {
            type = "list",
            member = { type = "map" },
        },
        Context = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PutInventoryInput = {
    type = "structure",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.InventoryItem,
            traits = {
                required = true,
            },
        },
    },
}

M.PutInventoryOutput = {
    type = "structure",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SubTypeCountLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedInventoryItemContextException = {
    type = "structure",
    error = "client",
    members = {
        TypeName = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedInventorySchemaVersionException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.HierarchyLevelLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.HierarchyTypeMismatchException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IncompatiblePolicyException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidAllowedPatternException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidPolicyAttributeException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidPolicyTypeException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ParameterAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ParameterLimitExceeded = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ParameterMaxVersionLimitExceeded = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ParameterPatternMismatchException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PoliciesLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutParameterInput = {
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
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
        },
        KeyId = {
            type = "string",
        },
        Overwrite = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        AllowedPattern = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        Tier = {
            type = "string",
        },
        Policies = {
            type = "string",
        },
        DataType = {
            type = "string",
        },
    },
}

M.PutParameterOutput = {
    type = "structure",
    members = {
        Version = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Tier = {
            type = "string",
        },
    },
}

M.UnsupportedParameterType = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyId = {
            type = "string",
        },
        PolicyHash = {
            type = "string",
        },
    },
}

M.PutResourcePolicyOutput = {
    type = "structure",
    members = {
        PolicyId = {
            type = "string",
        },
        PolicyHash = {
            type = "string",
        },
    },
}

M.ResourcePolicyLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        LimitType = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.RegisterDefaultPatchBaselineInput = {
    type = "structure",
    members = {
        BaselineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterDefaultPatchBaselineOutput = {
    type = "structure",
    members = {
        BaselineId = {
            type = "string",
        },
    },
}

M.RegisterPatchBaselineForPatchGroupInput = {
    type = "structure",
    members = {
        BaselineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PatchGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterPatchBaselineForPatchGroupOutput = {
    type = "structure",
    members = {
        BaselineId = {
            type = "string",
        },
        PatchGroup = {
            type = "string",
        },
    },
}

M.RegisterTargetWithMaintenanceWindowInput = {
    type = "structure",
    members = {
        WindowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Targets = {
            type = "list",
            member = M.Target,
            traits = {
                required = true,
            },
        },
        OwnerInformation = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.RegisterTargetWithMaintenanceWindowOutput = {
    type = "structure",
    members = {
        WindowTargetId = {
            type = "string",
        },
    },
}

M.FeatureNotAvailableException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RegisterTaskWithMaintenanceWindowInput = {
    type = "structure",
    members = {
        WindowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Targets = {
            type = "list",
            member = M.Target,
        },
        TaskArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceRoleArn = {
            type = "string",
        },
        TaskType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TaskParameters = {
            type = "map",
            key = { type = "string" },
            value = M.MaintenanceWindowTaskParameterValueExpression,
        },
        TaskInvocationParameters = M.MaintenanceWindowTaskInvocationParameters,
        Priority = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        MaxConcurrency = {
            type = "string",
        },
        MaxErrors = {
            type = "string",
        },
        LoggingInfo = M.LoggingInfo,
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        CutoffBehavior = {
            type = "string",
        },
        AlarmConfiguration = M.AlarmConfiguration,
    },
}

M.RegisterTaskWithMaintenanceWindowOutput = {
    type = "structure",
    members = {
        WindowTaskId = {
            type = "string",
        },
    },
}

M.RemoveTagsFromResourceInput = {
    type = "structure",
    members = {
        ResourceType = {
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
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveTagsFromResourceOutput = {
    type = "structure",
}

M.ResetServiceSettingInput = {
    type = "structure",
    members = {
        SettingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResetServiceSettingOutput = {
    type = "structure",
    members = {
        ServiceSetting = M.ServiceSetting,
    },
}

M.ResumeSessionInput = {
    type = "structure",
    members = {
        SessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResumeSessionOutput = {
    type = "structure",
    members = {
        SessionId = {
            type = "string",
        },
        TokenValue = {
            type = "string",
        },
        StreamUrl = {
            type = "string",
        },
    },
}

M.AutomationStepNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidAutomationSignalException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SignalType = {
    APPROVE = "Approve",
    REJECT = "Reject",
    START_STEP = "StartStep",
    STOP_STEP = "StopStep",
    RESUME = "Resume",
    REVOKE = "Revoke",
}

M.SendAutomationSignalInput = {
    type = "structure",
    members = {
        AutomationExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SignalType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Payload = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.SendAutomationSignalOutput = {
    type = "structure",
}

M.InvalidNotificationConfig = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidOutputFolder = {
    type = "structure",
    error = "client",
}

M.InvalidRole = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SendCommandInput = {
    type = "structure",
    members = {
        InstanceIds = {
            type = "list",
            member = { type = "string" },
        },
        Targets = {
            type = "list",
            member = M.Target,
        },
        DocumentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentVersion = {
            type = "string",
        },
        DocumentHash = {
            type = "string",
        },
        DocumentHashType = {
            type = "string",
        },
        TimeoutSeconds = {
            type = "integer",
        },
        Comment = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        OutputS3Region = {
            type = "string",
        },
        OutputS3BucketName = {
            type = "string",
        },
        OutputS3KeyPrefix = {
            type = "string",
        },
        MaxConcurrency = {
            type = "string",
        },
        MaxErrors = {
            type = "string",
        },
        ServiceRoleArn = {
            type = "string",
        },
        NotificationConfig = M.NotificationConfig,
        CloudWatchOutputConfig = M.CloudWatchOutputConfig,
        AlarmConfiguration = M.AlarmConfiguration,
    },
}

M.SendCommandOutput = {
    type = "structure",
    members = {
        Command = M.Command,
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        QuotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartAccessRequestInput = {
    type = "structure",
    members = {
        Reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Targets = {
            type = "list",
            member = M.Target,
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

M.StartAccessRequestOutput = {
    type = "structure",
    members = {
        AccessRequestId = {
            type = "string",
        },
    },
}

M.InvalidAssociation = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StartAssociationsOnceInput = {
    type = "structure",
    members = {
        AssociationIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.StartAssociationsOnceOutput = {
    type = "structure",
}

M.AutomationDefinitionNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AutomationDefinitionVersionNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AutomationExecutionLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidAutomationExecutionParametersException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StartAutomationExecutionInput = {
    type = "structure",
    members = {
        DocumentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentVersion = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        ClientToken = {
            type = "string",
        },
        Mode = {
            type = "string",
        },
        TargetParameterName = {
            type = "string",
        },
        Targets = {
            type = "list",
            member = M.Target,
        },
        TargetMaps = {
            type = "list",
            member = { type = "map" },
        },
        MaxConcurrency = {
            type = "string",
        },
        MaxErrors = {
            type = "string",
        },
        TargetLocations = {
            type = "list",
            member = M.TargetLocation,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        AlarmConfiguration = M.AlarmConfiguration,
        TargetLocationsURL = {
            type = "string",
        },
    },
}

M.StartAutomationExecutionOutput = {
    type = "structure",
    members = {
        AutomationExecutionId = {
            type = "string",
        },
    },
}

M.AutomationDefinitionNotApprovedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StartChangeRequestExecutionInput = {
    type = "structure",
    members = {
        ScheduledTime = {
            type = "timestamp",
        },
        DocumentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentVersion = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        ChangeRequestName = {
            type = "string",
        },
        ClientToken = {
            type = "string",
        },
        AutoApprove = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Runbooks = {
            type = "list",
            member = M.Runbook,
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ScheduledEndTime = {
            type = "timestamp",
        },
        ChangeDetails = {
            type = "string",
        },
    },
}

M.StartChangeRequestExecutionOutput = {
    type = "structure",
    members = {
        AutomationExecutionId = {
            type = "string",
        },
    },
}

M.AutomationExecutionInputs = {
    type = "structure",
    members = {
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        TargetParameterName = {
            type = "string",
        },
        Targets = {
            type = "list",
            member = M.Target,
        },
        TargetMaps = {
            type = "list",
            member = { type = "map" },
        },
        TargetLocations = {
            type = "list",
            member = M.TargetLocation,
        },
        TargetLocationsURL = {
            type = "string",
        },
    },
}

M.ExecutionInputs = {
    type = "union",
    members = {
        Automation = M.AutomationExecutionInputs,
    },
}

M.StartExecutionPreviewInput = {
    type = "structure",
    members = {
        DocumentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentVersion = {
            type = "string",
        },
        ExecutionInputs = M.ExecutionInputs,
    },
}

M.StartExecutionPreviewOutput = {
    type = "structure",
    members = {
        ExecutionPreviewId = {
            type = "string",
        },
    },
}

M.StartSessionInput = {
    type = "structure",
    members = {
        Target = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentName = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.StartSessionOutput = {
    type = "structure",
    members = {
        SessionId = {
            type = "string",
        },
        TokenValue = {
            type = "string",
        },
        StreamUrl = {
            type = "string",
        },
    },
}

M.TargetNotConnected = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidAutomationStatusUpdateException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StopType = {
    COMPLETE = "Complete",
    CANCEL = "Cancel",
}

M.StopAutomationExecutionInput = {
    type = "structure",
    members = {
        AutomationExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
        },
    },
}

M.StopAutomationExecutionOutput = {
    type = "structure",
}

M.TerminateSessionInput = {
    type = "structure",
    members = {
        SessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TerminateSessionOutput = {
    type = "structure",
    members = {
        SessionId = {
            type = "string",
        },
    },
}

M.UnlabelParameterVersionInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParameterVersion = {
            type = "long",
            traits = {
                default = nil,
                required = true,
            },
        },
        Labels = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UnlabelParameterVersionOutput = {
    type = "structure",
    members = {
        RemovedLabels = {
            type = "list",
            member = { type = "string" },
        },
        InvalidLabels = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AssociationVersionLimitExceeded = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidUpdate = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateAssociationInput = {
    type = "structure",
    members = {
        AssociationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        DocumentVersion = {
            type = "string",
        },
        ScheduleExpression = {
            type = "string",
        },
        OutputLocation = M.InstanceAssociationOutputLocation,
        Name = {
            type = "string",
        },
        Targets = {
            type = "list",
            member = M.Target,
        },
        AssociationName = {
            type = "string",
        },
        AssociationVersion = {
            type = "string",
        },
        AutomationTargetParameterName = {
            type = "string",
        },
        MaxErrors = {
            type = "string",
        },
        MaxConcurrency = {
            type = "string",
        },
        ComplianceSeverity = {
            type = "string",
        },
        SyncCompliance = {
            type = "string",
        },
        ApplyOnlyAtCronInterval = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CalendarNames = {
            type = "list",
            member = { type = "string" },
        },
        TargetLocations = {
            type = "list",
            member = M.TargetLocation,
        },
        ScheduleOffset = {
            type = "integer",
        },
        Duration = {
            type = "integer",
        },
        TargetMaps = {
            type = "list",
            member = { type = "map" },
        },
        AlarmConfiguration = M.AlarmConfiguration,
        AssociationDispatchAssumeRole = {
            type = "string",
        },
    },
}

M.UpdateAssociationOutput = {
    type = "structure",
    members = {
        AssociationDescription = M.AssociationDescription,
    },
}

M.StatusUnchanged = {
    type = "structure",
    error = "client",
}

M.UpdateAssociationStatusInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AssociationStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssociationStatus }),
    },
}

M.UpdateAssociationStatusOutput = {
    type = "structure",
    members = {
        AssociationDescription = M.AssociationDescription,
    },
}

M.DocumentVersionLimitExceeded = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DuplicateDocumentContent = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DuplicateDocumentVersionName = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateDocumentInput = {
    type = "structure",
    members = {
        Content = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attachments = {
            type = "list",
            member = M.AttachmentsSource,
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
        },
        VersionName = {
            type = "string",
        },
        DocumentVersion = {
            type = "string",
        },
        DocumentFormat = {
            type = "string",
        },
        TargetType = {
            type = "string",
        },
    },
}

M.UpdateDocumentOutput = {
    type = "structure",
    members = {
        DocumentDescription = M.DocumentDescription,
    },
}

M.UpdateDocumentDefaultVersionInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DocumentDefaultVersionDescription = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        DefaultVersion = {
            type = "string",
        },
        DefaultVersionName = {
            type = "string",
        },
    },
}

M.UpdateDocumentDefaultVersionOutput = {
    type = "structure",
    members = {
        Description = M.DocumentDefaultVersionDescription,
    },
}

M.DocumentReviewAction = {
    SendForReview = "SendForReview",
    UpdateReview = "UpdateReview",
    Approve = "Approve",
    Reject = "Reject",
}

M.DocumentReviews = {
    type = "structure",
    members = {
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Comment = {
            type = "list",
            member = M.DocumentReviewCommentSource,
        },
    },
}

M.UpdateDocumentMetadataInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentVersion = {
            type = "string",
        },
        DocumentReviews = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DocumentReviews }),
    },
}

M.UpdateDocumentMetadataOutput = {
    type = "structure",
}

M.UpdateMaintenanceWindowInput = {
    type = "structure",
    members = {
        WindowId = {
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
        StartDate = {
            type = "string",
        },
        EndDate = {
            type = "string",
        },
        Schedule = {
            type = "string",
        },
        ScheduleTimezone = {
            type = "string",
        },
        ScheduleOffset = {
            type = "integer",
        },
        Duration = {
            type = "integer",
        },
        Cutoff = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        AllowUnassociatedTargets = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        Enabled = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        Replace = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.UpdateMaintenanceWindowOutput = {
    type = "structure",
    members = {
        WindowId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        StartDate = {
            type = "string",
        },
        EndDate = {
            type = "string",
        },
        Schedule = {
            type = "string",
        },
        ScheduleTimezone = {
            type = "string",
        },
        ScheduleOffset = {
            type = "integer",
        },
        Duration = {
            type = "integer",
        },
        Cutoff = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        AllowUnassociatedTargets = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.UpdateMaintenanceWindowTargetInput = {
    type = "structure",
    members = {
        WindowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WindowTargetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Targets = {
            type = "list",
            member = M.Target,
        },
        OwnerInformation = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Replace = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.UpdateMaintenanceWindowTargetOutput = {
    type = "structure",
    members = {
        WindowId = {
            type = "string",
        },
        WindowTargetId = {
            type = "string",
        },
        Targets = {
            type = "list",
            member = M.Target,
        },
        OwnerInformation = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateMaintenanceWindowTaskInput = {
    type = "structure",
    members = {
        WindowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WindowTaskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Targets = {
            type = "list",
            member = M.Target,
        },
        TaskArn = {
            type = "string",
        },
        ServiceRoleArn = {
            type = "string",
        },
        TaskParameters = {
            type = "map",
            key = { type = "string" },
            value = M.MaintenanceWindowTaskParameterValueExpression,
        },
        TaskInvocationParameters = M.MaintenanceWindowTaskInvocationParameters,
        Priority = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        MaxConcurrency = {
            type = "string",
        },
        MaxErrors = {
            type = "string",
        },
        LoggingInfo = M.LoggingInfo,
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Replace = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        CutoffBehavior = {
            type = "string",
        },
        AlarmConfiguration = M.AlarmConfiguration,
    },
}

M.UpdateMaintenanceWindowTaskOutput = {
    type = "structure",
    members = {
        WindowId = {
            type = "string",
        },
        WindowTaskId = {
            type = "string",
        },
        Targets = {
            type = "list",
            member = M.Target,
        },
        TaskArn = {
            type = "string",
        },
        ServiceRoleArn = {
            type = "string",
        },
        TaskParameters = {
            type = "map",
            key = { type = "string" },
            value = M.MaintenanceWindowTaskParameterValueExpression,
        },
        TaskInvocationParameters = M.MaintenanceWindowTaskInvocationParameters,
        Priority = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        MaxConcurrency = {
            type = "string",
        },
        MaxErrors = {
            type = "string",
        },
        LoggingInfo = M.LoggingInfo,
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CutoffBehavior = {
            type = "string",
        },
        AlarmConfiguration = M.AlarmConfiguration,
    },
}

M.UpdateManagedInstanceRoleInput = {
    type = "structure",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IamRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateManagedInstanceRoleOutput = {
    type = "structure",
}

M.UpdateOpsItemInput = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        OperationalData = {
            type = "map",
            key = { type = "string" },
            value = M.OpsItemDataValue,
        },
        OperationalDataToDelete = {
            type = "list",
            member = { type = "string" },
        },
        Notifications = {
            type = "list",
            member = M.OpsItemNotification,
        },
        Priority = {
            type = "integer",
        },
        RelatedOpsItems = {
            type = "list",
            member = M.RelatedOpsItem,
        },
        Status = {
            type = "string",
        },
        OpsItemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
        },
        Category = {
            type = "string",
        },
        Severity = {
            type = "string",
        },
        ActualStartTime = {
            type = "timestamp",
        },
        ActualEndTime = {
            type = "timestamp",
        },
        PlannedStartTime = {
            type = "timestamp",
        },
        PlannedEndTime = {
            type = "timestamp",
        },
        OpsItemArn = {
            type = "string",
        },
    },
}

M.UpdateOpsItemOutput = {
    type = "structure",
}

M.OpsMetadataKeyLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateOpsMetadataInput = {
    type = "structure",
    members = {
        OpsMetadataArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MetadataToUpdate = {
            type = "map",
            key = { type = "string" },
            value = M.MetadataValue,
        },
        KeysToDelete = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateOpsMetadataOutput = {
    type = "structure",
    members = {
        OpsMetadataArn = {
            type = "string",
        },
    },
}

M.UpdatePatchBaselineInput = {
    type = "structure",
    members = {
        BaselineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        GlobalFilters = M.PatchFilterGroup,
        ApprovalRules = M.PatchRuleGroup,
        ApprovedPatches = {
            type = "list",
            member = { type = "string" },
        },
        ApprovedPatchesComplianceLevel = {
            type = "string",
        },
        ApprovedPatchesEnableNonSecurity = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        RejectedPatches = {
            type = "list",
            member = { type = "string" },
        },
        RejectedPatchesAction = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Sources = {
            type = "list",
            member = M.PatchSource,
        },
        AvailableSecurityUpdatesComplianceStatus = {
            type = "string",
        },
        Replace = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.UpdatePatchBaselineOutput = {
    type = "structure",
    members = {
        BaselineId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        OperatingSystem = {
            type = "string",
        },
        GlobalFilters = M.PatchFilterGroup,
        ApprovalRules = M.PatchRuleGroup,
        ApprovedPatches = {
            type = "list",
            member = { type = "string" },
        },
        ApprovedPatchesComplianceLevel = {
            type = "string",
        },
        ApprovedPatchesEnableNonSecurity = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        RejectedPatches = {
            type = "list",
            member = { type = "string" },
        },
        RejectedPatchesAction = {
            type = "string",
        },
        CreatedDate = {
            type = "timestamp",
        },
        ModifiedDate = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        Sources = {
            type = "list",
            member = M.PatchSource,
        },
        AvailableSecurityUpdatesComplianceStatus = {
            type = "string",
        },
    },
}

M.ResourceDataSyncConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateResourceDataSyncInput = {
    type = "structure",
    members = {
        SyncName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SyncType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SyncSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceDataSyncSource }),
    },
}

M.UpdateResourceDataSyncOutput = {
    type = "structure",
}

M.UpdateServiceSettingInput = {
    type = "structure",
    members = {
        SettingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SettingValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateServiceSettingOutput = {
    type = "structure",
}

M.InventoryAggregator = {
    type = "structure",
    members = {
        Expression = {
            type = "string",
        },
        Aggregators = {
            type = "list",
            member = M.InventoryAggregator,
        },
        Groups = {
            type = "list",
            member = M.InventoryGroup,
        },
    },
}

M.NodeAggregator = {
    type = "structure",
    members = {
        AggregatorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Aggregators = {
            type = "list",
            member = M.NodeAggregator,
        },
    },
}

M.OpsAggregator = {
    type = "structure",
    members = {
        AggregatorType = {
            type = "string",
        },
        TypeName = {
            type = "string",
        },
        AttributeName = {
            type = "string",
        },
        Values = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Filters = {
            type = "list",
            member = M.OpsFilter,
        },
        Aggregators = {
            type = "list",
            member = M.OpsAggregator,
        },
    },
}

M.GetInventoryInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member = M.InventoryFilter,
        },
        Aggregators = {
            type = "list",
            member = M.InventoryAggregator,
        },
        ResultAttributes = {
            type = "list",
            member = M.ResultAttribute,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.GetOpsSummaryInput = {
    type = "structure",
    members = {
        SyncName = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.OpsFilter,
        },
        Aggregators = {
            type = "list",
            member = M.OpsAggregator,
        },
        ResultAttributes = {
            type = "list",
            member = M.OpsResultAttribute,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListNodesSummaryInput = {
    type = "structure",
    members = {
        SyncName = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.NodeFilter,
        },
        Aggregators = {
            type = "list",
            member = M.NodeAggregator,
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

return M
