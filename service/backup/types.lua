local M = {}

M.AdvancedBackupSetting = {
    type = "structure",
    members = {
        ResourceType = {
            type = "string",
        },
        BackupOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
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
            type = "number",
        },
        DeleteAfterDays = {
            type = "number",
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
        RecoveryPointLifecycle = {
            type = "structure",
        },
        EncryptionKeyArn = {
            type = "string",
        },
        IsEncrypted = {
            type = "boolean",
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
            type = "number",
        },
        IamRoleArn = {
            type = "string",
        },
        CreatedBy = {
            type = "structure",
        },
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
            type = "number",
        },
        BackupOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        BackupType = {
            type = "string",
        },
        ParentJobId = {
            type = "string",
        },
        IsParent = {
            type = "boolean",
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
            type = "number",
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
        Lifecycle = {
            type = "structure",
        },
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
            member_type = "string",
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
            type = "number",
        },
        CompletionWindowMinutes = {
            type = "number",
        },
        Lifecycle = {
            type = "structure",
        },
        RecoveryPointTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        RuleId = {
            type = "string",
        },
        CopyActions = {
            type = "list",
            member_type = "structure",
        },
        EnableContinuousBackup = {
            type = "boolean",
        },
        ScheduleExpressionTimezone = {
            type = "string",
        },
        IndexActions = {
            type = "list",
            member_type = "structure",
        },
        ScanActions = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        AdvancedBackupSettings = {
            type = "list",
            member_type = "structure",
        },
        ScanSettings = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        CompletionWindowMinutes = {
            type = "number",
        },
        Lifecycle = {
            type = "structure",
        },
        RecoveryPointTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        CopyActions = {
            type = "list",
            member_type = "structure",
        },
        EnableContinuousBackup = {
            type = "boolean",
        },
        ScheduleExpressionTimezone = {
            type = "string",
        },
        IndexActions = {
            type = "list",
            member_type = "structure",
        },
        ScanActions = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        AdvancedBackupSettings = {
            type = "list",
            member_type = "structure",
        },
        ScanSettings = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        StringNotEquals = {
            type = "list",
            member_type = "structure",
        },
        StringLike = {
            type = "list",
            member_type = "structure",
        },
        StringNotLike = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        ListOfTags = {
            type = "list",
            member_type = "structure",
        },
        NotResources = {
            type = "list",
            member_type = "string",
        },
        Conditions = {
            type = "structure",
        },
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
            type = "number",
        },
        Locked = {
            type = "boolean",
        },
        MinRetentionDays = {
            type = "number",
        },
        MaxRetentionDays = {
            type = "number",
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
            type = "number",
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
            member_type = "string",
        },
        ComplianceResourceTypes = {
            type = "list",
            member_type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        DestinationRecoveryPointLifecycle = {
            type = "structure",
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
        BackupSizeInBytes = {
            type = "number",
        },
        IamRoleArn = {
            type = "string",
        },
        CreatedBy = {
            type = "structure",
        },
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
        },
        CompositeMemberIdentifier = {
            type = "string",
        },
        NumberOfChildJobs = {
            type = "number",
        },
        ChildJobsInState = {
            type = "map",
            key_type = "string",
            value_type = "number",
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
            type = "number",
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
        BackupPlan = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        BackupPlanTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
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
        BackupSelection = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
        },
        ControlScope = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        IdempotencyToken = {
            type = "string",
        },
        FrameworkTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
        },
        ResourceIdentifiers = {
            type = "list",
            member_type = "string",
        },
        DateRange = {
            type = "structure",
        },
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
        RecoveryPointSelection = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        RecoveryPointSelection = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        CreatorRequestId = {
            type = "string",
        },
        MinRetentionDays = {
            type = "number",
            traits = {
                required = true,
            },
        },
        MaxRetentionDays = {
            type = "number",
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
            member_type = "string",
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
            member_type = "string",
        },
        NumberOfFrameworks = {
            type = "number",
        },
        Accounts = {
            type = "list",
            member_type = "string",
        },
        OrganizationUnits = {
            type = "list",
            member_type = "string",
        },
        Regions = {
            type = "list",
            member_type = "string",
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
        ReportDeliveryChannel = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ReportSetting = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ReportPlanTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
        },
        IncludeVaults = {
            type = "list",
            member_type = "string",
        },
        RecoveryPointTypes = {
            type = "list",
            member_type = "string",
        },
        SelectionWindowDays = {
            type = "number",
        },
    },
}

M.RestoreTestingPlanForCreate = {
    type = "structure",
    members = {
        RecoveryPointSelection = {
            type = "structure",
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
            type = "number",
        },
    },
}

