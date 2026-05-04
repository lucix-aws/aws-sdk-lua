local M = {}

M.AdvancedBackupSetting = {
    type = "structure",
    id = "AdvancedBackupSetting",
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
    id = "AggregatedScanResult",
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
    id = "AlreadyExistsException",
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
    id = "AssociateBackupVaultMpaApprovalTeamInput",
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
    id = "AssociateBackupVaultMpaApprovalTeamOutput",
}

M.InvalidParameterValueException = {
    type = "structure",
    id = "InvalidParameterValueException",
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
    id = "InvalidRequestException",
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
    id = "MissingParameterValueException",
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
    id = "ResourceNotFoundException",
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
    id = "ServiceUnavailableException",
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
    id = "RecoveryPointCreator",
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
    id = "Lifecycle",
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
    id = "BackupJob",
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
    id = "BackupJobSummary",
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
    id = "CopyAction",
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
    id = "IndexAction",
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
    id = "ScanAction",
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
    id = "BackupRule",
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
    id = "ScanSetting",
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
    id = "BackupPlan",
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
    id = "BackupRuleInput",
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
    id = "BackupPlanInput",
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
    id = "BackupPlansListMember",
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
    id = "BackupPlanTemplatesListMember",
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
    id = "ConditionParameter",
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
    id = "Conditions",
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
    id = "Condition",
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
    id = "BackupSelection",
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
    id = "BackupSelectionsListMember",
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
    id = "BackupVaultListMember",
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
    id = "CalculatedLifecycle",
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
    id = "CancelLegalHoldInput",
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
    id = "CancelLegalHoldOutput",
}

M.InvalidResourceStateException = {
    type = "structure",
    id = "InvalidResourceStateException",
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
    id = "ConflictException",
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
    id = "ControlInputParameter",
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
    id = "ControlScope",
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
    id = "CopyJob",
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
    id = "CopyJobSummary",
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
    id = "CreateBackupPlanInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateBackupPlanOutput = {
    type = "structure",
    id = "CreateBackupPlanOutput",
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
    id = "LimitExceededException",
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
    id = "CreateBackupSelectionInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateBackupSelectionOutput = {
    type = "structure",
    id = "CreateBackupSelectionOutput",
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
    id = "CreateBackupVaultInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateBackupVaultOutput = {
    type = "structure",
    id = "CreateBackupVaultOutput",
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
    id = "FrameworkControl",
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
    id = "CreateFrameworkInput",
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
            traits = {
                idempotency_token = true,
            },
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
    id = "CreateFrameworkOutput",
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
    id = "DateRange",
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
    id = "RecoveryPointSelection",
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
    id = "CreateLegalHoldInput",
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
            traits = {
                idempotency_token = true,
            },
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
    id = "CreateLegalHoldOutput",
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
    id = "CreateLogicallyAirGappedBackupVaultInput",
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
            traits = {
                idempotency_token = true,
            },
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
    id = "CreateLogicallyAirGappedBackupVaultOutput",
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
    id = "ReportDeliveryChannel",
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
    id = "ReportSetting",
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
    id = "CreateReportPlanInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateReportPlanOutput = {
    type = "structure",
    id = "CreateReportPlanOutput",
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
    id = "CreateRestoreAccessBackupVaultInput",
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
            traits = {
                idempotency_token = true,
            },
        },
        RequesterComment = {
            type = "string",
        },
    },
}

M.CreateRestoreAccessBackupVaultOutput = {
    type = "structure",
    id = "CreateRestoreAccessBackupVaultOutput",
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
    id = "RestoreTestingRecoveryPointSelection",
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
    id = "RestoreTestingPlanForCreate",
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
    id = "CreateRestoreTestingPlanInput",
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
    id = "CreateRestoreTestingPlanOutput",
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
    id = "KeyValue",
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
    id = "ProtectedResourceConditions",
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
    id = "RestoreTestingSelectionForCreate",
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
    id = "CreateRestoreTestingSelectionInput",
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
    id = "CreateRestoreTestingSelectionOutput",
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
    id = "ResourceSelection",
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
    id = "TieringConfigurationInputForCreate",
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
    id = "CreateTieringConfigurationInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateTieringConfigurationOutput = {
    type = "structure",
    id = "CreateTieringConfigurationOutput",
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
    id = "DeleteBackupPlanInput",
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
    id = "DeleteBackupPlanOutput",
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
    id = "DeleteBackupSelectionInput",
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
    id = "DeleteBackupSelectionOutput",
}

