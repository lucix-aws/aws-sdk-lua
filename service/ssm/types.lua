local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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
    id = "AccountSharingInfo",
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

M.Activation = {
    type = "structure",
    id = "Activation",
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
    id = "AddTagsToResourceInput",
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
    id = "AddTagsToResourceOutput",
}

M.InternalServerError = {
    type = "structure",
    id = "InternalServerError",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidResourceId = {
    type = "structure",
    id = "InvalidResourceId",
    error = "client",
}

M.InvalidResourceType = {
    type = "structure",
    id = "InvalidResourceType",
    error = "client",
}

M.TooManyTagsError = {
    type = "structure",
    id = "TooManyTagsError",
    error = "client",
}

M.TooManyUpdates = {
    type = "structure",
    id = "TooManyUpdates",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Alarm = {
    type = "structure",
    id = "Alarm",
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
    id = "AlarmConfiguration",
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
    id = "AlarmStateInformation",
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
    id = "AlreadyExistsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociateOpsItemRelatedItemInput = {
    type = "structure",
    id = "AssociateOpsItemRelatedItemInput",
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
    id = "AssociateOpsItemRelatedItemOutput",
    members = {
        AssociationId = {
            type = "string",
        },
    },
}

M.OpsItemConflictException = {
    type = "structure",
    id = "OpsItemConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OpsItemInvalidParameterException = {
    type = "structure",
    id = "OpsItemInvalidParameterException",
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
    id = "OpsItemLimitExceededException",
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
    id = "OpsItemNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OpsItemRelatedItemAlreadyExistsException = {
    type = "structure",
    id = "OpsItemRelatedItemAlreadyExistsException",
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
    id = "CancelCommandInput",
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
    id = "CancelCommandOutput",
}

M.DuplicateInstanceId = {
    type = "structure",
    id = "DuplicateInstanceId",
    error = "client",
}

M.InvalidCommandId = {
    type = "structure",
    id = "InvalidCommandId",
    error = "client",
}

M.InvalidInstanceId = {
    type = "structure",
    id = "InvalidInstanceId",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CancelMaintenanceWindowExecutionInput = {
    type = "structure",
    id = "CancelMaintenanceWindowExecutionInput",
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
    id = "CancelMaintenanceWindowExecutionOutput",
    members = {
        WindowExecutionId = {
            type = "string",
        },
    },
}

M.DoesNotExistException = {
    type = "structure",
    id = "DoesNotExistException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RegistrationMetadataItem = {
    type = "structure",
    id = "RegistrationMetadataItem",
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
    id = "CreateActivationInput",
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
    id = "CreateActivationOutput",
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
    id = "InvalidParameters",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociationAlreadyExists = {
    type = "structure",
    id = "AssociationAlreadyExists",
    error = "client",
}

M.AssociationLimitExceeded = {
    type = "structure",
    id = "AssociationLimitExceeded",
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
    id = "S3OutputLocation",
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
    id = "InstanceAssociationOutputLocation",
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
    id = "Target",
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
    id = "TargetLocation",
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
    id = "CreateAssociationInput",
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
    id = "AssociationOverview",
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
    id = "AssociationStatus",
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
    id = "AssociationDescription",
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
    id = "CreateAssociationOutput",
    members = {
        AssociationDescription = M.AssociationDescription,
    },
}

M.InvalidDocument = {
    type = "structure",
    id = "InvalidDocument",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidDocumentVersion = {
    type = "structure",
    id = "InvalidDocumentVersion",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidOutputLocation = {
    type = "structure",
    id = "InvalidOutputLocation",
    error = "client",
}

M.InvalidSchedule = {
    type = "structure",
    id = "InvalidSchedule",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidTag = {
    type = "structure",
    id = "InvalidTag",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidTarget = {
    type = "structure",
    id = "InvalidTarget",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidTargetMaps = {
    type = "structure",
    id = "InvalidTargetMaps",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedPlatformType = {
    type = "structure",
    id = "UnsupportedPlatformType",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateAssociationBatchRequestEntry = {
    type = "structure",
    id = "CreateAssociationBatchRequestEntry",
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
    id = "CreateAssociationBatchInput",
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
    id = "FailedCreateAssociation",
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
    id = "CreateAssociationBatchOutput",
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
    id = "AttachmentsSource",
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
    id = "DocumentRequires",
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
    id = "CreateDocumentInput",
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
    id = "AttachmentInformation",
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
    id = "DocumentParameter",
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
    id = "ReviewInformation",
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
    id = "DocumentDescription",
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
    id = "CreateDocumentOutput",
    members = {
        DocumentDescription = M.DocumentDescription,
    },
}

M.DocumentAlreadyExists = {
    type = "structure",
    id = "DocumentAlreadyExists",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DocumentLimitExceeded = {
    type = "structure",
    id = "DocumentLimitExceeded",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidDocumentContent = {
    type = "structure",
    id = "InvalidDocumentContent",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidDocumentSchemaVersion = {
    type = "structure",
    id = "InvalidDocumentSchemaVersion",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MaxDocumentSizeExceeded = {
    type = "structure",
    id = "MaxDocumentSizeExceeded",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoLongerSupportedException = {
    type = "structure",
    id = "NoLongerSupportedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateMaintenanceWindowInput = {
    type = "structure",
    id = "CreateMaintenanceWindowInput",
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
    id = "CreateMaintenanceWindowOutput",
    members = {
        WindowId = {
            type = "string",
        },
    },
}

M.IdempotentParameterMismatch = {
    type = "structure",
    id = "IdempotentParameterMismatch",
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

M.OpsItemNotification = {
    type = "structure",
    id = "OpsItemNotification",
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
    id = "OpsItemDataValue",
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
    id = "RelatedOpsItem",
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
    id = "CreateOpsItemInput",
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
    id = "CreateOpsItemOutput",
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
    id = "OpsItemAccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OpsItemAlreadyExistsException = {
    type = "structure",
    id = "OpsItemAlreadyExistsException",
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
    id = "MetadataValue",
    members = {
        Value = {
            type = "string",
        },
    },
}

M.CreateOpsMetadataInput = {
    type = "structure",
    id = "CreateOpsMetadataInput",
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
    id = "CreateOpsMetadataOutput",
    members = {
        OpsMetadataArn = {
            type = "string",
        },
    },
}

M.OpsMetadataAlreadyExistsException = {
    type = "structure",
    id = "OpsMetadataAlreadyExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OpsMetadataInvalidArgumentException = {
    type = "structure",
    id = "OpsMetadataInvalidArgumentException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OpsMetadataLimitExceededException = {
    type = "structure",
    id = "OpsMetadataLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OpsMetadataTooManyUpdatesException = {
    type = "structure",
    id = "OpsMetadataTooManyUpdatesException",
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
    id = "PatchFilter",
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
    id = "PatchFilterGroup",
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
    id = "PatchRule",
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
    id = "PatchRuleGroup",
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
    id = "PatchSource",
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
    id = "CreatePatchBaselineInput",
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
    id = "CreatePatchBaselineOutput",
    members = {
        BaselineId = {
            type = "string",
        },
    },
}

M.ResourceDataSyncDestinationDataSharing = {
    type = "structure",
    id = "ResourceDataSyncDestinationDataSharing",
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
    id = "ResourceDataSyncS3Destination",
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
    id = "ResourceDataSyncOrganizationalUnit",
    members = {
        OrganizationalUnitId = {
            type = "string",
        },
    },
}

M.ResourceDataSyncAwsOrganizationsSource = {
    type = "structure",
    id = "ResourceDataSyncAwsOrganizationsSource",
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
    id = "ResourceDataSyncSource",
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
    id = "CreateResourceDataSyncInput",
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
    id = "CreateResourceDataSyncOutput",
}

M.ResourceDataSyncAlreadyExistsException = {
    type = "structure",
    id = "ResourceDataSyncAlreadyExistsException",
    error = "client",
    members = {
        SyncName = {
            type = "string",
        },
    },
}

M.ResourceDataSyncCountExceededException = {
    type = "structure",
    id = "ResourceDataSyncCountExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceDataSyncInvalidConfigurationException = {
    type = "structure",
    id = "ResourceDataSyncInvalidConfigurationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteActivationInput = {
    type = "structure",
    id = "DeleteActivationInput",
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
    id = "DeleteActivationOutput",
}

M.InvalidActivation = {
    type = "structure",
    id = "InvalidActivation",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidActivationId = {
    type = "structure",
    id = "InvalidActivationId",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociationDoesNotExist = {
    type = "structure",
    id = "AssociationDoesNotExist",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteAssociationInput = {
    type = "structure",
    id = "DeleteAssociationInput",
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
    id = "DeleteAssociationOutput",
}

M.AssociatedInstances = {
    type = "structure",
    id = "AssociatedInstances",
    error = "client",
}

M.DeleteDocumentInput = {
    type = "structure",
    id = "DeleteDocumentInput",
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
    id = "DeleteDocumentOutput",
}

M.InvalidDocumentOperation = {
    type = "structure",
    id = "InvalidDocumentOperation",
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
    id = "DeleteInventoryInput",
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
    id = "InventoryDeletionSummaryItem",
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
    id = "InventoryDeletionSummary",
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
    id = "DeleteInventoryOutput",
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
    id = "InvalidDeleteInventoryParametersException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidInventoryRequestException = {
    type = "structure",
    id = "InvalidInventoryRequestException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidOptionException = {
    type = "structure",
    id = "InvalidOptionException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidTypeNameException = {
    type = "structure",
    id = "InvalidTypeNameException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteMaintenanceWindowInput = {
    type = "structure",
    id = "DeleteMaintenanceWindowInput",
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
    id = "DeleteMaintenanceWindowOutput",
    members = {
        WindowId = {
            type = "string",
        },
    },
}

M.DeleteOpsItemInput = {
    type = "structure",
    id = "DeleteOpsItemInput",
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
    id = "DeleteOpsItemOutput",
}

M.DeleteOpsMetadataInput = {
    type = "structure",
    id = "DeleteOpsMetadataInput",
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
    id = "DeleteOpsMetadataOutput",
}

M.OpsMetadataNotFoundException = {
    type = "structure",
    id = "OpsMetadataNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteParameterInput = {
    type = "structure",
    id = "DeleteParameterInput",
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
    id = "DeleteParameterOutput",
}

M.ParameterNotFound = {
    type = "structure",
    id = "ParameterNotFound",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteParametersInput = {
    type = "structure",
    id = "DeleteParametersInput",
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
    id = "DeleteParametersOutput",
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
    id = "DeletePatchBaselineInput",
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
    id = "DeletePatchBaselineOutput",
    members = {
        BaselineId = {
            type = "string",
        },
    },
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

M.DeleteResourceDataSyncInput = {
    type = "structure",
    id = "DeleteResourceDataSyncInput",
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
    id = "DeleteResourceDataSyncOutput",
}

M.ResourceDataSyncNotFoundException = {
    type = "structure",
    id = "ResourceDataSyncNotFoundException",
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
    id = "DeleteResourcePolicyInput",
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
    id = "DeleteResourcePolicyOutput",
}

M.MalformedResourcePolicyDocumentException = {
    type = "structure",
    id = "MalformedResourcePolicyDocumentException",
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

M.ResourcePolicyConflictException = {
    type = "structure",
    id = "ResourcePolicyConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourcePolicyInvalidParameterException = {
    type = "structure",
    id = "ResourcePolicyInvalidParameterException",
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
    id = "ResourcePolicyNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeregisterManagedInstanceInput = {
    type = "structure",
    id = "DeregisterManagedInstanceInput",
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
    id = "DeregisterManagedInstanceOutput",
}

M.DeregisterPatchBaselineForPatchGroupInput = {
    type = "structure",
    id = "DeregisterPatchBaselineForPatchGroupInput",
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
    id = "DeregisterPatchBaselineForPatchGroupOutput",
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
    id = "DeregisterTargetFromMaintenanceWindowInput",
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
    id = "DeregisterTargetFromMaintenanceWindowOutput",
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
    id = "TargetInUseException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeregisterTaskFromMaintenanceWindowInput = {
    type = "structure",
    id = "DeregisterTaskFromMaintenanceWindowInput",
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
    id = "DeregisterTaskFromMaintenanceWindowOutput",
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
    id = "DescribeActivationsFilter",
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
    id = "DescribeActivationsInput",
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
    id = "DescribeActivationsOutput",
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
    id = "InvalidFilter",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidNextToken = {
    type = "structure",
    id = "InvalidNextToken",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeAssociationInput = {
    type = "structure",
    id = "DescribeAssociationInput",
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
    id = "DescribeAssociationOutput",
    members = {
        AssociationDescription = M.AssociationDescription,
    },
}

M.InvalidAssociationVersion = {
    type = "structure",
    id = "InvalidAssociationVersion",
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
    id = "AssociationExecutionFilter",
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
    id = "DescribeAssociationExecutionsInput",
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
    id = "AssociationExecution",
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
    id = "DescribeAssociationExecutionsOutput",
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
    id = "AssociationExecutionDoesNotExist",
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
    id = "AssociationExecutionTargetsFilter",
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
    id = "DescribeAssociationExecutionTargetsInput",
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
    id = "OutputSource",
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
    id = "AssociationExecutionTarget",
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
    id = "DescribeAssociationExecutionTargetsOutput",
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
    id = "AutomationExecutionFilter",
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
    id = "DescribeAutomationExecutionsInput",
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
    id = "ResolvedTargets",
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
    id = "Runbook",
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
    id = "AutomationExecutionMetadata",
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
    id = "DescribeAutomationExecutionsOutput",
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
    id = "InvalidFilterKey",
    error = "client",
}

M.InvalidFilterValue = {
    type = "structure",
    id = "InvalidFilterValue",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AutomationExecutionNotFoundException = {
    type = "structure",
    id = "AutomationExecutionNotFoundException",
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
    id = "StepExecutionFilter",
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
    id = "DescribeAutomationStepExecutionsInput",
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
    id = "FailureDetails",
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
    id = "ParentStepDetails",
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
    id = "StepExecution",
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
    id = "DescribeAutomationStepExecutionsOutput",
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
    id = "PatchOrchestratorFilter",
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
    id = "DescribeAvailablePatchesInput",
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
    id = "Patch",
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
    id = "DescribeAvailablePatchesOutput",
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
    id = "DescribeDocumentInput",
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
    id = "DescribeDocumentOutput",
    members = {
        Document = M.DocumentDescription,
    },
}

M.DocumentPermissionType = {
    SHARE = "Share",
}

M.DescribeDocumentPermissionInput = {
    type = "structure",
    id = "DescribeDocumentPermissionInput",
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
    id = "DescribeDocumentPermissionOutput",
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
    id = "InvalidPermissionType",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeEffectiveInstanceAssociationsInput = {
    type = "structure",
    id = "DescribeEffectiveInstanceAssociationsInput",
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
    id = "InstanceAssociation",
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
    id = "DescribeEffectiveInstanceAssociationsOutput",
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
    id = "DescribeEffectivePatchesForPatchBaselineInput",
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
    id = "PatchStatus",
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
    id = "EffectivePatch",
    members = {
        Patch = M.Patch,
        PatchStatus = M.PatchStatus,
    },
}

M.DescribeEffectivePatchesForPatchBaselineOutput = {
    type = "structure",
    id = "DescribeEffectivePatchesForPatchBaselineOutput",
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
    id = "UnsupportedOperatingSystem",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeInstanceAssociationsStatusInput = {
    type = "structure",
    id = "DescribeInstanceAssociationsStatusInput",
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
    id = "S3OutputUrl",
    members = {
        OutputUrl = {
            type = "string",
        },
    },
}

M.InstanceAssociationOutputUrl = {
    type = "structure",
    id = "InstanceAssociationOutputUrl",
    members = {
        S3OutputUrl = M.S3OutputUrl,
    },
}

M.InstanceAssociationStatusInfo = {
    type = "structure",
    id = "InstanceAssociationStatusInfo",
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
    id = "DescribeInstanceAssociationsStatusOutput",
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
    id = "InstanceInformationStringFilter",
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
    id = "InstanceInformationFilter",
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
    id = "DescribeInstanceInformationInput",
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
    id = "InstanceAggregatedAssociationOverview",
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
    id = "InstanceInformation",
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
    id = "DescribeInstanceInformationOutput",
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
    id = "InvalidInstanceInformationFilterValue",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeInstancePatchesInput = {
    type = "structure",
    id = "DescribeInstancePatchesInput",
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
    id = "PatchComplianceData",
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
    id = "DescribeInstancePatchesOutput",
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
    id = "DescribeInstancePatchStatesInput",
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
    id = "InstancePatchState",
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
    id = "DescribeInstancePatchStatesOutput",
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
    id = "InstancePatchStateFilter",
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
    id = "DescribeInstancePatchStatesForPatchGroupInput",
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
    id = "DescribeInstancePatchStatesForPatchGroupOutput",
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
    id = "InstancePropertyStringFilter",
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
    id = "InstancePropertyFilter",
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
    id = "DescribeInstancePropertiesInput",
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
    id = "InstanceProperty",
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
    id = "DescribeInstancePropertiesOutput",
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
    id = "InvalidInstancePropertyFilterValue",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeInventoryDeletionsInput = {
    type = "structure",
    id = "DescribeInventoryDeletionsInput",
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
    id = "InventoryDeletionStatusItem",
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
    id = "DescribeInventoryDeletionsOutput",
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
    id = "InvalidDeletionIdException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MaintenanceWindowFilter = {
    type = "structure",
    id = "MaintenanceWindowFilter",
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
    id = "DescribeMaintenanceWindowExecutionsInput",
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
    id = "MaintenanceWindowExecution",
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
    id = "DescribeMaintenanceWindowExecutionsOutput",
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
    id = "DescribeMaintenanceWindowExecutionTaskInvocationsInput",
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
    id = "MaintenanceWindowExecutionTaskInvocationIdentity",
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
    id = "DescribeMaintenanceWindowExecutionTaskInvocationsOutput",
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
    id = "DescribeMaintenanceWindowExecutionTasksInput",
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
    id = "MaintenanceWindowExecutionTaskIdentity",
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
    id = "DescribeMaintenanceWindowExecutionTasksOutput",
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
    id = "DescribeMaintenanceWindowsInput",
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
    id = "MaintenanceWindowIdentity",
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
    id = "DescribeMaintenanceWindowsOutput",
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
    id = "DescribeMaintenanceWindowScheduleInput",
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
    id = "ScheduledWindowExecution",
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
    id = "DescribeMaintenanceWindowScheduleOutput",
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
    id = "DescribeMaintenanceWindowsForTargetInput",
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
    id = "MaintenanceWindowIdentityForTarget",
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
    id = "DescribeMaintenanceWindowsForTargetOutput",
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
    id = "DescribeMaintenanceWindowTargetsInput",
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
    id = "MaintenanceWindowTarget",
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
    id = "DescribeMaintenanceWindowTargetsOutput",
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
    id = "DescribeMaintenanceWindowTasksInput",
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
    id = "LoggingInfo",
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
    id = "MaintenanceWindowTaskParameterValueExpression",
    members = {
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.MaintenanceWindowTask = {
    type = "structure",
    id = "MaintenanceWindowTask",
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
    id = "DescribeMaintenanceWindowTasksOutput",
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
    id = "OpsItemFilter",
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
    id = "DescribeOpsItemsInput",
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
    id = "OpsItemSummary",
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
    id = "DescribeOpsItemsOutput",
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
    id = "ParametersFilter",
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
    id = "ParameterStringFilter",
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
    id = "DescribeParametersInput",
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
    id = "ParameterInlinePolicy",
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
    id = "ParameterMetadata",
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
    id = "DescribeParametersOutput",
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
    id = "InvalidFilterOption",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribePatchBaselinesInput = {
    type = "structure",
    id = "DescribePatchBaselinesInput",
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
    id = "PatchBaselineIdentity",
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
    id = "DescribePatchBaselinesOutput",
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
    id = "DescribePatchGroupsInput",
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
    id = "PatchGroupPatchBaselineMapping",
    members = {
        PatchGroup = {
            type = "string",
        },
        BaselineIdentity = M.PatchBaselineIdentity,
    },
}

M.DescribePatchGroupsOutput = {
    type = "structure",
    id = "DescribePatchGroupsOutput",
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
    id = "DescribePatchGroupStateInput",
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
    id = "DescribePatchGroupStateOutput",
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
    id = "DescribePatchPropertiesInput",
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
    id = "DescribePatchPropertiesOutput",
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
    id = "SessionFilter",
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
    id = "DescribeSessionsInput",
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
    id = "SessionManagerOutputUrl",
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
    id = "Session",
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
    id = "DescribeSessionsOutput",
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
    id = "DisassociateOpsItemRelatedItemInput",
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
    id = "DisassociateOpsItemRelatedItemOutput",
}

M.OpsItemRelatedItemAssociationNotFoundException = {
    type = "structure",
    id = "OpsItemRelatedItemAssociationNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetAccessTokenInput = {
    type = "structure",
    id = "GetAccessTokenInput",
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
    id = "Credentials",
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
    id = "GetAccessTokenOutput",
    members = {
        Credentials = M.Credentials,
        AccessRequestStatus = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
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
    id = "ValidationException",
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
    id = "GetAutomationExecutionInput",
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
    id = "ProgressCounters",
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
    id = "AutomationExecution",
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
    id = "GetAutomationExecutionOutput",
    members = {
        AutomationExecution = M.AutomationExecution,
    },
}

M.GetCalendarStateInput = {
    type = "structure",
    id = "GetCalendarStateInput",
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
    id = "GetCalendarStateOutput",
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
    id = "InvalidDocumentType",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedCalendarException = {
    type = "structure",
    id = "UnsupportedCalendarException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetCommandInvocationInput = {
    type = "structure",
    id = "GetCommandInvocationInput",
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
    id = "CloudWatchOutputConfig",
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
    id = "GetCommandInvocationOutput",
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
    id = "InvalidPluginName",
    error = "client",
}

M.InvocationDoesNotExist = {
    type = "structure",
    id = "InvocationDoesNotExist",
    error = "client",
}

M.GetConnectionStatusInput = {
    type = "structure",
    id = "GetConnectionStatusInput",
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
    id = "GetConnectionStatusOutput",
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
    id = "GetDefaultPatchBaselineInput",
    members = {
        OperatingSystem = {
            type = "string",
        },
    },
}

M.GetDefaultPatchBaselineOutput = {
    type = "structure",
    id = "GetDefaultPatchBaselineOutput",
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
    id = "BaselineOverride",
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
    id = "GetDeployablePatchSnapshotForInstanceInput",
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
    id = "GetDeployablePatchSnapshotForInstanceOutput",
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
    id = "UnsupportedFeatureRequiredException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetDocumentInput = {
    type = "structure",
    id = "GetDocumentInput",
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
    id = "AttachmentContent",
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
    id = "GetDocumentOutput",
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
    id = "GetExecutionPreviewInput",
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
    id = "TargetPreview",
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
    id = "AutomationExecutionPreview",
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
    id = "ExecutionPreview",
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
    id = "GetExecutionPreviewOutput",
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
    id = "InventoryFilter",
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
    id = "InventoryGroup",
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
    id = "ResultAttribute",
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
    id = "InventoryResultItem",
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
    id = "InventoryResultEntity",
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
    id = "GetInventoryOutput",
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
    id = "InvalidAggregatorException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidInventoryGroupException = {
    type = "structure",
    id = "InvalidInventoryGroupException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidResultAttributeException = {
    type = "structure",
    id = "InvalidResultAttributeException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetInventorySchemaInput = {
    type = "structure",
    id = "GetInventorySchemaInput",
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
    id = "InventoryItemAttribute",
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
    id = "InventoryItemSchema",
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
    id = "GetInventorySchemaOutput",
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
    id = "GetMaintenanceWindowInput",
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
    id = "GetMaintenanceWindowOutput",
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
    id = "GetMaintenanceWindowExecutionInput",
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
    id = "GetMaintenanceWindowExecutionOutput",
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
    id = "GetMaintenanceWindowExecutionTaskInput",
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
    id = "GetMaintenanceWindowExecutionTaskOutput",
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
    id = "GetMaintenanceWindowExecutionTaskInvocationInput",
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
    id = "GetMaintenanceWindowExecutionTaskInvocationOutput",
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
    id = "GetMaintenanceWindowTaskInput",
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
    id = "MaintenanceWindowAutomationParameters",
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
    id = "MaintenanceWindowLambdaParameters",
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
    id = "NotificationConfig",
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
    id = "MaintenanceWindowRunCommandParameters",
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
    id = "MaintenanceWindowStepFunctionsParameters",
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
    id = "MaintenanceWindowTaskInvocationParameters",
    members = {
        RunCommand = M.MaintenanceWindowRunCommandParameters,
        Automation = M.MaintenanceWindowAutomationParameters,
        StepFunctions = M.MaintenanceWindowStepFunctionsParameters,
        Lambda = M.MaintenanceWindowLambdaParameters,
    },
}

M.GetMaintenanceWindowTaskOutput = {
    type = "structure",
    id = "GetMaintenanceWindowTaskOutput",
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
    id = "GetOpsItemInput",
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
    id = "OpsItem",
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
    id = "GetOpsItemOutput",
    members = {
        OpsItem = M.OpsItem,
    },
}

M.GetOpsMetadataInput = {
    type = "structure",
    id = "GetOpsMetadataInput",
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
    id = "GetOpsMetadataOutput",
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
    id = "OpsFilter",
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
    id = "OpsResultAttribute",
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
    id = "OpsEntityItem",
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
    id = "OpsEntity",
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
    id = "GetOpsSummaryOutput",
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
    id = "GetParameterInput",
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
    id = "Parameter",
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
    id = "GetParameterOutput",
    members = {
        Parameter = M.Parameter,
    },
}

M.InvalidKeyId = {
    type = "structure",
    id = "InvalidKeyId",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ParameterVersionNotFound = {
    type = "structure",
    id = "ParameterVersionNotFound",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetParameterHistoryInput = {
    type = "structure",
    id = "GetParameterHistoryInput",
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
    id = "ParameterHistory",
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
    id = "GetParameterHistoryOutput",
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
    id = "GetParametersInput",
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
    id = "GetParametersOutput",
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
    id = "GetParametersByPathInput",
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
    id = "GetParametersByPathOutput",
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
    id = "GetPatchBaselineInput",
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
    id = "GetPatchBaselineOutput",
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
    id = "GetPatchBaselineForPatchGroupInput",
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
    id = "GetPatchBaselineForPatchGroupOutput",
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
    id = "GetResourcePoliciesInput",
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
    id = "GetResourcePoliciesResponseEntry",
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
    id = "GetResourcePoliciesOutput",
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
    id = "GetServiceSettingInput",
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
    id = "ServiceSetting",
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
    id = "GetServiceSettingOutput",
    members = {
        ServiceSetting = M.ServiceSetting,
    },
}

M.ServiceSettingNotFound = {
    type = "structure",
    id = "ServiceSettingNotFound",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.LabelParameterVersionInput = {
    type = "structure",
    id = "LabelParameterVersionInput",
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
    id = "LabelParameterVersionOutput",
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
    id = "ParameterVersionLabelLimitExceeded",
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
    id = "AssociationFilter",
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
    id = "ListAssociationsInput",
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
    id = "Association",
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
    id = "ListAssociationsOutput",
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
    id = "ListAssociationVersionsInput",
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
    id = "AssociationVersionInfo",
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
    id = "ListAssociationVersionsOutput",
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
    id = "CommandFilter",
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
    id = "ListCommandInvocationsInput",
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
    id = "CommandPlugin",
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
    id = "CommandInvocation",
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
    id = "ListCommandInvocationsOutput",
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
    id = "ListCommandsInput",
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
    id = "Command",
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
    id = "ListCommandsOutput",
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
    id = "ComplianceStringFilter",
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
    id = "ListComplianceItemsInput",
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
    id = "ComplianceExecutionSummary",
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
    id = "ComplianceItem",
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
    id = "ListComplianceItemsOutput",
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
    id = "ListComplianceSummariesInput",
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
    id = "SeveritySummary",
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
    id = "CompliantSummary",
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
    id = "NonCompliantSummary",
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
    id = "ComplianceSummaryItem",
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
    id = "ListComplianceSummariesOutput",
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
    id = "ListDocumentMetadataHistoryInput",
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
    id = "DocumentReviewCommentSource",
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
    id = "DocumentReviewerResponseSource",
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
    id = "DocumentMetadataResponseInfo",
    members = {
        ReviewerResponse = {
            type = "list",
            member = M.DocumentReviewerResponseSource,
        },
    },
}

M.ListDocumentMetadataHistoryOutput = {
    type = "structure",
    id = "ListDocumentMetadataHistoryOutput",
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
    id = "DocumentFilter",
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
    id = "DocumentKeyValuesFilter",
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
    id = "ListDocumentsInput",
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
    id = "DocumentIdentifier",
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
    id = "ListDocumentsOutput",
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
    id = "ListDocumentVersionsInput",
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
    id = "DocumentVersionInfo",
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
    id = "ListDocumentVersionsOutput",
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
    id = "ListInventoryEntriesInput",
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
    id = "ListInventoryEntriesOutput",
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
    id = "NodeFilter",
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
    id = "ListNodesInput",
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
    id = "InstanceInfo",
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
    id = "NodeType",
    members = {
        Instance = M.InstanceInfo,
    },
}

M.NodeOwnerInfo = {
    type = "structure",
    id = "NodeOwnerInfo",
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
    id = "Node",
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
    id = "ListNodesOutput",
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
    id = "UnsupportedOperationException",
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
    id = "ListNodesSummaryOutput",
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
    id = "OpsItemEventFilter",
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
    id = "ListOpsItemEventsInput",
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
    id = "OpsItemIdentity",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.OpsItemEventSummary = {
    type = "structure",
    id = "OpsItemEventSummary",
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
    id = "ListOpsItemEventsOutput",
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
    id = "OpsItemRelatedItemsFilter",
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
    id = "ListOpsItemRelatedItemsInput",
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
    id = "OpsItemRelatedItemSummary",
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
    id = "ListOpsItemRelatedItemsOutput",
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
    id = "OpsMetadataFilter",
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
    id = "ListOpsMetadataInput",
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
    id = "OpsMetadata",
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
    id = "ListOpsMetadataOutput",
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
    id = "ListResourceComplianceSummariesInput",
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
    id = "ResourceComplianceSummaryItem",
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
    id = "ListResourceComplianceSummariesOutput",
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
    id = "ListResourceDataSyncInput",
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
    id = "ResourceDataSyncSourceWithState",
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
    id = "ResourceDataSyncItem",
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
    id = "ListResourceDataSyncOutput",
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
    members = {
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DocumentPermissionLimit = {
    type = "structure",
    id = "DocumentPermissionLimit",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ModifyDocumentPermissionInput = {
    type = "structure",
    id = "ModifyDocumentPermissionInput",
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
    id = "ModifyDocumentPermissionOutput",
}

M.ComplianceTypeCountLimitExceededException = {
    type = "structure",
    id = "ComplianceTypeCountLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidItemContentException = {
    type = "structure",
    id = "InvalidItemContentException",
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
    id = "ItemSizeLimitExceededException",
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
    id = "ComplianceItemEntry",
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
    id = "PutComplianceItemsInput",
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
    id = "PutComplianceItemsOutput",
}

M.TotalSizeLimitExceededException = {
    type = "structure",
    id = "TotalSizeLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CustomSchemaCountLimitExceededException = {
    type = "structure",
    id = "CustomSchemaCountLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidInventoryItemContextException = {
    type = "structure",
    id = "InvalidInventoryItemContextException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ItemContentMismatchException = {
    type = "structure",
    id = "ItemContentMismatchException",
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
    id = "InventoryItem",
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
    id = "PutInventoryInput",
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
    id = "PutInventoryOutput",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SubTypeCountLimitExceededException = {
    type = "structure",
    id = "SubTypeCountLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedInventoryItemContextException = {
    type = "structure",
    id = "UnsupportedInventoryItemContextException",
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
    id = "UnsupportedInventorySchemaVersionException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.HierarchyLevelLimitExceededException = {
    type = "structure",
    id = "HierarchyLevelLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.HierarchyTypeMismatchException = {
    type = "structure",
    id = "HierarchyTypeMismatchException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IncompatiblePolicyException = {
    type = "structure",
    id = "IncompatiblePolicyException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidAllowedPatternException = {
    type = "structure",
    id = "InvalidAllowedPatternException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidPolicyAttributeException = {
    type = "structure",
    id = "InvalidPolicyAttributeException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidPolicyTypeException = {
    type = "structure",
    id = "InvalidPolicyTypeException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ParameterAlreadyExists = {
    type = "structure",
    id = "ParameterAlreadyExists",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ParameterLimitExceeded = {
    type = "structure",
    id = "ParameterLimitExceeded",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ParameterMaxVersionLimitExceeded = {
    type = "structure",
    id = "ParameterMaxVersionLimitExceeded",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ParameterPatternMismatchException = {
    type = "structure",
    id = "ParameterPatternMismatchException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PoliciesLimitExceededException = {
    type = "structure",
    id = "PoliciesLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutParameterInput = {
    type = "structure",
    id = "PutParameterInput",
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
    id = "PutParameterOutput",
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
    id = "UnsupportedParameterType",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    id = "PutResourcePolicyInput",
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
    id = "PutResourcePolicyOutput",
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
    id = "ResourcePolicyLimitExceededException",
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
    id = "RegisterDefaultPatchBaselineInput",
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
    id = "RegisterDefaultPatchBaselineOutput",
    members = {
        BaselineId = {
            type = "string",
        },
    },
}

M.RegisterPatchBaselineForPatchGroupInput = {
    type = "structure",
    id = "RegisterPatchBaselineForPatchGroupInput",
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
    id = "RegisterPatchBaselineForPatchGroupOutput",
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
    id = "RegisterTargetWithMaintenanceWindowInput",
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
    id = "RegisterTargetWithMaintenanceWindowOutput",
    members = {
        WindowTargetId = {
            type = "string",
        },
    },
}

M.FeatureNotAvailableException = {
    type = "structure",
    id = "FeatureNotAvailableException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RegisterTaskWithMaintenanceWindowInput = {
    type = "structure",
    id = "RegisterTaskWithMaintenanceWindowInput",
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
    id = "RegisterTaskWithMaintenanceWindowOutput",
    members = {
        WindowTaskId = {
            type = "string",
        },
    },
}

M.RemoveTagsFromResourceInput = {
    type = "structure",
    id = "RemoveTagsFromResourceInput",
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
    id = "RemoveTagsFromResourceOutput",
}

M.ResetServiceSettingInput = {
    type = "structure",
    id = "ResetServiceSettingInput",
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
    id = "ResetServiceSettingOutput",
    members = {
        ServiceSetting = M.ServiceSetting,
    },
}

M.ResumeSessionInput = {
    type = "structure",
    id = "ResumeSessionInput",
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
    id = "ResumeSessionOutput",
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
    id = "AutomationStepNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidAutomationSignalException = {
    type = "structure",
    id = "InvalidAutomationSignalException",
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
    id = "SendAutomationSignalInput",
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
    id = "SendAutomationSignalOutput",
}

M.InvalidNotificationConfig = {
    type = "structure",
    id = "InvalidNotificationConfig",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidOutputFolder = {
    type = "structure",
    id = "InvalidOutputFolder",
    error = "client",
}

M.InvalidRole = {
    type = "structure",
    id = "InvalidRole",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SendCommandInput = {
    type = "structure",
    id = "SendCommandInput",
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
    id = "SendCommandOutput",
    members = {
        Command = M.Command,
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
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
    id = "StartAccessRequestInput",
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
    id = "StartAccessRequestOutput",
    members = {
        AccessRequestId = {
            type = "string",
        },
    },
}

M.InvalidAssociation = {
    type = "structure",
    id = "InvalidAssociation",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StartAssociationsOnceInput = {
    type = "structure",
    id = "StartAssociationsOnceInput",
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
    id = "StartAssociationsOnceOutput",
}

M.AutomationDefinitionNotFoundException = {
    type = "structure",
    id = "AutomationDefinitionNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AutomationDefinitionVersionNotFoundException = {
    type = "structure",
    id = "AutomationDefinitionVersionNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AutomationExecutionLimitExceededException = {
    type = "structure",
    id = "AutomationExecutionLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidAutomationExecutionParametersException = {
    type = "structure",
    id = "InvalidAutomationExecutionParametersException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StartAutomationExecutionInput = {
    type = "structure",
    id = "StartAutomationExecutionInput",
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
    id = "StartAutomationExecutionOutput",
    members = {
        AutomationExecutionId = {
            type = "string",
        },
    },
}

M.AutomationDefinitionNotApprovedException = {
    type = "structure",
    id = "AutomationDefinitionNotApprovedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StartChangeRequestExecutionInput = {
    type = "structure",
    id = "StartChangeRequestExecutionInput",
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
    id = "StartChangeRequestExecutionOutput",
    members = {
        AutomationExecutionId = {
            type = "string",
        },
    },
}

M.AutomationExecutionInputs = {
    type = "structure",
    id = "AutomationExecutionInputs",
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
    id = "ExecutionInputs",
    members = {
        Automation = M.AutomationExecutionInputs,
    },
}

M.StartExecutionPreviewInput = {
    type = "structure",
    id = "StartExecutionPreviewInput",
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
    id = "StartExecutionPreviewOutput",
    members = {
        ExecutionPreviewId = {
            type = "string",
        },
    },
}

M.StartSessionInput = {
    type = "structure",
    id = "StartSessionInput",
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
    id = "StartSessionOutput",
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
    id = "TargetNotConnected",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidAutomationStatusUpdateException = {
    type = "structure",
    id = "InvalidAutomationStatusUpdateException",
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
    id = "StopAutomationExecutionInput",
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
    id = "StopAutomationExecutionOutput",
}

M.TerminateSessionInput = {
    type = "structure",
    id = "TerminateSessionInput",
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
    id = "TerminateSessionOutput",
    members = {
        SessionId = {
            type = "string",
        },
    },
}

M.UnlabelParameterVersionInput = {
    type = "structure",
    id = "UnlabelParameterVersionInput",
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
    id = "UnlabelParameterVersionOutput",
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
    id = "AssociationVersionLimitExceeded",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidUpdate = {
    type = "structure",
    id = "InvalidUpdate",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateAssociationInput = {
    type = "structure",
    id = "UpdateAssociationInput",
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
    id = "UpdateAssociationOutput",
    members = {
        AssociationDescription = M.AssociationDescription,
    },
}

M.StatusUnchanged = {
    type = "structure",
    id = "StatusUnchanged",
    error = "client",
}

M.UpdateAssociationStatusInput = {
    type = "structure",
    id = "UpdateAssociationStatusInput",
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
    id = "UpdateAssociationStatusOutput",
    members = {
        AssociationDescription = M.AssociationDescription,
    },
}

M.DocumentVersionLimitExceeded = {
    type = "structure",
    id = "DocumentVersionLimitExceeded",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DuplicateDocumentContent = {
    type = "structure",
    id = "DuplicateDocumentContent",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DuplicateDocumentVersionName = {
    type = "structure",
    id = "DuplicateDocumentVersionName",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateDocumentInput = {
    type = "structure",
    id = "UpdateDocumentInput",
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
    id = "UpdateDocumentOutput",
    members = {
        DocumentDescription = M.DocumentDescription,
    },
}

M.UpdateDocumentDefaultVersionInput = {
    type = "structure",
    id = "UpdateDocumentDefaultVersionInput",
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
    id = "DocumentDefaultVersionDescription",
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
    id = "UpdateDocumentDefaultVersionOutput",
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
    id = "DocumentReviews",
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
    id = "UpdateDocumentMetadataInput",
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
    id = "UpdateDocumentMetadataOutput",
}

M.UpdateMaintenanceWindowInput = {
    type = "structure",
    id = "UpdateMaintenanceWindowInput",
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
    id = "UpdateMaintenanceWindowOutput",
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
    id = "UpdateMaintenanceWindowTargetInput",
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
    id = "UpdateMaintenanceWindowTargetOutput",
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
    id = "UpdateMaintenanceWindowTaskInput",
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
    id = "UpdateMaintenanceWindowTaskOutput",
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
    id = "UpdateManagedInstanceRoleInput",
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
    id = "UpdateManagedInstanceRoleOutput",
}

M.UpdateOpsItemInput = {
    type = "structure",
    id = "UpdateOpsItemInput",
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
    id = "UpdateOpsItemOutput",
}

M.OpsMetadataKeyLimitExceededException = {
    type = "structure",
    id = "OpsMetadataKeyLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateOpsMetadataInput = {
    type = "structure",
    id = "UpdateOpsMetadataInput",
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
    id = "UpdateOpsMetadataOutput",
    members = {
        OpsMetadataArn = {
            type = "string",
        },
    },
}

M.UpdatePatchBaselineInput = {
    type = "structure",
    id = "UpdatePatchBaselineInput",
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
    id = "UpdatePatchBaselineOutput",
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
    id = "ResourceDataSyncConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateResourceDataSyncInput = {
    type = "structure",
    id = "UpdateResourceDataSyncInput",
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
    id = "UpdateResourceDataSyncOutput",
}

M.UpdateServiceSettingInput = {
    type = "structure",
    id = "UpdateServiceSettingInput",
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
    id = "UpdateServiceSettingOutput",
}

M.InventoryAggregator = {
    type = "structure",
    id = "InventoryAggregator",
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
    id = "NodeAggregator",
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
    id = "OpsAggregator",
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
    id = "GetInventoryInput",
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
    id = "GetOpsSummaryInput",
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
    id = "ListNodesSummaryInput",
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