M.CreateRestoreTestingPlanInput = {
    type = "structure",
    members = {
        CreatorRequestId = {
            type = "string",
        },
        RestoreTestingPlan = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
        },
        StringNotEquals = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        ProtectedResourceConditions = {
            type = "structure",
        },
        ProtectedResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RestoreMetadataOverrides = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        RestoreTestingSelectionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValidationWindowHours = {
            type = "number",
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
        RestoreTestingSelection = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        TieringDownSettingsInDays = {
            type = "number",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTieringConfigurationInput = {
    type = "structure",
    members = {
        TieringConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TieringConfigurationTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        RecoveryPointLifecycle = {
            type = "structure",
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
        EncryptionKeyArn = {
            type = "string",
        },
        IsEncrypted = {
            type = "boolean",
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
            type = "number",
        },
        IamRoleArn = {
            type = "string",
        },
        CreatedBy = {
            type = "structure",
        },
        ResourceType = {
            type = "string",
        },
        BytesTransferred = {
            type = "number",
        },
        ExpectedCompletionDate = {
            type = "timestamp",
        },
        StartBy = {
            type = "timestamp",
        },
        BackupOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        BackupType = {
            type = "string",
        },
        ParentJobId = {
            type = "string",
        },
        IsParent = {
            type = "boolean",
        },
        NumberOfChildJobs = {
            type = "number",
        },
        ChildJobsInState = {
            type = "map",
            key_type = "string",
            value_type = "number",
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
            type = "number",
        },
        Locked = {
            type = "boolean",
        },
        MinRetentionDays = {
            type = "number",
        },
        MaxRetentionDays = {
            type = "number",
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
        LatestMpaApprovalTeamUpdate = {
            type = "structure",
        },
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
        CopyJob = {
            type = "structure",
        },
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
            type = "number",
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
            member_type = "string",
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
        CreatedBy = {
            type = "structure",
        },
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
            type = "number",
        },
        CalculatedLifecycle = {
            type = "structure",
        },
        Lifecycle = {
            type = "structure",
        },
        EncryptionKeyArn = {
            type = "string",
        },
        IsEncrypted = {
            type = "boolean",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "boolean",
        },
        ResourceTypeManagementPreference = {
            type = "map",
            key_type = "string",
            value_type = "boolean",
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
            member_type = "string",
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
        ReportDestination = {
            type = "structure",
        },
    },
}

M.DescribeReportJobOutput = {
    type = "structure",
    members = {
        ReportJob = {
            type = "structure",
        },
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
        ReportSetting = {
            type = "structure",
        },
        ReportDeliveryChannel = {
            type = "structure",
        },
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
        ReportPlan = {
            type = "structure",
        },
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
            type = "number",
        },
        IamRoleArn = {
            type = "string",
        },
        ExpectedCompletionTimeMinutes = {
            type = "number",
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
        CreatedBy = {
            type = "structure",
        },
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
        CreatedBy = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        ScanResult = {
            type = "structure",
        },
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
            type = "number",
            traits = {
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
        BackupPlan = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        ScheduledRunsPreview = {
            type = "list",
            member_type = "structure",
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
        BackupPlan = {
            type = "structure",
        },
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
        BackupPlanDocument = {
            type = "structure",
        },
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
        BackupSelection = {
            type = "structure",
        },
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
            member_type = "string",
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
        RecoveryPointSelection = {
            type = "structure",
        },
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
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
        RecoveryPointSelection = {
            type = "structure",
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
            type = "number",
        },
    },
}

M.GetRestoreTestingPlanOutput = {
    type = "structure",
    members = {
        RestoreTestingPlan = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "string",
        },
        ProtectedResourceConditions = {
            type = "structure",
        },
        ProtectedResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RestoreMetadataOverrides = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
        },
    },
}

M.GetRestoreTestingSelectionOutput = {
    type = "structure",
    members = {
        RestoreTestingSelection = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "string",
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
            member_type = "structure",
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
        TieringConfiguration = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
        CreatedBy = {
            type = "structure",
        },
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
            type = "number",
        },
        CalculatedLifecycle = {
            type = "structure",
        },
        Lifecycle = {
            type = "structure",
        },
        EncryptionKeyArn = {
            type = "string",
        },
        IsEncrypted = {
            type = "boolean",
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
        AggregatedScanResult = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        ManagedByAWSBackupOnly = {
            type = "boolean",
            traits = {
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
            type = "number",
        },
        BackupVaultName = {
            type = "string",
        },
        IsParent = {
            type = "boolean",
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
        AggregatedScanResult = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
        LatestRevokeRequest = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
        IamRoleArn = {
            type = "string",
        },
        ExpectedCompletionTimeMinutes = {
            type = "number",
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
        },
        ParentJobId = {
            type = "string",
        },
        CreatedBy = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
        CreatedBy = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        ScanResult = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListTieringConfigurationsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
        MaxRetentionDays = {
            type = "number",
        },
        ChangeableForDays = {
            type = "number",
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
            member_type = "string",
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
            type = "number",
        },
        CompleteWindowMinutes = {
            type = "number",
        },
        Lifecycle = {
            type = "structure",
        },
        RecoveryPointTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        BackupOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        Lifecycle = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
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
        BackupPlan = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
        },
        ScanSettings = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
        Lifecycle = {
            type = "structure",
        },
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
        Lifecycle = {
            type = "structure",
        },
        CalculatedLifecycle = {
            type = "structure",
        },
    },
}

M.UpdateRegionSettingsInput = {
    type = "structure",
    members = {
        ResourceTypeOptInPreference = {
            type = "map",
            key_type = "string",
            value_type = "boolean",
        },
        ResourceTypeManagementPreference = {
            type = "map",
            key_type = "string",
            value_type = "boolean",
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
        ReportDeliveryChannel = {
            type = "structure",
        },
        ReportSetting = {
            type = "structure",
        },
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
        RecoveryPointSelection = {
            type = "structure",
        },
        ScheduleExpression = {
            type = "string",
        },
        ScheduleExpressionTimezone = {
            type = "string",
        },
        StartWindowHours = {
            type = "number",
        },
    },
}

M.UpdateRestoreTestingPlanInput = {
    type = "structure",
    members = {
        RestoreTestingPlan = {
            type = "structure",
            traits = {
                required = true,
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
            member_type = "string",
        },
        ProtectedResourceConditions = {
            type = "structure",
        },
        RestoreMetadataOverrides = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ValidationWindowHours = {
            type = "number",
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
        RestoreTestingSelection = {
            type = "structure",
            traits = {
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
            member_type = "structure",
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
        TieringConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