M.DeleteBackupVaultInput = {
    type = "structure",
    id = "DeleteBackupVaultInput",
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
    id = "DeleteBackupVaultOutput",
}

M.DeleteBackupVaultAccessPolicyInput = {
    type = "structure",
    id = "DeleteBackupVaultAccessPolicyInput",
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
    id = "DeleteBackupVaultAccessPolicyOutput",
}

M.DeleteBackupVaultLockConfigurationInput = {
    type = "structure",
    id = "DeleteBackupVaultLockConfigurationInput",
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
    id = "DeleteBackupVaultLockConfigurationOutput",
}

M.DeleteBackupVaultNotificationsInput = {
    type = "structure",
    id = "DeleteBackupVaultNotificationsInput",
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
    id = "DeleteBackupVaultNotificationsOutput",
}

M.DeleteFrameworkInput = {
    type = "structure",
    id = "DeleteFrameworkInput",
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
    id = "DeleteFrameworkOutput",
}

M.DeleteRecoveryPointInput = {
    type = "structure",
    id = "DeleteRecoveryPointInput",
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
    id = "DeleteRecoveryPointOutput",
}

M.DeleteReportPlanInput = {
    type = "structure",
    id = "DeleteReportPlanInput",
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
    id = "DeleteReportPlanOutput",
}

M.DeleteRestoreTestingPlanInput = {
    type = "structure",
    id = "DeleteRestoreTestingPlanInput",
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
    id = "DeleteRestoreTestingPlanOutput",
}

M.DeleteRestoreTestingSelectionInput = {
    type = "structure",
    id = "DeleteRestoreTestingSelectionInput",
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
    id = "DeleteRestoreTestingSelectionOutput",
}

M.DeleteTieringConfigurationInput = {
    type = "structure",
    id = "DeleteTieringConfigurationInput",
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
    id = "DeleteTieringConfigurationOutput",
}

M.DependencyFailureException = {
    type = "structure",
    id = "DependencyFailureException",
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
    id = "DescribeBackupJobInput",
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
    id = "DescribeBackupJobOutput",
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
    id = "DescribeBackupVaultInput",
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
    id = "LatestMpaApprovalTeamUpdate",
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
    id = "DescribeBackupVaultOutput",
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
    id = "DescribeCopyJobInput",
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
    id = "DescribeCopyJobOutput",
    members = {
        CopyJob = M.CopyJob,
    },
}

M.DescribeFrameworkInput = {
    type = "structure",
    id = "DescribeFrameworkInput",
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
    id = "DescribeFrameworkOutput",
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
    id = "DescribeGlobalSettingsInput",
}

M.DescribeGlobalSettingsOutput = {
    type = "structure",
    id = "DescribeGlobalSettingsOutput",
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
    id = "DescribeProtectedResourceInput",
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
    id = "DescribeProtectedResourceOutput",
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
    id = "DescribeRecoveryPointInput",
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
    id = "ScanResult",
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
    id = "DescribeRecoveryPointOutput",
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
    id = "DescribeRegionSettingsInput",
}

M.DescribeRegionSettingsOutput = {
    type = "structure",
    id = "DescribeRegionSettingsOutput",
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
    id = "DescribeReportJobInput",
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
    id = "ReportDestination",
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
    id = "ReportJob",
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
    id = "DescribeReportJobOutput",
    members = {
        ReportJob = M.ReportJob,
    },
}

