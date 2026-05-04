local M = {}

M.AccountFilterType = {
    NONE = "NONE",
    INTERSECTION = "INTERSECTION",
    DIFFERENCE = "DIFFERENCE",
    UNION = "UNION",
}

M.AccountGateStatus = {
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    SKIPPED = "SKIPPED",
}

M.AccountGateResult = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
    },
}

M.AccountLimit = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "integer",
        },
    },
}

M.ActivateOrganizationsAccessInput = {
    type = "structure",
}

M.ActivateOrganizationsAccessOutput = {
    type = "structure",
}

M.InvalidOperationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OperationNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.LoggingConfig = {
    type = "structure",
    members = {
        LogRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThirdPartyType = {
    RESOURCE = "RESOURCE",
    MODULE = "MODULE",
    HOOK = "HOOK",
}

M.VersionBump = {
    MAJOR = "MAJOR",
    MINOR = "MINOR",
}

M.ActivateTypeInput = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        PublicTypeArn = {
            type = "string",
        },
        PublisherId = {
            type = "string",
        },
        TypeName = {
            type = "string",
        },
        TypeNameAlias = {
            type = "string",
        },
        AutoUpdate = {
            type = "boolean",
        },
        LoggingConfig = M.LoggingConfig,
        ExecutionRoleArn = {
            type = "string",
        },
        VersionBump = {
            type = "string",
        },
        MajorVersion = {
            type = "long",
        },
    },
}

M.ActivateTypeOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.CFNRegistryException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TypeNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AfterValueFrom = {
    TEMPLATE = "TEMPLATE",
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

M.AnnotationSeverityLevel = {
    INFORMATIONAL = "INFORMATIONAL",
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
    CRITICAL = "CRITICAL",
}

M.AnnotationStatus = {
    PASSED = "PASSED",
    FAILED = "FAILED",
    SKIPPED = "SKIPPED",
}

M.Annotation = {
    type = "structure",
    members = {
        AnnotationName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        RemediationMessage = {
            type = "string",
        },
        RemediationLink = {
            type = "string",
        },
        SeverityLevel = {
            type = "string",
        },
    },
}

M.AttributeChangeType = {
    Add = "Add",
    Remove = "Remove",
    Modify = "Modify",
    SyncWithActual = "SyncWithActual",
}

M.AutoDeployment = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
        RetainStacksOnAccountRemoval = {
            type = "boolean",
        },
        DependsOn = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.TypeConfigurationIdentifier = {
    type = "structure",
    members = {
        TypeArn = {
            type = "string",
        },
        TypeConfigurationAlias = {
            type = "string",
        },
        TypeConfigurationArn = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        TypeName = {
            type = "string",
        },
    },
}

M.BatchDescribeTypeConfigurationsInput = {
    type = "structure",
    members = {
        TypeConfigurationIdentifiers = {
            type = "list",
            member = M.TypeConfigurationIdentifier,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDescribeTypeConfigurationsError = {
    type = "structure",
    members = {
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        TypeConfigurationIdentifier = M.TypeConfigurationIdentifier,
    },
}

M.TypeConfigurationDetails = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Alias = {
            type = "string",
        },
        Configuration = {
            type = "string",
        },
        LastUpdated = {
            type = "timestamp",
        },
        TypeArn = {
            type = "string",
        },
        TypeName = {
            type = "string",
        },
        IsDefaultConfiguration = {
            type = "boolean",
        },
    },
}

M.BatchDescribeTypeConfigurationsOutput = {
    type = "structure",
    members = {
        Errors = {
            type = "list",
            member = M.BatchDescribeTypeConfigurationsError,
        },
        UnprocessedTypeConfigurations = {
            type = "list",
            member = M.TypeConfigurationIdentifier,
        },
        TypeConfigurations = {
            type = "list",
            member = M.TypeConfigurationDetails,
        },
    },
}

M.TypeConfigurationNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.BeaconStackOperationStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.BeforeValueFrom = {
    PREVIOUS_DEPLOYMENT_STATE = "PREVIOUS_DEPLOYMENT_STATE",
    ACTUAL_STATE = "ACTUAL_STATE",
}

M.CallAs = {
    SELF = "SELF",
    DELEGATED_ADMIN = "DELEGATED_ADMIN",
}

M.CancelUpdateStackInput = {
    type = "structure",
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
    },
}

M.CancelUpdateStackOutput = {
    type = "structure",
}

M.TokenAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Capability = {
    CAPABILITY_IAM = "CAPABILITY_IAM",
    CAPABILITY_NAMED_IAM = "CAPABILITY_NAMED_IAM",
    CAPABILITY_AUTO_EXPAND = "CAPABILITY_AUTO_EXPAND",
}

M.Category = {
    REGISTERED = "REGISTERED",
    ACTIVATED = "ACTIVATED",
    THIRD_PARTY = "THIRD_PARTY",
    AWS_TYPES = "AWS_TYPES",
}

M.ChangeAction = {
    Add = "Add",
    Modify = "Modify",
    Remove = "Remove",
    Import = "Import",
    Dynamic = "Dynamic",
    SyncWithActual = "SyncWithActual",
}

M.ChangeSource = {
    ResourceReference = "ResourceReference",
    ParameterReference = "ParameterReference",
    ResourceAttribute = "ResourceAttribute",
    DirectModification = "DirectModification",
    Automatic = "Automatic",
    NoModification = "NoModification",
}

M.EvaluationType = {
    Static = "Static",
    Dynamic = "Dynamic",
}

M.ResourceAttribute = {
    Properties = "Properties",
    Metadata = "Metadata",
    CreationPolicy = "CreationPolicy",
    UpdatePolicy = "UpdatePolicy",
    DeletionPolicy = "DeletionPolicy",
    UpdateReplacePolicy = "UpdateReplacePolicy",
    Tags = "Tags",
}

M.LiveResourceDrift = {
    type = "structure",
    members = {
        PreviousValue = {
            type = "string",
        },
        ActualValue = {
            type = "string",
        },
        DriftDetectionTimestamp = {
            type = "timestamp",
        },
    },
}

M.RequiresRecreation = {
    Never = "Never",
    Conditionally = "Conditionally",
    Always = "Always",
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
        Path = {
            type = "string",
        },
        BeforeValue = {
            type = "string",
        },
        AfterValue = {
            type = "string",
        },
        BeforeValueFrom = {
            type = "string",
        },
        AfterValueFrom = {
            type = "string",
        },
        Drift = M.LiveResourceDrift,
        AttributeChangeType = {
            type = "string",
        },
    },
}

M.ResourceChangeDetail = {
    type = "structure",
    members = {
        Target = M.ResourceTargetDefinition,
        Evaluation = {
            type = "string",
        },
        ChangeSource = {
            type = "string",
        },
        CausingEntity = {
            type = "string",
        },
    },
}

M.ModuleInfo = {
    type = "structure",
    members = {
        TypeHierarchy = {
            type = "string",
        },
        LogicalIdHierarchy = {
            type = "string",
        },
    },
}

M.PolicyAction = {
    Delete = "Delete",
    Retain = "Retain",
    Snapshot = "Snapshot",
    ReplaceAndDelete = "ReplaceAndDelete",
    ReplaceAndRetain = "ReplaceAndRetain",
    ReplaceAndSnapshot = "ReplaceAndSnapshot",
}

M.Replacement = {
    True = "True",
    False = "False",
    Conditional = "Conditional",
}

M.DriftIgnoredReason = {
    MANAGED_BY_AWS = "MANAGED_BY_AWS",
    WRITE_ONLY_PROPERTY = "WRITE_ONLY_PROPERTY",
}

M.ResourceDriftIgnoredAttribute = {
    type = "structure",
    members = {
        Path = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.StackResourceDriftStatus = {
    IN_SYNC = "IN_SYNC",
    MODIFIED = "MODIFIED",
    DELETED = "DELETED",
    NOT_CHECKED = "NOT_CHECKED",
    UNKNOWN = "UNKNOWN",
    UNSUPPORTED = "UNSUPPORTED",
}

M.ResourceChange = {
    type = "structure",
    members = {
        PolicyAction = {
            type = "string",
        },
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
        ResourceDriftStatus = {
            type = "string",
        },
        ResourceDriftIgnoredAttributes = {
            type = "list",
            member = M.ResourceDriftIgnoredAttribute,
        },
        Details = {
            type = "list",
            member = M.ResourceChangeDetail,
        },
        ChangeSetId = {
            type = "string",
        },
        ModuleInfo = M.ModuleInfo,
        BeforeContext = {
            type = "string",
        },
        AfterContext = {
            type = "string",
        },
        PreviousDeploymentContext = {
            type = "string",
        },
    },
}

M.ChangeType = {
    Resource = "Resource",
}

M.Change = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        HookInvocationCount = {
            type = "integer",
        },
        ResourceChange = M.ResourceChange,
    },
}

M.HookFailureMode = {
    FAIL = "FAIL",
    WARN = "WARN",
}

M.HookInvocationPoint = {
    PRE_PROVISION = "PRE_PROVISION",
}

M.ChangeSetHookResourceTargetDetails = {
    type = "structure",
    members = {
        LogicalResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ResourceAction = {
            type = "string",
        },
    },
}

M.HookTargetType = {
    RESOURCE = "RESOURCE",
}

M.ChangeSetHookTargetDetails = {
    type = "structure",
    members = {
        TargetType = {
            type = "string",
        },
        ResourceTargetDetails = M.ChangeSetHookResourceTargetDetails,
    },
}

M.ChangeSetHook = {
    type = "structure",
    members = {
        InvocationPoint = {
            type = "string",
        },
        FailureMode = {
            type = "string",
        },
        TypeName = {
            type = "string",
        },
        TypeVersionId = {
            type = "string",
        },
        TypeConfigurationVersionId = {
            type = "string",
        },
        TargetDetails = M.ChangeSetHookTargetDetails,
    },
}

