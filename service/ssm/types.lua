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
            type = "number",
        },
        RegistrationsCount = {
            type = "number",
        },
        ExpirationDate = {
            type = "timestamp",
        },
        Expired = {
            type = "boolean",
        },
        CreatedDate = {
            type = "timestamp",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        },
        Alarms = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "string",
        },
        Limit = {
            type = "number",
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
            member_type = "string",
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
            type = "number",
        },
        ExpirationDate = {
            type = "timestamp",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        RegistrationMetadata = {
            type = "list",
            member_type = "structure",
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
        S3Location = {
            type = "structure",
        },
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
            member_type = "string",
        },
    },
}

M.TargetLocation = {
    type = "structure",
    members = {
        Accounts = {
            type = "list",
            member_type = "string",
        },
        Regions = {
            type = "list",
            member_type = "string",
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
        TargetLocationAlarmConfiguration = {
            type = "structure",
        },
        IncludeChildOrganizationUnits = {
            type = "boolean",
        },
        ExcludeAccounts = {
            type = "list",
            member_type = "string",
        },
        Targets = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "list",
        },
        Targets = {
            type = "list",
            member_type = "structure",
        },
        ScheduleExpression = {
            type = "string",
        },
        OutputLocation = {
            type = "structure",
        },
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
        },
        CalendarNames = {
            type = "list",
            member_type = "string",
        },
        TargetLocations = {
            type = "list",
            member_type = "structure",
        },
        ScheduleOffset = {
            type = "number",
        },
        Duration = {
            type = "number",
        },
        TargetMaps = {
            type = "list",
            member_type = "map",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        AlarmConfiguration = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "number",
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
        Status = {
            type = "structure",
        },
        Overview = {
            type = "structure",
        },
        DocumentVersion = {
            type = "string",
        },
        AutomationTargetParameterName = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        AssociationId = {
            type = "string",
        },
        Targets = {
            type = "list",
            member_type = "structure",
        },
        ScheduleExpression = {
            type = "string",
        },
        OutputLocation = {
            type = "structure",
        },
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
        },
        CalendarNames = {
            type = "list",
            member_type = "string",
        },
        TargetLocations = {
            type = "list",
            member_type = "structure",
        },
        ScheduleOffset = {
            type = "number",
        },
        Duration = {
            type = "number",
        },
        TargetMaps = {
            type = "list",
            member_type = "map",
        },
        AlarmConfiguration = {
            type = "structure",
        },
        TriggeredAlarms = {
            type = "list",
            member_type = "structure",
        },
        AssociationDispatchAssumeRole = {
            type = "string",
        },
    },
}

M.CreateAssociationOutput = {
    type = "structure",
    members = {
        AssociationDescription = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "list",
        },
        AutomationTargetParameterName = {
            type = "string",
        },
        DocumentVersion = {
            type = "string",
        },
        Targets = {
            type = "list",
            member_type = "structure",
        },
        ScheduleExpression = {
            type = "string",
        },
        OutputLocation = {
            type = "structure",
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
        },
        CalendarNames = {
            type = "list",
            member_type = "string",
        },
        TargetLocations = {
            type = "list",
            member_type = "structure",
        },
        ScheduleOffset = {
            type = "number",
        },
        Duration = {
            type = "number",
        },
        TargetMaps = {
            type = "list",
            member_type = "map",
        },
        AlarmConfiguration = {
            type = "structure",
        },
    },
}