M.DescribeReportPlanInput = {
    type = "structure",
    id = "DescribeReportPlanInput",
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
    id = "ReportPlan",
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
    id = "DescribeReportPlanOutput",
    members = {
        ReportPlan = M.ReportPlan,
    },
}

M.DescribeRestoreJobInput = {
    type = "structure",
    id = "DescribeRestoreJobInput",
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
    id = "RestoreJobCreator",
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
    id = "DescribeRestoreJobOutput",
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
    id = "DescribeScanJobInput",
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
    id = "ScanJobCreator",
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
    id = "ScanResultInfo",
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
    id = "DescribeScanJobOutput",
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
    id = "DisassociateBackupVaultMpaApprovalTeamInput",
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
    id = "DisassociateBackupVaultMpaApprovalTeamOutput",
}

M.DisassociateRecoveryPointInput = {
    type = "structure",
    id = "DisassociateRecoveryPointInput",
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
    id = "DisassociateRecoveryPointOutput",
}

M.DisassociateRecoveryPointFromParentInput = {
    type = "structure",
    id = "DisassociateRecoveryPointFromParentInput",
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
    id = "DisassociateRecoveryPointFromParentOutput",
}

M.ExportBackupPlanTemplateInput = {
    type = "structure",
    id = "ExportBackupPlanTemplateInput",
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
    id = "ExportBackupPlanTemplateOutput",
    members = {
        BackupPlanTemplateJson = {
            type = "string",
        },
    },
}

M.GetBackupPlanInput = {
    type = "structure",
    id = "GetBackupPlanInput",
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
    id = "ScheduledPlanExecutionMember",
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
    id = "GetBackupPlanOutput",
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
    id = "GetBackupPlanFromJSONInput",
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
    id = "GetBackupPlanFromJSONOutput",
    members = {
        BackupPlan = M.BackupPlan,
    },
}

M.GetBackupPlanFromTemplateInput = {
    type = "structure",
    id = "GetBackupPlanFromTemplateInput",
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
    id = "GetBackupPlanFromTemplateOutput",
    members = {
        BackupPlanDocument = M.BackupPlan,
    },
}

M.GetBackupSelectionInput = {
    type = "structure",
    id = "GetBackupSelectionInput",
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
    id = "GetBackupSelectionOutput",
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
    id = "GetBackupVaultAccessPolicyInput",
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
    id = "GetBackupVaultAccessPolicyOutput",
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
    id = "GetBackupVaultNotificationsInput",
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
    id = "GetBackupVaultNotificationsOutput",
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
    id = "GetLegalHoldInput",
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
    id = "GetLegalHoldOutput",
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
    id = "GetRecoveryPointIndexDetailsInput",
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
    id = "GetRecoveryPointIndexDetailsOutput",
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
    id = "GetRecoveryPointRestoreMetadataInput",
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
    id = "GetRecoveryPointRestoreMetadataOutput",
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
    id = "GetRestoreJobMetadataInput",
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
    id = "GetRestoreJobMetadataOutput",
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
    id = "GetRestoreTestingInferredMetadataInput",
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
    id = "GetRestoreTestingInferredMetadataOutput",
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
    id = "GetRestoreTestingPlanInput",
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
    id = "RestoreTestingPlanForGet",
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
    id = "GetRestoreTestingPlanOutput",
    members = {
        RestoreTestingPlan = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RestoreTestingPlanForGet }),
    },
}

M.GetRestoreTestingSelectionInput = {
    type = "structure",
    id = "GetRestoreTestingSelectionInput",
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
    id = "RestoreTestingSelectionForGet",
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
    id = "GetRestoreTestingSelectionOutput",
    members = {
        RestoreTestingSelection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RestoreTestingSelectionForGet }),
    },
}

M.GetSupportedResourceTypesInput = {
    type = "structure",
    id = "GetSupportedResourceTypesInput",
}