M.ChangeSetHooksStatus = {
    PLANNING = "PLANNING",
    PLANNED = "PLANNED",
    UNAVAILABLE = "UNAVAILABLE",
}

M.ChangeSetNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ChangeSetStatus = {
    CREATE_PENDING = "CREATE_PENDING",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_COMPLETE = "CREATE_COMPLETE",
    DELETE_PENDING = "DELETE_PENDING",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_COMPLETE = "DELETE_COMPLETE",
    DELETE_FAILED = "DELETE_FAILED",
    FAILED = "FAILED",
}

M.ExecutionStatus = {
    UNAVAILABLE = "UNAVAILABLE",
    AVAILABLE = "AVAILABLE",
    EXECUTE_IN_PROGRESS = "EXECUTE_IN_PROGRESS",
    EXECUTE_COMPLETE = "EXECUTE_COMPLETE",
    EXECUTE_FAILED = "EXECUTE_FAILED",
    OBSOLETE = "OBSOLETE",
}

M.ChangeSetSummary = {
    type = "structure",
    members = {
        StackId = {
            type = "string",
        },
        StackName = {
            type = "string",
        },
        ChangeSetId = {
            type = "string",
        },
        ChangeSetName = {
            type = "string",
        },
        ExecutionStatus = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        IncludeNestedStacks = {
            type = "boolean",
        },
        ParentChangeSetId = {
            type = "string",
        },
        RootChangeSetId = {
            type = "string",
        },
        ImportExistingResources = {
            type = "boolean",
        },
    },
}

M.ChangeSetType = {
    CREATE = "CREATE",
    UPDATE = "UPDATE",
    IMPORT = "IMPORT",
}

M.ContinueUpdateRollbackInput = {
    type = "structure",
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleARN = {
            type = "string",
        },
        ResourcesToSkip = {
            type = "list",
            member = { type = "string" },
        },
        ClientRequestToken = {
            type = "string",
        },
    },
}

M.ContinueUpdateRollbackOutput = {
    type = "structure",
}

M.DeploymentMode = {
    REVERT_DRIFT = "REVERT_DRIFT",
}

M.OnStackFailure = {
    DO_NOTHING = "DO_NOTHING",
    ROLLBACK = "ROLLBACK",
    DELETE = "DELETE",
}

M.Parameter = {
    type = "structure",
    members = {
        ParameterKey = {
            type = "string",
        },
        ParameterValue = {
            type = "string",
        },
        UsePreviousValue = {
            type = "boolean",
        },
        ResolvedValue = {
            type = "string",
        },
    },
}

