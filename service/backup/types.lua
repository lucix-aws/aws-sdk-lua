local M = {}

M.AdvancedBackupSetting = {
    type = "structure",
    members = {
        ResourceType = {
            type = "string",
        },
        BackupOptions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ScanFinding = {
    MALWARE = "MALWARE",
}

M.AggregatedScanResult = {
    type = "structure",
    members = {
        FailedScan = {
            type = "boolean",
        },
        Findings = {
            type = "list",
            member = { type = "string" },
        },
        LastComputed = {
            type = "timestamp",
        },
    },
}

M.AggregationPeriod = {
    ONE_DAY = "ONE_DAY",
    SEVEN_DAYS = "SEVEN_DAYS",
    FOURTEEN_DAYS = "FOURTEEN_DAYS",
}

M.AlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        CreatorRequestId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Context = {
            type = "string",
        },
    },
}

M.AssociateBackupVaultMpaApprovalTeamInput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MpaApprovalTeamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RequesterComment = {
            type = "string",
        },
    },
}

M.AssociateBackupVaultMpaApprovalTeamOutput = {
    type = "structure",
}

M.InvalidParameterValueException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Context = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Context = {
            type = "string",
        },
    },
}

M.MissingParameterValueException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Context = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Context = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Context = {
            type = "string",
        },
    },
}

M.RecoveryPointCreator = {
    type = "structure",
    members = {
        BackupPlanId = {
            type = "string",
        },
        BackupPlanArn = {
            type = "string",
        },
        BackupPlanName = {
            type = "string",
        },
        BackupPlanVersion = {
            type = "string",
        },
        BackupRuleId = {
            type = "string",
        },
        BackupRuleName = {
            type = "string",
        },
        BackupRuleCron = {
            type = "string",
        },
        BackupRuleTimezone = {
            type = "string",
        },
    },
}

M.LifecycleDeleteAfterEvent = {
    DELETE_AFTER_COPY = "DELETE_AFTER_COPY",
}

M.Lifecycle = {
    type = "structure",
    members = {
        MoveToColdStorageAfterDays = {
            type = "long",
        },
        DeleteAfterDays = {
            type = "long",
        },
        OptInToArchiveForSupportedResources = {
            type = "boolean",
        },
        DeleteAfterEvent = {
            type = "string",
        },
    },
}

M.BackupJobState = {
    CREATED = "CREATED",
    PENDING = "PENDING",
    RUNNING = "RUNNING",
    ABORTING = "ABORTING",
    ABORTED = "ABORTED",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    EXPIRED = "EXPIRED",
    PARTIAL = "PARTIAL",
}

M.BackupJob = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
        },
        BackupJobId = {
            type = "string",
        },
        BackupVaultName = {
            type = "string",
        },
        BackupVaultArn = {
            type = "string",
        },
        VaultType = {
            type = "string",
        },
        VaultLockState = {
            type = "string",
        },
        RecoveryPointArn = {
            type = "string",
        },
        RecoveryPointLifecycle = M.Lifecycle,
        EncryptionKeyArn = {
            type = "string",
        },
        IsEncrypted = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ResourceArn = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        CompletionDate = {
            type = "timestamp",
        },
        State = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        PercentDone = {
            type = "string",
        },
        BackupSizeInBytes = {
            type = "long",
        },
        IamRoleArn = {
            type = "string",
        },
        CreatedBy = M.RecoveryPointCreator,
        ExpectedCompletionDate = {
            type = "timestamp",
        },
        StartBy = {
            type = "timestamp",
        },
        ResourceType = {
            type = "string",
        },
        BytesTransferred = {
            type = "long",
        },
        BackupOptions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        BackupType = {
            type = "string",
        },
        ParentJobId = {
            type = "string",
        },
        IsParent = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ResourceName = {
            type = "string",
        },
        InitiationDate = {
            type = "timestamp",
        },
        MessageCategory = {
            type = "string",
        },
    },
}

M.BackupJobStatus = {
    CREATED = "CREATED",
    PENDING = "PENDING",
    RUNNING = "RUNNING",
    ABORTING = "ABORTING",
    ABORTED = "ABORTED",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    EXPIRED = "EXPIRED",
    PARTIAL = "PARTIAL",
    AGGREGATE_ALL = "AGGREGATE_ALL",
    ANY = "ANY",
}

M.BackupJobSummary = {
    type = "structure",
    members = {
        Region = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        MessageCategory = {
            type = "string",
        },
        Count = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
    },
}