M.GetSupportedResourceTypesOutput = {
    type = "structure",
    id = "GetSupportedResourceTypesOutput",
    members = {
        ResourceTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetTieringConfigurationInput = {
    type = "structure",
    id = "GetTieringConfigurationInput",
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
    id = "TieringConfiguration",
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
    id = "GetTieringConfigurationOutput",
    members = {
        TieringConfiguration = M.TieringConfiguration,
    },
}

M.ListBackupJobsInput = {
    type = "structure",
    id = "ListBackupJobsInput",
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
    id = "ListBackupJobsOutput",
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
    id = "ListBackupJobSummariesInput",
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
    id = "ListBackupJobSummariesOutput",
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
    id = "ListBackupPlansInput",
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
    id = "ListBackupPlansOutput",
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
    id = "ListBackupPlanTemplatesInput",
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
    id = "ListBackupPlanTemplatesOutput",
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
    id = "ListBackupPlanVersionsInput",
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
    id = "ListBackupPlanVersionsOutput",
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
    id = "ListBackupSelectionsInput",
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
    id = "ListBackupSelectionsOutput",
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
    id = "ListBackupVaultsInput",
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
    id = "ListBackupVaultsOutput",
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
    id = "ListCopyJobsInput",
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
    id = "ListCopyJobsOutput",
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
    id = "ListCopyJobSummariesInput",
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
    id = "ListCopyJobSummariesOutput",
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
    id = "ListFrameworksInput",
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
    id = "Framework",
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
    id = "ListFrameworksOutput",
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
    id = "ListIndexedRecoveryPointsInput",
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
    id = "IndexedRecoveryPoint",
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
    id = "ListIndexedRecoveryPointsOutput",
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
    id = "ListLegalHoldsInput",
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
    id = "LegalHold",
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
    id = "ListLegalHoldsOutput",
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
    id = "ListProtectedResourcesInput",
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
    id = "ProtectedResource",
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
    id = "ListProtectedResourcesOutput",
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
    id = "ListProtectedResourcesByBackupVaultInput",
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
    id = "ListProtectedResourcesByBackupVaultOutput",
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
    id = "ListRecoveryPointsByBackupVaultInput",
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
    id = "RecoveryPointByBackupVault",
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
    id = "ListRecoveryPointsByBackupVaultOutput",
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
    id = "ListRecoveryPointsByLegalHoldInput",
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
    id = "RecoveryPointMember",
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
    id = "ListRecoveryPointsByLegalHoldOutput",
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
    id = "ListRecoveryPointsByResourceInput",
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
    id = "RecoveryPointByResource",
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
    id = "ListRecoveryPointsByResourceOutput",
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
    id = "ListReportJobsInput",
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
    id = "ListReportJobsOutput",
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
    id = "ListReportPlansInput",
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
    id = "ListReportPlansOutput",
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
    id = "ListRestoreAccessBackupVaultsInput",
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
    id = "LatestRevokeRequest",
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
    id = "RestoreAccessBackupVaultListMember",
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
    id = "ListRestoreAccessBackupVaultsOutput",
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
    id = "ListRestoreJobsInput",
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
    id = "RestoreJobsListMember",
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
    id = "ListRestoreJobsOutput",
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
    id = "ListRestoreJobsByProtectedResourceInput",
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
    id = "ListRestoreJobsByProtectedResourceOutput",
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
    id = "ListRestoreJobSummariesInput",
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
    id = "RestoreJobSummary",
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
    id = "ListRestoreJobSummariesOutput",
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
    id = "ListRestoreTestingPlansInput",
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
    id = "RestoreTestingPlanForList",
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
    id = "ListRestoreTestingPlansOutput",
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
    id = "ListRestoreTestingSelectionsInput",
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
    id = "RestoreTestingSelectionForList",
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
    id = "ListRestoreTestingSelectionsOutput",
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
    id = "ListScanJobsInput",
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
    id = "ScanJob",
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
    id = "ListScanJobsOutput",
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
    id = "ListScanJobSummariesInput",
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
    id = "ScanJobSummary",
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
    id = "ListScanJobSummariesOutput",
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
    id = "ListTagsInput",
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
    id = "ListTagsOutput",
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
    id = "ListTieringConfigurationsInput",
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
    id = "TieringConfigurationsListMember",
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
    id = "ListTieringConfigurationsOutput",
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
    id = "PutBackupVaultAccessPolicyInput",
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
    id = "PutBackupVaultAccessPolicyOutput",
}

M.PutBackupVaultLockConfigurationInput = {
    type = "structure",
    id = "PutBackupVaultLockConfigurationInput",
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
    id = "PutBackupVaultLockConfigurationOutput",
}

M.PutBackupVaultNotificationsInput = {
    type = "structure",
    id = "PutBackupVaultNotificationsInput",
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
    id = "PutBackupVaultNotificationsOutput",
}

M.PutRestoreValidationResultInput = {
    type = "structure",
    id = "PutRestoreValidationResultInput",
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
    id = "PutRestoreValidationResultOutput",
}

M.RevokeRestoreAccessBackupVaultInput = {
    type = "structure",
    id = "RevokeRestoreAccessBackupVaultInput",
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
    id = "RevokeRestoreAccessBackupVaultOutput",
}

M.Index = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.StartBackupJobInput = {
    type = "structure",
    id = "StartBackupJobInput",
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
            traits = {
                idempotency_token = true,
            },
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
    id = "StartBackupJobOutput",
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
    id = "StartCopyJobInput",
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
            traits = {
                idempotency_token = true,
            },
        },
        Lifecycle = M.Lifecycle,
    },
}