M.ResourceToImport = {
    type = "structure",
    members = {
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogicalResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceIdentifier = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
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

M.RollbackConfiguration = {
    type = "structure",
    members = {
        RollbackTriggers = {
            type = "list",
            member = M.RollbackTrigger,
        },
        MonitoringTimeInMinutes = {
            type = "integer",
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

M.CreateChangeSetInput = {
    type = "structure",
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateBody = {
            type = "string",
        },
        TemplateURL = {
            type = "string",
        },
        UsePreviousTemplate = {
            type = "boolean",
        },
        Parameters = {
            type = "list",
            member = M.Parameter,
        },
        Capabilities = {
            type = "list",
            member = { type = "string" },
        },
        ResourceTypes = {
            type = "list",
            member = { type = "string" },
        },
        RoleARN = {
            type = "string",
        },
        RollbackConfiguration = M.RollbackConfiguration,
        NotificationARNs = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ChangeSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ChangeSetType = {
            type = "string",
        },
        ResourcesToImport = {
            type = "list",
            member = M.ResourceToImport,
        },
        IncludeNestedStacks = {
            type = "boolean",
        },
        OnStackFailure = {
            type = "string",
        },
        ImportExistingResources = {
            type = "boolean",
        },
        DeploymentMode = {
            type = "string",
        },
    },
}

M.CreateChangeSetOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        StackId = {
            type = "string",
        },
    },
}

M.InsufficientCapabilitiesException = {
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

M.ConcurrentResourcesLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceDefinition = {
    type = "structure",
    members = {
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogicalResourceId = {
            type = "string",
        },
        ResourceIdentifier = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GeneratedTemplateDeletionPolicy = {
    DELETE = "DELETE",
    RETAIN = "RETAIN",
}

M.GeneratedTemplateUpdateReplacePolicy = {
    DELETE = "DELETE",
    RETAIN = "RETAIN",
}

M.TemplateConfiguration = {
    type = "structure",
    members = {
        DeletionPolicy = {
            type = "string",
        },
        UpdateReplacePolicy = {
            type = "string",
        },
    },
}

M.CreateGeneratedTemplateInput = {
    type = "structure",
    members = {
        Resources = {
            type = "list",
            member = M.ResourceDefinition,
        },
        GeneratedTemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StackName = {
            type = "string",
        },
        TemplateConfiguration = M.TemplateConfiguration,
    },
}

M.CreateGeneratedTemplateOutput = {
    type = "structure",
    members = {
        GeneratedTemplateId = {
            type = "string",
        },
    },
}

M.OnFailure = {
    DO_NOTHING = "DO_NOTHING",
    ROLLBACK = "ROLLBACK",
    DELETE = "DELETE",
}

M.CreateStackInput = {
    type = "structure",
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateBody = {
            type = "string",
        },
        TemplateURL = {
            type = "string",
        },
        Parameters = {
            type = "list",
            member = M.Parameter,
        },
        DisableRollback = {
            type = "boolean",
        },
        RollbackConfiguration = M.RollbackConfiguration,
        TimeoutInMinutes = {
            type = "integer",
        },
        NotificationARNs = {
            type = "list",
            member = { type = "string" },
        },
        Capabilities = {
            type = "list",
            member = { type = "string" },
        },
        ResourceTypes = {
            type = "list",
            member = { type = "string" },
        },
        RoleARN = {
            type = "string",
        },
        OnFailure = {
            type = "string",
        },
        StackPolicyBody = {
            type = "string",
        },
        StackPolicyURL = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ClientRequestToken = {
            type = "string",
        },
        EnableTerminationProtection = {
            type = "boolean",
        },
        RetainExceptOnCreate = {
            type = "boolean",
        },
    },
}

M.CreateStackOutput = {
    type = "structure",
    members = {
        StackId = {
            type = "string",
        },
        OperationId = {
            type = "string",
        },
    },
}

M.DeploymentTargets = {
    type = "structure",
    members = {
        Accounts = {
            type = "list",
            member = { type = "string" },
        },
        AccountsUrl = {
            type = "string",
        },
        OrganizationalUnitIds = {
            type = "list",
            member = { type = "string" },
        },
        AccountFilterType = {
            type = "string",
        },
    },
}

M.ConcurrencyMode = {
    STRICT_FAILURE_TOLERANCE = "STRICT_FAILURE_TOLERANCE",
    SOFT_FAILURE_TOLERANCE = "SOFT_FAILURE_TOLERANCE",
}

M.RegionConcurrencyType = {
    SEQUENTIAL = "SEQUENTIAL",
    PARALLEL = "PARALLEL",
}

M.StackSetOperationPreferences = {
    type = "structure",
    members = {
        RegionConcurrencyType = {
            type = "string",
        },
        RegionOrder = {
            type = "list",
            member = { type = "string" },
        },
        FailureToleranceCount = {
            type = "integer",
        },
        FailureTolerancePercentage = {
            type = "integer",
        },
        MaxConcurrentCount = {
            type = "integer",
        },
        MaxConcurrentPercentage = {
            type = "integer",
        },
        ConcurrencyMode = {
            type = "string",
        },
    },
}

M.CreateStackInstancesInput = {
    type = "structure",
    members = {
        StackSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Accounts = {
            type = "list",
            member = { type = "string" },
        },
        DeploymentTargets = M.DeploymentTargets,
        Regions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ParameterOverrides = {
            type = "list",
            member = M.Parameter,
        },
        OperationPreferences = M.StackSetOperationPreferences,
        OperationId = {
            type = "string",
        },
        CallAs = {
            type = "string",
        },
    },
}

M.CreateStackInstancesOutput = {
    type = "structure",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.OperationIdAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OperationInProgressException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StackSetNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StaleRequestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceLocation = {
    type = "structure",
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogicalResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceMapping = {
    type = "structure",
    members = {
        Source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceLocation }),
        Destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceLocation }),
    },
}

M.StackDefinition = {
    type = "structure",
    members = {
        StackName = {
            type = "string",
        },
        TemplateBody = {
            type = "string",
        },
        TemplateURL = {
            type = "string",
        },
    },
}

M.CreateStackRefactorInput = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        EnableStackCreation = {
            type = "boolean",
        },
        ResourceMappings = {
            type = "list",
            member = M.ResourceMapping,
        },
        StackDefinitions = {
            type = "list",
            member = M.StackDefinition,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateStackRefactorOutput = {
    type = "structure",
    members = {
        StackRefactorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreatedButModifiedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ManagedExecution = {
    type = "structure",
    members = {
        Active = {
            type = "boolean",
        },
    },
}

M.PermissionModels = {
    SERVICE_MANAGED = "SERVICE_MANAGED",
    SELF_MANAGED = "SELF_MANAGED",
}

M.CreateStackSetInput = {
    type = "structure",
    members = {
        StackSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        TemplateBody = {
            type = "string",
        },
        TemplateURL = {
            type = "string",
        },
        StackId = {
            type = "string",
        },
        Parameters = {
            type = "list",
            member = M.Parameter,
        },
        Capabilities = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        AdministrationRoleARN = {
            type = "string",
        },
        ExecutionRoleName = {
            type = "string",
        },
        PermissionModel = {
            type = "string",
        },
        AutoDeployment = M.AutoDeployment,
        CallAs = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
        },
        ManagedExecution = M.ManagedExecution,
    },
}

M.CreateStackSetOutput = {
    type = "structure",
    members = {
        StackSetId = {
            type = "string",
        },
    },
}

M.NameAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeactivateOrganizationsAccessInput = {
    type = "structure",
}

M.DeactivateOrganizationsAccessOutput = {
    type = "structure",
}

M.DeactivateTypeInput = {
    type = "structure",
    members = {
        TypeName = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.DeactivateTypeOutput = {
    type = "structure",
}

M.DeleteChangeSetInput = {
    type = "structure",
    members = {
        ChangeSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StackName = {
            type = "string",
        },
    },
}

M.DeleteChangeSetOutput = {
    type = "structure",
}

M.InvalidChangeSetStatusException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteGeneratedTemplateInput = {
    type = "structure",
    members = {
        GeneratedTemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteGeneratedTemplateOutput = {
    type = "structure",
}

M.GeneratedTemplateNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeletionMode = {
    STANDARD = "STANDARD",
    FORCE_DELETE_STACK = "FORCE_DELETE_STACK",
}

M.DeleteStackInput = {
    type = "structure",
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetainResources = {
            type = "list",
            member = { type = "string" },
        },
        RoleARN = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
        },
        DeletionMode = {
            type = "string",
        },
    },
}

M.DeleteStackOutput = {
    type = "structure",
}

M.DeleteStackInstancesInput = {
    type = "structure",
    members = {
        StackSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Accounts = {
            type = "list",
            member = { type = "string" },
        },
        DeploymentTargets = M.DeploymentTargets,
        Regions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        OperationPreferences = M.StackSetOperationPreferences,
        RetainStacks = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        OperationId = {
            type = "string",
        },
        CallAs = {
            type = "string",
        },
    },
}

M.DeleteStackInstancesOutput = {
    type = "structure",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.DeleteStackSetInput = {
    type = "structure",
    members = {
        StackSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CallAs = {
            type = "string",
        },
    },
}

M.DeleteStackSetOutput = {
    type = "structure",
}

M.StackSetNotEmptyException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RegistryType = {
    RESOURCE = "RESOURCE",
    MODULE = "MODULE",
    HOOK = "HOOK",
}

M.DeregisterTypeInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        TypeName = {
            type = "string",
        },
        VersionId = {
            type = "string",
        },
    },
}

M.DeregisterTypeOutput = {
    type = "structure",
}

M.DescribeAccountLimitsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeAccountLimitsOutput = {
    type = "structure",
    members = {
        AccountLimits = {
            type = "list",
            member = M.AccountLimit,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeChangeSetInput = {
    type = "structure",
    members = {
        ChangeSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StackName = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        IncludePropertyValues = {
            type = "boolean",
        },
    },
}

M.StackDriftStatus = {
    DRIFTED = "DRIFTED",
    IN_SYNC = "IN_SYNC",
    UNKNOWN = "UNKNOWN",
    NOT_CHECKED = "NOT_CHECKED",
}

M.DescribeChangeSetOutput = {
    type = "structure",
    members = {
        ChangeSetName = {
            type = "string",
        },
        ChangeSetId = {
            type = "string",
        },
        StackId = {
            type = "string",
        },
        StackName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Parameters = {
            type = "list",
            member = M.Parameter,
        },
        CreationTime = {
            type = "timestamp",
        },
        ExecutionStatus = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        StackDriftStatus = {
            type = "string",
        },
        NotificationARNs = {
            type = "list",
            member = { type = "string" },
        },
        RollbackConfiguration = M.RollbackConfiguration,
        Capabilities = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        Changes = {
            type = "list",
            member = M.Change,
        },
        NextToken = {
            type = "string",
        },
        IncludeNestedStacks = {
            type = "boolean",
        },
        ParentChangeSetId = {
            type = "string",
        },
        RootChangeSetId = {
            type = "string",
        },
        OnStackFailure = {
            type = "string",
        },
        ImportExistingResources = {
            type = "boolean",
        },
        DeploymentMode = {
            type = "string",
        },
    },
}

M.DescribeChangeSetHooksInput = {
    type = "structure",
    members = {
        ChangeSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StackName = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        LogicalResourceId = {
            type = "string",
        },
    },
}

M.DescribeChangeSetHooksOutput = {
    type = "structure",
    members = {
        ChangeSetId = {
            type = "string",
        },
        ChangeSetName = {
            type = "string",
        },
        Hooks = {
            type = "list",
            member = M.ChangeSetHook,
        },
        Status = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        StackId = {
            type = "string",
        },
        StackName = {
            type = "string",
        },
    },
}

M.EventFilter = {
    type = "structure",
    members = {
        FailedEvents = {
            type = "boolean",
        },
    },
}

M.DescribeEventsInput = {
    type = "structure",
    members = {
        StackName = {
            type = "string",
        },
        ChangeSetName = {
            type = "string",
        },
        OperationId = {
            type = "string",
        },
        Filters = M.EventFilter,
        NextToken = {
            type = "string",
        },
    },
}

M.DetailedStatus = {
    CONFIGURATION_COMPLETE = "CONFIGURATION_COMPLETE",
    VALIDATION_FAILED = "VALIDATION_FAILED",
}

M.EventType = {
    STACK_EVENT = "STACK_EVENT",
    PROGRESS_EVENT = "PROGRESS_EVENT",
    VALIDATION_ERROR = "VALIDATION_ERROR",
    PROVISIONING_ERROR = "PROVISIONING_ERROR",
    HOOK_INVOCATION_ERROR = "HOOK_INVOCATION_ERROR",
}

M.HookStatus = {
    HOOK_IN_PROGRESS = "HOOK_IN_PROGRESS",
    HOOK_COMPLETE_SUCCEEDED = "HOOK_COMPLETE_SUCCEEDED",
    HOOK_COMPLETE_FAILED = "HOOK_COMPLETE_FAILED",
    HOOK_FAILED = "HOOK_FAILED",
}

M.OperationType = {
    CREATE_STACK = "CREATE_STACK",
    UPDATE_STACK = "UPDATE_STACK",
    DELETE_STACK = "DELETE_STACK",
    CONTINUE_ROLLBACK = "CONTINUE_ROLLBACK",
    ROLLBACK = "ROLLBACK",
    CREATE_CHANGESET = "CREATE_CHANGESET",
}

M.ResourceStatus = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    CREATE_COMPLETE = "CREATE_COMPLETE",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_FAILED = "DELETE_FAILED",
    DELETE_COMPLETE = "DELETE_COMPLETE",
    DELETE_SKIPPED = "DELETE_SKIPPED",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    UPDATE_FAILED = "UPDATE_FAILED",
    UPDATE_COMPLETE = "UPDATE_COMPLETE",
    IMPORT_FAILED = "IMPORT_FAILED",
    IMPORT_COMPLETE = "IMPORT_COMPLETE",
    IMPORT_IN_PROGRESS = "IMPORT_IN_PROGRESS",
    IMPORT_ROLLBACK_IN_PROGRESS = "IMPORT_ROLLBACK_IN_PROGRESS",
    IMPORT_ROLLBACK_FAILED = "IMPORT_ROLLBACK_FAILED",
    IMPORT_ROLLBACK_COMPLETE = "IMPORT_ROLLBACK_COMPLETE",
    EXPORT_FAILED = "EXPORT_FAILED",
    EXPORT_COMPLETE = "EXPORT_COMPLETE",
    EXPORT_IN_PROGRESS = "EXPORT_IN_PROGRESS",
    EXPORT_ROLLBACK_IN_PROGRESS = "EXPORT_ROLLBACK_IN_PROGRESS",
    EXPORT_ROLLBACK_FAILED = "EXPORT_ROLLBACK_FAILED",
    EXPORT_ROLLBACK_COMPLETE = "EXPORT_ROLLBACK_COMPLETE",
    UPDATE_ROLLBACK_IN_PROGRESS = "UPDATE_ROLLBACK_IN_PROGRESS",
    UPDATE_ROLLBACK_COMPLETE = "UPDATE_ROLLBACK_COMPLETE",
    UPDATE_ROLLBACK_FAILED = "UPDATE_ROLLBACK_FAILED",
    ROLLBACK_IN_PROGRESS = "ROLLBACK_IN_PROGRESS",
    ROLLBACK_COMPLETE = "ROLLBACK_COMPLETE",
    ROLLBACK_FAILED = "ROLLBACK_FAILED",
}

M.ValidationStatus = {
    FAILED = "FAILED",
    SKIPPED = "SKIPPED",
}

M.OperationEvent = {
    type = "structure",
    members = {
        EventId = {
            type = "string",
        },
        StackId = {
            type = "string",
        },
        OperationId = {
            type = "string",
        },
        OperationType = {
            type = "string",
        },
        OperationStatus = {
            type = "string",
        },
        EventType = {
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
        Timestamp = {
            type = "timestamp",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        ResourceStatus = {
            type = "string",
        },
        ResourceStatusReason = {
            type = "string",
        },
        ResourceProperties = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
        },
        HookType = {
            type = "string",
        },
        HookStatus = {
            type = "string",
        },
        HookStatusReason = {
            type = "string",
        },
        HookInvocationPoint = {
            type = "string",
        },
        HookFailureMode = {
            type = "string",
        },
        DetailedStatus = {
            type = "string",
        },
        ValidationFailureMode = {
            type = "string",
        },
        ValidationName = {
            type = "string",
        },
        ValidationStatus = {
            type = "string",
        },
        ValidationStatusReason = {
            type = "string",
        },
        ValidationPath = {
            type = "string",
        },
    },
}

M.DescribeEventsOutput = {
    type = "structure",
    members = {
        OperationEvents = {
            type = "list",
            member = M.OperationEvent,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeGeneratedTemplateInput = {
    type = "structure",
    members = {
        GeneratedTemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TemplateProgress = {
    type = "structure",
    members = {
        ResourcesSucceeded = {
            type = "integer",
        },
        ResourcesFailed = {
            type = "integer",
        },
        ResourcesProcessing = {
            type = "integer",
        },
        ResourcesPending = {
            type = "integer",
        },
    },
}

M.GeneratedTemplateResourceStatus = {
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    COMPLETE = "COMPLETE",
}

M.WarningProperty = {
    type = "structure",
    members = {
        PropertyPath = {
            type = "string",
        },
        Required = {
            type = "boolean",
        },
        Description = {
            type = "string",
        },
    },
}

M.WarningType = {
    MUTUALLY_EXCLUSIVE_PROPERTIES = "MUTUALLY_EXCLUSIVE_PROPERTIES",
    UNSUPPORTED_PROPERTIES = "UNSUPPORTED_PROPERTIES",
    MUTUALLY_EXCLUSIVE_TYPES = "MUTUALLY_EXCLUSIVE_TYPES",
    EXCLUDED_PROPERTIES = "EXCLUDED_PROPERTIES",
    EXCLUDED_RESOURCES = "EXCLUDED_RESOURCES",
}

M.WarningDetail = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Properties = {
            type = "list",
            member = M.WarningProperty,
        },
    },
}

M.ResourceDetail = {
    type = "structure",
    members = {
        ResourceType = {
            type = "string",
        },
        LogicalResourceId = {
            type = "string",
        },
        ResourceIdentifier = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ResourceStatus = {
            type = "string",
        },
        ResourceStatusReason = {
            type = "string",
        },
        Warnings = {
            type = "list",
            member = M.WarningDetail,
        },
    },
}

M.GeneratedTemplateStatus = {
    CREATE_PENDING = "CREATE_PENDING",
    UPDATE_PENDING = "UPDATE_PENDING",
    DELETE_PENDING = "DELETE_PENDING",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    FAILED = "FAILED",
    COMPLETE = "COMPLETE",
}

M.DescribeGeneratedTemplateOutput = {
    type = "structure",
    members = {
        GeneratedTemplateId = {
            type = "string",
        },
        GeneratedTemplateName = {
            type = "string",
        },
        Resources = {
            type = "list",
            member = M.ResourceDetail,
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        Progress = M.TemplateProgress,
        StackId = {
            type = "string",
        },
        TemplateConfiguration = M.TemplateConfiguration,
        TotalWarnings = {
            type = "integer",
        },
    },
}

M.DescribeOrganizationsAccessInput = {
    type = "structure",
    members = {
        CallAs = {
            type = "string",
        },
    },
}

M.OrganizationStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    DISABLED_PERMANENTLY = "DISABLED_PERMANENTLY",
}

M.DescribeOrganizationsAccessOutput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.DescribePublisherInput = {
    type = "structure",
    members = {
        PublisherId = {
            type = "string",
        },
    },
}

M.IdentityProvider = {
    AWS_Marketplace = "AWS_Marketplace",
    GitHub = "GitHub",
    Bitbucket = "Bitbucket",
}

M.PublisherStatus = {
    VERIFIED = "VERIFIED",
    UNVERIFIED = "UNVERIFIED",
}

M.DescribePublisherOutput = {
    type = "structure",
    members = {
        PublisherId = {
            type = "string",
        },
        PublisherStatus = {
            type = "string",
        },
        IdentityProvider = {
            type = "string",
        },
        PublisherProfile = {
            type = "string",
        },
    },
}

M.DescribeResourceScanInput = {
    type = "structure",
    members = {
        ResourceScanId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ScanFilter = {
    type = "structure",
    members = {
        Types = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ResourceScanStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    COMPLETE = "COMPLETE",
    EXPIRED = "EXPIRED",
}

M.DescribeResourceScanOutput = {
    type = "structure",
    members = {
        ResourceScanId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        PercentageCompleted = {
            type = "double",
        },
        ResourceTypes = {
            type = "list",
            member = { type = "string" },
        },
        ResourcesScanned = {
            type = "integer",
        },
        ResourcesRead = {
            type = "integer",
        },
        ScanFilters = {
            type = "list",
            member = M.ScanFilter,
        },
    },
}

M.ResourceScanNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeStackDriftDetectionStatusInput = {
    type = "structure",
    members = {
        StackDriftDetectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StackDriftDetectionStatus = {
    DETECTION_IN_PROGRESS = "DETECTION_IN_PROGRESS",
    DETECTION_FAILED = "DETECTION_FAILED",
    DETECTION_COMPLETE = "DETECTION_COMPLETE",
}

M.DescribeStackDriftDetectionStatusOutput = {
    type = "structure",
    members = {
        StackId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StackDriftDetectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StackDriftStatus = {
            type = "string",
        },
        DetectionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DetectionStatusReason = {
            type = "string",
        },
        DriftedStackResourceCount = {
            type = "integer",
        },
        Timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeStackEventsInput = {
    type = "structure",
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StackEvent = {
    type = "structure",
    members = {
        StackId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OperationId = {
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
        Timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ResourceStatus = {
            type = "string",
        },
        ResourceStatusReason = {
            type = "string",
        },
        ResourceProperties = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
        },
        HookType = {
            type = "string",
        },
        HookStatus = {
            type = "string",
        },
        HookStatusReason = {
            type = "string",
        },
        HookInvocationPoint = {
            type = "string",
        },
        HookInvocationId = {
            type = "string",
        },
        HookFailureMode = {
            type = "string",
        },
        DetailedStatus = {
            type = "string",
        },
    },
}

M.DescribeStackEventsOutput = {
    type = "structure",
    members = {
        StackEvents = {
            type = "list",
            member = M.StackEvent,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeStackInstanceInput = {
    type = "structure",
    members = {
        StackSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StackInstanceAccount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StackInstanceRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CallAs = {
            type = "string",
        },
    },
}

M.StackInstanceDetailedStatus = {
    PENDING = "PENDING",
    RUNNING = "RUNNING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    CANCELLED = "CANCELLED",
    INOPERABLE = "INOPERABLE",
    SKIPPED_SUSPENDED_ACCOUNT = "SKIPPED_SUSPENDED_ACCOUNT",
    FAILED_IMPORT = "FAILED_IMPORT",
}

M.StackInstanceComprehensiveStatus = {
    type = "structure",
    members = {
        DetailedStatus = {
            type = "string",
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
        StackSetId = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        Account = {
            type = "string",
        },
        StackId = {
            type = "string",
        },
        ParameterOverrides = {
            type = "list",
            member = M.Parameter,
        },
        Status = {
            type = "string",
        },
        StackInstanceStatus = M.StackInstanceComprehensiveStatus,
        StatusReason = {
            type = "string",
        },
        OrganizationalUnitId = {
            type = "string",
        },
        DriftStatus = {
            type = "string",
        },
        LastDriftCheckTimestamp = {
            type = "timestamp",
        },
        LastOperationId = {
            type = "string",
        },
    },
}

M.DescribeStackInstanceOutput = {
    type = "structure",
    members = {
        StackInstance = M.StackInstance,
    },
}

M.StackInstanceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeStackRefactorInput = {
    type = "structure",
    members = {
        StackRefactorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StackRefactorExecutionStatus = {
    UNAVAILABLE = "UNAVAILABLE",
    AVAILABLE = "AVAILABLE",
    OBSOLETE = "OBSOLETE",
    EXECUTE_IN_PROGRESS = "EXECUTE_IN_PROGRESS",
    EXECUTE_COMPLETE = "EXECUTE_COMPLETE",
    EXECUTE_FAILED = "EXECUTE_FAILED",
    ROLLBACK_IN_PROGRESS = "ROLLBACK_IN_PROGRESS",
    ROLLBACK_COMPLETE = "ROLLBACK_COMPLETE",
    ROLLBACK_FAILED = "ROLLBACK_FAILED",
}

M.StackRefactorStatus = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_COMPLETE = "CREATE_COMPLETE",
    CREATE_FAILED = "CREATE_FAILED",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_COMPLETE = "DELETE_COMPLETE",
    DELETE_FAILED = "DELETE_FAILED",
}

M.DescribeStackRefactorOutput = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        StackRefactorId = {
            type = "string",
        },
        StackIds = {
            type = "list",
            member = { type = "string" },
        },
        ExecutionStatus = {
            type = "string",
        },
        ExecutionStatusReason = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
    },
}

M.StackRefactorNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeStackResourceInput = {
    type = "structure",
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogicalResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StackResourceDriftInformation = {
    type = "structure",
    members = {
        StackResourceDriftStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastCheckTimestamp = {
            type = "timestamp",
        },
    },
}

M.StackResourceDetail = {
    type = "structure",
    members = {
        StackName = {
            type = "string",
        },
        StackId = {
            type = "string",
        },
        LogicalResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PhysicalResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastUpdatedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ResourceStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceStatusReason = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Metadata = {
            type = "string",
        },
        DriftInformation = M.StackResourceDriftInformation,
        ModuleInfo = M.ModuleInfo,
    },
}

M.DescribeStackResourceOutput = {
    type = "structure",
    members = {
        StackResourceDetail = M.StackResourceDetail,
    },
}

M.DescribeStackResourceDriftsInput = {
    type = "structure",
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StackResourceDriftStatusFilters = {
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

M.PhysicalResourceIdContextKeyValuePair = {
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

M.DifferenceType = {
    ADD = "ADD",
    REMOVE = "REMOVE",
    NOT_EQUAL = "NOT_EQUAL",
}

M.PropertyDifference = {
    type = "structure",
    members = {
        PropertyPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExpectedValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActualValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DifferenceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StackResourceDrift = {
    type = "structure",
    members = {
        StackId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogicalResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PhysicalResourceId = {
            type = "string",
        },
        PhysicalResourceIdContext = {
            type = "list",
            member = M.PhysicalResourceIdContextKeyValuePair,
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExpectedProperties = {
            type = "string",
        },
        ActualProperties = {
            type = "string",
        },
        PropertyDifferences = {
            type = "list",
            member = M.PropertyDifference,
        },
        StackResourceDriftStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ModuleInfo = M.ModuleInfo,
        DriftStatusReason = {
            type = "string",
        },
    },
}

M.DescribeStackResourceDriftsOutput = {
    type = "structure",
    members = {
        StackResourceDrifts = {
            type = "list",
            member = M.StackResourceDrift,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeStackResourcesInput = {
    type = "structure",
    members = {
        StackName = {
            type = "string",
        },
        LogicalResourceId = {
            type = "string",
        },
        PhysicalResourceId = {
            type = "string",
        },
    },
}

M.StackResource = {
    type = "structure",
    members = {
        StackName = {
            type = "string",
        },
        StackId = {
            type = "string",
        },
        LogicalResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PhysicalResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ResourceStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceStatusReason = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DriftInformation = M.StackResourceDriftInformation,
        ModuleInfo = M.ModuleInfo,
    },
}

M.DescribeStackResourcesOutput = {
    type = "structure",
    members = {
        StackResources = {
            type = "list",
            member = M.StackResource,
        },
    },
}

M.DescribeStacksInput = {
    type = "structure",
    members = {
        StackName = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StackDriftInformation = {
    type = "structure",
    members = {
        StackDriftStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastCheckTimestamp = {
            type = "timestamp",
        },
    },
}

M.OperationEntry = {
    type = "structure",
    members = {
        OperationType = {
            type = "string",
        },
        OperationId = {
            type = "string",
        },
    },
}

M.Output = {
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
        ExportName = {
            type = "string",
        },
    },
}

M.StackStatus = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    CREATE_COMPLETE = "CREATE_COMPLETE",
    ROLLBACK_IN_PROGRESS = "ROLLBACK_IN_PROGRESS",
    ROLLBACK_FAILED = "ROLLBACK_FAILED",
    ROLLBACK_COMPLETE = "ROLLBACK_COMPLETE",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_FAILED = "DELETE_FAILED",
    DELETE_COMPLETE = "DELETE_COMPLETE",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    UPDATE_COMPLETE_CLEANUP_IN_PROGRESS = "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS",
    UPDATE_COMPLETE = "UPDATE_COMPLETE",
    UPDATE_FAILED = "UPDATE_FAILED",
    UPDATE_ROLLBACK_IN_PROGRESS = "UPDATE_ROLLBACK_IN_PROGRESS",
    UPDATE_ROLLBACK_FAILED = "UPDATE_ROLLBACK_FAILED",
    UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS = "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS",
    UPDATE_ROLLBACK_COMPLETE = "UPDATE_ROLLBACK_COMPLETE",
    REVIEW_IN_PROGRESS = "REVIEW_IN_PROGRESS",
    IMPORT_IN_PROGRESS = "IMPORT_IN_PROGRESS",
    IMPORT_COMPLETE = "IMPORT_COMPLETE",
    IMPORT_ROLLBACK_IN_PROGRESS = "IMPORT_ROLLBACK_IN_PROGRESS",
    IMPORT_ROLLBACK_FAILED = "IMPORT_ROLLBACK_FAILED",
    IMPORT_ROLLBACK_COMPLETE = "IMPORT_ROLLBACK_COMPLETE",
}

M.Stack = {
    type = "structure",
    members = {
        StackId = {
            type = "string",
        },
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeSetId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Parameters = {
            type = "list",
            member = M.Parameter,
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        DeletionTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        RollbackConfiguration = M.RollbackConfiguration,
        StackStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StackStatusReason = {
            type = "string",
        },
        DisableRollback = {
            type = "boolean",
        },
        NotificationARNs = {
            type = "list",
            member = { type = "string" },
        },
        TimeoutInMinutes = {
            type = "integer",
        },
        Capabilities = {
            type = "list",
            member = { type = "string" },
        },
        Outputs = {
            type = "list",
            member = M.Output,
        },
        RoleARN = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        EnableTerminationProtection = {
            type = "boolean",
        },
        ParentId = {
            type = "string",
        },
        RootId = {
            type = "string",
        },
        DriftInformation = M.StackDriftInformation,
        RetainExceptOnCreate = {
            type = "boolean",
        },
        DeletionMode = {
            type = "string",
        },
        DetailedStatus = {
            type = "string",
        },
        LastOperations = {
            type = "list",
            member = M.OperationEntry,
        },
    },
}

M.DescribeStacksOutput = {
    type = "structure",
    members = {
        Stacks = {
            type = "list",
            member = M.Stack,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeStackSetInput = {
    type = "structure",
    members = {
        StackSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CallAs = {
            type = "string",
        },
    },
}

M.StackSetDriftDetectionStatus = {
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    PARTIAL_SUCCESS = "PARTIAL_SUCCESS",
    IN_PROGRESS = "IN_PROGRESS",
    STOPPED = "STOPPED",
}

M.StackSetDriftStatus = {
    DRIFTED = "DRIFTED",
    IN_SYNC = "IN_SYNC",
    NOT_CHECKED = "NOT_CHECKED",
}

M.StackSetDriftDetectionDetails = {
    type = "structure",
    members = {
        DriftStatus = {
            type = "string",
        },
        DriftDetectionStatus = {
            type = "string",
        },
        LastDriftCheckTimestamp = {
            type = "timestamp",
        },
        TotalStackInstancesCount = {
            type = "integer",
        },
        DriftedStackInstancesCount = {
            type = "integer",
        },
        InSyncStackInstancesCount = {
            type = "integer",
        },
        InProgressStackInstancesCount = {
            type = "integer",
        },
        FailedStackInstancesCount = {
            type = "integer",
        },
    },
}

M.StackSetStatus = {
    ACTIVE = "ACTIVE",
    DELETED = "DELETED",
}

M.StackSet = {
    type = "structure",
    members = {
        StackSetName = {
            type = "string",
        },
        StackSetId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        TemplateBody = {
            type = "string",
        },
        Parameters = {
            type = "list",
            member = M.Parameter,
        },
        Capabilities = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        StackSetARN = {
            type = "string",
        },
        AdministrationRoleARN = {
            type = "string",
        },
        ExecutionRoleName = {
            type = "string",
        },
        StackSetDriftDetectionDetails = M.StackSetDriftDetectionDetails,
        AutoDeployment = M.AutoDeployment,
        PermissionModel = {
            type = "string",
        },
        OrganizationalUnitIds = {
            type = "list",
            member = { type = "string" },
        },
        ManagedExecution = M.ManagedExecution,
        Regions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeStackSetOutput = {
    type = "structure",
    members = {
        StackSet = M.StackSet,
    },
}

M.DescribeStackSetOperationInput = {
    type = "structure",
    members = {
        StackSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OperationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CallAs = {
            type = "string",
        },
    },
}

M.StackSetOperationAction = {
    CREATE = "CREATE",
    UPDATE = "UPDATE",
    DELETE = "DELETE",
    DETECT_DRIFT = "DETECT_DRIFT",
}

M.StackSetOperationStatus = {
    RUNNING = "RUNNING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    QUEUED = "QUEUED",
}

M.StackSetOperationStatusDetails = {
    type = "structure",
    members = {
        FailedStackInstancesCount = {
            type = "integer",
        },
    },
}

M.StackSetOperation = {
    type = "structure",
    members = {
        OperationId = {
            type = "string",
        },
        StackSetId = {
            type = "string",
        },
        Action = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        OperationPreferences = M.StackSetOperationPreferences,
        RetainStacks = {
            type = "boolean",
        },
        AdministrationRoleARN = {
            type = "string",
        },
        ExecutionRoleName = {
            type = "string",
        },
        CreationTimestamp = {
            type = "timestamp",
        },
        EndTimestamp = {
            type = "timestamp",
        },
        DeploymentTargets = M.DeploymentTargets,
        StackSetDriftDetectionDetails = M.StackSetDriftDetectionDetails,
        StatusReason = {
            type = "string",
        },
        StatusDetails = M.StackSetOperationStatusDetails,
    },
}

M.DescribeStackSetOperationOutput = {
    type = "structure",
    members = {
        StackSetOperation = M.StackSetOperation,
    },
}

M.DescribeTypeInput = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        TypeName = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        VersionId = {
            type = "string",
        },
        PublisherId = {
            type = "string",
        },
        PublicVersionNumber = {
            type = "string",
        },
    },
}

M.DeprecatedStatus = {
    LIVE = "LIVE",
    DEPRECATED = "DEPRECATED",
}

M.ProvisioningType = {
    NON_PROVISIONABLE = "NON_PROVISIONABLE",
    IMMUTABLE = "IMMUTABLE",
    FULLY_MUTABLE = "FULLY_MUTABLE",
}

M.RequiredActivatedType = {
    type = "structure",
    members = {
        TypeNameAlias = {
            type = "string",
        },
        OriginalTypeName = {
            type = "string",
        },
        PublisherId = {
            type = "string",
        },
        SupportedMajorVersions = {
            type = "list",
            member = { type = "integer" },
        },
    },
}

M.TypeTestsStatus = {
    PASSED = "PASSED",
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
    NOT_TESTED = "NOT_TESTED",
}

M.Visibility = {
    PUBLIC = "PUBLIC",
    PRIVATE = "PRIVATE",
}

M.DescribeTypeOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        TypeName = {
            type = "string",
        },
        DefaultVersionId = {
            type = "string",
        },
        IsDefaultVersion = {
            type = "boolean",
        },
        TypeTestsStatus = {
            type = "string",
        },
        TypeTestsStatusDescription = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Schema = {
            type = "string",
        },
        ProvisioningType = {
            type = "string",
        },
        DeprecatedStatus = {
            type = "string",
        },
        LoggingConfig = M.LoggingConfig,
        RequiredActivatedTypes = {
            type = "list",
            member = M.RequiredActivatedType,
        },
        ExecutionRoleArn = {
            type = "string",
        },
        Visibility = {
            type = "string",
        },
        SourceUrl = {
            type = "string",
        },
        DocumentationUrl = {
            type = "string",
        },
        LastUpdated = {
            type = "timestamp",
        },
        TimeCreated = {
            type = "timestamp",
        },
        ConfigurationSchema = {
            type = "string",
        },
        PublisherId = {
            type = "string",
        },
        OriginalTypeName = {
            type = "string",
        },
        OriginalTypeArn = {
            type = "string",
        },
        PublicVersionNumber = {
            type = "string",
        },
        LatestPublicVersion = {
            type = "string",
        },
        IsActivated = {
            type = "boolean",
        },
        AutoUpdate = {
            type = "boolean",
        },
    },
}

M.DescribeTypeRegistrationInput = {
    type = "structure",
    members = {
        RegistrationToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegistrationStatus = {
    COMPLETE = "COMPLETE",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
}

M.DescribeTypeRegistrationOutput = {
    type = "structure",
    members = {
        ProgressStatus = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        TypeArn = {
            type = "string",
        },
        TypeVersionArn = {
            type = "string",
        },
    },
}

M.DetectStackDriftInput = {
    type = "structure",
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogicalResourceIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DetectStackDriftOutput = {
    type = "structure",
    members = {
        StackDriftDetectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DetectStackResourceDriftInput = {
    type = "structure",
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogicalResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DetectStackResourceDriftOutput = {
    type = "structure",
    members = {
        StackResourceDrift = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StackResourceDrift }),
    },
}

M.DetectStackSetDriftInput = {
    type = "structure",
    members = {
        StackSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OperationPreferences = M.StackSetOperationPreferences,
        OperationId = {
            type = "string",
        },
        CallAs = {
            type = "string",
        },
    },
}

M.DetectStackSetDriftOutput = {
    type = "structure",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.EstimateTemplateCostInput = {
    type = "structure",
    members = {
        TemplateBody = {
            type = "string",
        },
        TemplateURL = {
            type = "string",
        },
        Parameters = {
            type = "list",
            member = M.Parameter,
        },
    },
}

M.EstimateTemplateCostOutput = {
    type = "structure",
    members = {
        Url = {
            type = "string",
        },
    },
}

M.ExecuteChangeSetInput = {
    type = "structure",
    members = {
        ChangeSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StackName = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
        },
        DisableRollback = {
            type = "boolean",
        },
        RetainExceptOnCreate = {
            type = "boolean",
        },
    },
}

M.ExecuteChangeSetOutput = {
    type = "structure",
}

M.ExecuteStackRefactorInput = {
    type = "structure",
    members = {
        StackRefactorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExecuteStackRefactorOutput = {
    type = "structure",
}

M.TemplateFormat = {
    JSON = "JSON",
    YAML = "YAML",
}

M.GetGeneratedTemplateInput = {
    type = "structure",
    members = {
        Format = {
            type = "string",
        },
        GeneratedTemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetGeneratedTemplateOutput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        TemplateBody = {
            type = "string",
        },
    },
}

M.GetHookResultInput = {
    type = "structure",
    members = {
        HookResultId = {
            type = "string",
        },
    },
}

M.HookTargetAction = {
    CREATE = "CREATE",
    UPDATE = "UPDATE",
    DELETE = "DELETE",
    IMPORT = "IMPORT",
}

M.HookTarget = {
    type = "structure",
    members = {
        TargetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetTypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetHookResultOutput = {
    type = "structure",
    members = {
        HookResultId = {
            type = "string",
        },
        InvocationPoint = {
            type = "string",
        },
        FailureMode = {
            type = "string",
        },
        TypeName = {
            type = "string",
        },
        OriginalTypeName = {
            type = "string",
        },
        TypeVersionId = {
            type = "string",
        },
        TypeConfigurationVersionId = {
            type = "string",
        },
        TypeArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        HookStatusReason = {
            type = "string",
        },
        InvokedAt = {
            type = "timestamp",
        },
        Target = M.HookTarget,
        Annotations = {
            type = "list",
            member = M.Annotation,
        },
    },
}

M.HookResultNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetStackPolicyInput = {
    type = "structure",
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetStackPolicyOutput = {
    type = "structure",
    members = {
        StackPolicyBody = {
            type = "string",
        },
    },
}

M.TemplateStage = {
    Original = "Original",
    Processed = "Processed",
}

M.GetTemplateInput = {
    type = "structure",
    members = {
        StackName = {
            type = "string",
        },
        ChangeSetName = {
            type = "string",
        },
        TemplateStage = {
            type = "string",
        },
    },
}

M.GetTemplateOutput = {
    type = "structure",
    members = {
        TemplateBody = {
            type = "string",
        },
        StagesAvailable = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.TemplateSummaryConfig = {
    type = "structure",
    members = {
        TreatUnrecognizedResourceTypesAsWarnings = {
            type = "boolean",
        },
    },
}

M.GetTemplateSummaryInput = {
    type = "structure",
    members = {
        TemplateBody = {
            type = "string",
        },
        TemplateURL = {
            type = "string",
        },
        StackName = {
            type = "string",
        },
        StackSetName = {
            type = "string",
        },
        CallAs = {
            type = "string",
        },
        TemplateSummaryConfig = M.TemplateSummaryConfig,
    },
}

M.ParameterConstraints = {
    type = "structure",
    members = {
        AllowedValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ParameterDeclaration = {
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
        NoEcho = {
            type = "boolean",
        },
        Description = {
            type = "string",
        },
        ParameterConstraints = M.ParameterConstraints,
    },
}

M.ResourceIdentifierSummary = {
    type = "structure",
    members = {
        ResourceType = {
            type = "string",
        },
        LogicalResourceIds = {
            type = "list",
            member = { type = "string" },
        },
        ResourceIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.Warnings = {
    type = "structure",
    members = {
        UnrecognizedResourceTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetTemplateSummaryOutput = {
    type = "structure",
    members = {
        Parameters = {
            type = "list",
            member = M.ParameterDeclaration,
        },
        Description = {
            type = "string",
        },
        Capabilities = {
            type = "list",
            member = { type = "string" },
        },
        CapabilitiesReason = {
            type = "string",
        },
        ResourceTypes = {
            type = "list",
            member = { type = "string" },
        },
        Version = {
            type = "string",
        },
        Metadata = {
            type = "string",
        },
        DeclaredTransforms = {
            type = "list",
            member = { type = "string" },
        },
        ResourceIdentifierSummaries = {
            type = "list",
            member = M.ResourceIdentifierSummary,
        },
        Warnings = M.Warnings,
    },
}

M.ImportStacksToStackSetInput = {
    type = "structure",
    members = {
        StackSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StackIds = {
            type = "list",
            member = { type = "string" },
        },
        StackIdsUrl = {
            type = "string",
        },
        OrganizationalUnitIds = {
            type = "list",
            member = { type = "string" },
        },
        OperationPreferences = M.StackSetOperationPreferences,
        OperationId = {
            type = "string",
        },
        CallAs = {
            type = "string",
        },
    },
}

M.ImportStacksToStackSetOutput = {
    type = "structure",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.StackNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListChangeSetsInput = {
    type = "structure",
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListChangeSetsOutput = {
    type = "structure",
    members = {
        Summaries = {
            type = "list",
            member = M.ChangeSetSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListExportsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.Export = {
    type = "structure",
    members = {
        ExportingStackId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.ListExportsOutput = {
    type = "structure",
    members = {
        Exports = {
            type = "list",
            member = M.Export,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListGeneratedTemplatesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.TemplateSummary = {
    type = "structure",
    members = {
        GeneratedTemplateId = {
            type = "string",
        },
        GeneratedTemplateName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        NumberOfResources = {
            type = "integer",
        },
    },
}

M.ListGeneratedTemplatesOutput = {
    type = "structure",
    members = {
        Summaries = {
            type = "list",
            member = M.TemplateSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListHookResultsTargetType = {
    CHANGE_SET = "CHANGE_SET",
    STACK = "STACK",
    RESOURCE = "RESOURCE",
    CLOUD_CONTROL = "CLOUD_CONTROL",
}

M.ListHookResultsInput = {
    type = "structure",
    members = {
        TargetType = {
            type = "string",
        },
        TargetId = {
            type = "string",
        },
        TypeArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.HookResultSummary = {
    type = "structure",
    members = {
        HookResultId = {
            type = "string",
        },
        InvocationPoint = {
            type = "string",
        },
        FailureMode = {
            type = "string",
        },
        TypeName = {
            type = "string",
        },
        TypeVersionId = {
            type = "string",
        },
        TypeConfigurationVersionId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        HookStatusReason = {
            type = "string",
        },
        InvokedAt = {
            type = "timestamp",
        },
        TargetType = {
            type = "string",
        },
        TargetId = {
            type = "string",
        },
        TypeArn = {
            type = "string",
        },
        HookExecutionTarget = {
            type = "string",
        },
    },
}

M.ListHookResultsOutput = {
    type = "structure",
    members = {
        TargetType = {
            type = "string",
        },
        TargetId = {
            type = "string",
        },
        HookResults = {
            type = "list",
            member = M.HookResultSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListImportsInput = {
    type = "structure",
    members = {
        ExportName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListImportsOutput = {
    type = "structure",
    members = {
        Imports = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ScannedResourceIdentifier = {
    type = "structure",
    members = {
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceIdentifier = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ListResourceScanRelatedResourcesInput = {
    type = "structure",
    members = {
        ResourceScanId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Resources = {
            type = "list",
            member = M.ScannedResourceIdentifier,
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

M.ScannedResource = {
    type = "structure",
    members = {
        ResourceType = {
            type = "string",
        },
        ResourceIdentifier = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ManagedByStack = {
            type = "boolean",
        },
    },
}

M.ListResourceScanRelatedResourcesOutput = {
    type = "structure",
    members = {
        RelatedResources = {
            type = "list",
            member = M.ScannedResource,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ResourceScanInProgressException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListResourceScanResourcesInput = {
    type = "structure",
    members = {
        ResourceScanId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceIdentifier = {
            type = "string",
        },
        ResourceTypePrefix = {
            type = "string",
        },
        TagKey = {
            type = "string",
        },
        TagValue = {
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

M.ListResourceScanResourcesOutput = {
    type = "structure",
    members = {
        Resources = {
            type = "list",
            member = M.ScannedResource,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ScanType = {
    FULL = "FULL",
    PARTIAL = "PARTIAL",
}

M.ListResourceScansInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        ScanTypeFilter = {
            type = "string",
        },
    },
}

M.ResourceScanSummary = {
    type = "structure",
    members = {
        ResourceScanId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        PercentageCompleted = {
            type = "double",
        },
        ScanType = {
            type = "string",
        },
    },
}

M.ListResourceScansOutput = {
    type = "structure",
    members = {
        ResourceScanSummaries = {
            type = "list",
            member = M.ResourceScanSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListStackInstanceResourceDriftsInput = {
    type = "structure",
    members = {
        StackSetName = {
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
        StackInstanceResourceDriftStatuses = {
            type = "list",
            member = { type = "string" },
        },
        StackInstanceAccount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StackInstanceRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OperationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CallAs = {
            type = "string",
        },
    },
}

M.StackInstanceResourceDriftsSummary = {
    type = "structure",
    members = {
        StackId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogicalResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PhysicalResourceId = {
            type = "string",
        },
        PhysicalResourceIdContext = {
            type = "list",
            member = M.PhysicalResourceIdContextKeyValuePair,
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PropertyDifferences = {
            type = "list",
            member = M.PropertyDifference,
        },
        StackResourceDriftStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListStackInstanceResourceDriftsOutput = {
    type = "structure",
    members = {
        Summaries = {
            type = "list",
            member = M.StackInstanceResourceDriftsSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StackInstanceFilterName = {
    DETAILED_STATUS = "DETAILED_STATUS",
    LAST_OPERATION_ID = "LAST_OPERATION_ID",
    DRIFT_STATUS = "DRIFT_STATUS",
}

M.StackInstanceFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Values = {
            type = "string",
        },
    },
}

M.ListStackInstancesInput = {
    type = "structure",
    members = {
        StackSetName = {
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
        Filters = {
            type = "list",
            member = M.StackInstanceFilter,
        },
        StackInstanceAccount = {
            type = "string",
        },
        StackInstanceRegion = {
            type = "string",
        },
        CallAs = {
            type = "string",
        },
    },
}

M.StackInstanceSummary = {
    type = "structure",
    members = {
        StackSetId = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        Account = {
            type = "string",
        },
        StackId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        StackInstanceStatus = M.StackInstanceComprehensiveStatus,
        OrganizationalUnitId = {
            type = "string",
        },
        DriftStatus = {
            type = "string",
        },
        LastDriftCheckTimestamp = {
            type = "timestamp",
        },
        LastOperationId = {
            type = "string",
        },
    },
}

M.ListStackInstancesOutput = {
    type = "structure",
    members = {
        Summaries = {
            type = "list",
            member = M.StackInstanceSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListStackRefactorActionsInput = {
    type = "structure",
    members = {
        StackRefactorId = {
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

M.StackRefactorActionType = {
    MOVE = "MOVE",
    CREATE = "CREATE",
}

M.StackRefactorDetection = {
    AUTO = "AUTO",
    MANUAL = "MANUAL",
}

M.StackRefactorActionEntity = {
    RESOURCE = "RESOURCE",
    STACK = "STACK",
}

M.StackRefactorAction = {
    type = "structure",
    members = {
        Action = {
            type = "string",
        },
        Entity = {
            type = "string",
        },
        PhysicalResourceId = {
            type = "string",
        },
        ResourceIdentifier = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Detection = {
            type = "string",
        },
        DetectionReason = {
            type = "string",
        },
        TagResources = {
            type = "list",
            member = M.Tag,
        },
        UntagResources = {
            type = "list",
            member = { type = "string" },
        },
        ResourceMapping = M.ResourceMapping,
    },
}

M.ListStackRefactorActionsOutput = {
    type = "structure",
    members = {
        StackRefactorActions = {
            type = "list",
            member = M.StackRefactorAction,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListStackRefactorsInput = {
    type = "structure",
    members = {
        ExecutionStatusFilter = {
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

M.StackRefactorSummary = {
    type = "structure",
    members = {
        StackRefactorId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ExecutionStatus = {
            type = "string",
        },
        ExecutionStatusReason = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
    },
}

M.ListStackRefactorsOutput = {
    type = "structure",
    members = {
        StackRefactorSummaries = {
            type = "list",
            member = M.StackRefactorSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListStackResourcesInput = {
    type = "structure",
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StackResourceDriftInformationSummary = {
    type = "structure",
    members = {
        StackResourceDriftStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastCheckTimestamp = {
            type = "timestamp",
        },
    },
}

M.StackResourceSummary = {
    type = "structure",
    members = {
        LogicalResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PhysicalResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastUpdatedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ResourceStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceStatusReason = {
            type = "string",
        },
        DriftInformation = M.StackResourceDriftInformationSummary,
        ModuleInfo = M.ModuleInfo,
    },
}

M.ListStackResourcesOutput = {
    type = "structure",
    members = {
        StackResourceSummaries = {
            type = "list",
            member = M.StackResourceSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListStacksInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        StackStatusFilter = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.StackDriftInformationSummary = {
    type = "structure",
    members = {
        StackDriftStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastCheckTimestamp = {
            type = "timestamp",
        },
    },
}

M.StackSummary = {
    type = "structure",
    members = {
        StackId = {
            type = "string",
        },
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateDescription = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        DeletionTime = {
            type = "timestamp",
        },
        StackStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StackStatusReason = {
            type = "string",
        },
        ParentId = {
            type = "string",
        },
        RootId = {
            type = "string",
        },
        DriftInformation = M.StackDriftInformationSummary,
        LastOperations = {
            type = "list",
            member = M.OperationEntry,
        },
    },
}

M.ListStacksOutput = {
    type = "structure",
    members = {
        StackSummaries = {
            type = "list",
            member = M.StackSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListStackSetAutoDeploymentTargetsInput = {
    type = "structure",
    members = {
        StackSetName = {
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
        CallAs = {
            type = "string",
        },
    },
}

M.StackSetAutoDeploymentTargetSummary = {
    type = "structure",
    members = {
        OrganizationalUnitId = {
            type = "string",
        },
        Regions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListStackSetAutoDeploymentTargetsOutput = {
    type = "structure",
    members = {
        Summaries = {
            type = "list",
            member = M.StackSetAutoDeploymentTargetSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.OperationResultFilterName = {
    OPERATION_RESULT_STATUS = "OPERATION_RESULT_STATUS",
}

M.OperationResultFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Values = {
            type = "string",
        },
    },
}

M.ListStackSetOperationResultsInput = {
    type = "structure",
    members = {
        StackSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OperationId = {
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
        CallAs = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.OperationResultFilter,
        },
    },
}

M.StackSetOperationResultStatus = {
    PENDING = "PENDING",
    RUNNING = "RUNNING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    CANCELLED = "CANCELLED",
}

M.StackSetOperationResultSummary = {
    type = "structure",
    members = {
        Account = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        AccountGateResult = M.AccountGateResult,
        OrganizationalUnitId = {
            type = "string",
        },
    },
}

M.ListStackSetOperationResultsOutput = {
    type = "structure",
    members = {
        Summaries = {
            type = "list",
            member = M.StackSetOperationResultSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListStackSetOperationsInput = {
    type = "structure",
    members = {
        StackSetName = {
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
        CallAs = {
            type = "string",
        },
    },
}

M.StackSetOperationSummary = {
    type = "structure",
    members = {
        OperationId = {
            type = "string",
        },
        Action = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationTimestamp = {
            type = "timestamp",
        },
        EndTimestamp = {
            type = "timestamp",
        },
        StatusReason = {
            type = "string",
        },
        StatusDetails = M.StackSetOperationStatusDetails,
        OperationPreferences = M.StackSetOperationPreferences,
    },
}

M.ListStackSetOperationsOutput = {
    type = "structure",
    members = {
        Summaries = {
            type = "list",
            member = M.StackSetOperationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListStackSetsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Status = {
            type = "string",
        },
        CallAs = {
            type = "string",
        },
    },
}

M.StackSetSummary = {
    type = "structure",
    members = {
        StackSetName = {
            type = "string",
        },
        StackSetId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        AutoDeployment = M.AutoDeployment,
        PermissionModel = {
            type = "string",
        },
        DriftStatus = {
            type = "string",
        },
        LastDriftCheckTimestamp = {
            type = "timestamp",
        },
        ManagedExecution = M.ManagedExecution,
    },
}

M.ListStackSetsOutput = {
    type = "structure",
    members = {
        Summaries = {
            type = "list",
            member = M.StackSetSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTypeRegistrationsInput = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        TypeName = {
            type = "string",
        },
        TypeArn = {
            type = "string",
        },
        RegistrationStatusFilter = {
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

M.ListTypeRegistrationsOutput = {
    type = "structure",
    members = {
        RegistrationTokenList = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TypeFilters = {
    type = "structure",
    members = {
        Category = {
            type = "string",
        },
        PublisherId = {
            type = "string",
        },
        TypeNamePrefix = {
            type = "string",
        },
    },
}

M.ListTypesInput = {
    type = "structure",
    members = {
        Visibility = {
            type = "string",
        },
        ProvisioningType = {
            type = "string",
        },
        DeprecatedStatus = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Filters = M.TypeFilters,
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TypeSummary = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        TypeName = {
            type = "string",
        },
        DefaultVersionId = {
            type = "string",
        },
        TypeArn = {
            type = "string",
        },
        LastUpdated = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        PublisherId = {
            type = "string",
        },
        OriginalTypeName = {
            type = "string",
        },
        PublicVersionNumber = {
            type = "string",
        },
        LatestPublicVersion = {
            type = "string",
        },
        PublisherIdentity = {
            type = "string",
        },
        PublisherName = {
            type = "string",
        },
        IsActivated = {
            type = "boolean",
        },
    },
}

M.ListTypesOutput = {
    type = "structure",
    members = {
        TypeSummaries = {
            type = "list",
            member = M.TypeSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTypeVersionsInput = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        TypeName = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        DeprecatedStatus = {
            type = "string",
        },
        PublisherId = {
            type = "string",
        },
    },
}

M.TypeVersionSummary = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        TypeName = {
            type = "string",
        },
        VersionId = {
            type = "string",
        },
        IsDefaultVersion = {
            type = "boolean",
        },
        Arn = {
            type = "string",
        },
        TimeCreated = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        PublicVersionNumber = {
            type = "string",
        },
    },
}

M.ListTypeVersionsOutput = {
    type = "structure",
    members = {
        TypeVersionSummaries = {
            type = "list",
            member = M.TypeVersionSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PublishTypeInput = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        TypeName = {
            type = "string",
        },
        PublicVersionNumber = {
            type = "string",
        },
    },
}

M.PublishTypeOutput = {
    type = "structure",
    members = {
        PublicTypeArn = {
            type = "string",
        },
    },
}

M.InvalidStateTransitionException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OperationStatusCheckFailedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OperationStatus = {
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
}

M.HandlerErrorCode = {
    NotUpdatable = "NotUpdatable",
    InvalidRequest = "InvalidRequest",
    AccessDenied = "AccessDenied",
    InvalidCredentials = "InvalidCredentials",
    AlreadyExists = "AlreadyExists",
    NotFound = "NotFound",
    ResourceConflict = "ResourceConflict",
    Throttling = "Throttling",
    ServiceLimitExceeded = "ServiceLimitExceeded",
    ServiceTimeout = "NotStabilized",
    GeneralServiceException = "GeneralServiceException",
    ServiceInternalError = "ServiceInternalError",
    NetworkFailure = "NetworkFailure",
    InternalFailure = "InternalFailure",
    InvalidTypeConfiguration = "InvalidTypeConfiguration",
    HandlerInternalFailure = "HandlerInternalFailure",
    NonCompliant = "NonCompliant",
    Unknown = "Unknown",
    UnsupportedTarget = "UnsupportedTarget",
}

M.RecordHandlerProgressInput = {
    type = "structure",
    members = {
        BearerToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OperationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CurrentOperationStatus = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        ResourceModel = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
        },
    },
}

M.RecordHandlerProgressOutput = {
    type = "structure",
}

M.RegisterPublisherInput = {
    type = "structure",
    members = {
        AcceptTermsAndConditions = {
            type = "boolean",
        },
        ConnectionArn = {
            type = "string",
        },
    },
}

M.RegisterPublisherOutput = {
    type = "structure",
    members = {
        PublisherId = {
            type = "string",
        },
    },
}

M.RegisterTypeInput = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        TypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SchemaHandlerPackage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LoggingConfig = M.LoggingConfig,
        ExecutionRoleArn = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
        },
    },
}

M.RegisterTypeOutput = {
    type = "structure",
    members = {
        RegistrationToken = {
            type = "string",
        },
    },
}

M.RollbackStackInput = {
    type = "structure",
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleARN = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
        },
        RetainExceptOnCreate = {
            type = "boolean",
        },
    },
}

M.RollbackStackOutput = {
    type = "structure",
    members = {
        StackId = {
            type = "string",
        },
        OperationId = {
            type = "string",
        },
    },
}

M.SetStackPolicyInput = {
    type = "structure",
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StackPolicyBody = {
            type = "string",
        },
        StackPolicyURL = {
            type = "string",
        },
    },
}

M.SetStackPolicyOutput = {
    type = "structure",
}

M.SetTypeConfigurationInput = {
    type = "structure",
    members = {
        TypeArn = {
            type = "string",
        },
        Configuration = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConfigurationAlias = {
            type = "string",
        },
        TypeName = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.SetTypeConfigurationOutput = {
    type = "structure",
    members = {
        ConfigurationArn = {
            type = "string",
        },
    },
}

M.SetTypeDefaultVersionInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        TypeName = {
            type = "string",
        },
        VersionId = {
            type = "string",
        },
    },
}

M.SetTypeDefaultVersionOutput = {
    type = "structure",
}

M.ResourceSignalStatus = {
    SUCCESS = "SUCCESS",
    FAILURE = "FAILURE",
}

M.SignalResourceInput = {
    type = "structure",
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogicalResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UniqueId = {
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

M.SignalResourceOutput = {
    type = "structure",
}

M.ResourceScanLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StartResourceScanInput = {
    type = "structure",
    members = {
        ClientRequestToken = {
            type = "string",
        },
        ScanFilters = {
            type = "list",
            member = M.ScanFilter,
        },
    },
}

M.StartResourceScanOutput = {
    type = "structure",
    members = {
        ResourceScanId = {
            type = "string",
        },
    },
}

M.StopStackSetOperationInput = {
    type = "structure",
    members = {
        StackSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OperationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CallAs = {
            type = "string",
        },
    },
}

M.StopStackSetOperationOutput = {
    type = "structure",
}

M.TestTypeInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        TypeName = {
            type = "string",
        },
        VersionId = {
            type = "string",
        },
        LogDeliveryBucket = {
            type = "string",
        },
    },
}

M.TestTypeOutput = {
    type = "structure",
    members = {
        TypeVersionArn = {
            type = "string",
        },
    },
}

M.UpdateGeneratedTemplateInput = {
    type = "structure",
    members = {
        GeneratedTemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewGeneratedTemplateName = {
            type = "string",
        },
        AddResources = {
            type = "list",
            member = M.ResourceDefinition,
        },
        RemoveResources = {
            type = "list",
            member = { type = "string" },
        },
        RefreshAllResources = {
            type = "boolean",
        },
        TemplateConfiguration = M.TemplateConfiguration,
    },
}

M.UpdateGeneratedTemplateOutput = {
    type = "structure",
    members = {
        GeneratedTemplateId = {
            type = "string",
        },
    },
}

M.UpdateStackInput = {
    type = "structure",
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateBody = {
            type = "string",
        },
        TemplateURL = {
            type = "string",
        },
        UsePreviousTemplate = {
            type = "boolean",
        },
        StackPolicyDuringUpdateBody = {
            type = "string",
        },
        StackPolicyDuringUpdateURL = {
            type = "string",
        },
        Parameters = {
            type = "list",
            member = M.Parameter,
        },
        Capabilities = {
            type = "list",
            member = { type = "string" },
        },
        ResourceTypes = {
            type = "list",
            member = { type = "string" },
        },
        RoleARN = {
            type = "string",
        },
        RollbackConfiguration = M.RollbackConfiguration,
        StackPolicyBody = {
            type = "string",
        },
        StackPolicyURL = {
            type = "string",
        },
        NotificationARNs = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        DisableRollback = {
            type = "boolean",
        },
        ClientRequestToken = {
            type = "string",
        },
        RetainExceptOnCreate = {
            type = "boolean",
        },
    },
}

M.UpdateStackOutput = {
    type = "structure",
    members = {
        StackId = {
            type = "string",
        },
        OperationId = {
            type = "string",
        },
    },
}

M.UpdateStackInstancesInput = {
    type = "structure",
    members = {
        StackSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Accounts = {
            type = "list",
            member = { type = "string" },
        },
        DeploymentTargets = M.DeploymentTargets,
        Regions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ParameterOverrides = {
            type = "list",
            member = M.Parameter,
        },
        OperationPreferences = M.StackSetOperationPreferences,
        OperationId = {
            type = "string",
        },
        CallAs = {
            type = "string",
        },
    },
}

M.UpdateStackInstancesOutput = {
    type = "structure",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.UpdateStackSetInput = {
    type = "structure",
    members = {
        StackSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        TemplateBody = {
            type = "string",
        },
        TemplateURL = {
            type = "string",
        },
        UsePreviousTemplate = {
            type = "boolean",
        },
        Parameters = {
            type = "list",
            member = M.Parameter,
        },
        Capabilities = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        OperationPreferences = M.StackSetOperationPreferences,
        AdministrationRoleARN = {
            type = "string",
        },
        ExecutionRoleName = {
            type = "string",
        },
        DeploymentTargets = M.DeploymentTargets,
        PermissionModel = {
            type = "string",
        },
        AutoDeployment = M.AutoDeployment,
        OperationId = {
            type = "string",
        },
        Accounts = {
            type = "list",
            member = { type = "string" },
        },
        Regions = {
            type = "list",
            member = { type = "string" },
        },
        CallAs = {
            type = "string",
        },
        ManagedExecution = M.ManagedExecution,
    },
}

M.UpdateStackSetOutput = {
    type = "structure",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.UpdateTerminationProtectionInput = {
    type = "structure",
    members = {
        EnableTerminationProtection = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTerminationProtectionOutput = {
    type = "structure",
    members = {
        StackId = {
            type = "string",
        },
    },
}

M.ValidateTemplateInput = {
    type = "structure",
    members = {
        TemplateBody = {
            type = "string",
        },
        TemplateURL = {
            type = "string",
        },
    },
}

M.TemplateParameter = {
    type = "structure",
    members = {
        ParameterKey = {
            type = "string",
        },
        DefaultValue = {
            type = "string",
        },
        NoEcho = {
            type = "boolean",
        },
        Description = {
            type = "string",
        },
    },
}

M.ValidateTemplateOutput = {
    type = "structure",
    members = {
        Parameters = {
            type = "list",
            member = M.TemplateParameter,
        },
        Description = {
            type = "string",
        },
        Capabilities = {
            type = "list",
            member = { type = "string" },
        },
        CapabilitiesReason = {
            type = "string",
        },
        DeclaredTransforms = {
            type = "list",
            member = { type = "string" },
        },
    },
}

return M