M.CopyAction = {
    type = "structure",
    members = {
        Lifecycle = M.Lifecycle,
        DestinationBackupVaultArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IndexAction = {
    type = "structure",
    members = {
        ResourceTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.MalwareScanner = {
    GUARDDUTY = "GUARDDUTY",
}

M.ScanMode = {
    FULL_SCAN = "FULL_SCAN",
    INCREMENTAL_SCAN = "INCREMENTAL_SCAN",
}

M.ScanAction = {
    type = "structure",
    members = {
        MalwareScanner = {
            type = "string",
        },
        ScanMode = {
            type = "string",
        },
    },
}

M.BackupRule = {
    type = "structure",
    members = {
        RuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetBackupVaultName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetLogicallyAirGappedBackupVaultArn = {
            type = "string",
        },
        ScheduleExpression = {
            type = "string",
        },
        StartWindowMinutes = {
            type = "long",
        },
        CompletionWindowMinutes = {
            type = "long",
        },
        Lifecycle = M.Lifecycle,
        RecoveryPointTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        RuleId = {
            type = "string",
        },
        CopyActions = {
            type = "list",
            member = M.CopyAction,
        },
        EnableContinuousBackup = {
            type = "boolean",
        },
        ScheduleExpressionTimezone = {
            type = "string",
        },
        IndexActions = {
            type = "list",
            member = M.IndexAction,
        },
        ScanActions = {
            type = "list",
            member = M.ScanAction,
        },
    },
}

M.ScanSetting = {
    type = "structure",
    members = {
        MalwareScanner = {
            type = "string",
        },
        ResourceTypes = {
            type = "list",
            member = { type = "string" },
        },
        ScannerRoleArn = {
            type = "string",
        },
    },
}

M.BackupPlan = {
    type = "structure",
    members = {
        BackupPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Rules = {
            type = "list",
            member = M.BackupRule,
            traits = {
                required = true,
            },
        },
        AdvancedBackupSettings = {
            type = "list",
            member = M.AdvancedBackupSetting,
        },
        ScanSettings = {
            type = "list",
            member = M.ScanSetting,
        },
    },
}

M.BackupRuleInput = {
    type = "structure",
    members = {
        RuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetBackupVaultName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetLogicallyAirGappedBackupVaultArn = {
            type = "string",
        },
        ScheduleExpression = {
            type = "string",
        },
        StartWindowMinutes = {
            type = "long",
        },
        CompletionWindowMinutes = {
            type = "long",
        },
        Lifecycle = M.Lifecycle,
        RecoveryPointTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        CopyActions = {
            type = "list",
            member = M.CopyAction,
        },
        EnableContinuousBackup = {
            type = "boolean",
        },
        ScheduleExpressionTimezone = {
            type = "string",
        },
        IndexActions = {
            type = "list",
            member = M.IndexAction,
        },
        ScanActions = {
            type = "list",
            member = M.ScanAction,
        },
    },
}

M.BackupPlanInput = {
    type = "structure",
    members = {
        BackupPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Rules = {
            type = "list",
            member = M.BackupRuleInput,
            traits = {
                required = true,
            },
        },
        AdvancedBackupSettings = {
            type = "list",
            member = M.AdvancedBackupSetting,
        },
        ScanSettings = {
            type = "list",
            member = M.ScanSetting,
        },
    },
}

M.BackupPlansListMember = {
    type = "structure",
    members = {
        BackupPlanArn = {
            type = "string",
        },
        BackupPlanId = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        DeletionDate = {
            type = "timestamp",
        },
        VersionId = {
            type = "string",
        },
        BackupPlanName = {
            type = "string",
        },
        CreatorRequestId = {
            type = "string",
        },
        LastExecutionDate = {
            type = "timestamp",
        },
        AdvancedBackupSettings = {
            type = "list",
            member = M.AdvancedBackupSetting,
        },
    },
}

M.BackupPlanTemplatesListMember = {
    type = "structure",
    members = {
        BackupPlanTemplateId = {
            type = "string",
        },
        BackupPlanTemplateName = {
            type = "string",
        },
    },
}

M.ConditionParameter = {
    type = "structure",
    members = {
        ConditionKey = {
            type = "string",
        },
        ConditionValue = {
            type = "string",
        },
    },
}

M.Conditions = {
    type = "structure",
    members = {
        StringEquals = {
            type = "list",
            member = M.ConditionParameter,
        },
        StringNotEquals = {
            type = "list",
            member = M.ConditionParameter,
        },
        StringLike = {
            type = "list",
            member = M.ConditionParameter,
        },
        StringNotLike = {
            type = "list",
            member = M.ConditionParameter,
        },
    },
}

M.ConditionType = {
    STRINGEQUALS = "STRINGEQUALS",
}

M.Condition = {
    type = "structure",
    members = {
        ConditionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConditionKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConditionValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BackupSelection = {
    type = "structure",
    members = {
        SelectionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IamRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Resources = {
            type = "list",
            member = { type = "string" },
        },
        ListOfTags = {
            type = "list",
            member = M.Condition,
        },
        NotResources = {
            type = "list",
            member = { type = "string" },
        },
        Conditions = M.Conditions,
    },
}

M.BackupSelectionsListMember = {
    type = "structure",
    members = {
        SelectionId = {
            type = "string",
        },
        SelectionName = {
            type = "string",
        },
        BackupPlanId = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        CreatorRequestId = {
            type = "string",
        },
        IamRoleArn = {
            type = "string",
        },
    },
}

M.BackupVaultEvent = {
    BACKUP_JOB_STARTED = "BACKUP_JOB_STARTED",
    BACKUP_JOB_COMPLETED = "BACKUP_JOB_COMPLETED",
    BACKUP_JOB_SUCCESSFUL = "BACKUP_JOB_SUCCESSFUL",
    BACKUP_JOB_FAILED = "BACKUP_JOB_FAILED",
    BACKUP_JOB_EXPIRED = "BACKUP_JOB_EXPIRED",
    RESTORE_JOB_STARTED = "RESTORE_JOB_STARTED",
    RESTORE_JOB_COMPLETED = "RESTORE_JOB_COMPLETED",
    RESTORE_JOB_SUCCESSFUL = "RESTORE_JOB_SUCCESSFUL",
    RESTORE_JOB_FAILED = "RESTORE_JOB_FAILED",
    COPY_JOB_STARTED = "COPY_JOB_STARTED",
    COPY_JOB_SUCCESSFUL = "COPY_JOB_SUCCESSFUL",
    COPY_JOB_FAILED = "COPY_JOB_FAILED",
    RECOVERY_POINT_MODIFIED = "RECOVERY_POINT_MODIFIED",
    BACKUP_PLAN_CREATED = "BACKUP_PLAN_CREATED",
    BACKUP_PLAN_MODIFIED = "BACKUP_PLAN_MODIFIED",
    S3_BACKUP_OBJECT_FAILED = "S3_BACKUP_OBJECT_FAILED",
    S3_RESTORE_OBJECT_FAILED = "S3_RESTORE_OBJECT_FAILED",
    CONTINUOUS_BACKUP_INTERRUPTED = "CONTINUOUS_BACKUP_INTERRUPTED",
    RECOVERY_POINT_INDEX_COMPLETED = "RECOVERY_POINT_INDEX_COMPLETED",
    RECOVERY_POINT_INDEX_DELETED = "RECOVERY_POINT_INDEX_DELETED",
    RECOVERY_POINT_INDEXING_FAILED = "RECOVERY_POINT_INDEXING_FAILED",
    EKS_RESTORE_OBJECT_FAILED = "EKS_RESTORE_OBJECT_FAILED",
    EKS_RESTORE_OBJECT_SKIPPED = "EKS_RESTORE_OBJECT_SKIPPED",
    EKS_BACKUP_OBJECT_FAILED = "EKS_BACKUP_OBJECT_FAILED",
}

M.EncryptionKeyType = {
    AWS_OWNED_KMS_KEY = "AWS_OWNED_KMS_KEY",
    CUSTOMER_MANAGED_KMS_KEY = "CUSTOMER_MANAGED_KMS_KEY",
}

M.VaultState = {
    CREATING = "CREATING",
    AVAILABLE = "AVAILABLE",
    FAILED = "FAILED",
}

M.VaultType = {
    BACKUP_VAULT = "BACKUP_VAULT",
    LOGICALLY_AIR_GAPPED_BACKUP_VAULT = "LOGICALLY_AIR_GAPPED_BACKUP_VAULT",
    RESTORE_ACCESS_BACKUP_VAULT = "RESTORE_ACCESS_BACKUP_VAULT",
}

M.BackupVaultListMember = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
        },
        BackupVaultArn = {
            type = "string",
        },
        VaultType = {
            type = "string",
        },
        VaultState = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        EncryptionKeyArn = {
            type = "string",
        },
        CreatorRequestId = {
            type = "string",
        },
        NumberOfRecoveryPoints = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Locked = {
            type = "boolean",
        },
        MinRetentionDays = {
            type = "long",
        },
        MaxRetentionDays = {
            type = "long",
        },
        LockDate = {
            type = "timestamp",
        },
        EncryptionKeyType = {
            type = "string",
        },
    },
}

M.CalculatedLifecycle = {
    type = "structure",
    members = {
        MoveToColdStorageAt = {
            type = "timestamp",
        },
        DeleteAt = {
            type = "timestamp",
        },
    },
}

M.CancelLegalHoldInput = {
    type = "structure",
    members = {
        LegalHoldId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CancelDescription = {
            type = "string",
            traits = {
                http_query = "cancelDescription",
                required = true,
            },
        },
        RetainRecordInDays = {
            type = "long",
            traits = {
                http_query = "retainRecordInDays",
            },
        },
    },
}

M.CancelLegalHoldOutput = {
    type = "structure",
}

M.InvalidResourceStateException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Context = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Context = {
            type = "string",
        },
    },
}

M.ControlInputParameter = {
    type = "structure",
    members = {
        ParameterName = {
            type = "string",
        },
        ParameterValue = {
            type = "string",
        },
    },
}

M.ControlScope = {
    type = "structure",
    members = {
        ComplianceResourceIds = {
            type = "list",
            member = { type = "string" },
        },
        ComplianceResourceTypes = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CopyJobState = {
    CREATED = "CREATED",
    RUNNING = "RUNNING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    PARTIAL = "PARTIAL",
}

M.CopyJob = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
        },
        CopyJobId = {
            type = "string",
        },
        SourceBackupVaultArn = {
            type = "string",
        },
        SourceRecoveryPointArn = {
            type = "string",
        },
        DestinationBackupVaultArn = {
            type = "string",
        },
        DestinationVaultType = {
            type = "string",
        },
        DestinationVaultLockState = {
            type = "string",
        },
        DestinationRecoveryPointArn = {
            type = "string",
        },
        DestinationEncryptionKeyArn = {
            type = "string",
        },
        DestinationRecoveryPointLifecycle = M.Lifecycle,
        ResourceArn = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        CompletionDate = {
            type = "timestamp",
        },
        State = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        BackupSizeInBytes = {
            type = "long",
        },
        IamRoleArn = {
            type = "string",
        },
        CreatedBy = M.RecoveryPointCreator,
        CreatedByBackupJobId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ParentJobId = {
            type = "string",
        },
        IsParent = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CompositeMemberIdentifier = {
            type = "string",
        },
        NumberOfChildJobs = {
            type = "long",
        },
        ChildJobsInState = {
            type = "map",
            key = { type = "string" },
            value = { type = "long" },
        },
        ResourceName = {
            type = "string",
        },
        MessageCategory = {
            type = "string",
        },
    },
}

M.CopyJobStatus = {
    CREATED = "CREATED",
    RUNNING = "RUNNING",
    ABORTING = "ABORTING",
    ABORTED = "ABORTED",
    COMPLETING = "COMPLETING",
    COMPLETED = "COMPLETED",
    FAILING = "FAILING",
    FAILED = "FAILED",
    PARTIAL = "PARTIAL",
    AGGREGATE_ALL = "AGGREGATE_ALL",
    ANY = "ANY",
}

M.CopyJobSummary = {
    type = "structure",
    members = {
        Region = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        MessageCategory = {
            type = "string",
        },
        Count = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
    },
}

M.CreateBackupPlanInput = {
    type = "structure",
    members = {
        BackupPlan = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BackupPlanInput }),
        BackupPlanTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        CreatorRequestId = {
            type = "string",
        },
    },
}

M.CreateBackupPlanOutput = {
    type = "structure",
    members = {
        BackupPlanId = {
            type = "string",
        },
        BackupPlanArn = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        VersionId = {
            type = "string",
        },
        AdvancedBackupSettings = {
            type = "list",
            member = M.AdvancedBackupSetting,
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Context = {
            type = "string",
        },
    },
}

M.CreateBackupSelectionInput = {
    type = "structure",
    members = {
        BackupPlanId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackupSelection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BackupSelection }),
        CreatorRequestId = {
            type = "string",
        },
    },
}

M.CreateBackupSelectionOutput = {
    type = "structure",
    members = {
        SelectionId = {
            type = "string",
        },
        BackupPlanId = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
    },
}

M.CreateBackupVaultInput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackupVaultTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        EncryptionKeyArn = {
            type = "string",
        },
        CreatorRequestId = {
            type = "string",
        },
    },
}

M.CreateBackupVaultOutput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
        },
        BackupVaultArn = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
    },
}

M.FrameworkControl = {
    type = "structure",
    members = {
        ControlName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ControlInputParameters = {
            type = "list",
            member = M.ControlInputParameter,
        },
        ControlScope = M.ControlScope,
    },
}

M.CreateFrameworkInput = {
    type = "structure",
    members = {
        FrameworkName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FrameworkDescription = {
            type = "string",
        },
        FrameworkControls = {
            type = "list",
            member = M.FrameworkControl,
            traits = {
                required = true,
            },
        },
        IdempotencyToken = {
            type = "string",
        },
        FrameworkTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateFrameworkOutput = {
    type = "structure",
    members = {
        FrameworkName = {
            type = "string",
        },
        FrameworkArn = {
            type = "string",
        },
    },
}

M.DateRange = {
    type = "structure",
    members = {
        FromDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ToDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.RecoveryPointSelection = {
    type = "structure",
    members = {
        VaultNames = {
            type = "list",
            member = { type = "string" },
        },
        ResourceIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        DateRange = M.DateRange,
    },
}

M.CreateLegalHoldInput = {
    type = "structure",
    members = {
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdempotencyToken = {
            type = "string",
        },
        RecoveryPointSelection = M.RecoveryPointSelection,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.LegalHoldStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    CANCELING = "CANCELING",
    CANCELED = "CANCELED",
}

M.CreateLegalHoldOutput = {
    type = "structure",
    members = {
        Title = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        LegalHoldId = {
            type = "string",
        },
        LegalHoldArn = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        RecoveryPointSelection = M.RecoveryPointSelection,
    },
}

M.CreateLogicallyAirGappedBackupVaultInput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackupVaultTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        CreatorRequestId = {
            type = "string",
        },
        MinRetentionDays = {
            type = "long",
            traits = {
                required = true,
            },
        },
        MaxRetentionDays = {
            type = "long",
            traits = {
                required = true,
            },
        },
        EncryptionKeyArn = {
            type = "string",
        },
    },
}

M.CreateLogicallyAirGappedBackupVaultOutput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
        },
        BackupVaultArn = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        VaultState = {
            type = "string",
        },
    },
}