M.StartCopyJobOutput = {
    type = "structure",
    id = "StartCopyJobOutput",
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
    id = "StartReportJobInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.StartReportJobOutput = {
    type = "structure",
    id = "StartReportJobOutput",
    members = {
        ReportJobId = {
            type = "string",
        },
    },
}

M.StartRestoreJobInput = {
    type = "structure",
    id = "StartRestoreJobInput",
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
            traits = {
                idempotency_token = true,
            },
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
    id = "StartRestoreJobOutput",
    members = {
        RestoreJobId = {
            type = "string",
        },
    },
}

M.StartScanJobInput = {
    type = "structure",
    id = "StartScanJobInput",
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
    id = "StartScanJobOutput",
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
    id = "StopBackupJobInput",
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
    id = "StopBackupJobOutput",
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

M.UpdateBackupPlanInput = {
    type = "structure",
    id = "UpdateBackupPlanInput",
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
    id = "UpdateBackupPlanOutput",
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
    id = "UpdateFrameworkInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateFrameworkOutput = {
    type = "structure",
    id = "UpdateFrameworkOutput",
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
    id = "UpdateGlobalSettingsInput",
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
    id = "UpdateGlobalSettingsOutput",
}

M.UpdateRecoveryPointIndexSettingsInput = {
    type = "structure",
    id = "UpdateRecoveryPointIndexSettingsInput",
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
    id = "UpdateRecoveryPointIndexSettingsOutput",
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
    id = "UpdateRecoveryPointLifecycleInput",
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
    id = "UpdateRecoveryPointLifecycleOutput",
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
    id = "UpdateRegionSettingsInput",
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
    id = "UpdateRegionSettingsOutput",
}

M.UpdateReportPlanInput = {
    type = "structure",
    id = "UpdateReportPlanInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateReportPlanOutput = {
    type = "structure",
    id = "UpdateReportPlanOutput",
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
    id = "RestoreTestingPlanForUpdate",
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
    id = "UpdateRestoreTestingPlanInput",
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
    id = "UpdateRestoreTestingPlanOutput",
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
    id = "RestoreTestingSelectionForUpdate",
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
    id = "UpdateRestoreTestingSelectionInput",
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
    id = "UpdateRestoreTestingSelectionOutput",
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
    id = "TieringConfigurationInputForUpdate",
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
    id = "UpdateTieringConfigurationInput",
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
    id = "UpdateTieringConfigurationOutput",
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