M.CreateAssociationBatchInput = {
    type = "structure",
    members = {
        Entries = {
            type = "list",
            member_type = "structure",
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
        Entry = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        Failed = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
        },
        Attachments = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        PlatformTypes = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
        AttachmentsInformation = {
            type = "list",
            member_type = "structure",
        },
        Requires = {
            type = "list",
            member_type = "structure",
        },
        Author = {
            type = "string",
        },
        ReviewInformation = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        CategoryEnum = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreateDocumentOutput = {
    type = "structure",
    members = {
        DocumentDescription = {
            type = "structure",
        },
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
            type = "number",
        },
        Duration = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Cutoff = {
            type = "number",
            traits = {
                required = true,
            },
        },
        AllowUnassociatedTargets = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "structure",
        },
        Notifications = {
            type = "list",
            member_type = "structure",
        },
        Priority = {
            type = "number",
        },
        RelatedOpsItems = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PatchRule = {
    type = "structure",
    members = {
        PatchFilterGroup = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ComplianceLevel = {
            type = "string",
        },
        ApproveAfterDays = {
            type = "number",
        },
        ApproveUntilDate = {
            type = "string",
        },
        EnableNonSecurity = {
            type = "boolean",
        },
    },
}

M.PatchRuleGroup = {
    type = "structure",
    members = {
        PatchRules = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
        GlobalFilters = {
            type = "structure",
        },
        ApprovalRules = {
            type = "structure",
        },
        ApprovedPatches = {
            type = "list",
            member_type = "string",
        },
        ApprovedPatchesComplianceLevel = {
            type = "string",
        },
        ApprovedPatchesEnableNonSecurity = {
            type = "boolean",
        },
        RejectedPatches = {
            type = "list",
            member_type = "string",
        },
        RejectedPatchesAction = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Sources = {
            type = "list",
            member_type = "structure",
        },
        AvailableSecurityUpdatesComplianceStatus = {
            type = "string",
        },
        ClientToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        DestinationDataSharing = {
            type = "structure",
        },
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
            member_type = "structure",
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
        AwsOrganizationsSource = {
            type = "structure",
        },
        SourceRegions = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        IncludeFutureRegions = {
            type = "boolean",
        },
        EnableAllOpsDataSources = {
            type = "boolean",
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
        S3Destination = {
            type = "structure",
        },
        SyncType = {
            type = "string",
        },
        SyncSource = {
            type = "structure",
        },
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
        },
        ClientToken = {
            type = "string",
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
            type = "number",
        },
        RemainingCount = {
            type = "number",
        },
    },
}

M.InventoryDeletionSummary = {
    type = "structure",
    members = {
        TotalCount = {
            type = "number",
        },
        RemainingCount = {
            type = "number",
        },
        SummaryItems = {
            type = "list",
            member_type = "structure",
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
        DeletionSummary = {
            type = "structure",
        },
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
            member_type = "string",
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
            member_type = "string",
        },
        InvalidParameters = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
        },
    },
}

M.DescribeActivationsInput = {
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

M.DescribeActivationsOutput = {
    type = "structure",
    members = {
        ActivationList = {
            type = "list",
            member_type = "structure",
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
        AssociationDescription = {
            type = "structure",
        },
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
        AlarmConfiguration = {
            type = "structure",
        },
        TriggeredAlarms = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeAssociationExecutionsOutput = {
    type = "structure",
    members = {
        AssociationExecutions = {
            type = "list",
            member_type = "structure",
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
        OutputSource = {
            type = "structure",
        },
    },
}

M.DescribeAssociationExecutionTargetsOutput = {
    type = "structure",
    members = {
        AssociationExecutionTargets = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "string",
        },
        Truncated = {
            type = "boolean",
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
            key_type = "string",
            value_type = "list",
        },
        TargetParameterName = {
            type = "string",
        },
        Targets = {
            type = "list",
            member_type = "structure",
        },
        TargetMaps = {
            type = "list",
            member_type = "map",
        },
        MaxConcurrency = {
            type = "string",
        },
        MaxErrors = {
            type = "string",
        },
        TargetLocations = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "list",
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
            member_type = "structure",
        },
        TargetMaps = {
            type = "list",
            member_type = "map",
        },
        ResolvedTargets = {
            type = "structure",
        },
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
        AlarmConfiguration = {
            type = "structure",
        },
        TriggeredAlarms = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        ReverseOrder = {
            type = "boolean",
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
            key_type = "string",
            value_type = "list",
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
            type = "number",
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
            type = "number",
        },
        OnFailure = {
            type = "string",
        },
        MaxAttempts = {
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
        Outputs = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        Response = {
            type = "string",
        },
        FailureMessage = {
            type = "string",
        },
        FailureDetails = {
            type = "structure",
        },
        StepExecutionId = {
            type = "string",
        },
        OverriddenParameters = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        IsEnd = {
            type = "boolean",
        },
        NextStep = {
            type = "string",
        },
        IsCritical = {
            type = "boolean",
        },
        ValidNextSteps = {
            type = "list",
            member_type = "string",
        },
        Targets = {
            type = "list",
            member_type = "structure",
        },
        TargetLocation = {
            type = "structure",
        },
        TriggeredAlarms = {
            type = "list",
            member_type = "structure",
        },
        ParentStepDetails = {
            type = "structure",
        },
    },
}

M.DescribeAutomationStepExecutionsOutput = {
    type = "structure",
    members = {
        StepExecutions = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
    },
}

M.DescribeAvailablePatchesInput = {
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
            member_type = "string",
        },
        BugzillaIds = {
            type = "list",
            member_type = "string",
        },
        CVEIds = {
            type = "list",
            member_type = "string",
        },
        Name = {
            type = "string",
        },
        Epoch = {
            type = "number",
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
            member_type = "structure",
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
        Document = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "string",
        },
        AccountSharingInfoList = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
        Patch = {
            type = "structure",
        },
        PatchStatus = {
            type = "structure",
        },
    },
}

M.DescribeEffectivePatchesForPatchBaselineOutput = {
    type = "structure",
    members = {
        EffectivePatches = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
        S3OutputUrl = {
            type = "structure",
        },
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
        OutputUrl = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "structure",
        },
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

M.InstanceAggregatedAssociationOverview = {
    type = "structure",
    members = {
        DetailedStatus = {
            type = "string",
        },
        InstanceAssociationStatusAggregatedCount = {
            type = "map",
            key_type = "string",
            value_type = "number",
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
        AssociationOverview = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
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
            type = "number",
        },
        InstalledOtherCount = {
            type = "number",
        },
        InstalledPendingRebootCount = {
            type = "number",
        },
        InstalledRejectedCount = {
            type = "number",
        },
        MissingCount = {
            type = "number",
        },
        FailedCount = {
            type = "number",
        },
        UnreportedNotApplicableCount = {
            type = "number",
        },
        NotApplicableCount = {
            type = "number",
        },
        AvailableSecurityUpdateCount = {
            type = "number",
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
            type = "number",
        },
        SecurityNonCompliantCount = {
            type = "number",
        },
        OtherNonCompliantCount = {
            type = "number",
        },
    },
}

M.DescribeInstancePatchStatesOutput = {
    type = "structure",
    members = {
        InstancePatchStates = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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

M.DescribeInstancePatchStatesForPatchGroupOutput = {
    type = "structure",
    members = {
        InstancePatchStates = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "structure",
        },
        FiltersWithOperator = {
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
        AssociationOverview = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
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
        DeletionSummary = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "structure",
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
        AlarmConfiguration = {
            type = "structure",
        },
        TriggeredAlarms = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeMaintenanceWindowExecutionTasksOutput = {
    type = "structure",
    members = {
        WindowExecutionTaskIdentities = {
            type = "list",
            member_type = "structure",
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
        },
        Duration = {
            type = "number",
        },
        Cutoff = {
            type = "number",
        },
        Schedule = {
            type = "string",
        },
        ScheduleTimezone = {
            type = "string",
        },
        ScheduleOffset = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        ResourceType = {
            type = "string",
        },
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
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
        },
        TaskParameters = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        Priority = {
            type = "number",
        },
        LoggingInfo = {
            type = "structure",
        },
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
        AlarmConfiguration = {
            type = "structure",
        },
    },
}

M.DescribeMaintenanceWindowTasksOutput = {
    type = "structure",
    members = {
        Tasks = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            type = "number",
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
            key_type = "string",
            value_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "string",
        },
    },
}

M.DescribeParametersInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        ParameterFilters = {
            type = "list",
            member_type = "structure",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        Shared = {
            type = "boolean",
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
            type = "number",
        },
        Tier = {
            type = "string",
        },
        Policies = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        },
    },
}

M.DescribePatchBaselinesOutput = {
    type = "structure",
    members = {
        BaselineIdentities = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        Filters = {
            type = "list",
            member_type = "structure",
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
        BaselineIdentity = {
            type = "structure",
        },
    },
}

M.DescribePatchGroupsOutput = {
    type = "structure",
    members = {
        Mappings = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        InstancesWithInstalledPatches = {
            type = "number",
        },
        InstancesWithInstalledOtherPatches = {
            type = "number",
        },
        InstancesWithInstalledPendingRebootPatches = {
            type = "number",
        },
        InstancesWithInstalledRejectedPatches = {
            type = "number",
        },
        InstancesWithMissingPatches = {
            type = "number",
        },
        InstancesWithFailedPatches = {
            type = "number",
        },
        InstancesWithNotApplicablePatches = {
            type = "number",
        },
        InstancesWithUnreportedNotApplicablePatches = {
            type = "number",
        },
        InstancesWithCriticalNonCompliantPatches = {
            type = "number",
        },
        InstancesWithSecurityNonCompliantPatches = {
            type = "number",
        },
        InstancesWithOtherNonCompliantPatches = {
            type = "number",
        },
        InstancesWithAvailableSecurityUpdates = {
            type = "number",
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
            type = "number",
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
            member_type = "map",
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
        OutputUrl = {
            type = "structure",
        },
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
            member_type = "structure",
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
        Credentials = {
            type = "structure",
        },
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
            type = "number",
        },
        SuccessSteps = {
            type = "number",
        },
        FailedSteps = {
            type = "number",
        },
        CancelledSteps = {
            type = "number",
        },
        TimedOutSteps = {
            type = "number",
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
            member_type = "structure",
        },
        StepExecutionsTruncated = {
            type = "boolean",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        Outputs = {
            type = "map",
            key_type = "string",
            value_type = "list",
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
            member_type = "structure",
        },
        TargetMaps = {
            type = "list",
            member_type = "map",
        },
        ResolvedTargets = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        ProgressCounters = {
            type = "structure",
        },
        AlarmConfiguration = {
            type = "structure",
        },
        TriggeredAlarms = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "list",
        },
    },
}

M.GetAutomationExecutionOutput = {
    type = "structure",
    members = {
        AutomationExecution = {
            type = "structure",
        },
    },
}

M.GetCalendarStateInput = {
    type = "structure",
    members = {
        CalendarNames = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
        CloudWatchOutputConfig = {
            type = "structure",
        },
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
        GlobalFilters = {
            type = "structure",
        },
        ApprovalRules = {
            type = "structure",
        },
        ApprovedPatches = {
            type = "list",
            member_type = "string",
        },
        ApprovedPatchesComplianceLevel = {
            type = "string",
        },
        RejectedPatches = {
            type = "list",
            member_type = "string",
        },
        RejectedPatchesAction = {
            type = "string",
        },
        ApprovedPatchesEnableNonSecurity = {
            type = "boolean",
        },
        Sources = {
            type = "list",
            member_type = "structure",
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
        BaselineOverride = {
            type = "structure",
        },
        UseS3DualStackEndpoint = {
            type = "boolean",
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
            type = "number",
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
            member_type = "structure",
        },
        AttachmentsContent = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            key_type = "string",
            value_type = "number",
        },
        Regions = {
            type = "list",
            member_type = "string",
        },
        TargetPreviews = {
            type = "list",
            member_type = "structure",
        },
        TotalAccounts = {
            type = "number",
        },
    },
}

M.ExecutionPreview = {
    type = "union",
    members = {
        Automation = {
            type = "structure",
        },
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
        ExecutionPreview = {
            type = "union",
        },
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
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "map",
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
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.GetInventoryOutput = {
    type = "structure",
    members = {
        Entities = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        Aggregator = {
            type = "boolean",
        },
        SubType = {
            type = "boolean",
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
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
        },
        NextExecutionTime = {
            type = "string",
        },
        Duration = {
            type = "number",
        },
        Cutoff = {
            type = "number",
        },
        AllowUnassociatedTargets = {
            type = "boolean",
        },
        Enabled = {
            type = "boolean",
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
            member_type = "string",
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
            member_type = "map",
        },
        Priority = {
            type = "number",
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
        AlarmConfiguration = {
            type = "structure",
        },
        TriggeredAlarms = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "list",
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
            member_type = "string",
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
        CloudWatchOutputConfig = {
            type = "structure",
        },
        DocumentHash = {
            type = "string",
        },
        DocumentHashType = {
            type = "string",
        },
        DocumentVersion = {
            type = "string",
        },
        NotificationConfig = {
            type = "structure",
        },
        OutputS3BucketName = {
            type = "string",
        },
        OutputS3KeyPrefix = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        ServiceRoleArn = {
            type = "string",
        },
        TimeoutSeconds = {
            type = "number",
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
        RunCommand = {
            type = "structure",
        },
        Automation = {
            type = "structure",
        },
        StepFunctions = {
            type = "structure",
        },
        Lambda = {
            type = "structure",
        },
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "structure",
        },
        TaskInvocationParameters = {
            type = "structure",
        },
        Priority = {
            type = "number",
        },
        MaxConcurrency = {
            type = "string",
        },
        MaxErrors = {
            type = "string",
        },
        LoggingInfo = {
            type = "structure",
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
        AlarmConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        Priority = {
            type = "number",
        },
        RelatedOpsItems = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "structure",
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
        OpsItem = {
            type = "structure",
        },
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
            type = "number",
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
            key_type = "string",
            value_type = "structure",
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
            member_type = "string",
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
            member_type = "map",
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
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.GetOpsSummaryOutput = {
    type = "structure",
    members = {
        Entities = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
        Parameter = {
            type = "structure",
        },
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
        },
        MaxResults = {
            type = "number",
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
            type = "number",
        },
        Labels = {
            type = "list",
            member_type = "string",
        },
        Tier = {
            type = "string",
        },
        Policies = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        WithDecryption = {
            type = "boolean",
        },
    },
}

M.GetParametersOutput = {
    type = "structure",
    members = {
        Parameters = {
            type = "list",
            member_type = "structure",
        },
        InvalidParameters = {
            type = "list",
            member_type = "string",
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
        },
        ParameterFilters = {
            type = "list",
            member_type = "structure",
        },
        WithDecryption = {
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

M.GetParametersByPathOutput = {
    type = "structure",
    members = {
        Parameters = {
            type = "list",
            member_type = "structure",
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
        GlobalFilters = {
            type = "structure",
        },
        ApprovalRules = {
            type = "structure",
        },
        ApprovedPatches = {
            type = "list",
            member_type = "string",
        },
        ApprovedPatchesComplianceLevel = {
            type = "string",
        },
        ApprovedPatchesEnableNonSecurity = {
            type = "boolean",
        },
        RejectedPatches = {
            type = "list",
            member_type = "string",
        },
        RejectedPatchesAction = {
            type = "string",
        },
        PatchGroups = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
        ServiceSetting = {
            type = "structure",
        },
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
            type = "number",
        },
        Labels = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
        },
        ParameterVersion = {
            type = "number",
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
            member_type = "structure",
        },
        LastExecutionDate = {
            type = "timestamp",
        },
        Overview = {
            type = "structure",
        },
        ScheduleExpression = {
            type = "string",
        },
        AssociationName = {
            type = "string",
        },
        ScheduleOffset = {
            type = "number",
        },
        Duration = {
            type = "number",
        },
        TargetMaps = {
            type = "list",
            member_type = "map",
        },
    },
}

M.ListAssociationsOutput = {
    type = "structure",
    members = {
        Associations = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            key_type = "string",
            value_type = "list",
        },
        Targets = {
            type = "list",
            member_type = "structure",
        },
        ScheduleExpression = {
            type = "string",
        },
        OutputLocation = {
            type = "structure",
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
        },
        CalendarNames = {
            type = "list",
            member_type = "string",
        },
        TargetLocations = {
            type = "list",
            member_type = "structure",
        },
        ScheduleOffset = {
            type = "number",
        },
        Duration = {
            type = "number",
        },
        TargetMaps = {
            type = "list",
            member_type = "map",
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
            member_type = "structure",
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
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        Details = {
            type = "boolean",
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
            type = "number",
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
            member_type = "structure",
        },
        ServiceRole = {
            type = "string",
        },
        NotificationConfig = {
            type = "structure",
        },
        CloudWatchOutputConfig = {
            type = "structure",
        },
    },
}

M.ListCommandInvocationsOutput = {
    type = "structure",
    members = {
        CommandInvocations = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "list",
        },
        InstanceIds = {
            type = "list",
            member_type = "string",
        },
        Targets = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        CompletedCount = {
            type = "number",
        },
        ErrorCount = {
            type = "number",
        },
        DeliveryTimedOutCount = {
            type = "number",
        },
        ServiceRole = {
            type = "string",
        },
        NotificationConfig = {
            type = "structure",
        },
        CloudWatchOutputConfig = {
            type = "structure",
        },
        TimeoutSeconds = {
            type = "number",
        },
        AlarmConfiguration = {
            type = "structure",
        },
        TriggeredAlarms = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListCommandsOutput = {
    type = "structure",
    members = {
        Commands = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
        },
        ResourceIds = {
            type = "list",
            member_type = "string",
        },
        ResourceTypes = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
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
        ExecutionSummary = {
            type = "structure",
        },
        Details = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListComplianceItemsOutput = {
    type = "structure",
    members = {
        ComplianceItems = {
            type = "list",
            member_type = "structure",
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

M.SeveritySummary = {
    type = "structure",
    members = {
        CriticalCount = {
            type = "number",
        },
        HighCount = {
            type = "number",
        },
        MediumCount = {
            type = "number",
        },
        LowCount = {
            type = "number",
        },
        InformationalCount = {
            type = "number",
        },
        UnspecifiedCount = {
            type = "number",
        },
    },
}

M.CompliantSummary = {
    type = "structure",
    members = {
        CompliantCount = {
            type = "number",
        },
        SeveritySummary = {
            type = "structure",
        },
    },
}

M.NonCompliantSummary = {
    type = "structure",
    members = {
        NonCompliantCount = {
            type = "number",
        },
        SeveritySummary = {
            type = "structure",
        },
    },
}

M.ComplianceSummaryItem = {
    type = "structure",
    members = {
        ComplianceType = {
            type = "string",
        },
        CompliantSummary = {
            type = "structure",
        },
        NonCompliantSummary = {
            type = "structure",
        },
    },
}

M.ListComplianceSummariesOutput = {
    type = "structure",
    members = {
        ComplianceSummaryItems = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
        Metadata = {
            type = "structure",
        },
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
            member_type = "string",
        },
    },
}

M.ListDocumentsInput = {
    type = "structure",
    members = {
        DocumentFilterList = {
            type = "list",
            member_type = "structure",
        },
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
            member_type = "string",
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
            member_type = "structure",
        },
        Requires = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "map",
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
            member_type = "string",
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
        Instance = {
            type = "structure",
        },
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
        Owner = {
            type = "structure",
        },
        Region = {
            type = "string",
        },
        NodeType = {
            type = "union",
        },
    },
}

M.ListNodesOutput = {
    type = "structure",
    members = {
        Nodes = {
            type = "list",
            member_type = "structure",
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
            member_type = "map",
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
            member_type = "string",
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
        CreatedBy = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
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
        CreatedBy = {
            type = "structure",
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
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
        ExecutionSummary = {
            type = "structure",
        },
        CompliantSummary = {
            type = "structure",
        },
        NonCompliantSummary = {
            type = "structure",
        },
    },
}

M.ListResourceComplianceSummariesOutput = {
    type = "structure",
    members = {
        ResourceComplianceSummaryItems = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
        AwsOrganizationsSource = {
            type = "structure",
        },
        SourceRegions = {
            type = "list",
            member_type = "string",
        },
        IncludeFutureRegions = {
            type = "boolean",
        },
        State = {
            type = "string",
        },
        EnableAllOpsDataSources = {
            type = "boolean",
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
        SyncSource = {
            type = "structure",
        },
        S3Destination = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
        },
        AccountIdsToRemove = {
            type = "list",
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
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
        ExecutionSummary = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
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
            member_type = "map",
        },
        Context = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
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
        },
        AllowedPattern = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "structure",
        },
        TaskInvocationParameters = {
            type = "structure",
        },
        Priority = {
            type = "number",
        },
        MaxConcurrency = {
            type = "string",
        },
        MaxErrors = {
            type = "string",
        },
        LoggingInfo = {
            type = "structure",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ClientToken = {
            type = "string",
        },
        CutoffBehavior = {
            type = "string",
        },
        AlarmConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
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
        ServiceSetting = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "list",
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
            member_type = "string",
        },
        Targets = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        Comment = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "list",
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
        NotificationConfig = {
            type = "structure",
        },
        CloudWatchOutputConfig = {
            type = "structure",
        },
        AlarmConfiguration = {
            type = "structure",
        },
    },
}

M.SendCommandOutput = {
    type = "structure",
    members = {
        Command = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
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
            key_type = "string",
            value_type = "list",
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
            member_type = "structure",
        },
        TargetMaps = {
            type = "list",
            member_type = "map",
        },
        MaxConcurrency = {
            type = "string",
        },
        MaxErrors = {
            type = "string",
        },
        TargetLocations = {
            type = "list",
            member_type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        AlarmConfiguration = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "list",
        },
        ChangeRequestName = {
            type = "string",
        },
        ClientToken = {
            type = "string",
        },
        AutoApprove = {
            type = "boolean",
        },
        Runbooks = {
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
            key_type = "string",
            value_type = "list",
        },
        TargetParameterName = {
            type = "string",
        },
        Targets = {
            type = "list",
            member_type = "structure",
        },
        TargetMaps = {
            type = "list",
            member_type = "map",
        },
        TargetLocations = {
            type = "list",
            member_type = "structure",
        },
        TargetLocationsURL = {
            type = "string",
        },
    },
}

M.ExecutionInputs = {
    type = "union",
    members = {
        Automation = {
            type = "structure",
        },
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
        ExecutionInputs = {
            type = "union",
        },
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
            key_type = "string",
            value_type = "list",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Labels = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
        },
        InvalidLabels = {
            type = "list",
            member_type = "string",
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
            key_type = "string",
            value_type = "list",
        },
        DocumentVersion = {
            type = "string",
        },
        ScheduleExpression = {
            type = "string",
        },
        OutputLocation = {
            type = "structure",
        },
        Name = {
            type = "string",
        },
        Targets = {
            type = "list",
            member_type = "structure",
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
        },
        CalendarNames = {
            type = "list",
            member_type = "string",
        },
        TargetLocations = {
            type = "list",
            member_type = "structure",
        },
        ScheduleOffset = {
            type = "number",
        },
        Duration = {
            type = "number",
        },
        TargetMaps = {
            type = "list",
            member_type = "map",
        },
        AlarmConfiguration = {
            type = "structure",
        },
        AssociationDispatchAssumeRole = {
            type = "string",
        },
    },
}

M.UpdateAssociationOutput = {
    type = "structure",
    members = {
        AssociationDescription = {
            type = "structure",
        },
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
        AssociationStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAssociationStatusOutput = {
    type = "structure",
    members = {
        AssociationDescription = {
            type = "structure",
        },
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
            member_type = "structure",
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
        DocumentDescription = {
            type = "structure",
        },
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
        Description = {
            type = "structure",
        },
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
            member_type = "structure",
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
        DocumentReviews = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
        },
        Duration = {
            type = "number",
        },
        Cutoff = {
            type = "number",
        },
        AllowUnassociatedTargets = {
            type = "boolean",
        },
        Enabled = {
            type = "boolean",
        },
        Replace = {
            type = "boolean",
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
            type = "number",
        },
        Duration = {
            type = "number",
        },
        Cutoff = {
            type = "number",
        },
        AllowUnassociatedTargets = {
            type = "boolean",
        },
        Enabled = {
            type = "boolean",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        TaskArn = {
            type = "string",
        },
        ServiceRoleArn = {
            type = "string",
        },
        TaskParameters = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        TaskInvocationParameters = {
            type = "structure",
        },
        Priority = {
            type = "number",
        },
        MaxConcurrency = {
            type = "string",
        },
        MaxErrors = {
            type = "string",
        },
        LoggingInfo = {
            type = "structure",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Replace = {
            type = "boolean",
        },
        CutoffBehavior = {
            type = "string",
        },
        AlarmConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        TaskArn = {
            type = "string",
        },
        ServiceRoleArn = {
            type = "string",
        },
        TaskParameters = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        TaskInvocationParameters = {
            type = "structure",
        },
        Priority = {
            type = "number",
        },
        MaxConcurrency = {
            type = "string",
        },
        MaxErrors = {
            type = "string",
        },
        LoggingInfo = {
            type = "structure",
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
        AlarmConfiguration = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "structure",
        },
        OperationalDataToDelete = {
            type = "list",
            member_type = "string",
        },
        Notifications = {
            type = "list",
            member_type = "structure",
        },
        Priority = {
            type = "number",
        },
        RelatedOpsItems = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "structure",
        },
        KeysToDelete = {
            type = "list",
            member_type = "string",
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
        GlobalFilters = {
            type = "structure",
        },
        ApprovalRules = {
            type = "structure",
        },
        ApprovedPatches = {
            type = "list",
            member_type = "string",
        },
        ApprovedPatchesComplianceLevel = {
            type = "string",
        },
        ApprovedPatchesEnableNonSecurity = {
            type = "boolean",
        },
        RejectedPatches = {
            type = "list",
            member_type = "string",
        },
        RejectedPatchesAction = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Sources = {
            type = "list",
            member_type = "structure",
        },
        AvailableSecurityUpdatesComplianceStatus = {
            type = "string",
        },
        Replace = {
            type = "boolean",
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
        GlobalFilters = {
            type = "structure",
        },
        ApprovalRules = {
            type = "structure",
        },
        ApprovedPatches = {
            type = "list",
            member_type = "string",
        },
        ApprovedPatchesComplianceLevel = {
            type = "string",
        },
        ApprovedPatchesEnableNonSecurity = {
            type = "boolean",
        },
        RejectedPatches = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
        SyncSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
        },
        Groups = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        Aggregators = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetInventoryInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        Aggregators = {
            type = "list",
            member_type = "structure",
        },
        ResultAttributes = {
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

M.GetOpsSummaryInput = {
    type = "structure",
    members = {
        SyncName = {
            type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        Aggregators = {
            type = "list",
            member_type = "structure",
        },
        ResultAttributes = {
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

M.ListNodesSummaryInput = {
    type = "structure",
    members = {
        SyncName = {
            type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        Aggregators = {
            type = "list",
            member_type = "structure",
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

return M