M.ReportDeliveryChannel = {
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
        Formats = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ReportSetting = {
    type = "structure",
    members = {
        ReportTemplate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FrameworkArns = {
            type = "list",
            member = { type = "string" },
        },
        NumberOfFrameworks = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Accounts = {
            type = "list",
            member = { type = "string" },
        },
        OrganizationUnits = {
            type = "list",
            member = { type = "string" },
        },
        Regions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateReportPlanInput = {
    type = "structure",
    members = {
        ReportPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReportPlanDescription = {
            type = "string",
        },
        ReportDeliveryChannel = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReportDeliveryChannel }),
        ReportSetting = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReportSetting }),
        ReportPlanTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        IdempotencyToken = {
            type = "string",
        },
    },
}

M.CreateReportPlanOutput = {
    type = "structure",
    members = {
        ReportPlanName = {
            type = "string",
        },
        ReportPlanArn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.CreateRestoreAccessBackupVaultInput = {
    type = "structure",
    members = {
        SourceBackupVaultArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BackupVaultName = {
            type = "string",
        },
        BackupVaultTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        CreatorRequestId = {
            type = "string",
        },
        RequesterComment = {
            type = "string",
        },
    },
}

M.CreateRestoreAccessBackupVaultOutput = {
    type = "structure",
    members = {
        RestoreAccessBackupVaultArn = {
            type = "string",
        },
        VaultState = {
            type = "string",
        },
        RestoreAccessBackupVaultName = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
    },
}

M.RestoreTestingRecoveryPointSelectionAlgorithm = {
    LATEST_WITHIN_WINDOW = "LATEST_WITHIN_WINDOW",
    RANDOM_WITHIN_WINDOW = "RANDOM_WITHIN_WINDOW",
}

M.RestoreTestingRecoveryPointType = {
    CONTINUOUS = "CONTINUOUS",
    SNAPSHOT = "SNAPSHOT",
}

M.RestoreTestingRecoveryPointSelection = {
    type = "structure",
    members = {
        Algorithm = {
            type = "string",
        },
        ExcludeVaults = {
            type = "list",
            member = { type = "string" },
        },
        IncludeVaults = {
            type = "list",
            member = { type = "string" },
        },
        RecoveryPointTypes = {
            type = "list",
            member = { type = "string" },
        },
        SelectionWindowDays = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.RestoreTestingPlanForCreate = {
    type = "structure",
    members = {
        RecoveryPointSelection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RestoreTestingRecoveryPointSelection }),
        RestoreTestingPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScheduleExpression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScheduleExpressionTimezone = {
            type = "string",
        },
        StartWindowHours = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.CreateRestoreTestingPlanInput = {
    type = "structure",
    members = {
        CreatorRequestId = {
            type = "string",
        },
        RestoreTestingPlan = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RestoreTestingPlanForCreate }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateRestoreTestingPlanOutput = {
    type = "structure",
    members = {
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        RestoreTestingPlanArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RestoreTestingPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KeyValue = {
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

M.ProtectedResourceConditions = {
    type = "structure",
    members = {
        StringEquals = {
            type = "list",
            member = M.KeyValue,
        },
        StringNotEquals = {
            type = "list",
            member = M.KeyValue,
        },
    },
}

M.RestoreTestingSelectionForCreate = {
    type = "structure",
    members = {
        IamRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProtectedResourceArns = {
            type = "list",
            member = { type = "string" },
        },
        ProtectedResourceConditions = M.ProtectedResourceConditions,
        ProtectedResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RestoreMetadataOverrides = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        RestoreTestingSelectionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValidationWindowHours = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.CreateRestoreTestingSelectionInput = {
    type = "structure",
    members = {
        CreatorRequestId = {
            type = "string",
        },
        RestoreTestingPlanName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RestoreTestingSelection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RestoreTestingSelectionForCreate }),
    },
}

M.CreateRestoreTestingSelectionOutput = {
    type = "structure",
    members = {
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        RestoreTestingPlanArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RestoreTestingPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RestoreTestingSelectionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceSelection = {
    type = "structure",
    members = {
        Resources = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        TieringDownSettingsInDays = {
            type = "integer",
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
    },
}

M.TieringConfigurationInputForCreate = {
    type = "structure",
    members = {
        TieringConfigurationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BackupVaultName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceSelection = {
            type = "list",
            member = M.ResourceSelection,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTieringConfigurationInput = {
    type = "structure",
    members = {
        TieringConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TieringConfigurationInputForCreate }),
        TieringConfigurationTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        CreatorRequestId = {
            type = "string",
        },
    },
}

M.CreateTieringConfigurationOutput = {
    type = "structure",
    members = {
        TieringConfigurationArn = {
            type = "string",
        },
        TieringConfigurationName = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.DeleteBackupPlanInput = {
    type = "structure",
    members = {
        BackupPlanId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteBackupPlanOutput = {
    type = "structure",
    members = {
        BackupPlanId = {
            type = "string",
        },
        BackupPlanArn = {
            type = "string",
        },
        DeletionDate = {
            type = "timestamp",
        },
        VersionId = {
            type = "string",
        },
    },
}

M.DeleteBackupSelectionInput = {
    type = "structure",
    members = {
        BackupPlanId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SelectionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteBackupSelectionOutput = {
    type = "structure",
}

M.DeleteBackupVaultInput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteBackupVaultOutput = {
    type = "structure",
}

M.DeleteBackupVaultAccessPolicyInput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteBackupVaultAccessPolicyOutput = {
    type = "structure",
}

M.DeleteBackupVaultLockConfigurationInput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteBackupVaultLockConfigurationOutput = {
    type = "structure",
}

M.DeleteBackupVaultNotificationsInput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteBackupVaultNotificationsOutput = {
    type = "structure",
}

M.DeleteFrameworkInput = {
    type = "structure",
    members = {
        FrameworkName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteFrameworkOutput = {
    type = "structure",
}

M.DeleteRecoveryPointInput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecoveryPointArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRecoveryPointOutput = {
    type = "structure",
}

M.DeleteReportPlanInput = {
    type = "structure",
    members = {
        ReportPlanName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteReportPlanOutput = {
    type = "structure",
}

M.DeleteRestoreTestingPlanInput = {
    type = "structure",
    members = {
        RestoreTestingPlanName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRestoreTestingPlanOutput = {
    type = "structure",
}

M.DeleteRestoreTestingSelectionInput = {
    type = "structure",
    members = {
        RestoreTestingPlanName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RestoreTestingSelectionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRestoreTestingSelectionOutput = {
    type = "structure",
}

M.DeleteTieringConfigurationInput = {
    type = "structure",
    members = {
        TieringConfigurationName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTieringConfigurationOutput = {
    type = "structure",
}

M.DependencyFailureException = {
    type = "structure",
    error = "server",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Context = {
            type = "string",
        },
    },
}

M.DescribeBackupJobInput = {
    type = "structure",
    members = {
        BackupJobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeBackupJobOutput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
        },
        BackupJobId = {
            type = "string",
        },
        BackupVaultName = {
            type = "string",
        },
        RecoveryPointLifecycle = M.Lifecycle,
        BackupVaultArn = {
            type = "string",
        },
        VaultType = {
            type = "string",
        },
        VaultLockState = {
            type = "string",
        },
        RecoveryPointArn = {
            type = "string",
        },
        EncryptionKeyArn = {
            type = "string",
        },
        IsEncrypted = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ResourceArn = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        CompletionDate = {
            type = "timestamp",
        },
        State = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        PercentDone = {
            type = "string",
        },
        BackupSizeInBytes = {
            type = "long",
        },
        IamRoleArn = {
            type = "string",
        },
        CreatedBy = M.RecoveryPointCreator,
        ResourceType = {
            type = "string",
        },
        BytesTransferred = {
            type = "long",
        },
        ExpectedCompletionDate = {
            type = "timestamp",
        },
        StartBy = {
            type = "timestamp",
        },
        BackupOptions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        BackupType = {
            type = "string",
        },
        ParentJobId = {
            type = "string",
        },
        IsParent = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        NumberOfChildJobs = {
            type = "long",
        },
        ChildJobsInState = {
            type = "map",
            key = { type = "string" },
            value = { type = "long" },
        },
        ResourceName = {
            type = "string",
        },
        InitiationDate = {
            type = "timestamp",
        },
        MessageCategory = {
            type = "string",
        },
    },
}

M.DescribeBackupVaultInput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackupVaultAccountId = {
            type = "string",
            traits = {
                http_query = "backupVaultAccountId",
            },
        },
    },
}

M.MpaSessionStatus = {
    PENDING = "PENDING",
    APPROVED = "APPROVED",
    FAILED = "FAILED",
}

M.LatestMpaApprovalTeamUpdate = {
    type = "structure",
    members = {
        MpaSessionArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        InitiationDate = {
            type = "timestamp",
        },
        ExpiryDate = {
            type = "timestamp",
        },
    },
}

M.DescribeBackupVaultOutput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
        },
        BackupVaultArn = {
            type = "string",
        },
        VaultType = {
            type = "string",
        },
        VaultState = {
            type = "string",
        },
        EncryptionKeyArn = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        CreatorRequestId = {
            type = "string",
        },
        NumberOfRecoveryPoints = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Locked = {
            type = "boolean",
        },
        MinRetentionDays = {
            type = "long",
        },
        MaxRetentionDays = {
            type = "long",
        },
        LockDate = {
            type = "timestamp",
        },
        SourceBackupVaultArn = {
            type = "string",
        },
        MpaApprovalTeamArn = {
            type = "string",
        },
        MpaSessionArn = {
            type = "string",
        },
        LatestMpaApprovalTeamUpdate = M.LatestMpaApprovalTeamUpdate,
        EncryptionKeyType = {
            type = "string",
        },
    },
}

M.DescribeCopyJobInput = {
    type = "structure",
    members = {
        CopyJobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeCopyJobOutput = {
    type = "structure",
    members = {
        CopyJob = M.CopyJob,
    },
}

M.DescribeFrameworkInput = {
    type = "structure",
    members = {
        FrameworkName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeFrameworkOutput = {
    type = "structure",
    members = {
        FrameworkName = {
            type = "string",
        },
        FrameworkArn = {
            type = "string",
        },
        FrameworkDescription = {
            type = "string",
        },
        FrameworkControls = {
            type = "list",
            member = M.FrameworkControl,
        },
        CreationTime = {
            type = "timestamp",
        },
        DeploymentStatus = {
            type = "string",
        },
        FrameworkStatus = {
            type = "string",
        },
        IdempotencyToken = {
            type = "string",
        },
    },
}

M.DescribeGlobalSettingsInput = {
    type = "structure",
}

M.DescribeGlobalSettingsOutput = {
    type = "structure",
    members = {
        GlobalSettings = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        LastUpdateTime = {
            type = "timestamp",
        },
    },
}

M.DescribeProtectedResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeProtectedResourceOutput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        LastBackupTime = {
            type = "timestamp",
        },
        ResourceName = {
            type = "string",
        },
        LastBackupVaultArn = {
            type = "string",
        },
        LastRecoveryPointArn = {
            type = "string",
        },
        LatestRestoreExecutionTimeMinutes = {
            type = "long",
        },
        LatestRestoreJobCreationDate = {
            type = "timestamp",
        },
        LatestRestoreRecoveryPointCreationDate = {
            type = "timestamp",
        },
    },
}

M.DescribeRecoveryPointInput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecoveryPointArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackupVaultAccountId = {
            type = "string",
            traits = {
                http_query = "backupVaultAccountId",
            },
        },
    },
}

M.IndexStatus = {
    PENDING = "PENDING",
    ACTIVE = "ACTIVE",
    FAILED = "FAILED",
    DELETING = "DELETING",
}

M.ScanJobState = {
    COMPLETED = "COMPLETED",
    COMPLETED_WITH_ISSUES = "COMPLETED_WITH_ISSUES",
    FAILED = "FAILED",
    CANCELED = "CANCELED",
}

M.ScanResult = {
    type = "structure",
    members = {
        MalwareScanner = {
            type = "string",
        },
        ScanJobState = {
            type = "string",
        },
        LastScanTimestamp = {
            type = "timestamp",
        },
        Findings = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RecoveryPointStatus = {
    COMPLETED = "COMPLETED",
    PARTIAL = "PARTIAL",
    DELETING = "DELETING",
    EXPIRED = "EXPIRED",
    AVAILABLE = "AVAILABLE",
    STOPPED = "STOPPED",
    CREATING = "CREATING",
}

M.StorageClass = {
    WARM = "WARM",
    COLD = "COLD",
    DELETED = "DELETED",
}

M.DescribeRecoveryPointOutput = {
    type = "structure",
    members = {
        RecoveryPointArn = {
            type = "string",
        },
        BackupVaultName = {
            type = "string",
        },
        BackupVaultArn = {
            type = "string",
        },
        SourceBackupVaultArn = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        CreatedBy = M.RecoveryPointCreator,
        IamRoleArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        InitiationDate = {
            type = "timestamp",
        },
        CompletionDate = {
            type = "timestamp",
        },
        BackupSizeInBytes = {
            type = "long",
        },
        CalculatedLifecycle = M.CalculatedLifecycle,
        Lifecycle = M.Lifecycle,
        EncryptionKeyArn = {
            type = "string",
        },
        IsEncrypted = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        StorageClass = {
            type = "string",
        },
        LastRestoreTime = {
            type = "timestamp",
        },
        ParentRecoveryPointArn = {
            type = "string",
        },
        CompositeMemberIdentifier = {
            type = "string",
        },
        IsParent = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ResourceName = {
            type = "string",
        },
        VaultType = {
            type = "string",
        },
        IndexStatus = {
            type = "string",
        },
        IndexStatusMessage = {
            type = "string",
        },
        EncryptionKeyType = {
            type = "string",
        },
        ScanResults = {
            type = "list",
            member = M.ScanResult,
        },
    },
}

M.DescribeRegionSettingsInput = {
    type = "structure",
}

M.DescribeRegionSettingsOutput = {
    type = "structure",
    members = {
        ResourceTypeOptInPreference = {
            type = "map",
            key = { type = "string" },
            value = { type = "boolean" },
        },
        ResourceTypeManagementPreference = {
            type = "map",
            key = { type = "string" },
            value = { type = "boolean" },
        },
    },
}

M.DescribeReportJobInput = {
    type = "structure",
    members = {
        ReportJobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ReportDestination = {
    type = "structure",
    members = {
        S3BucketName = {
            type = "string",
        },
        S3Keys = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ReportJob = {
    type = "structure",
    members = {
        ReportJobId = {
            type = "string",
        },
        ReportPlanArn = {
            type = "string",
        },
        ReportTemplate = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        CompletionTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        ReportDestination = M.ReportDestination,
    },
}

M.DescribeReportJobOutput = {
    type = "structure",
    members = {
        ReportJob = M.ReportJob,
    },
}

M.DescribeReportPlanInput = {
    type = "structure",
    members = {
        ReportPlanName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ReportPlan = {
    type = "structure",
    members = {
        ReportPlanArn = {
            type = "string",
        },
        ReportPlanName = {
            type = "string",
        },
        ReportPlanDescription = {
            type = "string",
        },
        ReportSetting = M.ReportSetting,
        ReportDeliveryChannel = M.ReportDeliveryChannel,
        DeploymentStatus = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastAttemptedExecutionTime = {
            type = "timestamp",
        },
        LastSuccessfulExecutionTime = {
            type = "timestamp",
        },
    },
}

M.DescribeReportPlanOutput = {
    type = "structure",
    members = {
        ReportPlan = M.ReportPlan,
    },
}

M.DescribeRestoreJobInput = {
    type = "structure",
    members = {
        RestoreJobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RestoreJobCreator = {
    type = "structure",
    members = {
        RestoreTestingPlanArn = {
            type = "string",
        },
    },
}

M.RestoreDeletionStatus = {
    DELETING = "DELETING",
    FAILED = "FAILED",
    SUCCESSFUL = "SUCCESSFUL",
}

M.RestoreJobStatus = {
    PENDING = "PENDING",
    RUNNING = "RUNNING",
    COMPLETED = "COMPLETED",
    ABORTED = "ABORTED",
    FAILED = "FAILED",
}

M.RestoreValidationStatus = {
    FAILED = "FAILED",
    SUCCESSFUL = "SUCCESSFUL",
    TIMED_OUT = "TIMED_OUT",
    VALIDATING = "VALIDATING",
}

M.DescribeRestoreJobOutput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
        },
        RestoreJobId = {
            type = "string",
        },
        RecoveryPointArn = {
            type = "string",
        },
        SourceResourceArn = {
            type = "string",
        },
        BackupVaultArn = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        CompletionDate = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        PercentDone = {
            type = "string",
        },
        BackupSizeInBytes = {
            type = "long",
        },
        IamRoleArn = {
            type = "string",
        },
        ExpectedCompletionTimeMinutes = {
            type = "long",
        },
        CreatedResourceArn = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        RecoveryPointCreationDate = {
            type = "timestamp",
        },
        CreatedBy = M.RestoreJobCreator,
        ValidationStatus = {
            type = "string",
        },
        ValidationStatusMessage = {
            type = "string",
        },
        DeletionStatus = {
            type = "string",
        },
        DeletionStatusMessage = {
            type = "string",
        },
        IsParent = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ParentJobId = {
            type = "string",
        },
    },
}

M.DescribeScanJobInput = {
    type = "structure",
    members = {
        ScanJobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ScanJobCreator = {
    type = "structure",
    members = {
        BackupPlanArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BackupPlanId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BackupPlanVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BackupRuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ScanResourceType = {
    EBS = "EBS",
    EC2 = "EC2",
    S3 = "S3",
}

M.ScanResultStatus = {
    NO_THREATS_FOUND = "NO_THREATS_FOUND",
    THREATS_FOUND = "THREATS_FOUND",
}

M.ScanResultInfo = {
    type = "structure",
    members = {
        ScanResultStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ScanState = {
    CANCELED = "CANCELED",
    COMPLETED = "COMPLETED",
    COMPLETED_WITH_ISSUES = "COMPLETED_WITH_ISSUES",
    CREATED = "CREATED",
    FAILED = "FAILED",
    RUNNING = "RUNNING",
}

M.DescribeScanJobOutput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BackupVaultArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BackupVaultName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CompletionDate = {
            type = "timestamp",
        },
        CreatedBy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScanJobCreator }),
        CreationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        IamRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MalwareScanner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecoveryPointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceName = {
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
        ScanBaseRecoveryPointArn = {
            type = "string",
        },
        ScanId = {
            type = "string",
        },
        ScanJobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScanMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScanResult = M.ScanResultInfo,
        ScannerRoleArn = {
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
        StatusMessage = {
            type = "string",
        },
    },
}

M.DisassociateBackupVaultMpaApprovalTeamInput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RequesterComment = {
            type = "string",
        },
    },
}

M.DisassociateBackupVaultMpaApprovalTeamOutput = {
    type = "structure",
}

M.DisassociateRecoveryPointInput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecoveryPointArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateRecoveryPointOutput = {
    type = "structure",
}

M.DisassociateRecoveryPointFromParentInput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecoveryPointArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateRecoveryPointFromParentOutput = {
    type = "structure",
}

M.ExportBackupPlanTemplateInput = {
    type = "structure",
    members = {
        BackupPlanId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ExportBackupPlanTemplateOutput = {
    type = "structure",
    members = {
        BackupPlanTemplateJson = {
            type = "string",
        },
    },
}

M.GetBackupPlanInput = {
    type = "structure",
    members = {
        BackupPlanId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_query = "versionId",
            },
        },
        MaxScheduledRunsPreview = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "MaxScheduledRunsPreview",
            },
        },
    },
}

M.RuleExecutionType = {
    CONTINUOUS = "CONTINUOUS",
    SNAPSHOTS = "SNAPSHOTS",
    CONTINUOUS_AND_SNAPSHOTS = "CONTINUOUS_AND_SNAPSHOTS",
}

M.ScheduledPlanExecutionMember = {
    type = "structure",
    members = {
        ExecutionTime = {
            type = "timestamp",
        },
        RuleId = {
            type = "string",
        },
        RuleExecutionType = {
            type = "string",
        },
    },
}

M.GetBackupPlanOutput = {
    type = "structure",
    members = {
        BackupPlan = M.BackupPlan,
        BackupPlanId = {
            type = "string",
        },
        BackupPlanArn = {
            type = "string",
        },
        VersionId = {
            type = "string",
        },
        CreatorRequestId = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        DeletionDate = {
            type = "timestamp",
        },
        LastExecutionDate = {
            type = "timestamp",
        },
        AdvancedBackupSettings = {
            type = "list",
            member = M.AdvancedBackupSetting,
        },
        ScheduledRunsPreview = {
            type = "list",
            member = M.ScheduledPlanExecutionMember,
        },
    },
}

M.GetBackupPlanFromJSONInput = {
    type = "structure",
    members = {
        BackupPlanTemplateJson = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetBackupPlanFromJSONOutput = {
    type = "structure",
    members = {
        BackupPlan = M.BackupPlan,
    },
}

M.GetBackupPlanFromTemplateInput = {
    type = "structure",
    members = {
        BackupPlanTemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetBackupPlanFromTemplateOutput = {
    type = "structure",
    members = {
        BackupPlanDocument = M.BackupPlan,
    },
}

M.GetBackupSelectionInput = {
    type = "structure",
    members = {
        BackupPlanId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SelectionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetBackupSelectionOutput = {
    type = "structure",
    members = {
        BackupSelection = M.BackupSelection,
        SelectionId = {
            type = "string",
        },
        BackupPlanId = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        CreatorRequestId = {
            type = "string",
        },
    },
}

M.GetBackupVaultAccessPolicyInput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetBackupVaultAccessPolicyOutput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
        },
        BackupVaultArn = {
            type = "string",
        },
        Policy = {
            type = "string",
        },
    },
}

M.GetBackupVaultNotificationsInput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetBackupVaultNotificationsOutput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
        },
        BackupVaultArn = {
            type = "string",
        },
        SNSTopicArn = {
            type = "string",
        },
        BackupVaultEvents = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetLegalHoldInput = {
    type = "structure",
    members = {
        LegalHoldId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetLegalHoldOutput = {
    type = "structure",
    members = {
        Title = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CancelDescription = {
            type = "string",
        },
        LegalHoldId = {
            type = "string",
        },
        LegalHoldArn = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        CancellationDate = {
            type = "timestamp",
        },
        RetainRecordUntil = {
            type = "timestamp",
        },
        RecoveryPointSelection = M.RecoveryPointSelection,
    },
}

M.GetRecoveryPointIndexDetailsInput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecoveryPointArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetRecoveryPointIndexDetailsOutput = {
    type = "structure",
    members = {
        RecoveryPointArn = {
            type = "string",
        },
        BackupVaultArn = {
            type = "string",
        },
        SourceResourceArn = {
            type = "string",
        },
        IndexCreationDate = {
            type = "timestamp",
        },
        IndexDeletionDate = {
            type = "timestamp",
        },
        IndexCompletionDate = {
            type = "timestamp",
        },
        IndexStatus = {
            type = "string",
        },
        IndexStatusMessage = {
            type = "string",
        },
        TotalItemsIndexed = {
            type = "long",
        },
    },
}

M.GetRecoveryPointRestoreMetadataInput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecoveryPointArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackupVaultAccountId = {
            type = "string",
            traits = {
                http_query = "backupVaultAccountId",
            },
        },
    },
}

M.GetRecoveryPointRestoreMetadataOutput = {
    type = "structure",
    members = {
        BackupVaultArn = {
            type = "string",
        },
        RecoveryPointArn = {
            type = "string",
        },
        RestoreMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.GetRestoreJobMetadataInput = {
    type = "structure",
    members = {
        RestoreJobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetRestoreJobMetadataOutput = {
    type = "structure",
    members = {
        RestoreJobId = {
            type = "string",
        },
        Metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetRestoreTestingInferredMetadataInput = {
    type = "structure",
    members = {
        BackupVaultAccountId = {
            type = "string",
            traits = {
                http_query = "BackupVaultAccountId",
            },
        },
        BackupVaultName = {
            type = "string",
            traits = {
                http_query = "BackupVaultName",
                required = true,
            },
        },
        RecoveryPointArn = {
            type = "string",
            traits = {
                http_query = "RecoveryPointArn",
                required = true,
            },
        },
    },
}

M.GetRestoreTestingInferredMetadataOutput = {
    type = "structure",
    members = {
        InferredMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetRestoreTestingPlanInput = {
    type = "structure",
    members = {
        RestoreTestingPlanName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RestoreTestingPlanForGet = {
    type = "structure",
    members = {
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        CreatorRequestId = {
            type = "string",
        },
        LastExecutionTime = {
            type = "timestamp",
        },
        LastUpdateTime = {
            type = "timestamp",
        },
        RecoveryPointSelection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RestoreTestingRecoveryPointSelection }),
        RestoreTestingPlanArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RestoreTestingPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScheduleExpression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScheduleExpressionTimezone = {
            type = "string",
        },
        StartWindowHours = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetRestoreTestingPlanOutput = {
    type = "structure",
    members = {
        RestoreTestingPlan = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RestoreTestingPlanForGet }),
    },
}

M.GetRestoreTestingSelectionInput = {
    type = "structure",
    members = {
        RestoreTestingPlanName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RestoreTestingSelectionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RestoreTestingSelectionForGet = {
    type = "structure",
    members = {
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        CreatorRequestId = {
            type = "string",
        },
        IamRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProtectedResourceArns = {
            type = "list",
            member = { type = "string" },
        },
        ProtectedResourceConditions = M.ProtectedResourceConditions,
        ProtectedResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RestoreMetadataOverrides = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        RestoreTestingPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RestoreTestingSelectionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValidationWindowHours = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetRestoreTestingSelectionOutput = {
    type = "structure",
    members = {
        RestoreTestingSelection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RestoreTestingSelectionForGet }),
    },
}

M.GetSupportedResourceTypesInput = {
    type = "structure",
}

M.GetSupportedResourceTypesOutput = {
    type = "structure",
    members = {
        ResourceTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetTieringConfigurationInput = {
    type = "structure",
    members = {
        TieringConfigurationName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TieringConfiguration = {
    type = "structure",
    members = {
        TieringConfigurationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TieringConfigurationArn = {
            type = "string",
        },
        BackupVaultName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceSelection = {
            type = "list",
            member = M.ResourceSelection,
            traits = {
                required = true,
            },
        },
        CreatorRequestId = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
    },
}

M.GetTieringConfigurationOutput = {
    type = "structure",
    members = {
        TieringConfiguration = M.TieringConfiguration,
    },
}

M.ListBackupJobsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        ByResourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
            },
        },
        ByState = {
            type = "string",
            traits = {
                http_query = "state",
            },
        },
        ByBackupVaultName = {
            type = "string",
            traits = {
                http_query = "backupVaultName",
            },
        },
        ByCreatedBefore = {
            type = "timestamp",
            traits = {
                http_query = "createdBefore",
            },
        },
        ByCreatedAfter = {
            type = "timestamp",
            traits = {
                http_query = "createdAfter",
            },
        },
        ByResourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
            },
        },
        ByAccountId = {
            type = "string",
            traits = {
                http_query = "accountId",
            },
        },
        ByCompleteAfter = {
            type = "timestamp",
            traits = {
                http_query = "completeAfter",
            },
        },
        ByCompleteBefore = {
            type = "timestamp",
            traits = {
                http_query = "completeBefore",
            },
        },
        ByParentJobId = {
            type = "string",
            traits = {
                http_query = "parentJobId",
            },
        },
        ByMessageCategory = {
            type = "string",
            traits = {
                http_query = "messageCategory",
            },
        },
    },
}

M.ListBackupJobsOutput = {
    type = "structure",
    members = {
        BackupJobs = {
            type = "list",
            member = M.BackupJob,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListBackupJobSummariesInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_query = "AccountId",
            },
        },
        State = {
            type = "string",
            traits = {
                http_query = "State",
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                http_query = "ResourceType",
            },
        },
        MessageCategory = {
            type = "string",
            traits = {
                http_query = "MessageCategory",
            },
        },
        AggregationPeriod = {
            type = "string",
            traits = {
                http_query = "AggregationPeriod",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListBackupJobSummariesOutput = {
    type = "structure",
    members = {
        BackupJobSummaries = {
            type = "list",
            member = M.BackupJobSummary,
        },
        AggregationPeriod = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListBackupPlansInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        IncludeDeleted = {
            type = "boolean",
            traits = {
                http_query = "includeDeleted",
            },
        },
    },
}

M.ListBackupPlansOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        BackupPlansList = {
            type = "list",
            member = M.BackupPlansListMember,
        },
    },
}

M.ListBackupPlanTemplatesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListBackupPlanTemplatesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        BackupPlanTemplatesList = {
            type = "list",
            member = M.BackupPlanTemplatesListMember,
        },
    },
}

M.ListBackupPlanVersionsInput = {
    type = "structure",
    members = {
        BackupPlanId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListBackupPlanVersionsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        BackupPlanVersionsList = {
            type = "list",
            member = M.BackupPlansListMember,
        },
    },
}

M.ListBackupSelectionsInput = {
    type = "structure",
    members = {
        BackupPlanId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListBackupSelectionsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        BackupSelectionsList = {
            type = "list",
            member = M.BackupSelectionsListMember,
        },
    },
}

M.ListBackupVaultsInput = {
    type = "structure",
    members = {
        ByVaultType = {
            type = "string",
            traits = {
                http_query = "vaultType",
            },
        },
        ByShared = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "shared",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListBackupVaultsOutput = {
    type = "structure",
    members = {
        BackupVaultList = {
            type = "list",
            member = M.BackupVaultListMember,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCopyJobsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        ByResourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
            },
        },
        ByState = {
            type = "string",
            traits = {
                http_query = "state",
            },
        },
        ByCreatedBefore = {
            type = "timestamp",
            traits = {
                http_query = "createdBefore",
            },
        },
        ByCreatedAfter = {
            type = "timestamp",
            traits = {
                http_query = "createdAfter",
            },
        },
        ByResourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
            },
        },
        ByDestinationVaultArn = {
            type = "string",
            traits = {
                http_query = "destinationVaultArn",
            },
        },
        ByAccountId = {
            type = "string",
            traits = {
                http_query = "accountId",
            },
        },
        ByCompleteBefore = {
            type = "timestamp",
            traits = {
                http_query = "completeBefore",
            },
        },
        ByCompleteAfter = {
            type = "timestamp",
            traits = {
                http_query = "completeAfter",
            },
        },
        ByParentJobId = {
            type = "string",
            traits = {
                http_query = "parentJobId",
            },
        },
        ByMessageCategory = {
            type = "string",
            traits = {
                http_query = "messageCategory",
            },
        },
        BySourceRecoveryPointArn = {
            type = "string",
            traits = {
                http_query = "sourceRecoveryPointArn",
            },
        },
    },
}

M.ListCopyJobsOutput = {
    type = "structure",
    members = {
        CopyJobs = {
            type = "list",
            member = M.CopyJob,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCopyJobSummariesInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_query = "AccountId",
            },
        },
        State = {
            type = "string",
            traits = {
                http_query = "State",
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                http_query = "ResourceType",
            },
        },
        MessageCategory = {
            type = "string",
            traits = {
                http_query = "MessageCategory",
            },
        },
        AggregationPeriod = {
            type = "string",
            traits = {
                http_query = "AggregationPeriod",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListCopyJobSummariesOutput = {
    type = "structure",
    members = {
        CopyJobSummaries = {
            type = "list",
            member = M.CopyJobSummary,
        },
        AggregationPeriod = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFrameworksInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.Framework = {
    type = "structure",
    members = {
        FrameworkName = {
            type = "string",
        },
        FrameworkArn = {
            type = "string",
        },
        FrameworkDescription = {
            type = "string",
        },
        NumberOfControls = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        CreationTime = {
            type = "timestamp",
        },
        DeploymentStatus = {
            type = "string",
        },
    },
}

M.ListFrameworksOutput = {
    type = "structure",
    members = {
        Frameworks = {
            type = "list",
            member = M.Framework,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListIndexedRecoveryPointsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        SourceResourceArn = {
            type = "string",
            traits = {
                http_query = "sourceResourceArn",
            },
        },
        CreatedBefore = {
            type = "timestamp",
            traits = {
                http_query = "createdBefore",
            },
        },
        CreatedAfter = {
            type = "timestamp",
            traits = {
                http_query = "createdAfter",
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
            },
        },
        IndexStatus = {
            type = "string",
            traits = {
                http_query = "indexStatus",
            },
        },
    },
}

M.IndexedRecoveryPoint = {
    type = "structure",
    members = {
        RecoveryPointArn = {
            type = "string",
        },
        SourceResourceArn = {
            type = "string",
        },
        IamRoleArn = {
            type = "string",
        },
        BackupCreationDate = {
            type = "timestamp",
        },
        ResourceType = {
            type = "string",
        },
        IndexCreationDate = {
            type = "timestamp",
        },
        IndexStatus = {
            type = "string",
        },
        IndexStatusMessage = {
            type = "string",
        },
        BackupVaultArn = {
            type = "string",
        },
    },
}

M.ListIndexedRecoveryPointsOutput = {
    type = "structure",
    members = {
        IndexedRecoveryPoints = {
            type = "list",
            member = M.IndexedRecoveryPoint,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLegalHoldsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.LegalHold = {
    type = "structure",
    members = {
        Title = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        LegalHoldId = {
            type = "string",
        },
        LegalHoldArn = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        CancellationDate = {
            type = "timestamp",
        },
    },
}

M.ListLegalHoldsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        LegalHolds = {
            type = "list",
            member = M.LegalHold,
        },
    },
}

M.ListProtectedResourcesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ProtectedResource = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        LastBackupTime = {
            type = "timestamp",
        },
        ResourceName = {
            type = "string",
        },
        LastBackupVaultArn = {
            type = "string",
        },
        LastRecoveryPointArn = {
            type = "string",
        },
    },
}

M.ListProtectedResourcesOutput = {
    type = "structure",
    members = {
        Results = {
            type = "list",
            member = M.ProtectedResource,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListProtectedResourcesByBackupVaultInput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackupVaultAccountId = {
            type = "string",
            traits = {
                http_query = "backupVaultAccountId",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListProtectedResourcesByBackupVaultOutput = {
    type = "structure",
    members = {
        Results = {
            type = "list",
            member = M.ProtectedResource,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRecoveryPointsByBackupVaultInput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackupVaultAccountId = {
            type = "string",
            traits = {
                http_query = "backupVaultAccountId",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        ByResourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
            },
        },
        ByResourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
            },
        },
        ByBackupPlanId = {
            type = "string",
            traits = {
                http_query = "backupPlanId",
            },
        },
        ByCreatedBefore = {
            type = "timestamp",
            traits = {
                http_query = "createdBefore",
            },
        },
        ByCreatedAfter = {
            type = "timestamp",
            traits = {
                http_query = "createdAfter",
            },
        },
        ByParentRecoveryPointArn = {
            type = "string",
            traits = {
                http_query = "parentRecoveryPointArn",
            },
        },
    },
}

M.RecoveryPointByBackupVault = {
    type = "structure",
    members = {
        RecoveryPointArn = {
            type = "string",
        },
        BackupVaultName = {
            type = "string",
        },
        BackupVaultArn = {
            type = "string",
        },
        SourceBackupVaultArn = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        CreatedBy = M.RecoveryPointCreator,
        IamRoleArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        InitiationDate = {
            type = "timestamp",
        },
        CompletionDate = {
            type = "timestamp",
        },
        BackupSizeInBytes = {
            type = "long",
        },
        CalculatedLifecycle = M.CalculatedLifecycle,
        Lifecycle = M.Lifecycle,
        EncryptionKeyArn = {
            type = "string",
        },
        IsEncrypted = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        LastRestoreTime = {
            type = "timestamp",
        },
        ParentRecoveryPointArn = {
            type = "string",
        },
        CompositeMemberIdentifier = {
            type = "string",
        },
        IsParent = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ResourceName = {
            type = "string",
        },
        VaultType = {
            type = "string",
        },
        IndexStatus = {
            type = "string",
        },
        IndexStatusMessage = {
            type = "string",
        },
        EncryptionKeyType = {
            type = "string",
        },
        AggregatedScanResult = M.AggregatedScanResult,
    },
}

M.ListRecoveryPointsByBackupVaultOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        RecoveryPoints = {
            type = "list",
            member = M.RecoveryPointByBackupVault,
        },
    },
}

M.ListRecoveryPointsByLegalHoldInput = {
    type = "structure",
    members = {
        LegalHoldId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.RecoveryPointMember = {
    type = "structure",
    members = {
        RecoveryPointArn = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        BackupVaultName = {
            type = "string",
        },
    },
}

M.ListRecoveryPointsByLegalHoldOutput = {
    type = "structure",
    members = {
        RecoveryPoints = {
            type = "list",
            member = M.RecoveryPointMember,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRecoveryPointsByResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        ManagedByAWSBackupOnly = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "managedByAWSBackupOnly",
            },
        },
    },
}

M.RecoveryPointByResource = {
    type = "structure",
    members = {
        RecoveryPointArn = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        EncryptionKeyArn = {
            type = "string",
        },
        BackupSizeBytes = {
            type = "long",
        },
        BackupVaultName = {
            type = "string",
        },
        IsParent = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ParentRecoveryPointArn = {
            type = "string",
        },
        ResourceName = {
            type = "string",
        },
        VaultType = {
            type = "string",
        },
        IndexStatus = {
            type = "string",
        },
        IndexStatusMessage = {
            type = "string",
        },
        EncryptionKeyType = {
            type = "string",
        },
        AggregatedScanResult = M.AggregatedScanResult,
    },
}

M.ListRecoveryPointsByResourceOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        RecoveryPoints = {
            type = "list",
            member = M.RecoveryPointByResource,
        },
    },
}

M.ListReportJobsInput = {
    type = "structure",
    members = {
        ByReportPlanName = {
            type = "string",
            traits = {
                http_query = "ReportPlanName",
            },
        },
        ByCreationBefore = {
            type = "timestamp",
            traits = {
                http_query = "CreationBefore",
            },
        },
        ByCreationAfter = {
            type = "timestamp",
            traits = {
                http_query = "CreationAfter",
            },
        },
        ByStatus = {
            type = "string",
            traits = {
                http_query = "Status",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListReportJobsOutput = {
    type = "structure",
    members = {
        ReportJobs = {
            type = "list",
            member = M.ReportJob,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListReportPlansInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListReportPlansOutput = {
    type = "structure",
    members = {
        ReportPlans = {
            type = "list",
            member = M.ReportPlan,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRestoreAccessBackupVaultsInput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.MpaRevokeSessionStatus = {
    PENDING = "PENDING",
    FAILED = "FAILED",
}

M.LatestRevokeRequest = {
    type = "structure",
    members = {
        MpaSessionArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        InitiationDate = {
            type = "timestamp",
        },
        ExpiryDate = {
            type = "timestamp",
        },
    },
}

M.RestoreAccessBackupVaultListMember = {
    type = "structure",
    members = {
        RestoreAccessBackupVaultArn = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        ApprovalDate = {
            type = "timestamp",
        },
        VaultState = {
            type = "string",
        },
        LatestRevokeRequest = M.LatestRevokeRequest,
    },
}

M.ListRestoreAccessBackupVaultsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        RestoreAccessBackupVaults = {
            type = "list",
            member = M.RestoreAccessBackupVaultListMember,
        },
    },
}

M.ListRestoreJobsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        ByAccountId = {
            type = "string",
            traits = {
                http_query = "accountId",
            },
        },
        ByResourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
            },
        },
        ByCreatedBefore = {
            type = "timestamp",
            traits = {
                http_query = "createdBefore",
            },
        },
        ByCreatedAfter = {
            type = "timestamp",
            traits = {
                http_query = "createdAfter",
            },
        },
        ByStatus = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        ByCompleteBefore = {
            type = "timestamp",
            traits = {
                http_query = "completeBefore",
            },
        },
        ByCompleteAfter = {
            type = "timestamp",
            traits = {
                http_query = "completeAfter",
            },
        },
        ByRestoreTestingPlanArn = {
            type = "string",
            traits = {
                http_query = "restoreTestingPlanArn",
            },
        },
        ByParentJobId = {
            type = "string",
            traits = {
                http_query = "parentJobId",
            },
        },
    },
}

M.RestoreJobsListMember = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
        },
        RestoreJobId = {
            type = "string",
        },
        RecoveryPointArn = {
            type = "string",
        },
        SourceResourceArn = {
            type = "string",
        },
        BackupVaultArn = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        CompletionDate = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        PercentDone = {
            type = "string",
        },
        BackupSizeInBytes = {
            type = "long",
        },
        IamRoleArn = {
            type = "string",
        },
        ExpectedCompletionTimeMinutes = {
            type = "long",
        },
        CreatedResourceArn = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        RecoveryPointCreationDate = {
            type = "timestamp",
        },
        IsParent = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ParentJobId = {
            type = "string",
        },
        CreatedBy = M.RestoreJobCreator,
        ValidationStatus = {
            type = "string",
        },
        ValidationStatusMessage = {
            type = "string",
        },
        DeletionStatus = {
            type = "string",
        },
        DeletionStatusMessage = {
            type = "string",
        },
    },
}

M.ListRestoreJobsOutput = {
    type = "structure",
    members = {
        RestoreJobs = {
            type = "list",
            member = M.RestoreJobsListMember,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRestoreJobsByProtectedResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ByStatus = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        ByRecoveryPointCreationDateAfter = {
            type = "timestamp",
            traits = {
                http_query = "recoveryPointCreationDateAfter",
            },
        },
        ByRecoveryPointCreationDateBefore = {
            type = "timestamp",
            traits = {
                http_query = "recoveryPointCreationDateBefore",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListRestoreJobsByProtectedResourceOutput = {
    type = "structure",
    members = {
        RestoreJobs = {
            type = "list",
            member = M.RestoreJobsListMember,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RestoreJobState = {
    CREATED = "CREATED",
    PENDING = "PENDING",
    RUNNING = "RUNNING",
    ABORTED = "ABORTED",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    AGGREGATE_ALL = "AGGREGATE_ALL",
    ANY = "ANY",
}

M.ListRestoreJobSummariesInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_query = "AccountId",
            },
        },
        State = {
            type = "string",
            traits = {
                http_query = "State",
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                http_query = "ResourceType",
            },
        },
        AggregationPeriod = {
            type = "string",
            traits = {
                http_query = "AggregationPeriod",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.RestoreJobSummary = {
    type = "structure",
    members = {
        Region = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        Count = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
    },
}

M.ListRestoreJobSummariesOutput = {
    type = "structure",
    members = {
        RestoreJobSummaries = {
            type = "list",
            member = M.RestoreJobSummary,
        },
        AggregationPeriod = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRestoreTestingPlansInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.RestoreTestingPlanForList = {
    type = "structure",
    members = {
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastExecutionTime = {
            type = "timestamp",
        },
        LastUpdateTime = {
            type = "timestamp",
        },
        RestoreTestingPlanArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RestoreTestingPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScheduleExpression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScheduleExpressionTimezone = {
            type = "string",
        },
        StartWindowHours = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.ListRestoreTestingPlansOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        RestoreTestingPlans = {
            type = "list",
            member = M.RestoreTestingPlanForList,
            traits = {
                required = true,
            },
        },
    },
}

M.ListRestoreTestingSelectionsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        RestoreTestingPlanName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RestoreTestingSelectionForList = {
    type = "structure",
    members = {
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        IamRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProtectedResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RestoreTestingPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RestoreTestingSelectionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValidationWindowHours = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.ListRestoreTestingSelectionsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        RestoreTestingSelections = {
            type = "list",
            member = M.RestoreTestingSelectionForList,
            traits = {
                required = true,
            },
        },
    },
}

M.ListScanJobsInput = {
    type = "structure",
    members = {
        ByAccountId = {
            type = "string",
            traits = {
                http_query = "ByAccountId",
            },
        },
        ByBackupVaultName = {
            type = "string",
            traits = {
                http_query = "ByBackupVaultName",
            },
        },
        ByCompleteAfter = {
            type = "timestamp",
            traits = {
                http_query = "ByCompleteAfter",
            },
        },
        ByCompleteBefore = {
            type = "timestamp",
            traits = {
                http_query = "ByCompleteBefore",
            },
        },
        ByMalwareScanner = {
            type = "string",
            traits = {
                http_query = "ByMalwareScanner",
            },
        },
        ByRecoveryPointArn = {
            type = "string",
            traits = {
                http_query = "ByRecoveryPointArn",
            },
        },
        ByResourceArn = {
            type = "string",
            traits = {
                http_query = "ByResourceArn",
            },
        },
        ByResourceType = {
            type = "string",
            traits = {
                http_query = "ByResourceType",
            },
        },
        ByScanResultStatus = {
            type = "string",
            traits = {
                http_query = "ByScanResultStatus",
            },
        },
        ByState = {
            type = "string",
            traits = {
                http_query = "ByState",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ScanJob = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BackupVaultArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BackupVaultName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CompletionDate = {
            type = "timestamp",
        },
        CreatedBy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScanJobCreator }),
        CreationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        IamRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MalwareScanner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecoveryPointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceName = {
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
        ScanBaseRecoveryPointArn = {
            type = "string",
        },
        ScanId = {
            type = "string",
        },
        ScanJobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScanMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScanResult = M.ScanResultInfo,
        ScannerRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        State = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
    },
}

M.ListScanJobsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        ScanJobs = {
            type = "list",
            member = M.ScanJob,
            traits = {
                required = true,
            },
        },
    },
}

M.ScanJobStatus = {
    CREATED = "CREATED",
    COMPLETED = "COMPLETED",
    COMPLETED_WITH_ISSUES = "COMPLETED_WITH_ISSUES",
    RUNNING = "RUNNING",
    FAILED = "FAILED",
    CANCELED = "CANCELED",
    AGGREGATE_ALL = "AGGREGATE_ALL",
    ANY = "ANY",
}

M.ListScanJobSummariesInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_query = "AccountId",
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                http_query = "ResourceType",
            },
        },
        MalwareScanner = {
            type = "string",
            traits = {
                http_query = "MalwareScanner",
            },
        },
        ScanResultStatus = {
            type = "string",
            traits = {
                http_query = "ScanResultStatus",
            },
        },
        State = {
            type = "string",
            traits = {
                http_query = "State",
            },
        },
        AggregationPeriod = {
            type = "string",
            traits = {
                http_query = "AggregationPeriod",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ScanJobSummary = {
    type = "structure",
    members = {
        Region = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        Count = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        MalwareScanner = {
            type = "string",
        },
        ScanResultStatus = {
            type = "string",
        },
    },
}

M.ListScanJobSummariesOutput = {
    type = "structure",
    members = {
        ScanJobSummaries = {
            type = "list",
            member = M.ScanJobSummary,
        },
        AggregationPeriod = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListTagsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListTieringConfigurationsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
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

M.TieringConfigurationsListMember = {
    type = "structure",
    members = {
        TieringConfigurationArn = {
            type = "string",
        },
        TieringConfigurationName = {
            type = "string",
        },
        BackupVaultName = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
    },
}

M.ListTieringConfigurationsOutput = {
    type = "structure",
    members = {
        TieringConfigurations = {
            type = "list",
            member = M.TieringConfigurationsListMember,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PutBackupVaultAccessPolicyInput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Policy = {
            type = "string",
        },
    },
}

M.PutBackupVaultAccessPolicyOutput = {
    type = "structure",
}

M.PutBackupVaultLockConfigurationInput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MinRetentionDays = {
            type = "long",
        },
        MaxRetentionDays = {
            type = "long",
        },
        ChangeableForDays = {
            type = "long",
        },
    },
}

M.PutBackupVaultLockConfigurationOutput = {
    type = "structure",
}

M.PutBackupVaultNotificationsInput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SNSTopicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BackupVaultEvents = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.PutBackupVaultNotificationsOutput = {
    type = "structure",
}

M.PutRestoreValidationResultInput = {
    type = "structure",
    members = {
        RestoreJobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ValidationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValidationStatusMessage = {
            type = "string",
        },
    },
}

M.PutRestoreValidationResultOutput = {
    type = "structure",
}

M.RevokeRestoreAccessBackupVaultInput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RestoreAccessBackupVaultArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RequesterComment = {
            type = "string",
            traits = {
                http_query = "requesterComment",
            },
        },
    },
}

M.RevokeRestoreAccessBackupVaultOutput = {
    type = "structure",
}

M.Index = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.StartBackupJobInput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogicallyAirGappedBackupVaultArn = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IamRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdempotencyToken = {
            type = "string",
        },
        StartWindowMinutes = {
            type = "long",
        },
        CompleteWindowMinutes = {
            type = "long",
        },
        Lifecycle = M.Lifecycle,
        RecoveryPointTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        BackupOptions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Index = {
            type = "string",
        },
    },
}

M.StartBackupJobOutput = {
    type = "structure",
    members = {
        BackupJobId = {
            type = "string",
        },
        RecoveryPointArn = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        IsParent = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.StartCopyJobInput = {
    type = "structure",
    members = {
        RecoveryPointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceBackupVaultName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationBackupVaultArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IamRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdempotencyToken = {
            type = "string",
        },
        Lifecycle = M.Lifecycle,
    },
}

M.StartCopyJobOutput = {
    type = "structure",
    members = {
        CopyJobId = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        IsParent = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.StartReportJobInput = {
    type = "structure",
    members = {
        ReportPlanName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IdempotencyToken = {
            type = "string",
        },
    },
}

M.StartReportJobOutput = {
    type = "structure",
    members = {
        ReportJobId = {
            type = "string",
        },
    },
}

M.StartRestoreJobInput = {
    type = "structure",
    members = {
        RecoveryPointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        IamRoleArn = {
            type = "string",
        },
        IdempotencyToken = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        CopySourceTagsToRestoredResource = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.StartRestoreJobOutput = {
    type = "structure",
    members = {
        RestoreJobId = {
            type = "string",
        },
    },
}

M.StartScanJobInput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IamRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdempotencyToken = {
            type = "string",
        },
        MalwareScanner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecoveryPointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScanBaseRecoveryPointArn = {
            type = "string",
        },
        ScanMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScannerRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartScanJobOutput = {
    type = "structure",
    members = {
        CreationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ScanJobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopBackupJobInput = {
    type = "structure",
    members = {
        BackupJobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopBackupJobOutput = {
    type = "structure",
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
                http_label = true,
                required = true,
            },
        },
        TagKeyList = {
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
}

M.UpdateBackupPlanInput = {
    type = "structure",
    members = {
        BackupPlanId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackupPlan = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BackupPlanInput }),
    },
}

M.UpdateBackupPlanOutput = {
    type = "structure",
    members = {
        BackupPlanId = {
            type = "string",
        },
        BackupPlanArn = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        VersionId = {
            type = "string",
        },
        AdvancedBackupSettings = {
            type = "list",
            member = M.AdvancedBackupSetting,
        },
        ScanSettings = {
            type = "list",
            member = M.ScanSetting,
        },
    },
}

M.UpdateFrameworkInput = {
    type = "structure",
    members = {
        FrameworkName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FrameworkDescription = {
            type = "string",
        },
        FrameworkControls = {
            type = "list",
            member = M.FrameworkControl,
        },
        IdempotencyToken = {
            type = "string",
        },
    },
}

M.UpdateFrameworkOutput = {
    type = "structure",
    members = {
        FrameworkName = {
            type = "string",
        },
        FrameworkArn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.UpdateGlobalSettingsInput = {
    type = "structure",
    members = {
        GlobalSettings = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateGlobalSettingsOutput = {
    type = "structure",
}

M.UpdateRecoveryPointIndexSettingsInput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecoveryPointArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IamRoleArn = {
            type = "string",
        },
        Index = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRecoveryPointIndexSettingsOutput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
        },
        RecoveryPointArn = {
            type = "string",
        },
        IndexStatus = {
            type = "string",
        },
        Index = {
            type = "string",
        },
    },
}

M.UpdateRecoveryPointLifecycleInput = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecoveryPointArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Lifecycle = M.Lifecycle,
    },
}

M.UpdateRecoveryPointLifecycleOutput = {
    type = "structure",
    members = {
        BackupVaultArn = {
            type = "string",
        },
        RecoveryPointArn = {
            type = "string",
        },
        Lifecycle = M.Lifecycle,
        CalculatedLifecycle = M.CalculatedLifecycle,
    },
}

M.UpdateRegionSettingsInput = {
    type = "structure",
    members = {
        ResourceTypeOptInPreference = {
            type = "map",
            key = { type = "string" },
            value = { type = "boolean" },
        },
        ResourceTypeManagementPreference = {
            type = "map",
            key = { type = "string" },
            value = { type = "boolean" },
        },
    },
}

M.UpdateRegionSettingsOutput = {
    type = "structure",
}

M.UpdateReportPlanInput = {
    type = "structure",
    members = {
        ReportPlanName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ReportPlanDescription = {
            type = "string",
        },
        ReportDeliveryChannel = M.ReportDeliveryChannel,
        ReportSetting = M.ReportSetting,
        IdempotencyToken = {
            type = "string",
        },
    },
}

M.UpdateReportPlanOutput = {
    type = "structure",
    members = {
        ReportPlanName = {
            type = "string",
        },
        ReportPlanArn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.RestoreTestingPlanForUpdate = {
    type = "structure",
    members = {
        RecoveryPointSelection = M.RestoreTestingRecoveryPointSelection,
        ScheduleExpression = {
            type = "string",
        },
        ScheduleExpressionTimezone = {
            type = "string",
        },
        StartWindowHours = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.UpdateRestoreTestingPlanInput = {
    type = "structure",
    members = {
        RestoreTestingPlan = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RestoreTestingPlanForUpdate }),
        RestoreTestingPlanName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateRestoreTestingPlanOutput = {
    type = "structure",
    members = {
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        RestoreTestingPlanArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RestoreTestingPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.RestoreTestingSelectionForUpdate = {
    type = "structure",
    members = {
        IamRoleArn = {
            type = "string",
        },
        ProtectedResourceArns = {
            type = "list",
            member = { type = "string" },
        },
        ProtectedResourceConditions = M.ProtectedResourceConditions,
        RestoreMetadataOverrides = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ValidationWindowHours = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.UpdateRestoreTestingSelectionInput = {
    type = "structure",
    members = {
        RestoreTestingPlanName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RestoreTestingSelection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RestoreTestingSelectionForUpdate }),
        RestoreTestingSelectionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateRestoreTestingSelectionOutput = {
    type = "structure",
    members = {
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        RestoreTestingPlanArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RestoreTestingPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RestoreTestingSelectionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.TieringConfigurationInputForUpdate = {
    type = "structure",
    members = {
        ResourceSelection = {
            type = "list",
            member = M.ResourceSelection,
            traits = {
                required = true,
            },
        },
        BackupVaultName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTieringConfigurationInput = {
    type = "structure",
    members = {
        TieringConfigurationName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TieringConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TieringConfigurationInputForUpdate }),
    },
}

M.UpdateTieringConfigurationOutput = {
    type = "structure",
    members = {
        TieringConfigurationArn = {
            type = "string",
        },
        TieringConfigurationName = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
    },
}

return M
