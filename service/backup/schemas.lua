

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.backup"

local M = {}

M.Tags = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.AdvancedBackupSettings = schema.new({ type = "list", list_member = M.AdvancedBackupSetting })

M.FrameworkControls = schema.new({ type = "list", list_member = M.FrameworkControl })

M.stringMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.SensitiveStringMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.BackupOptions = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.BackupJobChildJobsInState = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.Long })

M.GlobalSettings = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ScanResults = schema.new({ type = "list", list_member = M.ScanResult })

M.ResourceTypeOptInPreference = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.Boolean })

M.ResourceTypeManagementPreference = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.Boolean })

M.ScheduledRunsPreview = schema.new({ type = "list", list_member = M.ScheduledPlanExecutionMember })

M.BackupVaultEvents = schema.new({ type = "list", list_member = prelude.String })

M.Metadata = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ResourceTypes = schema.new({ type = "list", list_member = prelude.String })

M.BackupJobsList = schema.new({ type = "list", list_member = M.BackupJob })

M.BackupJobSummaryList = schema.new({ type = "list", list_member = M.BackupJobSummary })

M.BackupPlansList = schema.new({ type = "list", list_member = M.BackupPlansListMember })

M.BackupPlanTemplatesList = schema.new({ type = "list", list_member = M.BackupPlanTemplatesListMember })

M.BackupPlanVersionsList = schema.new({ type = "list", list_member = M.BackupPlansListMember })

M.BackupSelectionsList = schema.new({ type = "list", list_member = M.BackupSelectionsListMember })

M.BackupVaultList = schema.new({ type = "list", list_member = M.BackupVaultListMember })

M.CopyJobsList = schema.new({ type = "list", list_member = M.CopyJob })

M.CopyJobSummaryList = schema.new({ type = "list", list_member = M.CopyJobSummary })

M.FrameworkList = schema.new({ type = "list", list_member = M.Framework })

M.IndexedRecoveryPointList = schema.new({ type = "list", list_member = M.IndexedRecoveryPoint })

M.LegalHoldsList = schema.new({ type = "list", list_member = M.LegalHold })

M.ProtectedResourcesList = schema.new({ type = "list", list_member = M.ProtectedResource })

M.RecoveryPointByBackupVaultList = schema.new({ type = "list", list_member = M.RecoveryPointByBackupVault })

M.RecoveryPointsList = schema.new({ type = "list", list_member = M.RecoveryPointMember })

M.RecoveryPointByResourceList = schema.new({ type = "list", list_member = M.RecoveryPointByResource })

M.ReportJobList = schema.new({ type = "list", list_member = M.ReportJob })

M.ReportPlanList = schema.new({ type = "list", list_member = M.ReportPlan })

M.RestoreAccessBackupVaultList = schema.new({ type = "list", list_member = M.RestoreAccessBackupVaultListMember })

M.RestoreJobsList = schema.new({ type = "list", list_member = M.RestoreJobsListMember })

M.RestoreJobSummaryList = schema.new({ type = "list", list_member = M.RestoreJobSummary })

M.RestoreTestingPlans = schema.new({ type = "list", list_member = M.RestoreTestingPlanForList })

M.RestoreTestingSelections = schema.new({ type = "list", list_member = M.RestoreTestingSelectionForList })

M.ScanJobs = schema.new({ type = "list", list_member = M.ScanJob })

M.ScanJobSummaryList = schema.new({ type = "list", list_member = M.ScanJobSummary })

M.TieringConfigurationsList = schema.new({ type = "list", list_member = M.TieringConfigurationsListMember })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.ScanSettings = schema.new({ type = "list", list_member = M.ScanSetting })

M.BackupRulesInput = schema.new({ type = "list", list_member = M.BackupRuleInput })

M.ResourceArns = schema.new({ type = "list", list_member = prelude.String })

M.ListOfTags = schema.new({ type = "list", list_member = M.Condition })

M.VaultNames = schema.new({ type = "list", list_member = prelude.String })

M.ResourceIdentifiers = schema.new({ type = "list", list_member = prelude.String })

M.FormatList = schema.new({ type = "list", list_member = prelude.String })

M.stringList = schema.new({ type = "list", list_member = prelude.String })

M.ResourceSelections = schema.new({ type = "list", list_member = M.ResourceSelection })

M.CopyJobChildJobsInState = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.Long })

M.BackupRules = schema.new({ type = "list", list_member = M.BackupRule })

M.ConditionParameters = schema.new({ type = "list", list_member = M.ConditionParameter })

M.ControlInputParameters = schema.new({ type = "list", list_member = M.ControlInputParameter })

M.RestoreTestingRecoveryPointTypeList = schema.new({ type = "list", list_member = prelude.String })

M.KeyValueList = schema.new({ type = "list", list_member = M.KeyValue })

M.ScanFindings = schema.new({ type = "list", list_member = prelude.String })

M.CopyActions = schema.new({ type = "list", list_member = M.CopyAction })

M.IndexActions = schema.new({ type = "list", list_member = M.IndexAction })

M.ScanActions = schema.new({ type = "list", list_member = M.ScanAction })

M.ComplianceResourceIdList = schema.new({ type = "list", list_member = prelude.String })

M.ResourceTypeList = schema.new({ type = "list", list_member = prelude.String })

M.AdvancedBackupSetting = schema.new({
   id = id.from(_N, "AdvancedBackupSetting"),
   type = "structure",
   members = {
      ResourceType = schema.new({
         id = id.from(_N, "AdvancedBackupSetting", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
      }),
      BackupOptions = schema.new({
         id = id.from(_N, "AdvancedBackupSetting", "BackupOptions"),
         type = "map",
         name = "BackupOptions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.AggregatedScanResult = schema.new({
   id = id.from(_N, "AggregatedScanResult"),
   type = "structure",
   members = {
      FailedScan = schema.new({
         id = id.from(_N, "AggregatedScanResult", "FailedScan"),
         type = "boolean",
         name = "FailedScan",
         target_id = prelude.Boolean.id,
      }),
      Findings = schema.new({
         id = id.from(_N, "AggregatedScanResult", "Findings"),
         type = "list",
         name = "Findings",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      LastComputed = schema.new({
         id = id.from(_N, "AggregatedScanResult", "LastComputed"),
         type = "timestamp",
         name = "LastComputed",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.AlreadyExistsException = schema.new({
   id = id.from(_N, "AlreadyExistsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Code = schema.new({
         id = id.from(_N, "AlreadyExistsException", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "AlreadyExistsException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      CreatorRequestId = schema.new({
         id = id.from(_N, "AlreadyExistsException", "CreatorRequestId"),
         type = "string",
         name = "CreatorRequestId",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "AlreadyExistsException", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "AlreadyExistsException", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      Context = schema.new({
         id = id.from(_N, "AlreadyExistsException", "Context"),
         type = "string",
         name = "Context",
         target_id = prelude.String.id,
      }),
   },
})

M.AssociateBackupVaultMpaApprovalTeamInput = schema.new({
   id = id.from(_N, "AssociateBackupVaultMpaApprovalTeamInput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "AssociateBackupVaultMpaApprovalTeamInput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      MpaApprovalTeamArn = schema.new({
         id = id.from(_N, "AssociateBackupVaultMpaApprovalTeamInput", "MpaApprovalTeamArn"),
         type = "string",
         name = "MpaApprovalTeamArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RequesterComment = schema.new({
         id = id.from(_N, "AssociateBackupVaultMpaApprovalTeamInput", "RequesterComment"),
         type = "string",
         name = "RequesterComment",
         target_id = prelude.String.id,
      }),
   },
})

M.AssociateBackupVaultMpaApprovalTeamOutput = prelude.Unit

M.InvalidParameterValueException = schema.new({
   id = id.from(_N, "InvalidParameterValueException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Code = schema.new({
         id = id.from(_N, "InvalidParameterValueException", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "InvalidParameterValueException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "InvalidParameterValueException", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      Context = schema.new({
         id = id.from(_N, "InvalidParameterValueException", "Context"),
         type = "string",
         name = "Context",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidRequestException = schema.new({
   id = id.from(_N, "InvalidRequestException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Code = schema.new({
         id = id.from(_N, "InvalidRequestException", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "InvalidRequestException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "InvalidRequestException", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      Context = schema.new({
         id = id.from(_N, "InvalidRequestException", "Context"),
         type = "string",
         name = "Context",
         target_id = prelude.String.id,
      }),
   },
})

M.MissingParameterValueException = schema.new({
   id = id.from(_N, "MissingParameterValueException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Code = schema.new({
         id = id.from(_N, "MissingParameterValueException", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "MissingParameterValueException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "MissingParameterValueException", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      Context = schema.new({
         id = id.from(_N, "MissingParameterValueException", "Context"),
         type = "string",
         name = "Context",
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
      Code = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      Context = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "Context"),
         type = "string",
         name = "Context",
         target_id = prelude.String.id,
      }),
   },
})

M.ServiceUnavailableException = schema.new({
   id = id.from(_N, "ServiceUnavailableException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      Code = schema.new({
         id = id.from(_N, "ServiceUnavailableException", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "ServiceUnavailableException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "ServiceUnavailableException", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      Context = schema.new({
         id = id.from(_N, "ServiceUnavailableException", "Context"),
         type = "string",
         name = "Context",
         target_id = prelude.String.id,
      }),
   },
})

M.RecoveryPointCreator = schema.new({
   id = id.from(_N, "RecoveryPointCreator"),
   type = "structure",
   members = {
      BackupPlanId = schema.new({
         id = id.from(_N, "RecoveryPointCreator", "BackupPlanId"),
         type = "string",
         name = "BackupPlanId",
         target_id = prelude.String.id,
      }),
      BackupPlanArn = schema.new({
         id = id.from(_N, "RecoveryPointCreator", "BackupPlanArn"),
         type = "string",
         name = "BackupPlanArn",
         target_id = prelude.String.id,
      }),
      BackupPlanName = schema.new({
         id = id.from(_N, "RecoveryPointCreator", "BackupPlanName"),
         type = "string",
         name = "BackupPlanName",
         target_id = prelude.String.id,
      }),
      BackupPlanVersion = schema.new({
         id = id.from(_N, "RecoveryPointCreator", "BackupPlanVersion"),
         type = "string",
         name = "BackupPlanVersion",
         target_id = prelude.String.id,
      }),
      BackupRuleId = schema.new({
         id = id.from(_N, "RecoveryPointCreator", "BackupRuleId"),
         type = "string",
         name = "BackupRuleId",
         target_id = prelude.String.id,
      }),
      BackupRuleName = schema.new({
         id = id.from(_N, "RecoveryPointCreator", "BackupRuleName"),
         type = "string",
         name = "BackupRuleName",
         target_id = prelude.String.id,
      }),
      BackupRuleCron = schema.new({
         id = id.from(_N, "RecoveryPointCreator", "BackupRuleCron"),
         type = "string",
         name = "BackupRuleCron",
         target_id = prelude.String.id,
      }),
      BackupRuleTimezone = schema.new({
         id = id.from(_N, "RecoveryPointCreator", "BackupRuleTimezone"),
         type = "string",
         name = "BackupRuleTimezone",
         target_id = prelude.String.id,
      }),
   },
})

M.Lifecycle = schema.new({
   id = id.from(_N, "Lifecycle"),
   type = "structure",
   members = {
      MoveToColdStorageAfterDays = schema.new({
         id = id.from(_N, "Lifecycle", "MoveToColdStorageAfterDays"),
         type = "long",
         name = "MoveToColdStorageAfterDays",
         target_id = prelude.Long.id,
      }),
      DeleteAfterDays = schema.new({
         id = id.from(_N, "Lifecycle", "DeleteAfterDays"),
         type = "long",
         name = "DeleteAfterDays",
         target_id = prelude.Long.id,
      }),
      OptInToArchiveForSupportedResources = schema.new({
         id = id.from(_N, "Lifecycle", "OptInToArchiveForSupportedResources"),
         type = "boolean",
         name = "OptInToArchiveForSupportedResources",
         target_id = prelude.Boolean.id,
      }),
      DeleteAfterEvent = schema.new({
         id = id.from(_N, "Lifecycle", "DeleteAfterEvent"),
         type = "string",
         name = "DeleteAfterEvent",
         target_id = prelude.String.id,
      }),
   },
})

M.BackupJob = schema.new({
   id = id.from(_N, "BackupJob"),
   type = "structure",
   members = {
      AccountId = schema.new({
         id = id.from(_N, "BackupJob", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
      }),
      BackupJobId = schema.new({
         id = id.from(_N, "BackupJob", "BackupJobId"),
         type = "string",
         name = "BackupJobId",
         target_id = prelude.String.id,
      }),
      BackupVaultName = schema.new({
         id = id.from(_N, "BackupJob", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
      }),
      BackupVaultArn = schema.new({
         id = id.from(_N, "BackupJob", "BackupVaultArn"),
         type = "string",
         name = "BackupVaultArn",
         target_id = prelude.String.id,
      }),
      VaultType = schema.new({
         id = id.from(_N, "BackupJob", "VaultType"),
         type = "string",
         name = "VaultType",
         target_id = prelude.String.id,
      }),
      VaultLockState = schema.new({
         id = id.from(_N, "BackupJob", "VaultLockState"),
         type = "string",
         name = "VaultLockState",
         target_id = prelude.String.id,
      }),
      RecoveryPointArn = schema.new({
         id = id.from(_N, "BackupJob", "RecoveryPointArn"),
         type = "string",
         name = "RecoveryPointArn",
         target_id = prelude.String.id,
      }),
      RecoveryPointLifecycle = schema.new({
         id = id.from(_N, "BackupJob", "RecoveryPointLifecycle"),
         type = "structure",
         name = "RecoveryPointLifecycle",
         target_id = id.from(_N, "Lifecycle"),
         target = M.Lifecycle,
      }),
      EncryptionKeyArn = schema.new({
         id = id.from(_N, "BackupJob", "EncryptionKeyArn"),
         type = "string",
         name = "EncryptionKeyArn",
         target_id = prelude.String.id,
      }),
      IsEncrypted = schema.new({
         id = id.from(_N, "BackupJob", "IsEncrypted"),
         type = "boolean",
         name = "IsEncrypted",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      ResourceArn = schema.new({
         id = id.from(_N, "BackupJob", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "BackupJob", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      CompletionDate = schema.new({
         id = id.from(_N, "BackupJob", "CompletionDate"),
         type = "timestamp",
         name = "CompletionDate",
         target_id = prelude.Timestamp.id,
      }),
      State = schema.new({
         id = id.from(_N, "BackupJob", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      StatusMessage = schema.new({
         id = id.from(_N, "BackupJob", "StatusMessage"),
         type = "string",
         name = "StatusMessage",
         target_id = prelude.String.id,
      }),
      PercentDone = schema.new({
         id = id.from(_N, "BackupJob", "PercentDone"),
         type = "string",
         name = "PercentDone",
         target_id = prelude.String.id,
      }),
      BackupSizeInBytes = schema.new({
         id = id.from(_N, "BackupJob", "BackupSizeInBytes"),
         type = "long",
         name = "BackupSizeInBytes",
         target_id = prelude.Long.id,
      }),
      IamRoleArn = schema.new({
         id = id.from(_N, "BackupJob", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
      }),
      CreatedBy = schema.new({
         id = id.from(_N, "BackupJob", "CreatedBy"),
         type = "structure",
         name = "CreatedBy",
         target_id = id.from(_N, "RecoveryPointCreator"),
         target = M.RecoveryPointCreator,
      }),
      ExpectedCompletionDate = schema.new({
         id = id.from(_N, "BackupJob", "ExpectedCompletionDate"),
         type = "timestamp",
         name = "ExpectedCompletionDate",
         target_id = prelude.Timestamp.id,
      }),
      StartBy = schema.new({
         id = id.from(_N, "BackupJob", "StartBy"),
         type = "timestamp",
         name = "StartBy",
         target_id = prelude.Timestamp.id,
      }),
      ResourceType = schema.new({
         id = id.from(_N, "BackupJob", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
      }),
      BytesTransferred = schema.new({
         id = id.from(_N, "BackupJob", "BytesTransferred"),
         type = "long",
         name = "BytesTransferred",
         target_id = prelude.Long.id,
      }),
      BackupOptions = schema.new({
         id = id.from(_N, "BackupJob", "BackupOptions"),
         type = "map",
         name = "BackupOptions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      BackupType = schema.new({
         id = id.from(_N, "BackupJob", "BackupType"),
         type = "string",
         name = "BackupType",
         target_id = prelude.String.id,
      }),
      ParentJobId = schema.new({
         id = id.from(_N, "BackupJob", "ParentJobId"),
         type = "string",
         name = "ParentJobId",
         target_id = prelude.String.id,
      }),
      IsParent = schema.new({
         id = id.from(_N, "BackupJob", "IsParent"),
         type = "boolean",
         name = "IsParent",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      ResourceName = schema.new({
         id = id.from(_N, "BackupJob", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
      }),
      InitiationDate = schema.new({
         id = id.from(_N, "BackupJob", "InitiationDate"),
         type = "timestamp",
         name = "InitiationDate",
         target_id = prelude.Timestamp.id,
      }),
      MessageCategory = schema.new({
         id = id.from(_N, "BackupJob", "MessageCategory"),
         type = "string",
         name = "MessageCategory",
         target_id = prelude.String.id,
      }),
   },
})

M.BackupJobSummary = schema.new({
   id = id.from(_N, "BackupJobSummary"),
   type = "structure",
   members = {
      Region = schema.new({
         id = id.from(_N, "BackupJobSummary", "Region"),
         type = "string",
         name = "Region",
         target_id = prelude.String.id,
      }),
      AccountId = schema.new({
         id = id.from(_N, "BackupJobSummary", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "BackupJobSummary", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      ResourceType = schema.new({
         id = id.from(_N, "BackupJobSummary", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
      }),
      MessageCategory = schema.new({
         id = id.from(_N, "BackupJobSummary", "MessageCategory"),
         type = "string",
         name = "MessageCategory",
         target_id = prelude.String.id,
      }),
      Count = schema.new({
         id = id.from(_N, "BackupJobSummary", "Count"),
         type = "integer",
         name = "Count",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      StartTime = schema.new({
         id = id.from(_N, "BackupJobSummary", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
      }),
      EndTime = schema.new({
         id = id.from(_N, "BackupJobSummary", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.CopyAction = schema.new({
   id = id.from(_N, "CopyAction"),
   type = "structure",
   members = {
      Lifecycle = schema.new({
         id = id.from(_N, "CopyAction", "Lifecycle"),
         type = "structure",
         name = "Lifecycle",
         target_id = id.from(_N, "Lifecycle"),
         target = M.Lifecycle,
      }),
      DestinationBackupVaultArn = schema.new({
         id = id.from(_N, "CopyAction", "DestinationBackupVaultArn"),
         type = "string",
         name = "DestinationBackupVaultArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.IndexAction = schema.new({
   id = id.from(_N, "IndexAction"),
   type = "structure",
   members = {
      ResourceTypes = schema.new({
         id = id.from(_N, "IndexAction", "ResourceTypes"),
         type = "list",
         name = "ResourceTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ScanAction = schema.new({
   id = id.from(_N, "ScanAction"),
   type = "structure",
   members = {
      MalwareScanner = schema.new({
         id = id.from(_N, "ScanAction", "MalwareScanner"),
         type = "string",
         name = "MalwareScanner",
         target_id = prelude.String.id,
      }),
      ScanMode = schema.new({
         id = id.from(_N, "ScanAction", "ScanMode"),
         type = "string",
         name = "ScanMode",
         target_id = prelude.String.id,
      }),
   },
})

M.BackupRule = schema.new({
   id = id.from(_N, "BackupRule"),
   type = "structure",
   members = {
      RuleName = schema.new({
         id = id.from(_N, "BackupRule", "RuleName"),
         type = "string",
         name = "RuleName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TargetBackupVaultName = schema.new({
         id = id.from(_N, "BackupRule", "TargetBackupVaultName"),
         type = "string",
         name = "TargetBackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TargetLogicallyAirGappedBackupVaultArn = schema.new({
         id = id.from(_N, "BackupRule", "TargetLogicallyAirGappedBackupVaultArn"),
         type = "string",
         name = "TargetLogicallyAirGappedBackupVaultArn",
         target_id = prelude.String.id,
      }),
      ScheduleExpression = schema.new({
         id = id.from(_N, "BackupRule", "ScheduleExpression"),
         type = "string",
         name = "ScheduleExpression",
         target_id = prelude.String.id,
      }),
      StartWindowMinutes = schema.new({
         id = id.from(_N, "BackupRule", "StartWindowMinutes"),
         type = "long",
         name = "StartWindowMinutes",
         target_id = prelude.Long.id,
      }),
      CompletionWindowMinutes = schema.new({
         id = id.from(_N, "BackupRule", "CompletionWindowMinutes"),
         type = "long",
         name = "CompletionWindowMinutes",
         target_id = prelude.Long.id,
      }),
      Lifecycle = schema.new({
         id = id.from(_N, "BackupRule", "Lifecycle"),
         type = "structure",
         name = "Lifecycle",
         target_id = id.from(_N, "Lifecycle"),
         target = M.Lifecycle,
      }),
      RecoveryPointTags = schema.new({
         id = id.from(_N, "BackupRule", "RecoveryPointTags"),
         type = "map",
         name = "RecoveryPointTags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      RuleId = schema.new({
         id = id.from(_N, "BackupRule", "RuleId"),
         type = "string",
         name = "RuleId",
         target_id = prelude.String.id,
      }),
      CopyActions = schema.new({
         id = id.from(_N, "BackupRule", "CopyActions"),
         type = "list",
         name = "CopyActions",
         target_id = prelude.Document.id,
         list_member = M.CopyAction,
      }),
      EnableContinuousBackup = schema.new({
         id = id.from(_N, "BackupRule", "EnableContinuousBackup"),
         type = "boolean",
         name = "EnableContinuousBackup",
         target_id = prelude.Boolean.id,
      }),
      ScheduleExpressionTimezone = schema.new({
         id = id.from(_N, "BackupRule", "ScheduleExpressionTimezone"),
         type = "string",
         name = "ScheduleExpressionTimezone",
         target_id = prelude.String.id,
      }),
      IndexActions = schema.new({
         id = id.from(_N, "BackupRule", "IndexActions"),
         type = "list",
         name = "IndexActions",
         target_id = prelude.Document.id,
         list_member = M.IndexAction,
      }),
      ScanActions = schema.new({
         id = id.from(_N, "BackupRule", "ScanActions"),
         type = "list",
         name = "ScanActions",
         target_id = prelude.Document.id,
         list_member = M.ScanAction,
      }),
   },
})

M.ScanSetting = schema.new({
   id = id.from(_N, "ScanSetting"),
   type = "structure",
   members = {
      MalwareScanner = schema.new({
         id = id.from(_N, "ScanSetting", "MalwareScanner"),
         type = "string",
         name = "MalwareScanner",
         target_id = prelude.String.id,
      }),
      ResourceTypes = schema.new({
         id = id.from(_N, "ScanSetting", "ResourceTypes"),
         type = "list",
         name = "ResourceTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ScannerRoleArn = schema.new({
         id = id.from(_N, "ScanSetting", "ScannerRoleArn"),
         type = "string",
         name = "ScannerRoleArn",
         target_id = prelude.String.id,
      }),
   },
})

M.BackupPlan = schema.new({
   id = id.from(_N, "BackupPlan"),
   type = "structure",
   members = {
      BackupPlanName = schema.new({
         id = id.from(_N, "BackupPlan", "BackupPlanName"),
         type = "string",
         name = "BackupPlanName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Rules = schema.new({
         id = id.from(_N, "BackupPlan", "Rules"),
         type = "list",
         name = "Rules",
         target_id = prelude.Document.id,
         list_member = M.BackupRule,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AdvancedBackupSettings = schema.new({
         id = id.from(_N, "BackupPlan", "AdvancedBackupSettings"),
         type = "list",
         name = "AdvancedBackupSettings",
         target_id = prelude.Document.id,
         list_member = M.AdvancedBackupSetting,
      }),
      ScanSettings = schema.new({
         id = id.from(_N, "BackupPlan", "ScanSettings"),
         type = "list",
         name = "ScanSettings",
         target_id = prelude.Document.id,
         list_member = M.ScanSetting,
      }),
   },
})

M.BackupRuleInput = schema.new({
   id = id.from(_N, "BackupRuleInput"),
   type = "structure",
   members = {
      RuleName = schema.new({
         id = id.from(_N, "BackupRuleInput", "RuleName"),
         type = "string",
         name = "RuleName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TargetBackupVaultName = schema.new({
         id = id.from(_N, "BackupRuleInput", "TargetBackupVaultName"),
         type = "string",
         name = "TargetBackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TargetLogicallyAirGappedBackupVaultArn = schema.new({
         id = id.from(_N, "BackupRuleInput", "TargetLogicallyAirGappedBackupVaultArn"),
         type = "string",
         name = "TargetLogicallyAirGappedBackupVaultArn",
         target_id = prelude.String.id,
      }),
      ScheduleExpression = schema.new({
         id = id.from(_N, "BackupRuleInput", "ScheduleExpression"),
         type = "string",
         name = "ScheduleExpression",
         target_id = prelude.String.id,
      }),
      StartWindowMinutes = schema.new({
         id = id.from(_N, "BackupRuleInput", "StartWindowMinutes"),
         type = "long",
         name = "StartWindowMinutes",
         target_id = prelude.Long.id,
      }),
      CompletionWindowMinutes = schema.new({
         id = id.from(_N, "BackupRuleInput", "CompletionWindowMinutes"),
         type = "long",
         name = "CompletionWindowMinutes",
         target_id = prelude.Long.id,
      }),
      Lifecycle = schema.new({
         id = id.from(_N, "BackupRuleInput", "Lifecycle"),
         type = "structure",
         name = "Lifecycle",
         target_id = id.from(_N, "Lifecycle"),
         target = M.Lifecycle,
      }),
      RecoveryPointTags = schema.new({
         id = id.from(_N, "BackupRuleInput", "RecoveryPointTags"),
         type = "map",
         name = "RecoveryPointTags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      CopyActions = schema.new({
         id = id.from(_N, "BackupRuleInput", "CopyActions"),
         type = "list",
         name = "CopyActions",
         target_id = prelude.Document.id,
         list_member = M.CopyAction,
      }),
      EnableContinuousBackup = schema.new({
         id = id.from(_N, "BackupRuleInput", "EnableContinuousBackup"),
         type = "boolean",
         name = "EnableContinuousBackup",
         target_id = prelude.Boolean.id,
      }),
      ScheduleExpressionTimezone = schema.new({
         id = id.from(_N, "BackupRuleInput", "ScheduleExpressionTimezone"),
         type = "string",
         name = "ScheduleExpressionTimezone",
         target_id = prelude.String.id,
      }),
      IndexActions = schema.new({
         id = id.from(_N, "BackupRuleInput", "IndexActions"),
         type = "list",
         name = "IndexActions",
         target_id = prelude.Document.id,
         list_member = M.IndexAction,
      }),
      ScanActions = schema.new({
         id = id.from(_N, "BackupRuleInput", "ScanActions"),
         type = "list",
         name = "ScanActions",
         target_id = prelude.Document.id,
         list_member = M.ScanAction,
      }),
   },
})

M.BackupPlanInput = schema.new({
   id = id.from(_N, "BackupPlanInput"),
   type = "structure",
   members = {
      BackupPlanName = schema.new({
         id = id.from(_N, "BackupPlanInput", "BackupPlanName"),
         type = "string",
         name = "BackupPlanName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Rules = schema.new({
         id = id.from(_N, "BackupPlanInput", "Rules"),
         type = "list",
         name = "Rules",
         target_id = prelude.Document.id,
         list_member = M.BackupRuleInput,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AdvancedBackupSettings = schema.new({
         id = id.from(_N, "BackupPlanInput", "AdvancedBackupSettings"),
         type = "list",
         name = "AdvancedBackupSettings",
         target_id = prelude.Document.id,
         list_member = M.AdvancedBackupSetting,
      }),
      ScanSettings = schema.new({
         id = id.from(_N, "BackupPlanInput", "ScanSettings"),
         type = "list",
         name = "ScanSettings",
         target_id = prelude.Document.id,
         list_member = M.ScanSetting,
      }),
   },
})

M.BackupPlansListMember = schema.new({
   id = id.from(_N, "BackupPlansListMember"),
   type = "structure",
   members = {
      BackupPlanArn = schema.new({
         id = id.from(_N, "BackupPlansListMember", "BackupPlanArn"),
         type = "string",
         name = "BackupPlanArn",
         target_id = prelude.String.id,
      }),
      BackupPlanId = schema.new({
         id = id.from(_N, "BackupPlansListMember", "BackupPlanId"),
         type = "string",
         name = "BackupPlanId",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "BackupPlansListMember", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      DeletionDate = schema.new({
         id = id.from(_N, "BackupPlansListMember", "DeletionDate"),
         type = "timestamp",
         name = "DeletionDate",
         target_id = prelude.Timestamp.id,
      }),
      VersionId = schema.new({
         id = id.from(_N, "BackupPlansListMember", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
      }),
      BackupPlanName = schema.new({
         id = id.from(_N, "BackupPlansListMember", "BackupPlanName"),
         type = "string",
         name = "BackupPlanName",
         target_id = prelude.String.id,
      }),
      CreatorRequestId = schema.new({
         id = id.from(_N, "BackupPlansListMember", "CreatorRequestId"),
         type = "string",
         name = "CreatorRequestId",
         target_id = prelude.String.id,
      }),
      LastExecutionDate = schema.new({
         id = id.from(_N, "BackupPlansListMember", "LastExecutionDate"),
         type = "timestamp",
         name = "LastExecutionDate",
         target_id = prelude.Timestamp.id,
      }),
      AdvancedBackupSettings = schema.new({
         id = id.from(_N, "BackupPlansListMember", "AdvancedBackupSettings"),
         type = "list",
         name = "AdvancedBackupSettings",
         target_id = prelude.Document.id,
         list_member = M.AdvancedBackupSetting,
      }),
   },
})

M.BackupPlanTemplatesListMember = schema.new({
   id = id.from(_N, "BackupPlanTemplatesListMember"),
   type = "structure",
   members = {
      BackupPlanTemplateId = schema.new({
         id = id.from(_N, "BackupPlanTemplatesListMember", "BackupPlanTemplateId"),
         type = "string",
         name = "BackupPlanTemplateId",
         target_id = prelude.String.id,
      }),
      BackupPlanTemplateName = schema.new({
         id = id.from(_N, "BackupPlanTemplatesListMember", "BackupPlanTemplateName"),
         type = "string",
         name = "BackupPlanTemplateName",
         target_id = prelude.String.id,
      }),
   },
})

M.ConditionParameter = schema.new({
   id = id.from(_N, "ConditionParameter"),
   type = "structure",
   members = {
      ConditionKey = schema.new({
         id = id.from(_N, "ConditionParameter", "ConditionKey"),
         type = "string",
         name = "ConditionKey",
         target_id = prelude.String.id,
      }),
      ConditionValue = schema.new({
         id = id.from(_N, "ConditionParameter", "ConditionValue"),
         type = "string",
         name = "ConditionValue",
         target_id = prelude.String.id,
      }),
   },
})

M.Conditions = schema.new({
   id = id.from(_N, "Conditions"),
   type = "structure",
   members = {
      StringEquals = schema.new({
         id = id.from(_N, "Conditions", "StringEquals"),
         type = "list",
         name = "StringEquals",
         target_id = prelude.Document.id,
         list_member = M.ConditionParameter,
      }),
      StringNotEquals = schema.new({
         id = id.from(_N, "Conditions", "StringNotEquals"),
         type = "list",
         name = "StringNotEquals",
         target_id = prelude.Document.id,
         list_member = M.ConditionParameter,
      }),
      StringLike = schema.new({
         id = id.from(_N, "Conditions", "StringLike"),
         type = "list",
         name = "StringLike",
         target_id = prelude.Document.id,
         list_member = M.ConditionParameter,
      }),
      StringNotLike = schema.new({
         id = id.from(_N, "Conditions", "StringNotLike"),
         type = "list",
         name = "StringNotLike",
         target_id = prelude.Document.id,
         list_member = M.ConditionParameter,
      }),
   },
})

M.Condition = schema.new({
   id = id.from(_N, "Condition"),
   type = "structure",
   members = {
      ConditionType = schema.new({
         id = id.from(_N, "Condition", "ConditionType"),
         type = "string",
         name = "ConditionType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ConditionKey = schema.new({
         id = id.from(_N, "Condition", "ConditionKey"),
         type = "string",
         name = "ConditionKey",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ConditionValue = schema.new({
         id = id.from(_N, "Condition", "ConditionValue"),
         type = "string",
         name = "ConditionValue",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BackupSelection = schema.new({
   id = id.from(_N, "BackupSelection"),
   type = "structure",
   members = {
      SelectionName = schema.new({
         id = id.from(_N, "BackupSelection", "SelectionName"),
         type = "string",
         name = "SelectionName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IamRoleArn = schema.new({
         id = id.from(_N, "BackupSelection", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Resources = schema.new({
         id = id.from(_N, "BackupSelection", "Resources"),
         type = "list",
         name = "Resources",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ListOfTags = schema.new({
         id = id.from(_N, "BackupSelection", "ListOfTags"),
         type = "list",
         name = "ListOfTags",
         target_id = prelude.Document.id,
         list_member = M.Condition,
      }),
      NotResources = schema.new({
         id = id.from(_N, "BackupSelection", "NotResources"),
         type = "list",
         name = "NotResources",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Conditions = schema.new({
         id = id.from(_N, "BackupSelection", "Conditions"),
         type = "structure",
         name = "Conditions",
         target_id = id.from(_N, "Conditions"),
         target = M.Conditions,
      }),
   },
})

M.BackupSelectionsListMember = schema.new({
   id = id.from(_N, "BackupSelectionsListMember"),
   type = "structure",
   members = {
      SelectionId = schema.new({
         id = id.from(_N, "BackupSelectionsListMember", "SelectionId"),
         type = "string",
         name = "SelectionId",
         target_id = prelude.String.id,
      }),
      SelectionName = schema.new({
         id = id.from(_N, "BackupSelectionsListMember", "SelectionName"),
         type = "string",
         name = "SelectionName",
         target_id = prelude.String.id,
      }),
      BackupPlanId = schema.new({
         id = id.from(_N, "BackupSelectionsListMember", "BackupPlanId"),
         type = "string",
         name = "BackupPlanId",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "BackupSelectionsListMember", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      CreatorRequestId = schema.new({
         id = id.from(_N, "BackupSelectionsListMember", "CreatorRequestId"),
         type = "string",
         name = "CreatorRequestId",
         target_id = prelude.String.id,
      }),
      IamRoleArn = schema.new({
         id = id.from(_N, "BackupSelectionsListMember", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
      }),
   },
})

M.BackupVaultListMember = schema.new({
   id = id.from(_N, "BackupVaultListMember"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "BackupVaultListMember", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
      }),
      BackupVaultArn = schema.new({
         id = id.from(_N, "BackupVaultListMember", "BackupVaultArn"),
         type = "string",
         name = "BackupVaultArn",
         target_id = prelude.String.id,
      }),
      VaultType = schema.new({
         id = id.from(_N, "BackupVaultListMember", "VaultType"),
         type = "string",
         name = "VaultType",
         target_id = prelude.String.id,
      }),
      VaultState = schema.new({
         id = id.from(_N, "BackupVaultListMember", "VaultState"),
         type = "string",
         name = "VaultState",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "BackupVaultListMember", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      EncryptionKeyArn = schema.new({
         id = id.from(_N, "BackupVaultListMember", "EncryptionKeyArn"),
         type = "string",
         name = "EncryptionKeyArn",
         target_id = prelude.String.id,
      }),
      CreatorRequestId = schema.new({
         id = id.from(_N, "BackupVaultListMember", "CreatorRequestId"),
         type = "string",
         name = "CreatorRequestId",
         target_id = prelude.String.id,
      }),
      NumberOfRecoveryPoints = schema.new({
         id = id.from(_N, "BackupVaultListMember", "NumberOfRecoveryPoints"),
         type = "long",
         name = "NumberOfRecoveryPoints",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      Locked = schema.new({
         id = id.from(_N, "BackupVaultListMember", "Locked"),
         type = "boolean",
         name = "Locked",
         target_id = prelude.Boolean.id,
      }),
      MinRetentionDays = schema.new({
         id = id.from(_N, "BackupVaultListMember", "MinRetentionDays"),
         type = "long",
         name = "MinRetentionDays",
         target_id = prelude.Long.id,
      }),
      MaxRetentionDays = schema.new({
         id = id.from(_N, "BackupVaultListMember", "MaxRetentionDays"),
         type = "long",
         name = "MaxRetentionDays",
         target_id = prelude.Long.id,
      }),
      LockDate = schema.new({
         id = id.from(_N, "BackupVaultListMember", "LockDate"),
         type = "timestamp",
         name = "LockDate",
         target_id = prelude.Timestamp.id,
      }),
      EncryptionKeyType = schema.new({
         id = id.from(_N, "BackupVaultListMember", "EncryptionKeyType"),
         type = "string",
         name = "EncryptionKeyType",
         target_id = prelude.String.id,
      }),
   },
})

M.CalculatedLifecycle = schema.new({
   id = id.from(_N, "CalculatedLifecycle"),
   type = "structure",
   members = {
      MoveToColdStorageAt = schema.new({
         id = id.from(_N, "CalculatedLifecycle", "MoveToColdStorageAt"),
         type = "timestamp",
         name = "MoveToColdStorageAt",
         target_id = prelude.Timestamp.id,
      }),
      DeleteAt = schema.new({
         id = id.from(_N, "CalculatedLifecycle", "DeleteAt"),
         type = "timestamp",
         name = "DeleteAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.CancelLegalHoldInput = schema.new({
   id = id.from(_N, "CancelLegalHoldInput"),
   type = "structure",
   members = {
      LegalHoldId = schema.new({
         id = id.from(_N, "CancelLegalHoldInput", "LegalHoldId"),
         type = "string",
         name = "LegalHoldId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      CancelDescription = schema.new({
         id = id.from(_N, "CancelLegalHoldInput", "CancelDescription"),
         type = "string",
         name = "CancelDescription",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "cancelDescription" },
         },
      }),
      RetainRecordInDays = schema.new({
         id = id.from(_N, "CancelLegalHoldInput", "RetainRecordInDays"),
         type = "long",
         name = "RetainRecordInDays",
         target_id = prelude.Long.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "retainRecordInDays" },
         },
      }),
   },
})

M.CancelLegalHoldOutput = schema.new({
   id = id.from(_N, "CancelLegalHoldOutput"),
   type = "structure",
})

M.InvalidResourceStateException = schema.new({
   id = id.from(_N, "InvalidResourceStateException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Code = schema.new({
         id = id.from(_N, "InvalidResourceStateException", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "InvalidResourceStateException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "InvalidResourceStateException", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      Context = schema.new({
         id = id.from(_N, "InvalidResourceStateException", "Context"),
         type = "string",
         name = "Context",
         target_id = prelude.String.id,
      }),
   },
})

M.ConflictException = schema.new({
   id = id.from(_N, "ConflictException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Code = schema.new({
         id = id.from(_N, "ConflictException", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "ConflictException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "ConflictException", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      Context = schema.new({
         id = id.from(_N, "ConflictException", "Context"),
         type = "string",
         name = "Context",
         target_id = prelude.String.id,
      }),
   },
})

M.ControlInputParameter = schema.new({
   id = id.from(_N, "ControlInputParameter"),
   type = "structure",
   members = {
      ParameterName = schema.new({
         id = id.from(_N, "ControlInputParameter", "ParameterName"),
         type = "string",
         name = "ParameterName",
         target_id = prelude.String.id,
      }),
      ParameterValue = schema.new({
         id = id.from(_N, "ControlInputParameter", "ParameterValue"),
         type = "string",
         name = "ParameterValue",
         target_id = prelude.String.id,
      }),
   },
})

M.ControlScope = schema.new({
   id = id.from(_N, "ControlScope"),
   type = "structure",
   members = {
      ComplianceResourceIds = schema.new({
         id = id.from(_N, "ControlScope", "ComplianceResourceIds"),
         type = "list",
         name = "ComplianceResourceIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ComplianceResourceTypes = schema.new({
         id = id.from(_N, "ControlScope", "ComplianceResourceTypes"),
         type = "list",
         name = "ComplianceResourceTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Tags = schema.new({
         id = id.from(_N, "ControlScope", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CopyJob = schema.new({
   id = id.from(_N, "CopyJob"),
   type = "structure",
   members = {
      AccountId = schema.new({
         id = id.from(_N, "CopyJob", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
      }),
      CopyJobId = schema.new({
         id = id.from(_N, "CopyJob", "CopyJobId"),
         type = "string",
         name = "CopyJobId",
         target_id = prelude.String.id,
      }),
      SourceBackupVaultArn = schema.new({
         id = id.from(_N, "CopyJob", "SourceBackupVaultArn"),
         type = "string",
         name = "SourceBackupVaultArn",
         target_id = prelude.String.id,
      }),
      SourceRecoveryPointArn = schema.new({
         id = id.from(_N, "CopyJob", "SourceRecoveryPointArn"),
         type = "string",
         name = "SourceRecoveryPointArn",
         target_id = prelude.String.id,
      }),
      DestinationBackupVaultArn = schema.new({
         id = id.from(_N, "CopyJob", "DestinationBackupVaultArn"),
         type = "string",
         name = "DestinationBackupVaultArn",
         target_id = prelude.String.id,
      }),
      DestinationVaultType = schema.new({
         id = id.from(_N, "CopyJob", "DestinationVaultType"),
         type = "string",
         name = "DestinationVaultType",
         target_id = prelude.String.id,
      }),
      DestinationVaultLockState = schema.new({
         id = id.from(_N, "CopyJob", "DestinationVaultLockState"),
         type = "string",
         name = "DestinationVaultLockState",
         target_id = prelude.String.id,
      }),
      DestinationRecoveryPointArn = schema.new({
         id = id.from(_N, "CopyJob", "DestinationRecoveryPointArn"),
         type = "string",
         name = "DestinationRecoveryPointArn",
         target_id = prelude.String.id,
      }),
      DestinationEncryptionKeyArn = schema.new({
         id = id.from(_N, "CopyJob", "DestinationEncryptionKeyArn"),
         type = "string",
         name = "DestinationEncryptionKeyArn",
         target_id = prelude.String.id,
      }),
      DestinationRecoveryPointLifecycle = schema.new({
         id = id.from(_N, "CopyJob", "DestinationRecoveryPointLifecycle"),
         type = "structure",
         name = "DestinationRecoveryPointLifecycle",
         target_id = id.from(_N, "Lifecycle"),
         target = M.Lifecycle,
      }),
      ResourceArn = schema.new({
         id = id.from(_N, "CopyJob", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "CopyJob", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      CompletionDate = schema.new({
         id = id.from(_N, "CopyJob", "CompletionDate"),
         type = "timestamp",
         name = "CompletionDate",
         target_id = prelude.Timestamp.id,
      }),
      State = schema.new({
         id = id.from(_N, "CopyJob", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      StatusMessage = schema.new({
         id = id.from(_N, "CopyJob", "StatusMessage"),
         type = "string",
         name = "StatusMessage",
         target_id = prelude.String.id,
      }),
      BackupSizeInBytes = schema.new({
         id = id.from(_N, "CopyJob", "BackupSizeInBytes"),
         type = "long",
         name = "BackupSizeInBytes",
         target_id = prelude.Long.id,
      }),
      IamRoleArn = schema.new({
         id = id.from(_N, "CopyJob", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
      }),
      CreatedBy = schema.new({
         id = id.from(_N, "CopyJob", "CreatedBy"),
         type = "structure",
         name = "CreatedBy",
         target_id = id.from(_N, "RecoveryPointCreator"),
         target = M.RecoveryPointCreator,
      }),
      CreatedByBackupJobId = schema.new({
         id = id.from(_N, "CopyJob", "CreatedByBackupJobId"),
         type = "string",
         name = "CreatedByBackupJobId",
         target_id = prelude.String.id,
      }),
      ResourceType = schema.new({
         id = id.from(_N, "CopyJob", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
      }),
      ParentJobId = schema.new({
         id = id.from(_N, "CopyJob", "ParentJobId"),
         type = "string",
         name = "ParentJobId",
         target_id = prelude.String.id,
      }),
      IsParent = schema.new({
         id = id.from(_N, "CopyJob", "IsParent"),
         type = "boolean",
         name = "IsParent",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      CompositeMemberIdentifier = schema.new({
         id = id.from(_N, "CopyJob", "CompositeMemberIdentifier"),
         type = "string",
         name = "CompositeMemberIdentifier",
         target_id = prelude.String.id,
      }),
      NumberOfChildJobs = schema.new({
         id = id.from(_N, "CopyJob", "NumberOfChildJobs"),
         type = "long",
         name = "NumberOfChildJobs",
         target_id = prelude.Long.id,
      }),
      ChildJobsInState = schema.new({
         id = id.from(_N, "CopyJob", "ChildJobsInState"),
         type = "map",
         name = "ChildJobsInState",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.Long,
      }),
      ResourceName = schema.new({
         id = id.from(_N, "CopyJob", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
      }),
      MessageCategory = schema.new({
         id = id.from(_N, "CopyJob", "MessageCategory"),
         type = "string",
         name = "MessageCategory",
         target_id = prelude.String.id,
      }),
   },
})

M.CopyJobSummary = schema.new({
   id = id.from(_N, "CopyJobSummary"),
   type = "structure",
   members = {
      Region = schema.new({
         id = id.from(_N, "CopyJobSummary", "Region"),
         type = "string",
         name = "Region",
         target_id = prelude.String.id,
      }),
      AccountId = schema.new({
         id = id.from(_N, "CopyJobSummary", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "CopyJobSummary", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      ResourceType = schema.new({
         id = id.from(_N, "CopyJobSummary", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
      }),
      MessageCategory = schema.new({
         id = id.from(_N, "CopyJobSummary", "MessageCategory"),
         type = "string",
         name = "MessageCategory",
         target_id = prelude.String.id,
      }),
      Count = schema.new({
         id = id.from(_N, "CopyJobSummary", "Count"),
         type = "integer",
         name = "Count",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      StartTime = schema.new({
         id = id.from(_N, "CopyJobSummary", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
      }),
      EndTime = schema.new({
         id = id.from(_N, "CopyJobSummary", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.CreateBackupPlanInput = schema.new({
   id = id.from(_N, "CreateBackupPlanInput"),
   type = "structure",
   members = {
      BackupPlan = schema.new({
         id = id.from(_N, "CreateBackupPlanInput", "BackupPlan"),
         type = "structure",
         name = "BackupPlan",
         target_id = id.from(_N, "BackupPlanInput"),
         target = M.BackupPlanInput,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BackupPlanTags = schema.new({
         id = id.from(_N, "CreateBackupPlanInput", "BackupPlanTags"),
         type = "map",
         name = "BackupPlanTags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      CreatorRequestId = schema.new({
         id = id.from(_N, "CreateBackupPlanInput", "CreatorRequestId"),
         type = "string",
         name = "CreatorRequestId",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CreateBackupPlanOutput = schema.new({
   id = id.from(_N, "CreateBackupPlanOutput"),
   type = "structure",
   members = {
      BackupPlanId = schema.new({
         id = id.from(_N, "CreateBackupPlanOutput", "BackupPlanId"),
         type = "string",
         name = "BackupPlanId",
         target_id = prelude.String.id,
      }),
      BackupPlanArn = schema.new({
         id = id.from(_N, "CreateBackupPlanOutput", "BackupPlanArn"),
         type = "string",
         name = "BackupPlanArn",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "CreateBackupPlanOutput", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      VersionId = schema.new({
         id = id.from(_N, "CreateBackupPlanOutput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
      }),
      AdvancedBackupSettings = schema.new({
         id = id.from(_N, "CreateBackupPlanOutput", "AdvancedBackupSettings"),
         type = "list",
         name = "AdvancedBackupSettings",
         target_id = prelude.Document.id,
         list_member = M.AdvancedBackupSetting,
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
      Code = schema.new({
         id = id.from(_N, "LimitExceededException", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "LimitExceededException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "LimitExceededException", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      Context = schema.new({
         id = id.from(_N, "LimitExceededException", "Context"),
         type = "string",
         name = "Context",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateBackupSelectionInput = schema.new({
   id = id.from(_N, "CreateBackupSelectionInput"),
   type = "structure",
   members = {
      BackupPlanId = schema.new({
         id = id.from(_N, "CreateBackupSelectionInput", "BackupPlanId"),
         type = "string",
         name = "BackupPlanId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackupSelection = schema.new({
         id = id.from(_N, "CreateBackupSelectionInput", "BackupSelection"),
         type = "structure",
         name = "BackupSelection",
         target_id = id.from(_N, "BackupSelection"),
         target = M.BackupSelection,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreatorRequestId = schema.new({
         id = id.from(_N, "CreateBackupSelectionInput", "CreatorRequestId"),
         type = "string",
         name = "CreatorRequestId",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CreateBackupSelectionOutput = schema.new({
   id = id.from(_N, "CreateBackupSelectionOutput"),
   type = "structure",
   members = {
      SelectionId = schema.new({
         id = id.from(_N, "CreateBackupSelectionOutput", "SelectionId"),
         type = "string",
         name = "SelectionId",
         target_id = prelude.String.id,
      }),
      BackupPlanId = schema.new({
         id = id.from(_N, "CreateBackupSelectionOutput", "BackupPlanId"),
         type = "string",
         name = "BackupPlanId",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "CreateBackupSelectionOutput", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.CreateBackupVaultInput = schema.new({
   id = id.from(_N, "CreateBackupVaultInput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "CreateBackupVaultInput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackupVaultTags = schema.new({
         id = id.from(_N, "CreateBackupVaultInput", "BackupVaultTags"),
         type = "map",
         name = "BackupVaultTags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      EncryptionKeyArn = schema.new({
         id = id.from(_N, "CreateBackupVaultInput", "EncryptionKeyArn"),
         type = "string",
         name = "EncryptionKeyArn",
         target_id = prelude.String.id,
      }),
      CreatorRequestId = schema.new({
         id = id.from(_N, "CreateBackupVaultInput", "CreatorRequestId"),
         type = "string",
         name = "CreatorRequestId",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CreateBackupVaultOutput = schema.new({
   id = id.from(_N, "CreateBackupVaultOutput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "CreateBackupVaultOutput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
      }),
      BackupVaultArn = schema.new({
         id = id.from(_N, "CreateBackupVaultOutput", "BackupVaultArn"),
         type = "string",
         name = "BackupVaultArn",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "CreateBackupVaultOutput", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.FrameworkControl = schema.new({
   id = id.from(_N, "FrameworkControl"),
   type = "structure",
   members = {
      ControlName = schema.new({
         id = id.from(_N, "FrameworkControl", "ControlName"),
         type = "string",
         name = "ControlName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ControlInputParameters = schema.new({
         id = id.from(_N, "FrameworkControl", "ControlInputParameters"),
         type = "list",
         name = "ControlInputParameters",
         target_id = prelude.Document.id,
         list_member = M.ControlInputParameter,
      }),
      ControlScope = schema.new({
         id = id.from(_N, "FrameworkControl", "ControlScope"),
         type = "structure",
         name = "ControlScope",
         target_id = id.from(_N, "ControlScope"),
         target = M.ControlScope,
      }),
   },
})

M.CreateFrameworkInput = schema.new({
   id = id.from(_N, "CreateFrameworkInput"),
   type = "structure",
   members = {
      FrameworkName = schema.new({
         id = id.from(_N, "CreateFrameworkInput", "FrameworkName"),
         type = "string",
         name = "FrameworkName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FrameworkDescription = schema.new({
         id = id.from(_N, "CreateFrameworkInput", "FrameworkDescription"),
         type = "string",
         name = "FrameworkDescription",
         target_id = prelude.String.id,
      }),
      FrameworkControls = schema.new({
         id = id.from(_N, "CreateFrameworkInput", "FrameworkControls"),
         type = "list",
         name = "FrameworkControls",
         target_id = prelude.Document.id,
         list_member = M.FrameworkControl,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IdempotencyToken = schema.new({
         id = id.from(_N, "CreateFrameworkInput", "IdempotencyToken"),
         type = "string",
         name = "IdempotencyToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      FrameworkTags = schema.new({
         id = id.from(_N, "CreateFrameworkInput", "FrameworkTags"),
         type = "map",
         name = "FrameworkTags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreateFrameworkOutput = schema.new({
   id = id.from(_N, "CreateFrameworkOutput"),
   type = "structure",
   members = {
      FrameworkName = schema.new({
         id = id.from(_N, "CreateFrameworkOutput", "FrameworkName"),
         type = "string",
         name = "FrameworkName",
         target_id = prelude.String.id,
      }),
      FrameworkArn = schema.new({
         id = id.from(_N, "CreateFrameworkOutput", "FrameworkArn"),
         type = "string",
         name = "FrameworkArn",
         target_id = prelude.String.id,
      }),
   },
})

M.DateRange = schema.new({
   id = id.from(_N, "DateRange"),
   type = "structure",
   members = {
      FromDate = schema.new({
         id = id.from(_N, "DateRange", "FromDate"),
         type = "timestamp",
         name = "FromDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ToDate = schema.new({
         id = id.from(_N, "DateRange", "ToDate"),
         type = "timestamp",
         name = "ToDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RecoveryPointSelection = schema.new({
   id = id.from(_N, "RecoveryPointSelection"),
   type = "structure",
   members = {
      VaultNames = schema.new({
         id = id.from(_N, "RecoveryPointSelection", "VaultNames"),
         type = "list",
         name = "VaultNames",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ResourceIdentifiers = schema.new({
         id = id.from(_N, "RecoveryPointSelection", "ResourceIdentifiers"),
         type = "list",
         name = "ResourceIdentifiers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      DateRange = schema.new({
         id = id.from(_N, "RecoveryPointSelection", "DateRange"),
         type = "structure",
         name = "DateRange",
         target_id = id.from(_N, "DateRange"),
         target = M.DateRange,
      }),
   },
})

M.CreateLegalHoldInput = schema.new({
   id = id.from(_N, "CreateLegalHoldInput"),
   type = "structure",
   members = {
      Title = schema.new({
         id = id.from(_N, "CreateLegalHoldInput", "Title"),
         type = "string",
         name = "Title",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "CreateLegalHoldInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IdempotencyToken = schema.new({
         id = id.from(_N, "CreateLegalHoldInput", "IdempotencyToken"),
         type = "string",
         name = "IdempotencyToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      RecoveryPointSelection = schema.new({
         id = id.from(_N, "CreateLegalHoldInput", "RecoveryPointSelection"),
         type = "structure",
         name = "RecoveryPointSelection",
         target_id = id.from(_N, "RecoveryPointSelection"),
         target = M.RecoveryPointSelection,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateLegalHoldInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreateLegalHoldOutput = schema.new({
   id = id.from(_N, "CreateLegalHoldOutput"),
   type = "structure",
   members = {
      Title = schema.new({
         id = id.from(_N, "CreateLegalHoldOutput", "Title"),
         type = "string",
         name = "Title",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "CreateLegalHoldOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "CreateLegalHoldOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      LegalHoldId = schema.new({
         id = id.from(_N, "CreateLegalHoldOutput", "LegalHoldId"),
         type = "string",
         name = "LegalHoldId",
         target_id = prelude.String.id,
      }),
      LegalHoldArn = schema.new({
         id = id.from(_N, "CreateLegalHoldOutput", "LegalHoldArn"),
         type = "string",
         name = "LegalHoldArn",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "CreateLegalHoldOutput", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      RecoveryPointSelection = schema.new({
         id = id.from(_N, "CreateLegalHoldOutput", "RecoveryPointSelection"),
         type = "structure",
         name = "RecoveryPointSelection",
         target_id = id.from(_N, "RecoveryPointSelection"),
         target = M.RecoveryPointSelection,
      }),
   },
})

M.CreateLogicallyAirGappedBackupVaultInput = schema.new({
   id = id.from(_N, "CreateLogicallyAirGappedBackupVaultInput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "CreateLogicallyAirGappedBackupVaultInput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackupVaultTags = schema.new({
         id = id.from(_N, "CreateLogicallyAirGappedBackupVaultInput", "BackupVaultTags"),
         type = "map",
         name = "BackupVaultTags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      CreatorRequestId = schema.new({
         id = id.from(_N, "CreateLogicallyAirGappedBackupVaultInput", "CreatorRequestId"),
         type = "string",
         name = "CreatorRequestId",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      MinRetentionDays = schema.new({
         id = id.from(_N, "CreateLogicallyAirGappedBackupVaultInput", "MinRetentionDays"),
         type = "long",
         name = "MinRetentionDays",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaxRetentionDays = schema.new({
         id = id.from(_N, "CreateLogicallyAirGappedBackupVaultInput", "MaxRetentionDays"),
         type = "long",
         name = "MaxRetentionDays",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EncryptionKeyArn = schema.new({
         id = id.from(_N, "CreateLogicallyAirGappedBackupVaultInput", "EncryptionKeyArn"),
         type = "string",
         name = "EncryptionKeyArn",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateLogicallyAirGappedBackupVaultOutput = schema.new({
   id = id.from(_N, "CreateLogicallyAirGappedBackupVaultOutput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "CreateLogicallyAirGappedBackupVaultOutput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
      }),
      BackupVaultArn = schema.new({
         id = id.from(_N, "CreateLogicallyAirGappedBackupVaultOutput", "BackupVaultArn"),
         type = "string",
         name = "BackupVaultArn",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "CreateLogicallyAirGappedBackupVaultOutput", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      VaultState = schema.new({
         id = id.from(_N, "CreateLogicallyAirGappedBackupVaultOutput", "VaultState"),
         type = "string",
         name = "VaultState",
         target_id = prelude.String.id,
      }),
   },
})

M.ReportDeliveryChannel = schema.new({
   id = id.from(_N, "ReportDeliveryChannel"),
   type = "structure",
   members = {
      S3BucketName = schema.new({
         id = id.from(_N, "ReportDeliveryChannel", "S3BucketName"),
         type = "string",
         name = "S3BucketName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      S3KeyPrefix = schema.new({
         id = id.from(_N, "ReportDeliveryChannel", "S3KeyPrefix"),
         type = "string",
         name = "S3KeyPrefix",
         target_id = prelude.String.id,
      }),
      Formats = schema.new({
         id = id.from(_N, "ReportDeliveryChannel", "Formats"),
         type = "list",
         name = "Formats",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ReportSetting = schema.new({
   id = id.from(_N, "ReportSetting"),
   type = "structure",
   members = {
      ReportTemplate = schema.new({
         id = id.from(_N, "ReportSetting", "ReportTemplate"),
         type = "string",
         name = "ReportTemplate",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FrameworkArns = schema.new({
         id = id.from(_N, "ReportSetting", "FrameworkArns"),
         type = "list",
         name = "FrameworkArns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      NumberOfFrameworks = schema.new({
         id = id.from(_N, "ReportSetting", "NumberOfFrameworks"),
         type = "integer",
         name = "NumberOfFrameworks",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      Accounts = schema.new({
         id = id.from(_N, "ReportSetting", "Accounts"),
         type = "list",
         name = "Accounts",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      OrganizationUnits = schema.new({
         id = id.from(_N, "ReportSetting", "OrganizationUnits"),
         type = "list",
         name = "OrganizationUnits",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Regions = schema.new({
         id = id.from(_N, "ReportSetting", "Regions"),
         type = "list",
         name = "Regions",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.CreateReportPlanInput = schema.new({
   id = id.from(_N, "CreateReportPlanInput"),
   type = "structure",
   members = {
      ReportPlanName = schema.new({
         id = id.from(_N, "CreateReportPlanInput", "ReportPlanName"),
         type = "string",
         name = "ReportPlanName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ReportPlanDescription = schema.new({
         id = id.from(_N, "CreateReportPlanInput", "ReportPlanDescription"),
         type = "string",
         name = "ReportPlanDescription",
         target_id = prelude.String.id,
      }),
      ReportDeliveryChannel = schema.new({
         id = id.from(_N, "CreateReportPlanInput", "ReportDeliveryChannel"),
         type = "structure",
         name = "ReportDeliveryChannel",
         target_id = id.from(_N, "ReportDeliveryChannel"),
         target = M.ReportDeliveryChannel,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ReportSetting = schema.new({
         id = id.from(_N, "CreateReportPlanInput", "ReportSetting"),
         type = "structure",
         name = "ReportSetting",
         target_id = id.from(_N, "ReportSetting"),
         target = M.ReportSetting,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ReportPlanTags = schema.new({
         id = id.from(_N, "CreateReportPlanInput", "ReportPlanTags"),
         type = "map",
         name = "ReportPlanTags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      IdempotencyToken = schema.new({
         id = id.from(_N, "CreateReportPlanInput", "IdempotencyToken"),
         type = "string",
         name = "IdempotencyToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CreateReportPlanOutput = schema.new({
   id = id.from(_N, "CreateReportPlanOutput"),
   type = "structure",
   members = {
      ReportPlanName = schema.new({
         id = id.from(_N, "CreateReportPlanOutput", "ReportPlanName"),
         type = "string",
         name = "ReportPlanName",
         target_id = prelude.String.id,
      }),
      ReportPlanArn = schema.new({
         id = id.from(_N, "CreateReportPlanOutput", "ReportPlanArn"),
         type = "string",
         name = "ReportPlanArn",
         target_id = prelude.String.id,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "CreateReportPlanOutput", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.CreateRestoreAccessBackupVaultInput = schema.new({
   id = id.from(_N, "CreateRestoreAccessBackupVaultInput"),
   type = "structure",
   members = {
      SourceBackupVaultArn = schema.new({
         id = id.from(_N, "CreateRestoreAccessBackupVaultInput", "SourceBackupVaultArn"),
         type = "string",
         name = "SourceBackupVaultArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BackupVaultName = schema.new({
         id = id.from(_N, "CreateRestoreAccessBackupVaultInput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
      }),
      BackupVaultTags = schema.new({
         id = id.from(_N, "CreateRestoreAccessBackupVaultInput", "BackupVaultTags"),
         type = "map",
         name = "BackupVaultTags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      CreatorRequestId = schema.new({
         id = id.from(_N, "CreateRestoreAccessBackupVaultInput", "CreatorRequestId"),
         type = "string",
         name = "CreatorRequestId",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      RequesterComment = schema.new({
         id = id.from(_N, "CreateRestoreAccessBackupVaultInput", "RequesterComment"),
         type = "string",
         name = "RequesterComment",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateRestoreAccessBackupVaultOutput = schema.new({
   id = id.from(_N, "CreateRestoreAccessBackupVaultOutput"),
   type = "structure",
   members = {
      RestoreAccessBackupVaultArn = schema.new({
         id = id.from(_N, "CreateRestoreAccessBackupVaultOutput", "RestoreAccessBackupVaultArn"),
         type = "string",
         name = "RestoreAccessBackupVaultArn",
         target_id = prelude.String.id,
      }),
      VaultState = schema.new({
         id = id.from(_N, "CreateRestoreAccessBackupVaultOutput", "VaultState"),
         type = "string",
         name = "VaultState",
         target_id = prelude.String.id,
      }),
      RestoreAccessBackupVaultName = schema.new({
         id = id.from(_N, "CreateRestoreAccessBackupVaultOutput", "RestoreAccessBackupVaultName"),
         type = "string",
         name = "RestoreAccessBackupVaultName",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "CreateRestoreAccessBackupVaultOutput", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.RestoreTestingRecoveryPointSelection = schema.new({
   id = id.from(_N, "RestoreTestingRecoveryPointSelection"),
   type = "structure",
   members = {
      Algorithm = schema.new({
         id = id.from(_N, "RestoreTestingRecoveryPointSelection", "Algorithm"),
         type = "string",
         name = "Algorithm",
         target_id = prelude.String.id,
      }),
      ExcludeVaults = schema.new({
         id = id.from(_N, "RestoreTestingRecoveryPointSelection", "ExcludeVaults"),
         type = "list",
         name = "ExcludeVaults",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      IncludeVaults = schema.new({
         id = id.from(_N, "RestoreTestingRecoveryPointSelection", "IncludeVaults"),
         type = "list",
         name = "IncludeVaults",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      RecoveryPointTypes = schema.new({
         id = id.from(_N, "RestoreTestingRecoveryPointSelection", "RecoveryPointTypes"),
         type = "list",
         name = "RecoveryPointTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      SelectionWindowDays = schema.new({
         id = id.from(_N, "RestoreTestingRecoveryPointSelection", "SelectionWindowDays"),
         type = "integer",
         name = "SelectionWindowDays",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.RestoreTestingPlanForCreate = schema.new({
   id = id.from(_N, "RestoreTestingPlanForCreate"),
   type = "structure",
   members = {
      RecoveryPointSelection = schema.new({
         id = id.from(_N, "RestoreTestingPlanForCreate", "RecoveryPointSelection"),
         type = "structure",
         name = "RecoveryPointSelection",
         target_id = id.from(_N, "RestoreTestingRecoveryPointSelection"),
         target = M.RestoreTestingRecoveryPointSelection,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RestoreTestingPlanName = schema.new({
         id = id.from(_N, "RestoreTestingPlanForCreate", "RestoreTestingPlanName"),
         type = "string",
         name = "RestoreTestingPlanName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ScheduleExpression = schema.new({
         id = id.from(_N, "RestoreTestingPlanForCreate", "ScheduleExpression"),
         type = "string",
         name = "ScheduleExpression",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ScheduleExpressionTimezone = schema.new({
         id = id.from(_N, "RestoreTestingPlanForCreate", "ScheduleExpressionTimezone"),
         type = "string",
         name = "ScheduleExpressionTimezone",
         target_id = prelude.String.id,
      }),
      StartWindowHours = schema.new({
         id = id.from(_N, "RestoreTestingPlanForCreate", "StartWindowHours"),
         type = "integer",
         name = "StartWindowHours",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.CreateRestoreTestingPlanInput = schema.new({
   id = id.from(_N, "CreateRestoreTestingPlanInput"),
   type = "structure",
   members = {
      CreatorRequestId = schema.new({
         id = id.from(_N, "CreateRestoreTestingPlanInput", "CreatorRequestId"),
         type = "string",
         name = "CreatorRequestId",
         target_id = prelude.String.id,
      }),
      RestoreTestingPlan = schema.new({
         id = id.from(_N, "CreateRestoreTestingPlanInput", "RestoreTestingPlan"),
         type = "structure",
         name = "RestoreTestingPlan",
         target_id = id.from(_N, "RestoreTestingPlanForCreate"),
         target = M.RestoreTestingPlanForCreate,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateRestoreTestingPlanInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreateRestoreTestingPlanOutput = schema.new({
   id = id.from(_N, "CreateRestoreTestingPlanOutput"),
   type = "structure",
   members = {
      CreationTime = schema.new({
         id = id.from(_N, "CreateRestoreTestingPlanOutput", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RestoreTestingPlanArn = schema.new({
         id = id.from(_N, "CreateRestoreTestingPlanOutput", "RestoreTestingPlanArn"),
         type = "string",
         name = "RestoreTestingPlanArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RestoreTestingPlanName = schema.new({
         id = id.from(_N, "CreateRestoreTestingPlanOutput", "RestoreTestingPlanName"),
         type = "string",
         name = "RestoreTestingPlanName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.KeyValue = schema.new({
   id = id.from(_N, "KeyValue"),
   type = "structure",
   members = {
      Key = schema.new({
         id = id.from(_N, "KeyValue", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Value = schema.new({
         id = id.from(_N, "KeyValue", "Value"),
         type = "string",
         name = "Value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ProtectedResourceConditions = schema.new({
   id = id.from(_N, "ProtectedResourceConditions"),
   type = "structure",
   members = {
      StringEquals = schema.new({
         id = id.from(_N, "ProtectedResourceConditions", "StringEquals"),
         type = "list",
         name = "StringEquals",
         target_id = prelude.Document.id,
         list_member = M.KeyValue,
      }),
      StringNotEquals = schema.new({
         id = id.from(_N, "ProtectedResourceConditions", "StringNotEquals"),
         type = "list",
         name = "StringNotEquals",
         target_id = prelude.Document.id,
         list_member = M.KeyValue,
      }),
   },
})

M.RestoreTestingSelectionForCreate = schema.new({
   id = id.from(_N, "RestoreTestingSelectionForCreate"),
   type = "structure",
   members = {
      IamRoleArn = schema.new({
         id = id.from(_N, "RestoreTestingSelectionForCreate", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ProtectedResourceArns = schema.new({
         id = id.from(_N, "RestoreTestingSelectionForCreate", "ProtectedResourceArns"),
         type = "list",
         name = "ProtectedResourceArns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ProtectedResourceConditions = schema.new({
         id = id.from(_N, "RestoreTestingSelectionForCreate", "ProtectedResourceConditions"),
         type = "structure",
         name = "ProtectedResourceConditions",
         target_id = id.from(_N, "ProtectedResourceConditions"),
         target = M.ProtectedResourceConditions,
      }),
      ProtectedResourceType = schema.new({
         id = id.from(_N, "RestoreTestingSelectionForCreate", "ProtectedResourceType"),
         type = "string",
         name = "ProtectedResourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RestoreMetadataOverrides = schema.new({
         id = id.from(_N, "RestoreTestingSelectionForCreate", "RestoreMetadataOverrides"),
         type = "map",
         name = "RestoreMetadataOverrides",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      RestoreTestingSelectionName = schema.new({
         id = id.from(_N, "RestoreTestingSelectionForCreate", "RestoreTestingSelectionName"),
         type = "string",
         name = "RestoreTestingSelectionName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ValidationWindowHours = schema.new({
         id = id.from(_N, "RestoreTestingSelectionForCreate", "ValidationWindowHours"),
         type = "integer",
         name = "ValidationWindowHours",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.CreateRestoreTestingSelectionInput = schema.new({
   id = id.from(_N, "CreateRestoreTestingSelectionInput"),
   type = "structure",
   members = {
      CreatorRequestId = schema.new({
         id = id.from(_N, "CreateRestoreTestingSelectionInput", "CreatorRequestId"),
         type = "string",
         name = "CreatorRequestId",
         target_id = prelude.String.id,
      }),
      RestoreTestingPlanName = schema.new({
         id = id.from(_N, "CreateRestoreTestingSelectionInput", "RestoreTestingPlanName"),
         type = "string",
         name = "RestoreTestingPlanName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      RestoreTestingSelection = schema.new({
         id = id.from(_N, "CreateRestoreTestingSelectionInput", "RestoreTestingSelection"),
         type = "structure",
         name = "RestoreTestingSelection",
         target_id = id.from(_N, "RestoreTestingSelectionForCreate"),
         target = M.RestoreTestingSelectionForCreate,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateRestoreTestingSelectionOutput = schema.new({
   id = id.from(_N, "CreateRestoreTestingSelectionOutput"),
   type = "structure",
   members = {
      CreationTime = schema.new({
         id = id.from(_N, "CreateRestoreTestingSelectionOutput", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RestoreTestingPlanArn = schema.new({
         id = id.from(_N, "CreateRestoreTestingSelectionOutput", "RestoreTestingPlanArn"),
         type = "string",
         name = "RestoreTestingPlanArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RestoreTestingPlanName = schema.new({
         id = id.from(_N, "CreateRestoreTestingSelectionOutput", "RestoreTestingPlanName"),
         type = "string",
         name = "RestoreTestingPlanName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RestoreTestingSelectionName = schema.new({
         id = id.from(_N, "CreateRestoreTestingSelectionOutput", "RestoreTestingSelectionName"),
         type = "string",
         name = "RestoreTestingSelectionName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ResourceSelection = schema.new({
   id = id.from(_N, "ResourceSelection"),
   type = "structure",
   members = {
      Resources = schema.new({
         id = id.from(_N, "ResourceSelection", "Resources"),
         type = "list",
         name = "Resources",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TieringDownSettingsInDays = schema.new({
         id = id.from(_N, "ResourceSelection", "TieringDownSettingsInDays"),
         type = "integer",
         name = "TieringDownSettingsInDays",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ResourceType = schema.new({
         id = id.from(_N, "ResourceSelection", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TieringConfigurationInputForCreate = schema.new({
   id = id.from(_N, "TieringConfigurationInputForCreate"),
   type = "structure",
   members = {
      TieringConfigurationName = schema.new({
         id = id.from(_N, "TieringConfigurationInputForCreate", "TieringConfigurationName"),
         type = "string",
         name = "TieringConfigurationName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BackupVaultName = schema.new({
         id = id.from(_N, "TieringConfigurationInputForCreate", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ResourceSelection = schema.new({
         id = id.from(_N, "TieringConfigurationInputForCreate", "ResourceSelection"),
         type = "list",
         name = "ResourceSelection",
         target_id = prelude.Document.id,
         list_member = M.ResourceSelection,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateTieringConfigurationInput = schema.new({
   id = id.from(_N, "CreateTieringConfigurationInput"),
   type = "structure",
   members = {
      TieringConfiguration = schema.new({
         id = id.from(_N, "CreateTieringConfigurationInput", "TieringConfiguration"),
         type = "structure",
         name = "TieringConfiguration",
         target_id = id.from(_N, "TieringConfigurationInputForCreate"),
         target = M.TieringConfigurationInputForCreate,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TieringConfigurationTags = schema.new({
         id = id.from(_N, "CreateTieringConfigurationInput", "TieringConfigurationTags"),
         type = "map",
         name = "TieringConfigurationTags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      CreatorRequestId = schema.new({
         id = id.from(_N, "CreateTieringConfigurationInput", "CreatorRequestId"),
         type = "string",
         name = "CreatorRequestId",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CreateTieringConfigurationOutput = schema.new({
   id = id.from(_N, "CreateTieringConfigurationOutput"),
   type = "structure",
   members = {
      TieringConfigurationArn = schema.new({
         id = id.from(_N, "CreateTieringConfigurationOutput", "TieringConfigurationArn"),
         type = "string",
         name = "TieringConfigurationArn",
         target_id = prelude.String.id,
      }),
      TieringConfigurationName = schema.new({
         id = id.from(_N, "CreateTieringConfigurationOutput", "TieringConfigurationName"),
         type = "string",
         name = "TieringConfigurationName",
         target_id = prelude.String.id,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "CreateTieringConfigurationOutput", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DeleteBackupPlanInput = schema.new({
   id = id.from(_N, "DeleteBackupPlanInput"),
   type = "structure",
   members = {
      BackupPlanId = schema.new({
         id = id.from(_N, "DeleteBackupPlanInput", "BackupPlanId"),
         type = "string",
         name = "BackupPlanId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteBackupPlanOutput = schema.new({
   id = id.from(_N, "DeleteBackupPlanOutput"),
   type = "structure",
   members = {
      BackupPlanId = schema.new({
         id = id.from(_N, "DeleteBackupPlanOutput", "BackupPlanId"),
         type = "string",
         name = "BackupPlanId",
         target_id = prelude.String.id,
      }),
      BackupPlanArn = schema.new({
         id = id.from(_N, "DeleteBackupPlanOutput", "BackupPlanArn"),
         type = "string",
         name = "BackupPlanArn",
         target_id = prelude.String.id,
      }),
      DeletionDate = schema.new({
         id = id.from(_N, "DeleteBackupPlanOutput", "DeletionDate"),
         type = "timestamp",
         name = "DeletionDate",
         target_id = prelude.Timestamp.id,
      }),
      VersionId = schema.new({
         id = id.from(_N, "DeleteBackupPlanOutput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteBackupSelectionInput = schema.new({
   id = id.from(_N, "DeleteBackupSelectionInput"),
   type = "structure",
   members = {
      BackupPlanId = schema.new({
         id = id.from(_N, "DeleteBackupSelectionInput", "BackupPlanId"),
         type = "string",
         name = "BackupPlanId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      SelectionId = schema.new({
         id = id.from(_N, "DeleteBackupSelectionInput", "SelectionId"),
         type = "string",
         name = "SelectionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteBackupSelectionOutput = prelude.Unit

M.DeleteBackupVaultInput = schema.new({
   id = id.from(_N, "DeleteBackupVaultInput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "DeleteBackupVaultInput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteBackupVaultOutput = prelude.Unit

M.DeleteBackupVaultAccessPolicyInput = schema.new({
   id = id.from(_N, "DeleteBackupVaultAccessPolicyInput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "DeleteBackupVaultAccessPolicyInput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteBackupVaultAccessPolicyOutput = prelude.Unit

M.DeleteBackupVaultLockConfigurationInput = schema.new({
   id = id.from(_N, "DeleteBackupVaultLockConfigurationInput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "DeleteBackupVaultLockConfigurationInput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteBackupVaultLockConfigurationOutput = prelude.Unit

M.DeleteBackupVaultNotificationsInput = schema.new({
   id = id.from(_N, "DeleteBackupVaultNotificationsInput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "DeleteBackupVaultNotificationsInput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteBackupVaultNotificationsOutput = prelude.Unit

M.DeleteFrameworkInput = schema.new({
   id = id.from(_N, "DeleteFrameworkInput"),
   type = "structure",
   members = {
      FrameworkName = schema.new({
         id = id.from(_N, "DeleteFrameworkInput", "FrameworkName"),
         type = "string",
         name = "FrameworkName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteFrameworkOutput = prelude.Unit

M.DeleteRecoveryPointInput = schema.new({
   id = id.from(_N, "DeleteRecoveryPointInput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "DeleteRecoveryPointInput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      RecoveryPointArn = schema.new({
         id = id.from(_N, "DeleteRecoveryPointInput", "RecoveryPointArn"),
         type = "string",
         name = "RecoveryPointArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteRecoveryPointOutput = prelude.Unit

M.DeleteReportPlanInput = schema.new({
   id = id.from(_N, "DeleteReportPlanInput"),
   type = "structure",
   members = {
      ReportPlanName = schema.new({
         id = id.from(_N, "DeleteReportPlanInput", "ReportPlanName"),
         type = "string",
         name = "ReportPlanName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteReportPlanOutput = prelude.Unit

M.DeleteRestoreTestingPlanInput = schema.new({
   id = id.from(_N, "DeleteRestoreTestingPlanInput"),
   type = "structure",
   members = {
      RestoreTestingPlanName = schema.new({
         id = id.from(_N, "DeleteRestoreTestingPlanInput", "RestoreTestingPlanName"),
         type = "string",
         name = "RestoreTestingPlanName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteRestoreTestingPlanOutput = prelude.Unit

M.DeleteRestoreTestingSelectionInput = schema.new({
   id = id.from(_N, "DeleteRestoreTestingSelectionInput"),
   type = "structure",
   members = {
      RestoreTestingPlanName = schema.new({
         id = id.from(_N, "DeleteRestoreTestingSelectionInput", "RestoreTestingPlanName"),
         type = "string",
         name = "RestoreTestingPlanName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      RestoreTestingSelectionName = schema.new({
         id = id.from(_N, "DeleteRestoreTestingSelectionInput", "RestoreTestingSelectionName"),
         type = "string",
         name = "RestoreTestingSelectionName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteRestoreTestingSelectionOutput = prelude.Unit

M.DeleteTieringConfigurationInput = schema.new({
   id = id.from(_N, "DeleteTieringConfigurationInput"),
   type = "structure",
   members = {
      TieringConfigurationName = schema.new({
         id = id.from(_N, "DeleteTieringConfigurationInput", "TieringConfigurationName"),
         type = "string",
         name = "TieringConfigurationName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteTieringConfigurationOutput = schema.new({
   id = id.from(_N, "DeleteTieringConfigurationOutput"),
   type = "structure",
})

M.DependencyFailureException = schema.new({
   id = id.from(_N, "DependencyFailureException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      Code = schema.new({
         id = id.from(_N, "DependencyFailureException", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "DependencyFailureException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "DependencyFailureException", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      Context = schema.new({
         id = id.from(_N, "DependencyFailureException", "Context"),
         type = "string",
         name = "Context",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeBackupJobInput = schema.new({
   id = id.from(_N, "DescribeBackupJobInput"),
   type = "structure",
   members = {
      BackupJobId = schema.new({
         id = id.from(_N, "DescribeBackupJobInput", "BackupJobId"),
         type = "string",
         name = "BackupJobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeBackupJobOutput = schema.new({
   id = id.from(_N, "DescribeBackupJobOutput"),
   type = "structure",
   members = {
      AccountId = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
      }),
      BackupJobId = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "BackupJobId"),
         type = "string",
         name = "BackupJobId",
         target_id = prelude.String.id,
      }),
      BackupVaultName = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
      }),
      RecoveryPointLifecycle = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "RecoveryPointLifecycle"),
         type = "structure",
         name = "RecoveryPointLifecycle",
         target_id = id.from(_N, "Lifecycle"),
         target = M.Lifecycle,
      }),
      BackupVaultArn = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "BackupVaultArn"),
         type = "string",
         name = "BackupVaultArn",
         target_id = prelude.String.id,
      }),
      VaultType = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "VaultType"),
         type = "string",
         name = "VaultType",
         target_id = prelude.String.id,
      }),
      VaultLockState = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "VaultLockState"),
         type = "string",
         name = "VaultLockState",
         target_id = prelude.String.id,
      }),
      RecoveryPointArn = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "RecoveryPointArn"),
         type = "string",
         name = "RecoveryPointArn",
         target_id = prelude.String.id,
      }),
      EncryptionKeyArn = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "EncryptionKeyArn"),
         type = "string",
         name = "EncryptionKeyArn",
         target_id = prelude.String.id,
      }),
      IsEncrypted = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "IsEncrypted"),
         type = "boolean",
         name = "IsEncrypted",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      ResourceArn = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      CompletionDate = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "CompletionDate"),
         type = "timestamp",
         name = "CompletionDate",
         target_id = prelude.Timestamp.id,
      }),
      State = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      StatusMessage = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "StatusMessage"),
         type = "string",
         name = "StatusMessage",
         target_id = prelude.String.id,
      }),
      PercentDone = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "PercentDone"),
         type = "string",
         name = "PercentDone",
         target_id = prelude.String.id,
      }),
      BackupSizeInBytes = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "BackupSizeInBytes"),
         type = "long",
         name = "BackupSizeInBytes",
         target_id = prelude.Long.id,
      }),
      IamRoleArn = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
      }),
      CreatedBy = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "CreatedBy"),
         type = "structure",
         name = "CreatedBy",
         target_id = id.from(_N, "RecoveryPointCreator"),
         target = M.RecoveryPointCreator,
      }),
      ResourceType = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
      }),
      BytesTransferred = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "BytesTransferred"),
         type = "long",
         name = "BytesTransferred",
         target_id = prelude.Long.id,
      }),
      ExpectedCompletionDate = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "ExpectedCompletionDate"),
         type = "timestamp",
         name = "ExpectedCompletionDate",
         target_id = prelude.Timestamp.id,
      }),
      StartBy = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "StartBy"),
         type = "timestamp",
         name = "StartBy",
         target_id = prelude.Timestamp.id,
      }),
      BackupOptions = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "BackupOptions"),
         type = "map",
         name = "BackupOptions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      BackupType = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "BackupType"),
         type = "string",
         name = "BackupType",
         target_id = prelude.String.id,
      }),
      ParentJobId = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "ParentJobId"),
         type = "string",
         name = "ParentJobId",
         target_id = prelude.String.id,
      }),
      IsParent = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "IsParent"),
         type = "boolean",
         name = "IsParent",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      NumberOfChildJobs = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "NumberOfChildJobs"),
         type = "long",
         name = "NumberOfChildJobs",
         target_id = prelude.Long.id,
      }),
      ChildJobsInState = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "ChildJobsInState"),
         type = "map",
         name = "ChildJobsInState",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.Long,
      }),
      ResourceName = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
      }),
      InitiationDate = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "InitiationDate"),
         type = "timestamp",
         name = "InitiationDate",
         target_id = prelude.Timestamp.id,
      }),
      MessageCategory = schema.new({
         id = id.from(_N, "DescribeBackupJobOutput", "MessageCategory"),
         type = "string",
         name = "MessageCategory",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeBackupVaultInput = schema.new({
   id = id.from(_N, "DescribeBackupVaultInput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "DescribeBackupVaultInput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackupVaultAccountId = schema.new({
         id = id.from(_N, "DescribeBackupVaultInput", "BackupVaultAccountId"),
         type = "string",
         name = "BackupVaultAccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "backupVaultAccountId" },
         },
      }),
   },
})

M.LatestMpaApprovalTeamUpdate = schema.new({
   id = id.from(_N, "LatestMpaApprovalTeamUpdate"),
   type = "structure",
   members = {
      MpaSessionArn = schema.new({
         id = id.from(_N, "LatestMpaApprovalTeamUpdate", "MpaSessionArn"),
         type = "string",
         name = "MpaSessionArn",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "LatestMpaApprovalTeamUpdate", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      StatusMessage = schema.new({
         id = id.from(_N, "LatestMpaApprovalTeamUpdate", "StatusMessage"),
         type = "string",
         name = "StatusMessage",
         target_id = prelude.String.id,
      }),
      InitiationDate = schema.new({
         id = id.from(_N, "LatestMpaApprovalTeamUpdate", "InitiationDate"),
         type = "timestamp",
         name = "InitiationDate",
         target_id = prelude.Timestamp.id,
      }),
      ExpiryDate = schema.new({
         id = id.from(_N, "LatestMpaApprovalTeamUpdate", "ExpiryDate"),
         type = "timestamp",
         name = "ExpiryDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DescribeBackupVaultOutput = schema.new({
   id = id.from(_N, "DescribeBackupVaultOutput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "DescribeBackupVaultOutput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
      }),
      BackupVaultArn = schema.new({
         id = id.from(_N, "DescribeBackupVaultOutput", "BackupVaultArn"),
         type = "string",
         name = "BackupVaultArn",
         target_id = prelude.String.id,
      }),
      VaultType = schema.new({
         id = id.from(_N, "DescribeBackupVaultOutput", "VaultType"),
         type = "string",
         name = "VaultType",
         target_id = prelude.String.id,
      }),
      VaultState = schema.new({
         id = id.from(_N, "DescribeBackupVaultOutput", "VaultState"),
         type = "string",
         name = "VaultState",
         target_id = prelude.String.id,
      }),
      EncryptionKeyArn = schema.new({
         id = id.from(_N, "DescribeBackupVaultOutput", "EncryptionKeyArn"),
         type = "string",
         name = "EncryptionKeyArn",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "DescribeBackupVaultOutput", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      CreatorRequestId = schema.new({
         id = id.from(_N, "DescribeBackupVaultOutput", "CreatorRequestId"),
         type = "string",
         name = "CreatorRequestId",
         target_id = prelude.String.id,
      }),
      NumberOfRecoveryPoints = schema.new({
         id = id.from(_N, "DescribeBackupVaultOutput", "NumberOfRecoveryPoints"),
         type = "long",
         name = "NumberOfRecoveryPoints",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      Locked = schema.new({
         id = id.from(_N, "DescribeBackupVaultOutput", "Locked"),
         type = "boolean",
         name = "Locked",
         target_id = prelude.Boolean.id,
      }),
      MinRetentionDays = schema.new({
         id = id.from(_N, "DescribeBackupVaultOutput", "MinRetentionDays"),
         type = "long",
         name = "MinRetentionDays",
         target_id = prelude.Long.id,
      }),
      MaxRetentionDays = schema.new({
         id = id.from(_N, "DescribeBackupVaultOutput", "MaxRetentionDays"),
         type = "long",
         name = "MaxRetentionDays",
         target_id = prelude.Long.id,
      }),
      LockDate = schema.new({
         id = id.from(_N, "DescribeBackupVaultOutput", "LockDate"),
         type = "timestamp",
         name = "LockDate",
         target_id = prelude.Timestamp.id,
      }),
      SourceBackupVaultArn = schema.new({
         id = id.from(_N, "DescribeBackupVaultOutput", "SourceBackupVaultArn"),
         type = "string",
         name = "SourceBackupVaultArn",
         target_id = prelude.String.id,
      }),
      MpaApprovalTeamArn = schema.new({
         id = id.from(_N, "DescribeBackupVaultOutput", "MpaApprovalTeamArn"),
         type = "string",
         name = "MpaApprovalTeamArn",
         target_id = prelude.String.id,
      }),
      MpaSessionArn = schema.new({
         id = id.from(_N, "DescribeBackupVaultOutput", "MpaSessionArn"),
         type = "string",
         name = "MpaSessionArn",
         target_id = prelude.String.id,
      }),
      LatestMpaApprovalTeamUpdate = schema.new({
         id = id.from(_N, "DescribeBackupVaultOutput", "LatestMpaApprovalTeamUpdate"),
         type = "structure",
         name = "LatestMpaApprovalTeamUpdate",
         target_id = id.from(_N, "LatestMpaApprovalTeamUpdate"),
         target = M.LatestMpaApprovalTeamUpdate,
      }),
      EncryptionKeyType = schema.new({
         id = id.from(_N, "DescribeBackupVaultOutput", "EncryptionKeyType"),
         type = "string",
         name = "EncryptionKeyType",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeCopyJobInput = schema.new({
   id = id.from(_N, "DescribeCopyJobInput"),
   type = "structure",
   members = {
      CopyJobId = schema.new({
         id = id.from(_N, "DescribeCopyJobInput", "CopyJobId"),
         type = "string",
         name = "CopyJobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeCopyJobOutput = schema.new({
   id = id.from(_N, "DescribeCopyJobOutput"),
   type = "structure",
   members = {
      CopyJob = schema.new({
         id = id.from(_N, "DescribeCopyJobOutput", "CopyJob"),
         type = "structure",
         name = "CopyJob",
         target_id = id.from(_N, "CopyJob"),
         target = M.CopyJob,
      }),
   },
})

M.DescribeFrameworkInput = schema.new({
   id = id.from(_N, "DescribeFrameworkInput"),
   type = "structure",
   members = {
      FrameworkName = schema.new({
         id = id.from(_N, "DescribeFrameworkInput", "FrameworkName"),
         type = "string",
         name = "FrameworkName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeFrameworkOutput = schema.new({
   id = id.from(_N, "DescribeFrameworkOutput"),
   type = "structure",
   members = {
      FrameworkName = schema.new({
         id = id.from(_N, "DescribeFrameworkOutput", "FrameworkName"),
         type = "string",
         name = "FrameworkName",
         target_id = prelude.String.id,
      }),
      FrameworkArn = schema.new({
         id = id.from(_N, "DescribeFrameworkOutput", "FrameworkArn"),
         type = "string",
         name = "FrameworkArn",
         target_id = prelude.String.id,
      }),
      FrameworkDescription = schema.new({
         id = id.from(_N, "DescribeFrameworkOutput", "FrameworkDescription"),
         type = "string",
         name = "FrameworkDescription",
         target_id = prelude.String.id,
      }),
      FrameworkControls = schema.new({
         id = id.from(_N, "DescribeFrameworkOutput", "FrameworkControls"),
         type = "list",
         name = "FrameworkControls",
         target_id = prelude.Document.id,
         list_member = M.FrameworkControl,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "DescribeFrameworkOutput", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
      }),
      DeploymentStatus = schema.new({
         id = id.from(_N, "DescribeFrameworkOutput", "DeploymentStatus"),
         type = "string",
         name = "DeploymentStatus",
         target_id = prelude.String.id,
      }),
      FrameworkStatus = schema.new({
         id = id.from(_N, "DescribeFrameworkOutput", "FrameworkStatus"),
         type = "string",
         name = "FrameworkStatus",
         target_id = prelude.String.id,
      }),
      IdempotencyToken = schema.new({
         id = id.from(_N, "DescribeFrameworkOutput", "IdempotencyToken"),
         type = "string",
         name = "IdempotencyToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeGlobalSettingsInput = schema.new({
   id = id.from(_N, "DescribeGlobalSettingsInput"),
   type = "structure",
})

M.DescribeGlobalSettingsOutput = schema.new({
   id = id.from(_N, "DescribeGlobalSettingsOutput"),
   type = "structure",
   members = {
      GlobalSettings = schema.new({
         id = id.from(_N, "DescribeGlobalSettingsOutput", "GlobalSettings"),
         type = "map",
         name = "GlobalSettings",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      LastUpdateTime = schema.new({
         id = id.from(_N, "DescribeGlobalSettingsOutput", "LastUpdateTime"),
         type = "timestamp",
         name = "LastUpdateTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DescribeProtectedResourceInput = schema.new({
   id = id.from(_N, "DescribeProtectedResourceInput"),
   type = "structure",
   members = {
      ResourceArn = schema.new({
         id = id.from(_N, "DescribeProtectedResourceInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeProtectedResourceOutput = schema.new({
   id = id.from(_N, "DescribeProtectedResourceOutput"),
   type = "structure",
   members = {
      ResourceArn = schema.new({
         id = id.from(_N, "DescribeProtectedResourceOutput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
      }),
      ResourceType = schema.new({
         id = id.from(_N, "DescribeProtectedResourceOutput", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
      }),
      LastBackupTime = schema.new({
         id = id.from(_N, "DescribeProtectedResourceOutput", "LastBackupTime"),
         type = "timestamp",
         name = "LastBackupTime",
         target_id = prelude.Timestamp.id,
      }),
      ResourceName = schema.new({
         id = id.from(_N, "DescribeProtectedResourceOutput", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
      }),
      LastBackupVaultArn = schema.new({
         id = id.from(_N, "DescribeProtectedResourceOutput", "LastBackupVaultArn"),
         type = "string",
         name = "LastBackupVaultArn",
         target_id = prelude.String.id,
      }),
      LastRecoveryPointArn = schema.new({
         id = id.from(_N, "DescribeProtectedResourceOutput", "LastRecoveryPointArn"),
         type = "string",
         name = "LastRecoveryPointArn",
         target_id = prelude.String.id,
      }),
      LatestRestoreExecutionTimeMinutes = schema.new({
         id = id.from(_N, "DescribeProtectedResourceOutput", "LatestRestoreExecutionTimeMinutes"),
         type = "long",
         name = "LatestRestoreExecutionTimeMinutes",
         target_id = prelude.Long.id,
      }),
      LatestRestoreJobCreationDate = schema.new({
         id = id.from(_N, "DescribeProtectedResourceOutput", "LatestRestoreJobCreationDate"),
         type = "timestamp",
         name = "LatestRestoreJobCreationDate",
         target_id = prelude.Timestamp.id,
      }),
      LatestRestoreRecoveryPointCreationDate = schema.new({
         id = id.from(_N, "DescribeProtectedResourceOutput", "LatestRestoreRecoveryPointCreationDate"),
         type = "timestamp",
         name = "LatestRestoreRecoveryPointCreationDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DescribeRecoveryPointInput = schema.new({
   id = id.from(_N, "DescribeRecoveryPointInput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "DescribeRecoveryPointInput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      RecoveryPointArn = schema.new({
         id = id.from(_N, "DescribeRecoveryPointInput", "RecoveryPointArn"),
         type = "string",
         name = "RecoveryPointArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackupVaultAccountId = schema.new({
         id = id.from(_N, "DescribeRecoveryPointInput", "BackupVaultAccountId"),
         type = "string",
         name = "BackupVaultAccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "backupVaultAccountId" },
         },
      }),
   },
})

M.ScanResult = schema.new({
   id = id.from(_N, "ScanResult"),
   type = "structure",
   members = {
      MalwareScanner = schema.new({
         id = id.from(_N, "ScanResult", "MalwareScanner"),
         type = "string",
         name = "MalwareScanner",
         target_id = prelude.String.id,
      }),
      ScanJobState = schema.new({
         id = id.from(_N, "ScanResult", "ScanJobState"),
         type = "string",
         name = "ScanJobState",
         target_id = prelude.String.id,
      }),
      LastScanTimestamp = schema.new({
         id = id.from(_N, "ScanResult", "LastScanTimestamp"),
         type = "timestamp",
         name = "LastScanTimestamp",
         target_id = prelude.Timestamp.id,
      }),
      Findings = schema.new({
         id = id.from(_N, "ScanResult", "Findings"),
         type = "list",
         name = "Findings",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.DescribeRecoveryPointOutput = schema.new({
   id = id.from(_N, "DescribeRecoveryPointOutput"),
   type = "structure",
   members = {
      RecoveryPointArn = schema.new({
         id = id.from(_N, "DescribeRecoveryPointOutput", "RecoveryPointArn"),
         type = "string",
         name = "RecoveryPointArn",
         target_id = prelude.String.id,
      }),
      BackupVaultName = schema.new({
         id = id.from(_N, "DescribeRecoveryPointOutput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
      }),
      BackupVaultArn = schema.new({
         id = id.from(_N, "DescribeRecoveryPointOutput", "BackupVaultArn"),
         type = "string",
         name = "BackupVaultArn",
         target_id = prelude.String.id,
      }),
      SourceBackupVaultArn = schema.new({
         id = id.from(_N, "DescribeRecoveryPointOutput", "SourceBackupVaultArn"),
         type = "string",
         name = "SourceBackupVaultArn",
         target_id = prelude.String.id,
      }),
      ResourceArn = schema.new({
         id = id.from(_N, "DescribeRecoveryPointOutput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
      }),
      ResourceType = schema.new({
         id = id.from(_N, "DescribeRecoveryPointOutput", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
      }),
      CreatedBy = schema.new({
         id = id.from(_N, "DescribeRecoveryPointOutput", "CreatedBy"),
         type = "structure",
         name = "CreatedBy",
         target_id = id.from(_N, "RecoveryPointCreator"),
         target = M.RecoveryPointCreator,
      }),
      IamRoleArn = schema.new({
         id = id.from(_N, "DescribeRecoveryPointOutput", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "DescribeRecoveryPointOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      StatusMessage = schema.new({
         id = id.from(_N, "DescribeRecoveryPointOutput", "StatusMessage"),
         type = "string",
         name = "StatusMessage",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "DescribeRecoveryPointOutput", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      InitiationDate = schema.new({
         id = id.from(_N, "DescribeRecoveryPointOutput", "InitiationDate"),
         type = "timestamp",
         name = "InitiationDate",
         target_id = prelude.Timestamp.id,
      }),
      CompletionDate = schema.new({
         id = id.from(_N, "DescribeRecoveryPointOutput", "CompletionDate"),
         type = "timestamp",
         name = "CompletionDate",
         target_id = prelude.Timestamp.id,
      }),
      BackupSizeInBytes = schema.new({
         id = id.from(_N, "DescribeRecoveryPointOutput", "BackupSizeInBytes"),
         type = "long",
         name = "BackupSizeInBytes",
         target_id = prelude.Long.id,
      }),
      CalculatedLifecycle = schema.new({
         id = id.from(_N, "DescribeRecoveryPointOutput", "CalculatedLifecycle"),
         type = "structure",
         name = "CalculatedLifecycle",
         target_id = id.from(_N, "CalculatedLifecycle"),
         target = M.CalculatedLifecycle,
      }),
      Lifecycle = schema.new({
         id = id.from(_N, "DescribeRecoveryPointOutput", "Lifecycle"),
         type = "structure",
         name = "Lifecycle",
         target_id = id.from(_N, "Lifecycle"),
         target = M.Lifecycle,
      }),
      EncryptionKeyArn = schema.new({
         id = id.from(_N, "DescribeRecoveryPointOutput", "EncryptionKeyArn"),
         type = "string",
         name = "EncryptionKeyArn",
         target_id = prelude.String.id,
      }),
      IsEncrypted = schema.new({
         id = id.from(_N, "DescribeRecoveryPointOutput", "IsEncrypted"),
         type = "boolean",
         name = "IsEncrypted",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      StorageClass = schema.new({
         id = id.from(_N, "DescribeRecoveryPointOutput", "StorageClass"),
         type = "string",
         name = "StorageClass",
         target_id = prelude.String.id,
      }),
      LastRestoreTime = schema.new({
         id = id.from(_N, "DescribeRecoveryPointOutput", "LastRestoreTime"),
         type = "timestamp",
         name = "LastRestoreTime",
         target_id = prelude.Timestamp.id,
      }),
      ParentRecoveryPointArn = schema.new({
         id = id.from(_N, "DescribeRecoveryPointOutput", "ParentRecoveryPointArn"),
         type = "string",
         name = "ParentRecoveryPointArn",
         target_id = prelude.String.id,
      }),
      CompositeMemberIdentifier = schema.new({
         id = id.from(_N, "DescribeRecoveryPointOutput", "CompositeMemberIdentifier"),
         type = "string",
         name = "CompositeMemberIdentifier",
         target_id = prelude.String.id,
      }),
      IsParent = schema.new({
         id = id.from(_N, "DescribeRecoveryPointOutput", "IsParent"),
         type = "boolean",
         name = "IsParent",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      ResourceName = schema.new({
         id = id.from(_N, "DescribeRecoveryPointOutput", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
      }),
      VaultType = schema.new({
         id = id.from(_N, "DescribeRecoveryPointOutput", "VaultType"),
         type = "string",
         name = "VaultType",
         target_id = prelude.String.id,
      }),
      IndexStatus = schema.new({
         id = id.from(_N, "DescribeRecoveryPointOutput", "IndexStatus"),
         type = "string",
         name = "IndexStatus",
         target_id = prelude.String.id,
      }),
      IndexStatusMessage = schema.new({
         id = id.from(_N, "DescribeRecoveryPointOutput", "IndexStatusMessage"),
         type = "string",
         name = "IndexStatusMessage",
         target_id = prelude.String.id,
      }),
      EncryptionKeyType = schema.new({
         id = id.from(_N, "DescribeRecoveryPointOutput", "EncryptionKeyType"),
         type = "string",
         name = "EncryptionKeyType",
         target_id = prelude.String.id,
      }),
      ScanResults = schema.new({
         id = id.from(_N, "DescribeRecoveryPointOutput", "ScanResults"),
         type = "list",
         name = "ScanResults",
         target_id = prelude.Document.id,
         list_member = M.ScanResult,
      }),
   },
})

M.DescribeRegionSettingsInput = schema.new({
   id = id.from(_N, "DescribeRegionSettingsInput"),
   type = "structure",
})

M.DescribeRegionSettingsOutput = schema.new({
   id = id.from(_N, "DescribeRegionSettingsOutput"),
   type = "structure",
   members = {
      ResourceTypeOptInPreference = schema.new({
         id = id.from(_N, "DescribeRegionSettingsOutput", "ResourceTypeOptInPreference"),
         type = "map",
         name = "ResourceTypeOptInPreference",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.Boolean,
      }),
      ResourceTypeManagementPreference = schema.new({
         id = id.from(_N, "DescribeRegionSettingsOutput", "ResourceTypeManagementPreference"),
         type = "map",
         name = "ResourceTypeManagementPreference",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.Boolean,
      }),
   },
})

M.DescribeReportJobInput = schema.new({
   id = id.from(_N, "DescribeReportJobInput"),
   type = "structure",
   members = {
      ReportJobId = schema.new({
         id = id.from(_N, "DescribeReportJobInput", "ReportJobId"),
         type = "string",
         name = "ReportJobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.ReportDestination = schema.new({
   id = id.from(_N, "ReportDestination"),
   type = "structure",
   members = {
      S3BucketName = schema.new({
         id = id.from(_N, "ReportDestination", "S3BucketName"),
         type = "string",
         name = "S3BucketName",
         target_id = prelude.String.id,
      }),
      S3Keys = schema.new({
         id = id.from(_N, "ReportDestination", "S3Keys"),
         type = "list",
         name = "S3Keys",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ReportJob = schema.new({
   id = id.from(_N, "ReportJob"),
   type = "structure",
   members = {
      ReportJobId = schema.new({
         id = id.from(_N, "ReportJob", "ReportJobId"),
         type = "string",
         name = "ReportJobId",
         target_id = prelude.String.id,
      }),
      ReportPlanArn = schema.new({
         id = id.from(_N, "ReportJob", "ReportPlanArn"),
         type = "string",
         name = "ReportPlanArn",
         target_id = prelude.String.id,
      }),
      ReportTemplate = schema.new({
         id = id.from(_N, "ReportJob", "ReportTemplate"),
         type = "string",
         name = "ReportTemplate",
         target_id = prelude.String.id,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "ReportJob", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
      }),
      CompletionTime = schema.new({
         id = id.from(_N, "ReportJob", "CompletionTime"),
         type = "timestamp",
         name = "CompletionTime",
         target_id = prelude.Timestamp.id,
      }),
      Status = schema.new({
         id = id.from(_N, "ReportJob", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      StatusMessage = schema.new({
         id = id.from(_N, "ReportJob", "StatusMessage"),
         type = "string",
         name = "StatusMessage",
         target_id = prelude.String.id,
      }),
      ReportDestination = schema.new({
         id = id.from(_N, "ReportJob", "ReportDestination"),
         type = "structure",
         name = "ReportDestination",
         target_id = id.from(_N, "ReportDestination"),
         target = M.ReportDestination,
      }),
   },
})

M.DescribeReportJobOutput = schema.new({
   id = id.from(_N, "DescribeReportJobOutput"),
   type = "structure",
   members = {
      ReportJob = schema.new({
         id = id.from(_N, "DescribeReportJobOutput", "ReportJob"),
         type = "structure",
         name = "ReportJob",
         target_id = id.from(_N, "ReportJob"),
         target = M.ReportJob,
      }),
   },
})

M.DescribeReportPlanInput = schema.new({
   id = id.from(_N, "DescribeReportPlanInput"),
   type = "structure",
   members = {
      ReportPlanName = schema.new({
         id = id.from(_N, "DescribeReportPlanInput", "ReportPlanName"),
         type = "string",
         name = "ReportPlanName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.ReportPlan = schema.new({
   id = id.from(_N, "ReportPlan"),
   type = "structure",
   members = {
      ReportPlanArn = schema.new({
         id = id.from(_N, "ReportPlan", "ReportPlanArn"),
         type = "string",
         name = "ReportPlanArn",
         target_id = prelude.String.id,
      }),
      ReportPlanName = schema.new({
         id = id.from(_N, "ReportPlan", "ReportPlanName"),
         type = "string",
         name = "ReportPlanName",
         target_id = prelude.String.id,
      }),
      ReportPlanDescription = schema.new({
         id = id.from(_N, "ReportPlan", "ReportPlanDescription"),
         type = "string",
         name = "ReportPlanDescription",
         target_id = prelude.String.id,
      }),
      ReportSetting = schema.new({
         id = id.from(_N, "ReportPlan", "ReportSetting"),
         type = "structure",
         name = "ReportSetting",
         target_id = id.from(_N, "ReportSetting"),
         target = M.ReportSetting,
      }),
      ReportDeliveryChannel = schema.new({
         id = id.from(_N, "ReportPlan", "ReportDeliveryChannel"),
         type = "structure",
         name = "ReportDeliveryChannel",
         target_id = id.from(_N, "ReportDeliveryChannel"),
         target = M.ReportDeliveryChannel,
      }),
      DeploymentStatus = schema.new({
         id = id.from(_N, "ReportPlan", "DeploymentStatus"),
         type = "string",
         name = "DeploymentStatus",
         target_id = prelude.String.id,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "ReportPlan", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
      }),
      LastAttemptedExecutionTime = schema.new({
         id = id.from(_N, "ReportPlan", "LastAttemptedExecutionTime"),
         type = "timestamp",
         name = "LastAttemptedExecutionTime",
         target_id = prelude.Timestamp.id,
      }),
      LastSuccessfulExecutionTime = schema.new({
         id = id.from(_N, "ReportPlan", "LastSuccessfulExecutionTime"),
         type = "timestamp",
         name = "LastSuccessfulExecutionTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DescribeReportPlanOutput = schema.new({
   id = id.from(_N, "DescribeReportPlanOutput"),
   type = "structure",
   members = {
      ReportPlan = schema.new({
         id = id.from(_N, "DescribeReportPlanOutput", "ReportPlan"),
         type = "structure",
         name = "ReportPlan",
         target_id = id.from(_N, "ReportPlan"),
         target = M.ReportPlan,
      }),
   },
})

M.DescribeRestoreJobInput = schema.new({
   id = id.from(_N, "DescribeRestoreJobInput"),
   type = "structure",
   members = {
      RestoreJobId = schema.new({
         id = id.from(_N, "DescribeRestoreJobInput", "RestoreJobId"),
         type = "string",
         name = "RestoreJobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.RestoreJobCreator = schema.new({
   id = id.from(_N, "RestoreJobCreator"),
   type = "structure",
   members = {
      RestoreTestingPlanArn = schema.new({
         id = id.from(_N, "RestoreJobCreator", "RestoreTestingPlanArn"),
         type = "string",
         name = "RestoreTestingPlanArn",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeRestoreJobOutput = schema.new({
   id = id.from(_N, "DescribeRestoreJobOutput"),
   type = "structure",
   members = {
      AccountId = schema.new({
         id = id.from(_N, "DescribeRestoreJobOutput", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
      }),
      RestoreJobId = schema.new({
         id = id.from(_N, "DescribeRestoreJobOutput", "RestoreJobId"),
         type = "string",
         name = "RestoreJobId",
         target_id = prelude.String.id,
      }),
      RecoveryPointArn = schema.new({
         id = id.from(_N, "DescribeRestoreJobOutput", "RecoveryPointArn"),
         type = "string",
         name = "RecoveryPointArn",
         target_id = prelude.String.id,
      }),
      SourceResourceArn = schema.new({
         id = id.from(_N, "DescribeRestoreJobOutput", "SourceResourceArn"),
         type = "string",
         name = "SourceResourceArn",
         target_id = prelude.String.id,
      }),
      BackupVaultArn = schema.new({
         id = id.from(_N, "DescribeRestoreJobOutput", "BackupVaultArn"),
         type = "string",
         name = "BackupVaultArn",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "DescribeRestoreJobOutput", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      CompletionDate = schema.new({
         id = id.from(_N, "DescribeRestoreJobOutput", "CompletionDate"),
         type = "timestamp",
         name = "CompletionDate",
         target_id = prelude.Timestamp.id,
      }),
      Status = schema.new({
         id = id.from(_N, "DescribeRestoreJobOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      StatusMessage = schema.new({
         id = id.from(_N, "DescribeRestoreJobOutput", "StatusMessage"),
         type = "string",
         name = "StatusMessage",
         target_id = prelude.String.id,
      }),
      PercentDone = schema.new({
         id = id.from(_N, "DescribeRestoreJobOutput", "PercentDone"),
         type = "string",
         name = "PercentDone",
         target_id = prelude.String.id,
      }),
      BackupSizeInBytes = schema.new({
         id = id.from(_N, "DescribeRestoreJobOutput", "BackupSizeInBytes"),
         type = "long",
         name = "BackupSizeInBytes",
         target_id = prelude.Long.id,
      }),
      IamRoleArn = schema.new({
         id = id.from(_N, "DescribeRestoreJobOutput", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
      }),
      ExpectedCompletionTimeMinutes = schema.new({
         id = id.from(_N, "DescribeRestoreJobOutput", "ExpectedCompletionTimeMinutes"),
         type = "long",
         name = "ExpectedCompletionTimeMinutes",
         target_id = prelude.Long.id,
      }),
      CreatedResourceArn = schema.new({
         id = id.from(_N, "DescribeRestoreJobOutput", "CreatedResourceArn"),
         type = "string",
         name = "CreatedResourceArn",
         target_id = prelude.String.id,
      }),
      ResourceType = schema.new({
         id = id.from(_N, "DescribeRestoreJobOutput", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
      }),
      RecoveryPointCreationDate = schema.new({
         id = id.from(_N, "DescribeRestoreJobOutput", "RecoveryPointCreationDate"),
         type = "timestamp",
         name = "RecoveryPointCreationDate",
         target_id = prelude.Timestamp.id,
      }),
      CreatedBy = schema.new({
         id = id.from(_N, "DescribeRestoreJobOutput", "CreatedBy"),
         type = "structure",
         name = "CreatedBy",
         target_id = id.from(_N, "RestoreJobCreator"),
         target = M.RestoreJobCreator,
      }),
      ValidationStatus = schema.new({
         id = id.from(_N, "DescribeRestoreJobOutput", "ValidationStatus"),
         type = "string",
         name = "ValidationStatus",
         target_id = prelude.String.id,
      }),
      ValidationStatusMessage = schema.new({
         id = id.from(_N, "DescribeRestoreJobOutput", "ValidationStatusMessage"),
         type = "string",
         name = "ValidationStatusMessage",
         target_id = prelude.String.id,
      }),
      DeletionStatus = schema.new({
         id = id.from(_N, "DescribeRestoreJobOutput", "DeletionStatus"),
         type = "string",
         name = "DeletionStatus",
         target_id = prelude.String.id,
      }),
      DeletionStatusMessage = schema.new({
         id = id.from(_N, "DescribeRestoreJobOutput", "DeletionStatusMessage"),
         type = "string",
         name = "DeletionStatusMessage",
         target_id = prelude.String.id,
      }),
      IsParent = schema.new({
         id = id.from(_N, "DescribeRestoreJobOutput", "IsParent"),
         type = "boolean",
         name = "IsParent",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      ParentJobId = schema.new({
         id = id.from(_N, "DescribeRestoreJobOutput", "ParentJobId"),
         type = "string",
         name = "ParentJobId",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeScanJobInput = schema.new({
   id = id.from(_N, "DescribeScanJobInput"),
   type = "structure",
   members = {
      ScanJobId = schema.new({
         id = id.from(_N, "DescribeScanJobInput", "ScanJobId"),
         type = "string",
         name = "ScanJobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.ScanJobCreator = schema.new({
   id = id.from(_N, "ScanJobCreator"),
   type = "structure",
   members = {
      BackupPlanArn = schema.new({
         id = id.from(_N, "ScanJobCreator", "BackupPlanArn"),
         type = "string",
         name = "BackupPlanArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BackupPlanId = schema.new({
         id = id.from(_N, "ScanJobCreator", "BackupPlanId"),
         type = "string",
         name = "BackupPlanId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BackupPlanVersion = schema.new({
         id = id.from(_N, "ScanJobCreator", "BackupPlanVersion"),
         type = "string",
         name = "BackupPlanVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BackupRuleId = schema.new({
         id = id.from(_N, "ScanJobCreator", "BackupRuleId"),
         type = "string",
         name = "BackupRuleId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ScanResultInfo = schema.new({
   id = id.from(_N, "ScanResultInfo"),
   type = "structure",
   members = {
      ScanResultStatus = schema.new({
         id = id.from(_N, "ScanResultInfo", "ScanResultStatus"),
         type = "string",
         name = "ScanResultStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeScanJobOutput = schema.new({
   id = id.from(_N, "DescribeScanJobOutput"),
   type = "structure",
   members = {
      AccountId = schema.new({
         id = id.from(_N, "DescribeScanJobOutput", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BackupVaultArn = schema.new({
         id = id.from(_N, "DescribeScanJobOutput", "BackupVaultArn"),
         type = "string",
         name = "BackupVaultArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BackupVaultName = schema.new({
         id = id.from(_N, "DescribeScanJobOutput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CompletionDate = schema.new({
         id = id.from(_N, "DescribeScanJobOutput", "CompletionDate"),
         type = "timestamp",
         name = "CompletionDate",
         target_id = prelude.Timestamp.id,
      }),
      CreatedBy = schema.new({
         id = id.from(_N, "DescribeScanJobOutput", "CreatedBy"),
         type = "structure",
         name = "CreatedBy",
         target_id = id.from(_N, "ScanJobCreator"),
         target = M.ScanJobCreator,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreationDate = schema.new({
         id = id.from(_N, "DescribeScanJobOutput", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IamRoleArn = schema.new({
         id = id.from(_N, "DescribeScanJobOutput", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MalwareScanner = schema.new({
         id = id.from(_N, "DescribeScanJobOutput", "MalwareScanner"),
         type = "string",
         name = "MalwareScanner",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RecoveryPointArn = schema.new({
         id = id.from(_N, "DescribeScanJobOutput", "RecoveryPointArn"),
         type = "string",
         name = "RecoveryPointArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ResourceArn = schema.new({
         id = id.from(_N, "DescribeScanJobOutput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ResourceName = schema.new({
         id = id.from(_N, "DescribeScanJobOutput", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ResourceType = schema.new({
         id = id.from(_N, "DescribeScanJobOutput", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ScanBaseRecoveryPointArn = schema.new({
         id = id.from(_N, "DescribeScanJobOutput", "ScanBaseRecoveryPointArn"),
         type = "string",
         name = "ScanBaseRecoveryPointArn",
         target_id = prelude.String.id,
      }),
      ScanId = schema.new({
         id = id.from(_N, "DescribeScanJobOutput", "ScanId"),
         type = "string",
         name = "ScanId",
         target_id = prelude.String.id,
      }),
      ScanJobId = schema.new({
         id = id.from(_N, "DescribeScanJobOutput", "ScanJobId"),
         type = "string",
         name = "ScanJobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ScanMode = schema.new({
         id = id.from(_N, "DescribeScanJobOutput", "ScanMode"),
         type = "string",
         name = "ScanMode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ScanResult = schema.new({
         id = id.from(_N, "DescribeScanJobOutput", "ScanResult"),
         type = "structure",
         name = "ScanResult",
         target_id = id.from(_N, "ScanResultInfo"),
         target = M.ScanResultInfo,
      }),
      ScannerRoleArn = schema.new({
         id = id.from(_N, "DescribeScanJobOutput", "ScannerRoleArn"),
         type = "string",
         name = "ScannerRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      State = schema.new({
         id = id.from(_N, "DescribeScanJobOutput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StatusMessage = schema.new({
         id = id.from(_N, "DescribeScanJobOutput", "StatusMessage"),
         type = "string",
         name = "StatusMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.DisassociateBackupVaultMpaApprovalTeamInput = schema.new({
   id = id.from(_N, "DisassociateBackupVaultMpaApprovalTeamInput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "DisassociateBackupVaultMpaApprovalTeamInput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      RequesterComment = schema.new({
         id = id.from(_N, "DisassociateBackupVaultMpaApprovalTeamInput", "RequesterComment"),
         type = "string",
         name = "RequesterComment",
         target_id = prelude.String.id,
      }),
   },
})

M.DisassociateBackupVaultMpaApprovalTeamOutput = prelude.Unit

M.DisassociateRecoveryPointInput = schema.new({
   id = id.from(_N, "DisassociateRecoveryPointInput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "DisassociateRecoveryPointInput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      RecoveryPointArn = schema.new({
         id = id.from(_N, "DisassociateRecoveryPointInput", "RecoveryPointArn"),
         type = "string",
         name = "RecoveryPointArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DisassociateRecoveryPointOutput = prelude.Unit

M.DisassociateRecoveryPointFromParentInput = schema.new({
   id = id.from(_N, "DisassociateRecoveryPointFromParentInput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "DisassociateRecoveryPointFromParentInput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      RecoveryPointArn = schema.new({
         id = id.from(_N, "DisassociateRecoveryPointFromParentInput", "RecoveryPointArn"),
         type = "string",
         name = "RecoveryPointArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DisassociateRecoveryPointFromParentOutput = prelude.Unit

M.ExportBackupPlanTemplateInput = schema.new({
   id = id.from(_N, "ExportBackupPlanTemplateInput"),
   type = "structure",
   members = {
      BackupPlanId = schema.new({
         id = id.from(_N, "ExportBackupPlanTemplateInput", "BackupPlanId"),
         type = "string",
         name = "BackupPlanId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.ExportBackupPlanTemplateOutput = schema.new({
   id = id.from(_N, "ExportBackupPlanTemplateOutput"),
   type = "structure",
   members = {
      BackupPlanTemplateJson = schema.new({
         id = id.from(_N, "ExportBackupPlanTemplateOutput", "BackupPlanTemplateJson"),
         type = "string",
         name = "BackupPlanTemplateJson",
         target_id = prelude.String.id,
      }),
   },
})

M.GetBackupPlanInput = schema.new({
   id = id.from(_N, "GetBackupPlanInput"),
   type = "structure",
   members = {
      BackupPlanId = schema.new({
         id = id.from(_N, "GetBackupPlanInput", "BackupPlanId"),
         type = "string",
         name = "BackupPlanId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      VersionId = schema.new({
         id = id.from(_N, "GetBackupPlanInput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "versionId" },
         },
      }),
      MaxScheduledRunsPreview = schema.new({
         id = id.from(_N, "GetBackupPlanInput", "MaxScheduledRunsPreview"),
         type = "integer",
         name = "MaxScheduledRunsPreview",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
            [traits.HTTP_QUERY] = { name = "MaxScheduledRunsPreview" },
         },
      }),
   },
})

M.ScheduledPlanExecutionMember = schema.new({
   id = id.from(_N, "ScheduledPlanExecutionMember"),
   type = "structure",
   members = {
      ExecutionTime = schema.new({
         id = id.from(_N, "ScheduledPlanExecutionMember", "ExecutionTime"),
         type = "timestamp",
         name = "ExecutionTime",
         target_id = prelude.Timestamp.id,
      }),
      RuleId = schema.new({
         id = id.from(_N, "ScheduledPlanExecutionMember", "RuleId"),
         type = "string",
         name = "RuleId",
         target_id = prelude.String.id,
      }),
      RuleExecutionType = schema.new({
         id = id.from(_N, "ScheduledPlanExecutionMember", "RuleExecutionType"),
         type = "string",
         name = "RuleExecutionType",
         target_id = prelude.String.id,
      }),
   },
})

M.GetBackupPlanOutput = schema.new({
   id = id.from(_N, "GetBackupPlanOutput"),
   type = "structure",
   members = {
      BackupPlan = schema.new({
         id = id.from(_N, "GetBackupPlanOutput", "BackupPlan"),
         type = "structure",
         name = "BackupPlan",
         target_id = id.from(_N, "BackupPlan"),
         target = M.BackupPlan,
      }),
      BackupPlanId = schema.new({
         id = id.from(_N, "GetBackupPlanOutput", "BackupPlanId"),
         type = "string",
         name = "BackupPlanId",
         target_id = prelude.String.id,
      }),
      BackupPlanArn = schema.new({
         id = id.from(_N, "GetBackupPlanOutput", "BackupPlanArn"),
         type = "string",
         name = "BackupPlanArn",
         target_id = prelude.String.id,
      }),
      VersionId = schema.new({
         id = id.from(_N, "GetBackupPlanOutput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
      }),
      CreatorRequestId = schema.new({
         id = id.from(_N, "GetBackupPlanOutput", "CreatorRequestId"),
         type = "string",
         name = "CreatorRequestId",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "GetBackupPlanOutput", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      DeletionDate = schema.new({
         id = id.from(_N, "GetBackupPlanOutput", "DeletionDate"),
         type = "timestamp",
         name = "DeletionDate",
         target_id = prelude.Timestamp.id,
      }),
      LastExecutionDate = schema.new({
         id = id.from(_N, "GetBackupPlanOutput", "LastExecutionDate"),
         type = "timestamp",
         name = "LastExecutionDate",
         target_id = prelude.Timestamp.id,
      }),
      AdvancedBackupSettings = schema.new({
         id = id.from(_N, "GetBackupPlanOutput", "AdvancedBackupSettings"),
         type = "list",
         name = "AdvancedBackupSettings",
         target_id = prelude.Document.id,
         list_member = M.AdvancedBackupSetting,
      }),
      ScheduledRunsPreview = schema.new({
         id = id.from(_N, "GetBackupPlanOutput", "ScheduledRunsPreview"),
         type = "list",
         name = "ScheduledRunsPreview",
         target_id = prelude.Document.id,
         list_member = M.ScheduledPlanExecutionMember,
      }),
   },
})

M.GetBackupPlanFromJSONInput = schema.new({
   id = id.from(_N, "GetBackupPlanFromJSONInput"),
   type = "structure",
   members = {
      BackupPlanTemplateJson = schema.new({
         id = id.from(_N, "GetBackupPlanFromJSONInput", "BackupPlanTemplateJson"),
         type = "string",
         name = "BackupPlanTemplateJson",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetBackupPlanFromJSONOutput = schema.new({
   id = id.from(_N, "GetBackupPlanFromJSONOutput"),
   type = "structure",
   members = {
      BackupPlan = schema.new({
         id = id.from(_N, "GetBackupPlanFromJSONOutput", "BackupPlan"),
         type = "structure",
         name = "BackupPlan",
         target_id = id.from(_N, "BackupPlan"),
         target = M.BackupPlan,
      }),
   },
})

M.GetBackupPlanFromTemplateInput = schema.new({
   id = id.from(_N, "GetBackupPlanFromTemplateInput"),
   type = "structure",
   members = {
      BackupPlanTemplateId = schema.new({
         id = id.from(_N, "GetBackupPlanFromTemplateInput", "BackupPlanTemplateId"),
         type = "string",
         name = "BackupPlanTemplateId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetBackupPlanFromTemplateOutput = schema.new({
   id = id.from(_N, "GetBackupPlanFromTemplateOutput"),
   type = "structure",
   members = {
      BackupPlanDocument = schema.new({
         id = id.from(_N, "GetBackupPlanFromTemplateOutput", "BackupPlanDocument"),
         type = "structure",
         name = "BackupPlanDocument",
         target_id = id.from(_N, "BackupPlan"),
         target = M.BackupPlan,
      }),
   },
})

M.GetBackupSelectionInput = schema.new({
   id = id.from(_N, "GetBackupSelectionInput"),
   type = "structure",
   members = {
      BackupPlanId = schema.new({
         id = id.from(_N, "GetBackupSelectionInput", "BackupPlanId"),
         type = "string",
         name = "BackupPlanId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      SelectionId = schema.new({
         id = id.from(_N, "GetBackupSelectionInput", "SelectionId"),
         type = "string",
         name = "SelectionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetBackupSelectionOutput = schema.new({
   id = id.from(_N, "GetBackupSelectionOutput"),
   type = "structure",
   members = {
      BackupSelection = schema.new({
         id = id.from(_N, "GetBackupSelectionOutput", "BackupSelection"),
         type = "structure",
         name = "BackupSelection",
         target_id = id.from(_N, "BackupSelection"),
         target = M.BackupSelection,
      }),
      SelectionId = schema.new({
         id = id.from(_N, "GetBackupSelectionOutput", "SelectionId"),
         type = "string",
         name = "SelectionId",
         target_id = prelude.String.id,
      }),
      BackupPlanId = schema.new({
         id = id.from(_N, "GetBackupSelectionOutput", "BackupPlanId"),
         type = "string",
         name = "BackupPlanId",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "GetBackupSelectionOutput", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      CreatorRequestId = schema.new({
         id = id.from(_N, "GetBackupSelectionOutput", "CreatorRequestId"),
         type = "string",
         name = "CreatorRequestId",
         target_id = prelude.String.id,
      }),
   },
})

M.GetBackupVaultAccessPolicyInput = schema.new({
   id = id.from(_N, "GetBackupVaultAccessPolicyInput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "GetBackupVaultAccessPolicyInput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetBackupVaultAccessPolicyOutput = schema.new({
   id = id.from(_N, "GetBackupVaultAccessPolicyOutput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "GetBackupVaultAccessPolicyOutput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
      }),
      BackupVaultArn = schema.new({
         id = id.from(_N, "GetBackupVaultAccessPolicyOutput", "BackupVaultArn"),
         type = "string",
         name = "BackupVaultArn",
         target_id = prelude.String.id,
      }),
      Policy = schema.new({
         id = id.from(_N, "GetBackupVaultAccessPolicyOutput", "Policy"),
         type = "string",
         name = "Policy",
         target_id = prelude.String.id,
      }),
   },
})

M.GetBackupVaultNotificationsInput = schema.new({
   id = id.from(_N, "GetBackupVaultNotificationsInput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "GetBackupVaultNotificationsInput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetBackupVaultNotificationsOutput = schema.new({
   id = id.from(_N, "GetBackupVaultNotificationsOutput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "GetBackupVaultNotificationsOutput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
      }),
      BackupVaultArn = schema.new({
         id = id.from(_N, "GetBackupVaultNotificationsOutput", "BackupVaultArn"),
         type = "string",
         name = "BackupVaultArn",
         target_id = prelude.String.id,
      }),
      SNSTopicArn = schema.new({
         id = id.from(_N, "GetBackupVaultNotificationsOutput", "SNSTopicArn"),
         type = "string",
         name = "SNSTopicArn",
         target_id = prelude.String.id,
      }),
      BackupVaultEvents = schema.new({
         id = id.from(_N, "GetBackupVaultNotificationsOutput", "BackupVaultEvents"),
         type = "list",
         name = "BackupVaultEvents",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.GetLegalHoldInput = schema.new({
   id = id.from(_N, "GetLegalHoldInput"),
   type = "structure",
   members = {
      LegalHoldId = schema.new({
         id = id.from(_N, "GetLegalHoldInput", "LegalHoldId"),
         type = "string",
         name = "LegalHoldId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetLegalHoldOutput = schema.new({
   id = id.from(_N, "GetLegalHoldOutput"),
   type = "structure",
   members = {
      Title = schema.new({
         id = id.from(_N, "GetLegalHoldOutput", "Title"),
         type = "string",
         name = "Title",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "GetLegalHoldOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "GetLegalHoldOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      CancelDescription = schema.new({
         id = id.from(_N, "GetLegalHoldOutput", "CancelDescription"),
         type = "string",
         name = "CancelDescription",
         target_id = prelude.String.id,
      }),
      LegalHoldId = schema.new({
         id = id.from(_N, "GetLegalHoldOutput", "LegalHoldId"),
         type = "string",
         name = "LegalHoldId",
         target_id = prelude.String.id,
      }),
      LegalHoldArn = schema.new({
         id = id.from(_N, "GetLegalHoldOutput", "LegalHoldArn"),
         type = "string",
         name = "LegalHoldArn",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "GetLegalHoldOutput", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      CancellationDate = schema.new({
         id = id.from(_N, "GetLegalHoldOutput", "CancellationDate"),
         type = "timestamp",
         name = "CancellationDate",
         target_id = prelude.Timestamp.id,
      }),
      RetainRecordUntil = schema.new({
         id = id.from(_N, "GetLegalHoldOutput", "RetainRecordUntil"),
         type = "timestamp",
         name = "RetainRecordUntil",
         target_id = prelude.Timestamp.id,
      }),
      RecoveryPointSelection = schema.new({
         id = id.from(_N, "GetLegalHoldOutput", "RecoveryPointSelection"),
         type = "structure",
         name = "RecoveryPointSelection",
         target_id = id.from(_N, "RecoveryPointSelection"),
         target = M.RecoveryPointSelection,
      }),
   },
})

M.GetRecoveryPointIndexDetailsInput = schema.new({
   id = id.from(_N, "GetRecoveryPointIndexDetailsInput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "GetRecoveryPointIndexDetailsInput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      RecoveryPointArn = schema.new({
         id = id.from(_N, "GetRecoveryPointIndexDetailsInput", "RecoveryPointArn"),
         type = "string",
         name = "RecoveryPointArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetRecoveryPointIndexDetailsOutput = schema.new({
   id = id.from(_N, "GetRecoveryPointIndexDetailsOutput"),
   type = "structure",
   members = {
      RecoveryPointArn = schema.new({
         id = id.from(_N, "GetRecoveryPointIndexDetailsOutput", "RecoveryPointArn"),
         type = "string",
         name = "RecoveryPointArn",
         target_id = prelude.String.id,
      }),
      BackupVaultArn = schema.new({
         id = id.from(_N, "GetRecoveryPointIndexDetailsOutput", "BackupVaultArn"),
         type = "string",
         name = "BackupVaultArn",
         target_id = prelude.String.id,
      }),
      SourceResourceArn = schema.new({
         id = id.from(_N, "GetRecoveryPointIndexDetailsOutput", "SourceResourceArn"),
         type = "string",
         name = "SourceResourceArn",
         target_id = prelude.String.id,
      }),
      IndexCreationDate = schema.new({
         id = id.from(_N, "GetRecoveryPointIndexDetailsOutput", "IndexCreationDate"),
         type = "timestamp",
         name = "IndexCreationDate",
         target_id = prelude.Timestamp.id,
      }),
      IndexDeletionDate = schema.new({
         id = id.from(_N, "GetRecoveryPointIndexDetailsOutput", "IndexDeletionDate"),
         type = "timestamp",
         name = "IndexDeletionDate",
         target_id = prelude.Timestamp.id,
      }),
      IndexCompletionDate = schema.new({
         id = id.from(_N, "GetRecoveryPointIndexDetailsOutput", "IndexCompletionDate"),
         type = "timestamp",
         name = "IndexCompletionDate",
         target_id = prelude.Timestamp.id,
      }),
      IndexStatus = schema.new({
         id = id.from(_N, "GetRecoveryPointIndexDetailsOutput", "IndexStatus"),
         type = "string",
         name = "IndexStatus",
         target_id = prelude.String.id,
      }),
      IndexStatusMessage = schema.new({
         id = id.from(_N, "GetRecoveryPointIndexDetailsOutput", "IndexStatusMessage"),
         type = "string",
         name = "IndexStatusMessage",
         target_id = prelude.String.id,
      }),
      TotalItemsIndexed = schema.new({
         id = id.from(_N, "GetRecoveryPointIndexDetailsOutput", "TotalItemsIndexed"),
         type = "long",
         name = "TotalItemsIndexed",
         target_id = prelude.Long.id,
      }),
   },
})

M.GetRecoveryPointRestoreMetadataInput = schema.new({
   id = id.from(_N, "GetRecoveryPointRestoreMetadataInput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "GetRecoveryPointRestoreMetadataInput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      RecoveryPointArn = schema.new({
         id = id.from(_N, "GetRecoveryPointRestoreMetadataInput", "RecoveryPointArn"),
         type = "string",
         name = "RecoveryPointArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackupVaultAccountId = schema.new({
         id = id.from(_N, "GetRecoveryPointRestoreMetadataInput", "BackupVaultAccountId"),
         type = "string",
         name = "BackupVaultAccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "backupVaultAccountId" },
         },
      }),
   },
})

M.GetRecoveryPointRestoreMetadataOutput = schema.new({
   id = id.from(_N, "GetRecoveryPointRestoreMetadataOutput"),
   type = "structure",
   members = {
      BackupVaultArn = schema.new({
         id = id.from(_N, "GetRecoveryPointRestoreMetadataOutput", "BackupVaultArn"),
         type = "string",
         name = "BackupVaultArn",
         target_id = prelude.String.id,
      }),
      RecoveryPointArn = schema.new({
         id = id.from(_N, "GetRecoveryPointRestoreMetadataOutput", "RecoveryPointArn"),
         type = "string",
         name = "RecoveryPointArn",
         target_id = prelude.String.id,
      }),
      RestoreMetadata = schema.new({
         id = id.from(_N, "GetRecoveryPointRestoreMetadataOutput", "RestoreMetadata"),
         type = "map",
         name = "RestoreMetadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      ResourceType = schema.new({
         id = id.from(_N, "GetRecoveryPointRestoreMetadataOutput", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
      }),
   },
})

M.GetRestoreJobMetadataInput = schema.new({
   id = id.from(_N, "GetRestoreJobMetadataInput"),
   type = "structure",
   members = {
      RestoreJobId = schema.new({
         id = id.from(_N, "GetRestoreJobMetadataInput", "RestoreJobId"),
         type = "string",
         name = "RestoreJobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetRestoreJobMetadataOutput = schema.new({
   id = id.from(_N, "GetRestoreJobMetadataOutput"),
   type = "structure",
   members = {
      RestoreJobId = schema.new({
         id = id.from(_N, "GetRestoreJobMetadataOutput", "RestoreJobId"),
         type = "string",
         name = "RestoreJobId",
         target_id = prelude.String.id,
      }),
      Metadata = schema.new({
         id = id.from(_N, "GetRestoreJobMetadataOutput", "Metadata"),
         type = "map",
         name = "Metadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.GetRestoreTestingInferredMetadataInput = schema.new({
   id = id.from(_N, "GetRestoreTestingInferredMetadataInput"),
   type = "structure",
   members = {
      BackupVaultAccountId = schema.new({
         id = id.from(_N, "GetRestoreTestingInferredMetadataInput", "BackupVaultAccountId"),
         type = "string",
         name = "BackupVaultAccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "BackupVaultAccountId" },
         },
      }),
      BackupVaultName = schema.new({
         id = id.from(_N, "GetRestoreTestingInferredMetadataInput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "BackupVaultName" },
         },
      }),
      RecoveryPointArn = schema.new({
         id = id.from(_N, "GetRestoreTestingInferredMetadataInput", "RecoveryPointArn"),
         type = "string",
         name = "RecoveryPointArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "RecoveryPointArn" },
         },
      }),
   },
})

M.GetRestoreTestingInferredMetadataOutput = schema.new({
   id = id.from(_N, "GetRestoreTestingInferredMetadataOutput"),
   type = "structure",
   members = {
      InferredMetadata = schema.new({
         id = id.from(_N, "GetRestoreTestingInferredMetadataOutput", "InferredMetadata"),
         type = "map",
         name = "InferredMetadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetRestoreTestingPlanInput = schema.new({
   id = id.from(_N, "GetRestoreTestingPlanInput"),
   type = "structure",
   members = {
      RestoreTestingPlanName = schema.new({
         id = id.from(_N, "GetRestoreTestingPlanInput", "RestoreTestingPlanName"),
         type = "string",
         name = "RestoreTestingPlanName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.RestoreTestingPlanForGet = schema.new({
   id = id.from(_N, "RestoreTestingPlanForGet"),
   type = "structure",
   members = {
      CreationTime = schema.new({
         id = id.from(_N, "RestoreTestingPlanForGet", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreatorRequestId = schema.new({
         id = id.from(_N, "RestoreTestingPlanForGet", "CreatorRequestId"),
         type = "string",
         name = "CreatorRequestId",
         target_id = prelude.String.id,
      }),
      LastExecutionTime = schema.new({
         id = id.from(_N, "RestoreTestingPlanForGet", "LastExecutionTime"),
         type = "timestamp",
         name = "LastExecutionTime",
         target_id = prelude.Timestamp.id,
      }),
      LastUpdateTime = schema.new({
         id = id.from(_N, "RestoreTestingPlanForGet", "LastUpdateTime"),
         type = "timestamp",
         name = "LastUpdateTime",
         target_id = prelude.Timestamp.id,
      }),
      RecoveryPointSelection = schema.new({
         id = id.from(_N, "RestoreTestingPlanForGet", "RecoveryPointSelection"),
         type = "structure",
         name = "RecoveryPointSelection",
         target_id = id.from(_N, "RestoreTestingRecoveryPointSelection"),
         target = M.RestoreTestingRecoveryPointSelection,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RestoreTestingPlanArn = schema.new({
         id = id.from(_N, "RestoreTestingPlanForGet", "RestoreTestingPlanArn"),
         type = "string",
         name = "RestoreTestingPlanArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RestoreTestingPlanName = schema.new({
         id = id.from(_N, "RestoreTestingPlanForGet", "RestoreTestingPlanName"),
         type = "string",
         name = "RestoreTestingPlanName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ScheduleExpression = schema.new({
         id = id.from(_N, "RestoreTestingPlanForGet", "ScheduleExpression"),
         type = "string",
         name = "ScheduleExpression",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ScheduleExpressionTimezone = schema.new({
         id = id.from(_N, "RestoreTestingPlanForGet", "ScheduleExpressionTimezone"),
         type = "string",
         name = "ScheduleExpressionTimezone",
         target_id = prelude.String.id,
      }),
      StartWindowHours = schema.new({
         id = id.from(_N, "RestoreTestingPlanForGet", "StartWindowHours"),
         type = "integer",
         name = "StartWindowHours",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.GetRestoreTestingPlanOutput = schema.new({
   id = id.from(_N, "GetRestoreTestingPlanOutput"),
   type = "structure",
   members = {
      RestoreTestingPlan = schema.new({
         id = id.from(_N, "GetRestoreTestingPlanOutput", "RestoreTestingPlan"),
         type = "structure",
         name = "RestoreTestingPlan",
         target_id = id.from(_N, "RestoreTestingPlanForGet"),
         target = M.RestoreTestingPlanForGet,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetRestoreTestingSelectionInput = schema.new({
   id = id.from(_N, "GetRestoreTestingSelectionInput"),
   type = "structure",
   members = {
      RestoreTestingPlanName = schema.new({
         id = id.from(_N, "GetRestoreTestingSelectionInput", "RestoreTestingPlanName"),
         type = "string",
         name = "RestoreTestingPlanName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      RestoreTestingSelectionName = schema.new({
         id = id.from(_N, "GetRestoreTestingSelectionInput", "RestoreTestingSelectionName"),
         type = "string",
         name = "RestoreTestingSelectionName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.RestoreTestingSelectionForGet = schema.new({
   id = id.from(_N, "RestoreTestingSelectionForGet"),
   type = "structure",
   members = {
      CreationTime = schema.new({
         id = id.from(_N, "RestoreTestingSelectionForGet", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreatorRequestId = schema.new({
         id = id.from(_N, "RestoreTestingSelectionForGet", "CreatorRequestId"),
         type = "string",
         name = "CreatorRequestId",
         target_id = prelude.String.id,
      }),
      IamRoleArn = schema.new({
         id = id.from(_N, "RestoreTestingSelectionForGet", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ProtectedResourceArns = schema.new({
         id = id.from(_N, "RestoreTestingSelectionForGet", "ProtectedResourceArns"),
         type = "list",
         name = "ProtectedResourceArns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ProtectedResourceConditions = schema.new({
         id = id.from(_N, "RestoreTestingSelectionForGet", "ProtectedResourceConditions"),
         type = "structure",
         name = "ProtectedResourceConditions",
         target_id = id.from(_N, "ProtectedResourceConditions"),
         target = M.ProtectedResourceConditions,
      }),
      ProtectedResourceType = schema.new({
         id = id.from(_N, "RestoreTestingSelectionForGet", "ProtectedResourceType"),
         type = "string",
         name = "ProtectedResourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RestoreMetadataOverrides = schema.new({
         id = id.from(_N, "RestoreTestingSelectionForGet", "RestoreMetadataOverrides"),
         type = "map",
         name = "RestoreMetadataOverrides",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      RestoreTestingPlanName = schema.new({
         id = id.from(_N, "RestoreTestingSelectionForGet", "RestoreTestingPlanName"),
         type = "string",
         name = "RestoreTestingPlanName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RestoreTestingSelectionName = schema.new({
         id = id.from(_N, "RestoreTestingSelectionForGet", "RestoreTestingSelectionName"),
         type = "string",
         name = "RestoreTestingSelectionName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ValidationWindowHours = schema.new({
         id = id.from(_N, "RestoreTestingSelectionForGet", "ValidationWindowHours"),
         type = "integer",
         name = "ValidationWindowHours",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.GetRestoreTestingSelectionOutput = schema.new({
   id = id.from(_N, "GetRestoreTestingSelectionOutput"),
   type = "structure",
   members = {
      RestoreTestingSelection = schema.new({
         id = id.from(_N, "GetRestoreTestingSelectionOutput", "RestoreTestingSelection"),
         type = "structure",
         name = "RestoreTestingSelection",
         target_id = id.from(_N, "RestoreTestingSelectionForGet"),
         target = M.RestoreTestingSelectionForGet,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetSupportedResourceTypesInput = prelude.Unit

M.GetSupportedResourceTypesOutput = schema.new({
   id = id.from(_N, "GetSupportedResourceTypesOutput"),
   type = "structure",
   members = {
      ResourceTypes = schema.new({
         id = id.from(_N, "GetSupportedResourceTypesOutput", "ResourceTypes"),
         type = "list",
         name = "ResourceTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.GetTieringConfigurationInput = schema.new({
   id = id.from(_N, "GetTieringConfigurationInput"),
   type = "structure",
   members = {
      TieringConfigurationName = schema.new({
         id = id.from(_N, "GetTieringConfigurationInput", "TieringConfigurationName"),
         type = "string",
         name = "TieringConfigurationName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.TieringConfiguration = schema.new({
   id = id.from(_N, "TieringConfiguration"),
   type = "structure",
   members = {
      TieringConfigurationName = schema.new({
         id = id.from(_N, "TieringConfiguration", "TieringConfigurationName"),
         type = "string",
         name = "TieringConfigurationName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TieringConfigurationArn = schema.new({
         id = id.from(_N, "TieringConfiguration", "TieringConfigurationArn"),
         type = "string",
         name = "TieringConfigurationArn",
         target_id = prelude.String.id,
      }),
      BackupVaultName = schema.new({
         id = id.from(_N, "TieringConfiguration", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ResourceSelection = schema.new({
         id = id.from(_N, "TieringConfiguration", "ResourceSelection"),
         type = "list",
         name = "ResourceSelection",
         target_id = prelude.Document.id,
         list_member = M.ResourceSelection,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreatorRequestId = schema.new({
         id = id.from(_N, "TieringConfiguration", "CreatorRequestId"),
         type = "string",
         name = "CreatorRequestId",
         target_id = prelude.String.id,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "TieringConfiguration", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
      }),
      LastUpdatedTime = schema.new({
         id = id.from(_N, "TieringConfiguration", "LastUpdatedTime"),
         type = "timestamp",
         name = "LastUpdatedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.GetTieringConfigurationOutput = schema.new({
   id = id.from(_N, "GetTieringConfigurationOutput"),
   type = "structure",
   members = {
      TieringConfiguration = schema.new({
         id = id.from(_N, "GetTieringConfigurationOutput", "TieringConfiguration"),
         type = "structure",
         name = "TieringConfiguration",
         target_id = id.from(_N, "TieringConfiguration"),
         target = M.TieringConfiguration,
      }),
   },
})

M.ListBackupJobsInput = schema.new({
   id = id.from(_N, "ListBackupJobsInput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListBackupJobsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListBackupJobsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      ByResourceArn = schema.new({
         id = id.from(_N, "ListBackupJobsInput", "ByResourceArn"),
         type = "string",
         name = "ByResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "resourceArn" },
         },
      }),
      ByState = schema.new({
         id = id.from(_N, "ListBackupJobsInput", "ByState"),
         type = "string",
         name = "ByState",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "state" },
         },
      }),
      ByBackupVaultName = schema.new({
         id = id.from(_N, "ListBackupJobsInput", "ByBackupVaultName"),
         type = "string",
         name = "ByBackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "backupVaultName" },
         },
      }),
      ByCreatedBefore = schema.new({
         id = id.from(_N, "ListBackupJobsInput", "ByCreatedBefore"),
         type = "timestamp",
         name = "ByCreatedBefore",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "createdBefore" },
         },
      }),
      ByCreatedAfter = schema.new({
         id = id.from(_N, "ListBackupJobsInput", "ByCreatedAfter"),
         type = "timestamp",
         name = "ByCreatedAfter",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "createdAfter" },
         },
      }),
      ByResourceType = schema.new({
         id = id.from(_N, "ListBackupJobsInput", "ByResourceType"),
         type = "string",
         name = "ByResourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "resourceType" },
         },
      }),
      ByAccountId = schema.new({
         id = id.from(_N, "ListBackupJobsInput", "ByAccountId"),
         type = "string",
         name = "ByAccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "accountId" },
         },
      }),
      ByCompleteAfter = schema.new({
         id = id.from(_N, "ListBackupJobsInput", "ByCompleteAfter"),
         type = "timestamp",
         name = "ByCompleteAfter",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "completeAfter" },
         },
      }),
      ByCompleteBefore = schema.new({
         id = id.from(_N, "ListBackupJobsInput", "ByCompleteBefore"),
         type = "timestamp",
         name = "ByCompleteBefore",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "completeBefore" },
         },
      }),
      ByParentJobId = schema.new({
         id = id.from(_N, "ListBackupJobsInput", "ByParentJobId"),
         type = "string",
         name = "ByParentJobId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "parentJobId" },
         },
      }),
      ByMessageCategory = schema.new({
         id = id.from(_N, "ListBackupJobsInput", "ByMessageCategory"),
         type = "string",
         name = "ByMessageCategory",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "messageCategory" },
         },
      }),
   },
})

M.ListBackupJobsOutput = schema.new({
   id = id.from(_N, "ListBackupJobsOutput"),
   type = "structure",
   members = {
      BackupJobs = schema.new({
         id = id.from(_N, "ListBackupJobsOutput", "BackupJobs"),
         type = "list",
         name = "BackupJobs",
         target_id = prelude.Document.id,
         list_member = M.BackupJob,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListBackupJobsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBackupJobSummariesInput = schema.new({
   id = id.from(_N, "ListBackupJobSummariesInput"),
   type = "structure",
   members = {
      AccountId = schema.new({
         id = id.from(_N, "ListBackupJobSummariesInput", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "AccountId" },
         },
      }),
      State = schema.new({
         id = id.from(_N, "ListBackupJobSummariesInput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "State" },
         },
      }),
      ResourceType = schema.new({
         id = id.from(_N, "ListBackupJobSummariesInput", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "ResourceType" },
         },
      }),
      MessageCategory = schema.new({
         id = id.from(_N, "ListBackupJobSummariesInput", "MessageCategory"),
         type = "string",
         name = "MessageCategory",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MessageCategory" },
         },
      }),
      AggregationPeriod = schema.new({
         id = id.from(_N, "ListBackupJobSummariesInput", "AggregationPeriod"),
         type = "string",
         name = "AggregationPeriod",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "AggregationPeriod" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListBackupJobSummariesInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListBackupJobSummariesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
   },
})

M.ListBackupJobSummariesOutput = schema.new({
   id = id.from(_N, "ListBackupJobSummariesOutput"),
   type = "structure",
   members = {
      BackupJobSummaries = schema.new({
         id = id.from(_N, "ListBackupJobSummariesOutput", "BackupJobSummaries"),
         type = "list",
         name = "BackupJobSummaries",
         target_id = prelude.Document.id,
         list_member = M.BackupJobSummary,
      }),
      AggregationPeriod = schema.new({
         id = id.from(_N, "ListBackupJobSummariesOutput", "AggregationPeriod"),
         type = "string",
         name = "AggregationPeriod",
         target_id = prelude.String.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListBackupJobSummariesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBackupPlansInput = schema.new({
   id = id.from(_N, "ListBackupPlansInput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListBackupPlansInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListBackupPlansInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      IncludeDeleted = schema.new({
         id = id.from(_N, "ListBackupPlansInput", "IncludeDeleted"),
         type = "boolean",
         name = "IncludeDeleted",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "includeDeleted" },
         },
      }),
   },
})

M.ListBackupPlansOutput = schema.new({
   id = id.from(_N, "ListBackupPlansOutput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListBackupPlansOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      BackupPlansList = schema.new({
         id = id.from(_N, "ListBackupPlansOutput", "BackupPlansList"),
         type = "list",
         name = "BackupPlansList",
         target_id = prelude.Document.id,
         list_member = M.BackupPlansListMember,
      }),
   },
})

M.ListBackupPlanTemplatesInput = schema.new({
   id = id.from(_N, "ListBackupPlanTemplatesInput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListBackupPlanTemplatesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListBackupPlanTemplatesInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListBackupPlanTemplatesOutput = schema.new({
   id = id.from(_N, "ListBackupPlanTemplatesOutput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListBackupPlanTemplatesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      BackupPlanTemplatesList = schema.new({
         id = id.from(_N, "ListBackupPlanTemplatesOutput", "BackupPlanTemplatesList"),
         type = "list",
         name = "BackupPlanTemplatesList",
         target_id = prelude.Document.id,
         list_member = M.BackupPlanTemplatesListMember,
      }),
   },
})

M.ListBackupPlanVersionsInput = schema.new({
   id = id.from(_N, "ListBackupPlanVersionsInput"),
   type = "structure",
   members = {
      BackupPlanId = schema.new({
         id = id.from(_N, "ListBackupPlanVersionsInput", "BackupPlanId"),
         type = "string",
         name = "BackupPlanId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListBackupPlanVersionsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListBackupPlanVersionsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListBackupPlanVersionsOutput = schema.new({
   id = id.from(_N, "ListBackupPlanVersionsOutput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListBackupPlanVersionsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      BackupPlanVersionsList = schema.new({
         id = id.from(_N, "ListBackupPlanVersionsOutput", "BackupPlanVersionsList"),
         type = "list",
         name = "BackupPlanVersionsList",
         target_id = prelude.Document.id,
         list_member = M.BackupPlansListMember,
      }),
   },
})

M.ListBackupSelectionsInput = schema.new({
   id = id.from(_N, "ListBackupSelectionsInput"),
   type = "structure",
   members = {
      BackupPlanId = schema.new({
         id = id.from(_N, "ListBackupSelectionsInput", "BackupPlanId"),
         type = "string",
         name = "BackupPlanId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListBackupSelectionsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListBackupSelectionsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListBackupSelectionsOutput = schema.new({
   id = id.from(_N, "ListBackupSelectionsOutput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListBackupSelectionsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      BackupSelectionsList = schema.new({
         id = id.from(_N, "ListBackupSelectionsOutput", "BackupSelectionsList"),
         type = "list",
         name = "BackupSelectionsList",
         target_id = prelude.Document.id,
         list_member = M.BackupSelectionsListMember,
      }),
   },
})

M.ListBackupVaultsInput = schema.new({
   id = id.from(_N, "ListBackupVaultsInput"),
   type = "structure",
   members = {
      ByVaultType = schema.new({
         id = id.from(_N, "ListBackupVaultsInput", "ByVaultType"),
         type = "string",
         name = "ByVaultType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "vaultType" },
         },
      }),
      ByShared = schema.new({
         id = id.from(_N, "ListBackupVaultsInput", "ByShared"),
         type = "boolean",
         name = "ByShared",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "shared" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListBackupVaultsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListBackupVaultsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListBackupVaultsOutput = schema.new({
   id = id.from(_N, "ListBackupVaultsOutput"),
   type = "structure",
   members = {
      BackupVaultList = schema.new({
         id = id.from(_N, "ListBackupVaultsOutput", "BackupVaultList"),
         type = "list",
         name = "BackupVaultList",
         target_id = prelude.Document.id,
         list_member = M.BackupVaultListMember,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListBackupVaultsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCopyJobsInput = schema.new({
   id = id.from(_N, "ListCopyJobsInput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListCopyJobsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListCopyJobsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      ByResourceArn = schema.new({
         id = id.from(_N, "ListCopyJobsInput", "ByResourceArn"),
         type = "string",
         name = "ByResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "resourceArn" },
         },
      }),
      ByState = schema.new({
         id = id.from(_N, "ListCopyJobsInput", "ByState"),
         type = "string",
         name = "ByState",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "state" },
         },
      }),
      ByCreatedBefore = schema.new({
         id = id.from(_N, "ListCopyJobsInput", "ByCreatedBefore"),
         type = "timestamp",
         name = "ByCreatedBefore",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "createdBefore" },
         },
      }),
      ByCreatedAfter = schema.new({
         id = id.from(_N, "ListCopyJobsInput", "ByCreatedAfter"),
         type = "timestamp",
         name = "ByCreatedAfter",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "createdAfter" },
         },
      }),
      ByResourceType = schema.new({
         id = id.from(_N, "ListCopyJobsInput", "ByResourceType"),
         type = "string",
         name = "ByResourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "resourceType" },
         },
      }),
      ByDestinationVaultArn = schema.new({
         id = id.from(_N, "ListCopyJobsInput", "ByDestinationVaultArn"),
         type = "string",
         name = "ByDestinationVaultArn",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "destinationVaultArn" },
         },
      }),
      ByAccountId = schema.new({
         id = id.from(_N, "ListCopyJobsInput", "ByAccountId"),
         type = "string",
         name = "ByAccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "accountId" },
         },
      }),
      ByCompleteBefore = schema.new({
         id = id.from(_N, "ListCopyJobsInput", "ByCompleteBefore"),
         type = "timestamp",
         name = "ByCompleteBefore",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "completeBefore" },
         },
      }),
      ByCompleteAfter = schema.new({
         id = id.from(_N, "ListCopyJobsInput", "ByCompleteAfter"),
         type = "timestamp",
         name = "ByCompleteAfter",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "completeAfter" },
         },
      }),
      ByParentJobId = schema.new({
         id = id.from(_N, "ListCopyJobsInput", "ByParentJobId"),
         type = "string",
         name = "ByParentJobId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "parentJobId" },
         },
      }),
      ByMessageCategory = schema.new({
         id = id.from(_N, "ListCopyJobsInput", "ByMessageCategory"),
         type = "string",
         name = "ByMessageCategory",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "messageCategory" },
         },
      }),
      BySourceRecoveryPointArn = schema.new({
         id = id.from(_N, "ListCopyJobsInput", "BySourceRecoveryPointArn"),
         type = "string",
         name = "BySourceRecoveryPointArn",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "sourceRecoveryPointArn" },
         },
      }),
   },
})

M.ListCopyJobsOutput = schema.new({
   id = id.from(_N, "ListCopyJobsOutput"),
   type = "structure",
   members = {
      CopyJobs = schema.new({
         id = id.from(_N, "ListCopyJobsOutput", "CopyJobs"),
         type = "list",
         name = "CopyJobs",
         target_id = prelude.Document.id,
         list_member = M.CopyJob,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListCopyJobsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCopyJobSummariesInput = schema.new({
   id = id.from(_N, "ListCopyJobSummariesInput"),
   type = "structure",
   members = {
      AccountId = schema.new({
         id = id.from(_N, "ListCopyJobSummariesInput", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "AccountId" },
         },
      }),
      State = schema.new({
         id = id.from(_N, "ListCopyJobSummariesInput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "State" },
         },
      }),
      ResourceType = schema.new({
         id = id.from(_N, "ListCopyJobSummariesInput", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "ResourceType" },
         },
      }),
      MessageCategory = schema.new({
         id = id.from(_N, "ListCopyJobSummariesInput", "MessageCategory"),
         type = "string",
         name = "MessageCategory",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MessageCategory" },
         },
      }),
      AggregationPeriod = schema.new({
         id = id.from(_N, "ListCopyJobSummariesInput", "AggregationPeriod"),
         type = "string",
         name = "AggregationPeriod",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "AggregationPeriod" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListCopyJobSummariesInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListCopyJobSummariesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
   },
})

M.ListCopyJobSummariesOutput = schema.new({
   id = id.from(_N, "ListCopyJobSummariesOutput"),
   type = "structure",
   members = {
      CopyJobSummaries = schema.new({
         id = id.from(_N, "ListCopyJobSummariesOutput", "CopyJobSummaries"),
         type = "list",
         name = "CopyJobSummaries",
         target_id = prelude.Document.id,
         list_member = M.CopyJobSummary,
      }),
      AggregationPeriod = schema.new({
         id = id.from(_N, "ListCopyJobSummariesOutput", "AggregationPeriod"),
         type = "string",
         name = "AggregationPeriod",
         target_id = prelude.String.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListCopyJobSummariesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListFrameworksInput = schema.new({
   id = id.from(_N, "ListFrameworksInput"),
   type = "structure",
   members = {
      MaxResults = schema.new({
         id = id.from(_N, "ListFrameworksInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListFrameworksInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
   },
})

M.Framework = schema.new({
   id = id.from(_N, "Framework"),
   type = "structure",
   members = {
      FrameworkName = schema.new({
         id = id.from(_N, "Framework", "FrameworkName"),
         type = "string",
         name = "FrameworkName",
         target_id = prelude.String.id,
      }),
      FrameworkArn = schema.new({
         id = id.from(_N, "Framework", "FrameworkArn"),
         type = "string",
         name = "FrameworkArn",
         target_id = prelude.String.id,
      }),
      FrameworkDescription = schema.new({
         id = id.from(_N, "Framework", "FrameworkDescription"),
         type = "string",
         name = "FrameworkDescription",
         target_id = prelude.String.id,
      }),
      NumberOfControls = schema.new({
         id = id.from(_N, "Framework", "NumberOfControls"),
         type = "integer",
         name = "NumberOfControls",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      CreationTime = schema.new({
         id = id.from(_N, "Framework", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
      }),
      DeploymentStatus = schema.new({
         id = id.from(_N, "Framework", "DeploymentStatus"),
         type = "string",
         name = "DeploymentStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.ListFrameworksOutput = schema.new({
   id = id.from(_N, "ListFrameworksOutput"),
   type = "structure",
   members = {
      Frameworks = schema.new({
         id = id.from(_N, "ListFrameworksOutput", "Frameworks"),
         type = "list",
         name = "Frameworks",
         target_id = prelude.Document.id,
         list_member = M.Framework,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListFrameworksOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListIndexedRecoveryPointsInput = schema.new({
   id = id.from(_N, "ListIndexedRecoveryPointsInput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListIndexedRecoveryPointsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListIndexedRecoveryPointsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      SourceResourceArn = schema.new({
         id = id.from(_N, "ListIndexedRecoveryPointsInput", "SourceResourceArn"),
         type = "string",
         name = "SourceResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "sourceResourceArn" },
         },
      }),
      CreatedBefore = schema.new({
         id = id.from(_N, "ListIndexedRecoveryPointsInput", "CreatedBefore"),
         type = "timestamp",
         name = "CreatedBefore",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "createdBefore" },
         },
      }),
      CreatedAfter = schema.new({
         id = id.from(_N, "ListIndexedRecoveryPointsInput", "CreatedAfter"),
         type = "timestamp",
         name = "CreatedAfter",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "createdAfter" },
         },
      }),
      ResourceType = schema.new({
         id = id.from(_N, "ListIndexedRecoveryPointsInput", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "resourceType" },
         },
      }),
      IndexStatus = schema.new({
         id = id.from(_N, "ListIndexedRecoveryPointsInput", "IndexStatus"),
         type = "string",
         name = "IndexStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "indexStatus" },
         },
      }),
   },
})

M.IndexedRecoveryPoint = schema.new({
   id = id.from(_N, "IndexedRecoveryPoint"),
   type = "structure",
   members = {
      RecoveryPointArn = schema.new({
         id = id.from(_N, "IndexedRecoveryPoint", "RecoveryPointArn"),
         type = "string",
         name = "RecoveryPointArn",
         target_id = prelude.String.id,
      }),
      SourceResourceArn = schema.new({
         id = id.from(_N, "IndexedRecoveryPoint", "SourceResourceArn"),
         type = "string",
         name = "SourceResourceArn",
         target_id = prelude.String.id,
      }),
      IamRoleArn = schema.new({
         id = id.from(_N, "IndexedRecoveryPoint", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
      }),
      BackupCreationDate = schema.new({
         id = id.from(_N, "IndexedRecoveryPoint", "BackupCreationDate"),
         type = "timestamp",
         name = "BackupCreationDate",
         target_id = prelude.Timestamp.id,
      }),
      ResourceType = schema.new({
         id = id.from(_N, "IndexedRecoveryPoint", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
      }),
      IndexCreationDate = schema.new({
         id = id.from(_N, "IndexedRecoveryPoint", "IndexCreationDate"),
         type = "timestamp",
         name = "IndexCreationDate",
         target_id = prelude.Timestamp.id,
      }),
      IndexStatus = schema.new({
         id = id.from(_N, "IndexedRecoveryPoint", "IndexStatus"),
         type = "string",
         name = "IndexStatus",
         target_id = prelude.String.id,
      }),
      IndexStatusMessage = schema.new({
         id = id.from(_N, "IndexedRecoveryPoint", "IndexStatusMessage"),
         type = "string",
         name = "IndexStatusMessage",
         target_id = prelude.String.id,
      }),
      BackupVaultArn = schema.new({
         id = id.from(_N, "IndexedRecoveryPoint", "BackupVaultArn"),
         type = "string",
         name = "BackupVaultArn",
         target_id = prelude.String.id,
      }),
   },
})

M.ListIndexedRecoveryPointsOutput = schema.new({
   id = id.from(_N, "ListIndexedRecoveryPointsOutput"),
   type = "structure",
   members = {
      IndexedRecoveryPoints = schema.new({
         id = id.from(_N, "ListIndexedRecoveryPointsOutput", "IndexedRecoveryPoints"),
         type = "list",
         name = "IndexedRecoveryPoints",
         target_id = prelude.Document.id,
         list_member = M.IndexedRecoveryPoint,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListIndexedRecoveryPointsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListLegalHoldsInput = schema.new({
   id = id.from(_N, "ListLegalHoldsInput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListLegalHoldsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListLegalHoldsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.LegalHold = schema.new({
   id = id.from(_N, "LegalHold"),
   type = "structure",
   members = {
      Title = schema.new({
         id = id.from(_N, "LegalHold", "Title"),
         type = "string",
         name = "Title",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "LegalHold", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "LegalHold", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      LegalHoldId = schema.new({
         id = id.from(_N, "LegalHold", "LegalHoldId"),
         type = "string",
         name = "LegalHoldId",
         target_id = prelude.String.id,
      }),
      LegalHoldArn = schema.new({
         id = id.from(_N, "LegalHold", "LegalHoldArn"),
         type = "string",
         name = "LegalHoldArn",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "LegalHold", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      CancellationDate = schema.new({
         id = id.from(_N, "LegalHold", "CancellationDate"),
         type = "timestamp",
         name = "CancellationDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListLegalHoldsOutput = schema.new({
   id = id.from(_N, "ListLegalHoldsOutput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListLegalHoldsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      LegalHolds = schema.new({
         id = id.from(_N, "ListLegalHoldsOutput", "LegalHolds"),
         type = "list",
         name = "LegalHolds",
         target_id = prelude.Document.id,
         list_member = M.LegalHold,
      }),
   },
})

M.ListProtectedResourcesInput = schema.new({
   id = id.from(_N, "ListProtectedResourcesInput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListProtectedResourcesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListProtectedResourcesInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ProtectedResource = schema.new({
   id = id.from(_N, "ProtectedResource"),
   type = "structure",
   members = {
      ResourceArn = schema.new({
         id = id.from(_N, "ProtectedResource", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
      }),
      ResourceType = schema.new({
         id = id.from(_N, "ProtectedResource", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
      }),
      LastBackupTime = schema.new({
         id = id.from(_N, "ProtectedResource", "LastBackupTime"),
         type = "timestamp",
         name = "LastBackupTime",
         target_id = prelude.Timestamp.id,
      }),
      ResourceName = schema.new({
         id = id.from(_N, "ProtectedResource", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
      }),
      LastBackupVaultArn = schema.new({
         id = id.from(_N, "ProtectedResource", "LastBackupVaultArn"),
         type = "string",
         name = "LastBackupVaultArn",
         target_id = prelude.String.id,
      }),
      LastRecoveryPointArn = schema.new({
         id = id.from(_N, "ProtectedResource", "LastRecoveryPointArn"),
         type = "string",
         name = "LastRecoveryPointArn",
         target_id = prelude.String.id,
      }),
   },
})

M.ListProtectedResourcesOutput = schema.new({
   id = id.from(_N, "ListProtectedResourcesOutput"),
   type = "structure",
   members = {
      Results = schema.new({
         id = id.from(_N, "ListProtectedResourcesOutput", "Results"),
         type = "list",
         name = "Results",
         target_id = prelude.Document.id,
         list_member = M.ProtectedResource,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListProtectedResourcesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListProtectedResourcesByBackupVaultInput = schema.new({
   id = id.from(_N, "ListProtectedResourcesByBackupVaultInput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "ListProtectedResourcesByBackupVaultInput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackupVaultAccountId = schema.new({
         id = id.from(_N, "ListProtectedResourcesByBackupVaultInput", "BackupVaultAccountId"),
         type = "string",
         name = "BackupVaultAccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "backupVaultAccountId" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListProtectedResourcesByBackupVaultInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListProtectedResourcesByBackupVaultInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListProtectedResourcesByBackupVaultOutput = schema.new({
   id = id.from(_N, "ListProtectedResourcesByBackupVaultOutput"),
   type = "structure",
   members = {
      Results = schema.new({
         id = id.from(_N, "ListProtectedResourcesByBackupVaultOutput", "Results"),
         type = "list",
         name = "Results",
         target_id = prelude.Document.id,
         list_member = M.ProtectedResource,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListProtectedResourcesByBackupVaultOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListRecoveryPointsByBackupVaultInput = schema.new({
   id = id.from(_N, "ListRecoveryPointsByBackupVaultInput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "ListRecoveryPointsByBackupVaultInput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackupVaultAccountId = schema.new({
         id = id.from(_N, "ListRecoveryPointsByBackupVaultInput", "BackupVaultAccountId"),
         type = "string",
         name = "BackupVaultAccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "backupVaultAccountId" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListRecoveryPointsByBackupVaultInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListRecoveryPointsByBackupVaultInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      ByResourceArn = schema.new({
         id = id.from(_N, "ListRecoveryPointsByBackupVaultInput", "ByResourceArn"),
         type = "string",
         name = "ByResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "resourceArn" },
         },
      }),
      ByResourceType = schema.new({
         id = id.from(_N, "ListRecoveryPointsByBackupVaultInput", "ByResourceType"),
         type = "string",
         name = "ByResourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "resourceType" },
         },
      }),
      ByBackupPlanId = schema.new({
         id = id.from(_N, "ListRecoveryPointsByBackupVaultInput", "ByBackupPlanId"),
         type = "string",
         name = "ByBackupPlanId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "backupPlanId" },
         },
      }),
      ByCreatedBefore = schema.new({
         id = id.from(_N, "ListRecoveryPointsByBackupVaultInput", "ByCreatedBefore"),
         type = "timestamp",
         name = "ByCreatedBefore",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "createdBefore" },
         },
      }),
      ByCreatedAfter = schema.new({
         id = id.from(_N, "ListRecoveryPointsByBackupVaultInput", "ByCreatedAfter"),
         type = "timestamp",
         name = "ByCreatedAfter",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "createdAfter" },
         },
      }),
      ByParentRecoveryPointArn = schema.new({
         id = id.from(_N, "ListRecoveryPointsByBackupVaultInput", "ByParentRecoveryPointArn"),
         type = "string",
         name = "ByParentRecoveryPointArn",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "parentRecoveryPointArn" },
         },
      }),
   },
})

M.RecoveryPointByBackupVault = schema.new({
   id = id.from(_N, "RecoveryPointByBackupVault"),
   type = "structure",
   members = {
      RecoveryPointArn = schema.new({
         id = id.from(_N, "RecoveryPointByBackupVault", "RecoveryPointArn"),
         type = "string",
         name = "RecoveryPointArn",
         target_id = prelude.String.id,
      }),
      BackupVaultName = schema.new({
         id = id.from(_N, "RecoveryPointByBackupVault", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
      }),
      BackupVaultArn = schema.new({
         id = id.from(_N, "RecoveryPointByBackupVault", "BackupVaultArn"),
         type = "string",
         name = "BackupVaultArn",
         target_id = prelude.String.id,
      }),
      SourceBackupVaultArn = schema.new({
         id = id.from(_N, "RecoveryPointByBackupVault", "SourceBackupVaultArn"),
         type = "string",
         name = "SourceBackupVaultArn",
         target_id = prelude.String.id,
      }),
      ResourceArn = schema.new({
         id = id.from(_N, "RecoveryPointByBackupVault", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
      }),
      ResourceType = schema.new({
         id = id.from(_N, "RecoveryPointByBackupVault", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
      }),
      CreatedBy = schema.new({
         id = id.from(_N, "RecoveryPointByBackupVault", "CreatedBy"),
         type = "structure",
         name = "CreatedBy",
         target_id = id.from(_N, "RecoveryPointCreator"),
         target = M.RecoveryPointCreator,
      }),
      IamRoleArn = schema.new({
         id = id.from(_N, "RecoveryPointByBackupVault", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "RecoveryPointByBackupVault", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      StatusMessage = schema.new({
         id = id.from(_N, "RecoveryPointByBackupVault", "StatusMessage"),
         type = "string",
         name = "StatusMessage",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "RecoveryPointByBackupVault", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      InitiationDate = schema.new({
         id = id.from(_N, "RecoveryPointByBackupVault", "InitiationDate"),
         type = "timestamp",
         name = "InitiationDate",
         target_id = prelude.Timestamp.id,
      }),
      CompletionDate = schema.new({
         id = id.from(_N, "RecoveryPointByBackupVault", "CompletionDate"),
         type = "timestamp",
         name = "CompletionDate",
         target_id = prelude.Timestamp.id,
      }),
      BackupSizeInBytes = schema.new({
         id = id.from(_N, "RecoveryPointByBackupVault", "BackupSizeInBytes"),
         type = "long",
         name = "BackupSizeInBytes",
         target_id = prelude.Long.id,
      }),
      CalculatedLifecycle = schema.new({
         id = id.from(_N, "RecoveryPointByBackupVault", "CalculatedLifecycle"),
         type = "structure",
         name = "CalculatedLifecycle",
         target_id = id.from(_N, "CalculatedLifecycle"),
         target = M.CalculatedLifecycle,
      }),
      Lifecycle = schema.new({
         id = id.from(_N, "RecoveryPointByBackupVault", "Lifecycle"),
         type = "structure",
         name = "Lifecycle",
         target_id = id.from(_N, "Lifecycle"),
         target = M.Lifecycle,
      }),
      EncryptionKeyArn = schema.new({
         id = id.from(_N, "RecoveryPointByBackupVault", "EncryptionKeyArn"),
         type = "string",
         name = "EncryptionKeyArn",
         target_id = prelude.String.id,
      }),
      IsEncrypted = schema.new({
         id = id.from(_N, "RecoveryPointByBackupVault", "IsEncrypted"),
         type = "boolean",
         name = "IsEncrypted",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      LastRestoreTime = schema.new({
         id = id.from(_N, "RecoveryPointByBackupVault", "LastRestoreTime"),
         type = "timestamp",
         name = "LastRestoreTime",
         target_id = prelude.Timestamp.id,
      }),
      ParentRecoveryPointArn = schema.new({
         id = id.from(_N, "RecoveryPointByBackupVault", "ParentRecoveryPointArn"),
         type = "string",
         name = "ParentRecoveryPointArn",
         target_id = prelude.String.id,
      }),
      CompositeMemberIdentifier = schema.new({
         id = id.from(_N, "RecoveryPointByBackupVault", "CompositeMemberIdentifier"),
         type = "string",
         name = "CompositeMemberIdentifier",
         target_id = prelude.String.id,
      }),
      IsParent = schema.new({
         id = id.from(_N, "RecoveryPointByBackupVault", "IsParent"),
         type = "boolean",
         name = "IsParent",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      ResourceName = schema.new({
         id = id.from(_N, "RecoveryPointByBackupVault", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
      }),
      VaultType = schema.new({
         id = id.from(_N, "RecoveryPointByBackupVault", "VaultType"),
         type = "string",
         name = "VaultType",
         target_id = prelude.String.id,
      }),
      IndexStatus = schema.new({
         id = id.from(_N, "RecoveryPointByBackupVault", "IndexStatus"),
         type = "string",
         name = "IndexStatus",
         target_id = prelude.String.id,
      }),
      IndexStatusMessage = schema.new({
         id = id.from(_N, "RecoveryPointByBackupVault", "IndexStatusMessage"),
         type = "string",
         name = "IndexStatusMessage",
         target_id = prelude.String.id,
      }),
      EncryptionKeyType = schema.new({
         id = id.from(_N, "RecoveryPointByBackupVault", "EncryptionKeyType"),
         type = "string",
         name = "EncryptionKeyType",
         target_id = prelude.String.id,
      }),
      AggregatedScanResult = schema.new({
         id = id.from(_N, "RecoveryPointByBackupVault", "AggregatedScanResult"),
         type = "structure",
         name = "AggregatedScanResult",
         target_id = id.from(_N, "AggregatedScanResult"),
         target = M.AggregatedScanResult,
      }),
   },
})

M.ListRecoveryPointsByBackupVaultOutput = schema.new({
   id = id.from(_N, "ListRecoveryPointsByBackupVaultOutput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListRecoveryPointsByBackupVaultOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      RecoveryPoints = schema.new({
         id = id.from(_N, "ListRecoveryPointsByBackupVaultOutput", "RecoveryPoints"),
         type = "list",
         name = "RecoveryPoints",
         target_id = prelude.Document.id,
         list_member = M.RecoveryPointByBackupVault,
      }),
   },
})

M.ListRecoveryPointsByLegalHoldInput = schema.new({
   id = id.from(_N, "ListRecoveryPointsByLegalHoldInput"),
   type = "structure",
   members = {
      LegalHoldId = schema.new({
         id = id.from(_N, "ListRecoveryPointsByLegalHoldInput", "LegalHoldId"),
         type = "string",
         name = "LegalHoldId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListRecoveryPointsByLegalHoldInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListRecoveryPointsByLegalHoldInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.RecoveryPointMember = schema.new({
   id = id.from(_N, "RecoveryPointMember"),
   type = "structure",
   members = {
      RecoveryPointArn = schema.new({
         id = id.from(_N, "RecoveryPointMember", "RecoveryPointArn"),
         type = "string",
         name = "RecoveryPointArn",
         target_id = prelude.String.id,
      }),
      ResourceArn = schema.new({
         id = id.from(_N, "RecoveryPointMember", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
      }),
      ResourceType = schema.new({
         id = id.from(_N, "RecoveryPointMember", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
      }),
      BackupVaultName = schema.new({
         id = id.from(_N, "RecoveryPointMember", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
      }),
   },
})

M.ListRecoveryPointsByLegalHoldOutput = schema.new({
   id = id.from(_N, "ListRecoveryPointsByLegalHoldOutput"),
   type = "structure",
   members = {
      RecoveryPoints = schema.new({
         id = id.from(_N, "ListRecoveryPointsByLegalHoldOutput", "RecoveryPoints"),
         type = "list",
         name = "RecoveryPoints",
         target_id = prelude.Document.id,
         list_member = M.RecoveryPointMember,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListRecoveryPointsByLegalHoldOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListRecoveryPointsByResourceInput = schema.new({
   id = id.from(_N, "ListRecoveryPointsByResourceInput"),
   type = "structure",
   members = {
      ResourceArn = schema.new({
         id = id.from(_N, "ListRecoveryPointsByResourceInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListRecoveryPointsByResourceInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListRecoveryPointsByResourceInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      ManagedByAWSBackupOnly = schema.new({
         id = id.from(_N, "ListRecoveryPointsByResourceInput", "ManagedByAWSBackupOnly"),
         type = "boolean",
         name = "ManagedByAWSBackupOnly",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "managedByAWSBackupOnly" },
         },
      }),
   },
})

M.RecoveryPointByResource = schema.new({
   id = id.from(_N, "RecoveryPointByResource"),
   type = "structure",
   members = {
      RecoveryPointArn = schema.new({
         id = id.from(_N, "RecoveryPointByResource", "RecoveryPointArn"),
         type = "string",
         name = "RecoveryPointArn",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "RecoveryPointByResource", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      Status = schema.new({
         id = id.from(_N, "RecoveryPointByResource", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      StatusMessage = schema.new({
         id = id.from(_N, "RecoveryPointByResource", "StatusMessage"),
         type = "string",
         name = "StatusMessage",
         target_id = prelude.String.id,
      }),
      EncryptionKeyArn = schema.new({
         id = id.from(_N, "RecoveryPointByResource", "EncryptionKeyArn"),
         type = "string",
         name = "EncryptionKeyArn",
         target_id = prelude.String.id,
      }),
      BackupSizeBytes = schema.new({
         id = id.from(_N, "RecoveryPointByResource", "BackupSizeBytes"),
         type = "long",
         name = "BackupSizeBytes",
         target_id = prelude.Long.id,
      }),
      BackupVaultName = schema.new({
         id = id.from(_N, "RecoveryPointByResource", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
      }),
      IsParent = schema.new({
         id = id.from(_N, "RecoveryPointByResource", "IsParent"),
         type = "boolean",
         name = "IsParent",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      ParentRecoveryPointArn = schema.new({
         id = id.from(_N, "RecoveryPointByResource", "ParentRecoveryPointArn"),
         type = "string",
         name = "ParentRecoveryPointArn",
         target_id = prelude.String.id,
      }),
      ResourceName = schema.new({
         id = id.from(_N, "RecoveryPointByResource", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
      }),
      VaultType = schema.new({
         id = id.from(_N, "RecoveryPointByResource", "VaultType"),
         type = "string",
         name = "VaultType",
         target_id = prelude.String.id,
      }),
      IndexStatus = schema.new({
         id = id.from(_N, "RecoveryPointByResource", "IndexStatus"),
         type = "string",
         name = "IndexStatus",
         target_id = prelude.String.id,
      }),
      IndexStatusMessage = schema.new({
         id = id.from(_N, "RecoveryPointByResource", "IndexStatusMessage"),
         type = "string",
         name = "IndexStatusMessage",
         target_id = prelude.String.id,
      }),
      EncryptionKeyType = schema.new({
         id = id.from(_N, "RecoveryPointByResource", "EncryptionKeyType"),
         type = "string",
         name = "EncryptionKeyType",
         target_id = prelude.String.id,
      }),
      AggregatedScanResult = schema.new({
         id = id.from(_N, "RecoveryPointByResource", "AggregatedScanResult"),
         type = "structure",
         name = "AggregatedScanResult",
         target_id = id.from(_N, "AggregatedScanResult"),
         target = M.AggregatedScanResult,
      }),
   },
})

M.ListRecoveryPointsByResourceOutput = schema.new({
   id = id.from(_N, "ListRecoveryPointsByResourceOutput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListRecoveryPointsByResourceOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      RecoveryPoints = schema.new({
         id = id.from(_N, "ListRecoveryPointsByResourceOutput", "RecoveryPoints"),
         type = "list",
         name = "RecoveryPoints",
         target_id = prelude.Document.id,
         list_member = M.RecoveryPointByResource,
      }),
   },
})

M.ListReportJobsInput = schema.new({
   id = id.from(_N, "ListReportJobsInput"),
   type = "structure",
   members = {
      ByReportPlanName = schema.new({
         id = id.from(_N, "ListReportJobsInput", "ByReportPlanName"),
         type = "string",
         name = "ByReportPlanName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "ReportPlanName" },
         },
      }),
      ByCreationBefore = schema.new({
         id = id.from(_N, "ListReportJobsInput", "ByCreationBefore"),
         type = "timestamp",
         name = "ByCreationBefore",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "CreationBefore" },
         },
      }),
      ByCreationAfter = schema.new({
         id = id.from(_N, "ListReportJobsInput", "ByCreationAfter"),
         type = "timestamp",
         name = "ByCreationAfter",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "CreationAfter" },
         },
      }),
      ByStatus = schema.new({
         id = id.from(_N, "ListReportJobsInput", "ByStatus"),
         type = "string",
         name = "ByStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "Status" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListReportJobsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListReportJobsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
   },
})

M.ListReportJobsOutput = schema.new({
   id = id.from(_N, "ListReportJobsOutput"),
   type = "structure",
   members = {
      ReportJobs = schema.new({
         id = id.from(_N, "ListReportJobsOutput", "ReportJobs"),
         type = "list",
         name = "ReportJobs",
         target_id = prelude.Document.id,
         list_member = M.ReportJob,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListReportJobsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListReportPlansInput = schema.new({
   id = id.from(_N, "ListReportPlansInput"),
   type = "structure",
   members = {
      MaxResults = schema.new({
         id = id.from(_N, "ListReportPlansInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListReportPlansInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
   },
})

M.ListReportPlansOutput = schema.new({
   id = id.from(_N, "ListReportPlansOutput"),
   type = "structure",
   members = {
      ReportPlans = schema.new({
         id = id.from(_N, "ListReportPlansOutput", "ReportPlans"),
         type = "list",
         name = "ReportPlans",
         target_id = prelude.Document.id,
         list_member = M.ReportPlan,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListReportPlansOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListRestoreAccessBackupVaultsInput = schema.new({
   id = id.from(_N, "ListRestoreAccessBackupVaultsInput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "ListRestoreAccessBackupVaultsInput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListRestoreAccessBackupVaultsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListRestoreAccessBackupVaultsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.LatestRevokeRequest = schema.new({
   id = id.from(_N, "LatestRevokeRequest"),
   type = "structure",
   members = {
      MpaSessionArn = schema.new({
         id = id.from(_N, "LatestRevokeRequest", "MpaSessionArn"),
         type = "string",
         name = "MpaSessionArn",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "LatestRevokeRequest", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      StatusMessage = schema.new({
         id = id.from(_N, "LatestRevokeRequest", "StatusMessage"),
         type = "string",
         name = "StatusMessage",
         target_id = prelude.String.id,
      }),
      InitiationDate = schema.new({
         id = id.from(_N, "LatestRevokeRequest", "InitiationDate"),
         type = "timestamp",
         name = "InitiationDate",
         target_id = prelude.Timestamp.id,
      }),
      ExpiryDate = schema.new({
         id = id.from(_N, "LatestRevokeRequest", "ExpiryDate"),
         type = "timestamp",
         name = "ExpiryDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.RestoreAccessBackupVaultListMember = schema.new({
   id = id.from(_N, "RestoreAccessBackupVaultListMember"),
   type = "structure",
   members = {
      RestoreAccessBackupVaultArn = schema.new({
         id = id.from(_N, "RestoreAccessBackupVaultListMember", "RestoreAccessBackupVaultArn"),
         type = "string",
         name = "RestoreAccessBackupVaultArn",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "RestoreAccessBackupVaultListMember", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      ApprovalDate = schema.new({
         id = id.from(_N, "RestoreAccessBackupVaultListMember", "ApprovalDate"),
         type = "timestamp",
         name = "ApprovalDate",
         target_id = prelude.Timestamp.id,
      }),
      VaultState = schema.new({
         id = id.from(_N, "RestoreAccessBackupVaultListMember", "VaultState"),
         type = "string",
         name = "VaultState",
         target_id = prelude.String.id,
      }),
      LatestRevokeRequest = schema.new({
         id = id.from(_N, "RestoreAccessBackupVaultListMember", "LatestRevokeRequest"),
         type = "structure",
         name = "LatestRevokeRequest",
         target_id = id.from(_N, "LatestRevokeRequest"),
         target = M.LatestRevokeRequest,
      }),
   },
})

M.ListRestoreAccessBackupVaultsOutput = schema.new({
   id = id.from(_N, "ListRestoreAccessBackupVaultsOutput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListRestoreAccessBackupVaultsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      RestoreAccessBackupVaults = schema.new({
         id = id.from(_N, "ListRestoreAccessBackupVaultsOutput", "RestoreAccessBackupVaults"),
         type = "list",
         name = "RestoreAccessBackupVaults",
         target_id = prelude.Document.id,
         list_member = M.RestoreAccessBackupVaultListMember,
      }),
   },
})

M.ListRestoreJobsInput = schema.new({
   id = id.from(_N, "ListRestoreJobsInput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListRestoreJobsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListRestoreJobsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      ByAccountId = schema.new({
         id = id.from(_N, "ListRestoreJobsInput", "ByAccountId"),
         type = "string",
         name = "ByAccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "accountId" },
         },
      }),
      ByResourceType = schema.new({
         id = id.from(_N, "ListRestoreJobsInput", "ByResourceType"),
         type = "string",
         name = "ByResourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "resourceType" },
         },
      }),
      ByCreatedBefore = schema.new({
         id = id.from(_N, "ListRestoreJobsInput", "ByCreatedBefore"),
         type = "timestamp",
         name = "ByCreatedBefore",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "createdBefore" },
         },
      }),
      ByCreatedAfter = schema.new({
         id = id.from(_N, "ListRestoreJobsInput", "ByCreatedAfter"),
         type = "timestamp",
         name = "ByCreatedAfter",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "createdAfter" },
         },
      }),
      ByStatus = schema.new({
         id = id.from(_N, "ListRestoreJobsInput", "ByStatus"),
         type = "string",
         name = "ByStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "status" },
         },
      }),
      ByCompleteBefore = schema.new({
         id = id.from(_N, "ListRestoreJobsInput", "ByCompleteBefore"),
         type = "timestamp",
         name = "ByCompleteBefore",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "completeBefore" },
         },
      }),
      ByCompleteAfter = schema.new({
         id = id.from(_N, "ListRestoreJobsInput", "ByCompleteAfter"),
         type = "timestamp",
         name = "ByCompleteAfter",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "completeAfter" },
         },
      }),
      ByRestoreTestingPlanArn = schema.new({
         id = id.from(_N, "ListRestoreJobsInput", "ByRestoreTestingPlanArn"),
         type = "string",
         name = "ByRestoreTestingPlanArn",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "restoreTestingPlanArn" },
         },
      }),
      ByParentJobId = schema.new({
         id = id.from(_N, "ListRestoreJobsInput", "ByParentJobId"),
         type = "string",
         name = "ByParentJobId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "parentJobId" },
         },
      }),
   },
})

M.RestoreJobsListMember = schema.new({
   id = id.from(_N, "RestoreJobsListMember"),
   type = "structure",
   members = {
      AccountId = schema.new({
         id = id.from(_N, "RestoreJobsListMember", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
      }),
      RestoreJobId = schema.new({
         id = id.from(_N, "RestoreJobsListMember", "RestoreJobId"),
         type = "string",
         name = "RestoreJobId",
         target_id = prelude.String.id,
      }),
      RecoveryPointArn = schema.new({
         id = id.from(_N, "RestoreJobsListMember", "RecoveryPointArn"),
         type = "string",
         name = "RecoveryPointArn",
         target_id = prelude.String.id,
      }),
      SourceResourceArn = schema.new({
         id = id.from(_N, "RestoreJobsListMember", "SourceResourceArn"),
         type = "string",
         name = "SourceResourceArn",
         target_id = prelude.String.id,
      }),
      BackupVaultArn = schema.new({
         id = id.from(_N, "RestoreJobsListMember", "BackupVaultArn"),
         type = "string",
         name = "BackupVaultArn",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "RestoreJobsListMember", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      CompletionDate = schema.new({
         id = id.from(_N, "RestoreJobsListMember", "CompletionDate"),
         type = "timestamp",
         name = "CompletionDate",
         target_id = prelude.Timestamp.id,
      }),
      Status = schema.new({
         id = id.from(_N, "RestoreJobsListMember", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      StatusMessage = schema.new({
         id = id.from(_N, "RestoreJobsListMember", "StatusMessage"),
         type = "string",
         name = "StatusMessage",
         target_id = prelude.String.id,
      }),
      PercentDone = schema.new({
         id = id.from(_N, "RestoreJobsListMember", "PercentDone"),
         type = "string",
         name = "PercentDone",
         target_id = prelude.String.id,
      }),
      BackupSizeInBytes = schema.new({
         id = id.from(_N, "RestoreJobsListMember", "BackupSizeInBytes"),
         type = "long",
         name = "BackupSizeInBytes",
         target_id = prelude.Long.id,
      }),
      IamRoleArn = schema.new({
         id = id.from(_N, "RestoreJobsListMember", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
      }),
      ExpectedCompletionTimeMinutes = schema.new({
         id = id.from(_N, "RestoreJobsListMember", "ExpectedCompletionTimeMinutes"),
         type = "long",
         name = "ExpectedCompletionTimeMinutes",
         target_id = prelude.Long.id,
      }),
      CreatedResourceArn = schema.new({
         id = id.from(_N, "RestoreJobsListMember", "CreatedResourceArn"),
         type = "string",
         name = "CreatedResourceArn",
         target_id = prelude.String.id,
      }),
      ResourceType = schema.new({
         id = id.from(_N, "RestoreJobsListMember", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
      }),
      RecoveryPointCreationDate = schema.new({
         id = id.from(_N, "RestoreJobsListMember", "RecoveryPointCreationDate"),
         type = "timestamp",
         name = "RecoveryPointCreationDate",
         target_id = prelude.Timestamp.id,
      }),
      IsParent = schema.new({
         id = id.from(_N, "RestoreJobsListMember", "IsParent"),
         type = "boolean",
         name = "IsParent",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      ParentJobId = schema.new({
         id = id.from(_N, "RestoreJobsListMember", "ParentJobId"),
         type = "string",
         name = "ParentJobId",
         target_id = prelude.String.id,
      }),
      CreatedBy = schema.new({
         id = id.from(_N, "RestoreJobsListMember", "CreatedBy"),
         type = "structure",
         name = "CreatedBy",
         target_id = id.from(_N, "RestoreJobCreator"),
         target = M.RestoreJobCreator,
      }),
      ValidationStatus = schema.new({
         id = id.from(_N, "RestoreJobsListMember", "ValidationStatus"),
         type = "string",
         name = "ValidationStatus",
         target_id = prelude.String.id,
      }),
      ValidationStatusMessage = schema.new({
         id = id.from(_N, "RestoreJobsListMember", "ValidationStatusMessage"),
         type = "string",
         name = "ValidationStatusMessage",
         target_id = prelude.String.id,
      }),
      DeletionStatus = schema.new({
         id = id.from(_N, "RestoreJobsListMember", "DeletionStatus"),
         type = "string",
         name = "DeletionStatus",
         target_id = prelude.String.id,
      }),
      DeletionStatusMessage = schema.new({
         id = id.from(_N, "RestoreJobsListMember", "DeletionStatusMessage"),
         type = "string",
         name = "DeletionStatusMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.ListRestoreJobsOutput = schema.new({
   id = id.from(_N, "ListRestoreJobsOutput"),
   type = "structure",
   members = {
      RestoreJobs = schema.new({
         id = id.from(_N, "ListRestoreJobsOutput", "RestoreJobs"),
         type = "list",
         name = "RestoreJobs",
         target_id = prelude.Document.id,
         list_member = M.RestoreJobsListMember,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListRestoreJobsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListRestoreJobsByProtectedResourceInput = schema.new({
   id = id.from(_N, "ListRestoreJobsByProtectedResourceInput"),
   type = "structure",
   members = {
      ResourceArn = schema.new({
         id = id.from(_N, "ListRestoreJobsByProtectedResourceInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ByStatus = schema.new({
         id = id.from(_N, "ListRestoreJobsByProtectedResourceInput", "ByStatus"),
         type = "string",
         name = "ByStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "status" },
         },
      }),
      ByRecoveryPointCreationDateAfter = schema.new({
         id = id.from(_N, "ListRestoreJobsByProtectedResourceInput", "ByRecoveryPointCreationDateAfter"),
         type = "timestamp",
         name = "ByRecoveryPointCreationDateAfter",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "recoveryPointCreationDateAfter" },
         },
      }),
      ByRecoveryPointCreationDateBefore = schema.new({
         id = id.from(_N, "ListRestoreJobsByProtectedResourceInput", "ByRecoveryPointCreationDateBefore"),
         type = "timestamp",
         name = "ByRecoveryPointCreationDateBefore",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "recoveryPointCreationDateBefore" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListRestoreJobsByProtectedResourceInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListRestoreJobsByProtectedResourceInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListRestoreJobsByProtectedResourceOutput = schema.new({
   id = id.from(_N, "ListRestoreJobsByProtectedResourceOutput"),
   type = "structure",
   members = {
      RestoreJobs = schema.new({
         id = id.from(_N, "ListRestoreJobsByProtectedResourceOutput", "RestoreJobs"),
         type = "list",
         name = "RestoreJobs",
         target_id = prelude.Document.id,
         list_member = M.RestoreJobsListMember,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListRestoreJobsByProtectedResourceOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListRestoreJobSummariesInput = schema.new({
   id = id.from(_N, "ListRestoreJobSummariesInput"),
   type = "structure",
   members = {
      AccountId = schema.new({
         id = id.from(_N, "ListRestoreJobSummariesInput", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "AccountId" },
         },
      }),
      State = schema.new({
         id = id.from(_N, "ListRestoreJobSummariesInput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "State" },
         },
      }),
      ResourceType = schema.new({
         id = id.from(_N, "ListRestoreJobSummariesInput", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "ResourceType" },
         },
      }),
      AggregationPeriod = schema.new({
         id = id.from(_N, "ListRestoreJobSummariesInput", "AggregationPeriod"),
         type = "string",
         name = "AggregationPeriod",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "AggregationPeriod" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListRestoreJobSummariesInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListRestoreJobSummariesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
   },
})

M.RestoreJobSummary = schema.new({
   id = id.from(_N, "RestoreJobSummary"),
   type = "structure",
   members = {
      Region = schema.new({
         id = id.from(_N, "RestoreJobSummary", "Region"),
         type = "string",
         name = "Region",
         target_id = prelude.String.id,
      }),
      AccountId = schema.new({
         id = id.from(_N, "RestoreJobSummary", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "RestoreJobSummary", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      ResourceType = schema.new({
         id = id.from(_N, "RestoreJobSummary", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
      }),
      Count = schema.new({
         id = id.from(_N, "RestoreJobSummary", "Count"),
         type = "integer",
         name = "Count",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      StartTime = schema.new({
         id = id.from(_N, "RestoreJobSummary", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
      }),
      EndTime = schema.new({
         id = id.from(_N, "RestoreJobSummary", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListRestoreJobSummariesOutput = schema.new({
   id = id.from(_N, "ListRestoreJobSummariesOutput"),
   type = "structure",
   members = {
      RestoreJobSummaries = schema.new({
         id = id.from(_N, "ListRestoreJobSummariesOutput", "RestoreJobSummaries"),
         type = "list",
         name = "RestoreJobSummaries",
         target_id = prelude.Document.id,
         list_member = M.RestoreJobSummary,
      }),
      AggregationPeriod = schema.new({
         id = id.from(_N, "ListRestoreJobSummariesOutput", "AggregationPeriod"),
         type = "string",
         name = "AggregationPeriod",
         target_id = prelude.String.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListRestoreJobSummariesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListRestoreTestingPlansInput = schema.new({
   id = id.from(_N, "ListRestoreTestingPlansInput"),
   type = "structure",
   members = {
      MaxResults = schema.new({
         id = id.from(_N, "ListRestoreTestingPlansInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListRestoreTestingPlansInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
   },
})

M.RestoreTestingPlanForList = schema.new({
   id = id.from(_N, "RestoreTestingPlanForList"),
   type = "structure",
   members = {
      CreationTime = schema.new({
         id = id.from(_N, "RestoreTestingPlanForList", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LastExecutionTime = schema.new({
         id = id.from(_N, "RestoreTestingPlanForList", "LastExecutionTime"),
         type = "timestamp",
         name = "LastExecutionTime",
         target_id = prelude.Timestamp.id,
      }),
      LastUpdateTime = schema.new({
         id = id.from(_N, "RestoreTestingPlanForList", "LastUpdateTime"),
         type = "timestamp",
         name = "LastUpdateTime",
         target_id = prelude.Timestamp.id,
      }),
      RestoreTestingPlanArn = schema.new({
         id = id.from(_N, "RestoreTestingPlanForList", "RestoreTestingPlanArn"),
         type = "string",
         name = "RestoreTestingPlanArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RestoreTestingPlanName = schema.new({
         id = id.from(_N, "RestoreTestingPlanForList", "RestoreTestingPlanName"),
         type = "string",
         name = "RestoreTestingPlanName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ScheduleExpression = schema.new({
         id = id.from(_N, "RestoreTestingPlanForList", "ScheduleExpression"),
         type = "string",
         name = "ScheduleExpression",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ScheduleExpressionTimezone = schema.new({
         id = id.from(_N, "RestoreTestingPlanForList", "ScheduleExpressionTimezone"),
         type = "string",
         name = "ScheduleExpressionTimezone",
         target_id = prelude.String.id,
      }),
      StartWindowHours = schema.new({
         id = id.from(_N, "RestoreTestingPlanForList", "StartWindowHours"),
         type = "integer",
         name = "StartWindowHours",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.ListRestoreTestingPlansOutput = schema.new({
   id = id.from(_N, "ListRestoreTestingPlansOutput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListRestoreTestingPlansOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      RestoreTestingPlans = schema.new({
         id = id.from(_N, "ListRestoreTestingPlansOutput", "RestoreTestingPlans"),
         type = "list",
         name = "RestoreTestingPlans",
         target_id = prelude.Document.id,
         list_member = M.RestoreTestingPlanForList,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListRestoreTestingSelectionsInput = schema.new({
   id = id.from(_N, "ListRestoreTestingSelectionsInput"),
   type = "structure",
   members = {
      MaxResults = schema.new({
         id = id.from(_N, "ListRestoreTestingSelectionsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListRestoreTestingSelectionsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
      RestoreTestingPlanName = schema.new({
         id = id.from(_N, "ListRestoreTestingSelectionsInput", "RestoreTestingPlanName"),
         type = "string",
         name = "RestoreTestingPlanName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.RestoreTestingSelectionForList = schema.new({
   id = id.from(_N, "RestoreTestingSelectionForList"),
   type = "structure",
   members = {
      CreationTime = schema.new({
         id = id.from(_N, "RestoreTestingSelectionForList", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IamRoleArn = schema.new({
         id = id.from(_N, "RestoreTestingSelectionForList", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ProtectedResourceType = schema.new({
         id = id.from(_N, "RestoreTestingSelectionForList", "ProtectedResourceType"),
         type = "string",
         name = "ProtectedResourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RestoreTestingPlanName = schema.new({
         id = id.from(_N, "RestoreTestingSelectionForList", "RestoreTestingPlanName"),
         type = "string",
         name = "RestoreTestingPlanName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RestoreTestingSelectionName = schema.new({
         id = id.from(_N, "RestoreTestingSelectionForList", "RestoreTestingSelectionName"),
         type = "string",
         name = "RestoreTestingSelectionName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ValidationWindowHours = schema.new({
         id = id.from(_N, "RestoreTestingSelectionForList", "ValidationWindowHours"),
         type = "integer",
         name = "ValidationWindowHours",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.ListRestoreTestingSelectionsOutput = schema.new({
   id = id.from(_N, "ListRestoreTestingSelectionsOutput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListRestoreTestingSelectionsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      RestoreTestingSelections = schema.new({
         id = id.from(_N, "ListRestoreTestingSelectionsOutput", "RestoreTestingSelections"),
         type = "list",
         name = "RestoreTestingSelections",
         target_id = prelude.Document.id,
         list_member = M.RestoreTestingSelectionForList,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListScanJobsInput = schema.new({
   id = id.from(_N, "ListScanJobsInput"),
   type = "structure",
   members = {
      ByAccountId = schema.new({
         id = id.from(_N, "ListScanJobsInput", "ByAccountId"),
         type = "string",
         name = "ByAccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "ByAccountId" },
         },
      }),
      ByBackupVaultName = schema.new({
         id = id.from(_N, "ListScanJobsInput", "ByBackupVaultName"),
         type = "string",
         name = "ByBackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "ByBackupVaultName" },
         },
      }),
      ByCompleteAfter = schema.new({
         id = id.from(_N, "ListScanJobsInput", "ByCompleteAfter"),
         type = "timestamp",
         name = "ByCompleteAfter",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "ByCompleteAfter" },
         },
      }),
      ByCompleteBefore = schema.new({
         id = id.from(_N, "ListScanJobsInput", "ByCompleteBefore"),
         type = "timestamp",
         name = "ByCompleteBefore",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "ByCompleteBefore" },
         },
      }),
      ByMalwareScanner = schema.new({
         id = id.from(_N, "ListScanJobsInput", "ByMalwareScanner"),
         type = "string",
         name = "ByMalwareScanner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "ByMalwareScanner" },
         },
      }),
      ByRecoveryPointArn = schema.new({
         id = id.from(_N, "ListScanJobsInput", "ByRecoveryPointArn"),
         type = "string",
         name = "ByRecoveryPointArn",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "ByRecoveryPointArn" },
         },
      }),
      ByResourceArn = schema.new({
         id = id.from(_N, "ListScanJobsInput", "ByResourceArn"),
         type = "string",
         name = "ByResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "ByResourceArn" },
         },
      }),
      ByResourceType = schema.new({
         id = id.from(_N, "ListScanJobsInput", "ByResourceType"),
         type = "string",
         name = "ByResourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "ByResourceType" },
         },
      }),
      ByScanResultStatus = schema.new({
         id = id.from(_N, "ListScanJobsInput", "ByScanResultStatus"),
         type = "string",
         name = "ByScanResultStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "ByScanResultStatus" },
         },
      }),
      ByState = schema.new({
         id = id.from(_N, "ListScanJobsInput", "ByState"),
         type = "string",
         name = "ByState",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "ByState" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListScanJobsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListScanJobsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
   },
})

M.ScanJob = schema.new({
   id = id.from(_N, "ScanJob"),
   type = "structure",
   members = {
      AccountId = schema.new({
         id = id.from(_N, "ScanJob", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BackupVaultArn = schema.new({
         id = id.from(_N, "ScanJob", "BackupVaultArn"),
         type = "string",
         name = "BackupVaultArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BackupVaultName = schema.new({
         id = id.from(_N, "ScanJob", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CompletionDate = schema.new({
         id = id.from(_N, "ScanJob", "CompletionDate"),
         type = "timestamp",
         name = "CompletionDate",
         target_id = prelude.Timestamp.id,
      }),
      CreatedBy = schema.new({
         id = id.from(_N, "ScanJob", "CreatedBy"),
         type = "structure",
         name = "CreatedBy",
         target_id = id.from(_N, "ScanJobCreator"),
         target = M.ScanJobCreator,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreationDate = schema.new({
         id = id.from(_N, "ScanJob", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IamRoleArn = schema.new({
         id = id.from(_N, "ScanJob", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MalwareScanner = schema.new({
         id = id.from(_N, "ScanJob", "MalwareScanner"),
         type = "string",
         name = "MalwareScanner",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RecoveryPointArn = schema.new({
         id = id.from(_N, "ScanJob", "RecoveryPointArn"),
         type = "string",
         name = "RecoveryPointArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ResourceArn = schema.new({
         id = id.from(_N, "ScanJob", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ResourceName = schema.new({
         id = id.from(_N, "ScanJob", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ResourceType = schema.new({
         id = id.from(_N, "ScanJob", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ScanBaseRecoveryPointArn = schema.new({
         id = id.from(_N, "ScanJob", "ScanBaseRecoveryPointArn"),
         type = "string",
         name = "ScanBaseRecoveryPointArn",
         target_id = prelude.String.id,
      }),
      ScanId = schema.new({
         id = id.from(_N, "ScanJob", "ScanId"),
         type = "string",
         name = "ScanId",
         target_id = prelude.String.id,
      }),
      ScanJobId = schema.new({
         id = id.from(_N, "ScanJob", "ScanJobId"),
         type = "string",
         name = "ScanJobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ScanMode = schema.new({
         id = id.from(_N, "ScanJob", "ScanMode"),
         type = "string",
         name = "ScanMode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ScanResult = schema.new({
         id = id.from(_N, "ScanJob", "ScanResult"),
         type = "structure",
         name = "ScanResult",
         target_id = id.from(_N, "ScanResultInfo"),
         target = M.ScanResultInfo,
      }),
      ScannerRoleArn = schema.new({
         id = id.from(_N, "ScanJob", "ScannerRoleArn"),
         type = "string",
         name = "ScannerRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      State = schema.new({
         id = id.from(_N, "ScanJob", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      StatusMessage = schema.new({
         id = id.from(_N, "ScanJob", "StatusMessage"),
         type = "string",
         name = "StatusMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.ListScanJobsOutput = schema.new({
   id = id.from(_N, "ListScanJobsOutput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListScanJobsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      ScanJobs = schema.new({
         id = id.from(_N, "ListScanJobsOutput", "ScanJobs"),
         type = "list",
         name = "ScanJobs",
         target_id = prelude.Document.id,
         list_member = M.ScanJob,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListScanJobSummariesInput = schema.new({
   id = id.from(_N, "ListScanJobSummariesInput"),
   type = "structure",
   members = {
      AccountId = schema.new({
         id = id.from(_N, "ListScanJobSummariesInput", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "AccountId" },
         },
      }),
      ResourceType = schema.new({
         id = id.from(_N, "ListScanJobSummariesInput", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "ResourceType" },
         },
      }),
      MalwareScanner = schema.new({
         id = id.from(_N, "ListScanJobSummariesInput", "MalwareScanner"),
         type = "string",
         name = "MalwareScanner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MalwareScanner" },
         },
      }),
      ScanResultStatus = schema.new({
         id = id.from(_N, "ListScanJobSummariesInput", "ScanResultStatus"),
         type = "string",
         name = "ScanResultStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "ScanResultStatus" },
         },
      }),
      State = schema.new({
         id = id.from(_N, "ListScanJobSummariesInput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "State" },
         },
      }),
      AggregationPeriod = schema.new({
         id = id.from(_N, "ListScanJobSummariesInput", "AggregationPeriod"),
         type = "string",
         name = "AggregationPeriod",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "AggregationPeriod" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListScanJobSummariesInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListScanJobSummariesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
   },
})

M.ScanJobSummary = schema.new({
   id = id.from(_N, "ScanJobSummary"),
   type = "structure",
   members = {
      Region = schema.new({
         id = id.from(_N, "ScanJobSummary", "Region"),
         type = "string",
         name = "Region",
         target_id = prelude.String.id,
      }),
      AccountId = schema.new({
         id = id.from(_N, "ScanJobSummary", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "ScanJobSummary", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      ResourceType = schema.new({
         id = id.from(_N, "ScanJobSummary", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
      }),
      Count = schema.new({
         id = id.from(_N, "ScanJobSummary", "Count"),
         type = "integer",
         name = "Count",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      StartTime = schema.new({
         id = id.from(_N, "ScanJobSummary", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
      }),
      EndTime = schema.new({
         id = id.from(_N, "ScanJobSummary", "EndTime"),
         type = "timestamp",
         name = "EndTime",
         target_id = prelude.Timestamp.id,
      }),
      MalwareScanner = schema.new({
         id = id.from(_N, "ScanJobSummary", "MalwareScanner"),
         type = "string",
         name = "MalwareScanner",
         target_id = prelude.String.id,
      }),
      ScanResultStatus = schema.new({
         id = id.from(_N, "ScanJobSummary", "ScanResultStatus"),
         type = "string",
         name = "ScanResultStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.ListScanJobSummariesOutput = schema.new({
   id = id.from(_N, "ListScanJobSummariesOutput"),
   type = "structure",
   members = {
      ScanJobSummaries = schema.new({
         id = id.from(_N, "ListScanJobSummariesOutput", "ScanJobSummaries"),
         type = "list",
         name = "ScanJobSummaries",
         target_id = prelude.Document.id,
         list_member = M.ScanJobSummary,
      }),
      AggregationPeriod = schema.new({
         id = id.from(_N, "ListScanJobSummariesOutput", "AggregationPeriod"),
         type = "string",
         name = "AggregationPeriod",
         target_id = prelude.String.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListScanJobSummariesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListTagsInput = schema.new({
   id = id.from(_N, "ListTagsInput"),
   type = "structure",
   members = {
      ResourceArn = schema.new({
         id = id.from(_N, "ListTagsInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListTagsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListTagsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListTagsOutput = schema.new({
   id = id.from(_N, "ListTagsOutput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListTagsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "ListTagsOutput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ListTieringConfigurationsInput = schema.new({
   id = id.from(_N, "ListTieringConfigurationsInput"),
   type = "structure",
   members = {
      MaxResults = schema.new({
         id = id.from(_N, "ListTieringConfigurationsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListTieringConfigurationsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.TieringConfigurationsListMember = schema.new({
   id = id.from(_N, "TieringConfigurationsListMember"),
   type = "structure",
   members = {
      TieringConfigurationArn = schema.new({
         id = id.from(_N, "TieringConfigurationsListMember", "TieringConfigurationArn"),
         type = "string",
         name = "TieringConfigurationArn",
         target_id = prelude.String.id,
      }),
      TieringConfigurationName = schema.new({
         id = id.from(_N, "TieringConfigurationsListMember", "TieringConfigurationName"),
         type = "string",
         name = "TieringConfigurationName",
         target_id = prelude.String.id,
      }),
      BackupVaultName = schema.new({
         id = id.from(_N, "TieringConfigurationsListMember", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "TieringConfigurationsListMember", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
      }),
      LastUpdatedTime = schema.new({
         id = id.from(_N, "TieringConfigurationsListMember", "LastUpdatedTime"),
         type = "timestamp",
         name = "LastUpdatedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListTieringConfigurationsOutput = schema.new({
   id = id.from(_N, "ListTieringConfigurationsOutput"),
   type = "structure",
   members = {
      TieringConfigurations = schema.new({
         id = id.from(_N, "ListTieringConfigurationsOutput", "TieringConfigurations"),
         type = "list",
         name = "TieringConfigurations",
         target_id = prelude.Document.id,
         list_member = M.TieringConfigurationsListMember,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListTieringConfigurationsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.PutBackupVaultAccessPolicyInput = schema.new({
   id = id.from(_N, "PutBackupVaultAccessPolicyInput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "PutBackupVaultAccessPolicyInput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Policy = schema.new({
         id = id.from(_N, "PutBackupVaultAccessPolicyInput", "Policy"),
         type = "string",
         name = "Policy",
         target_id = prelude.String.id,
      }),
   },
})

M.PutBackupVaultAccessPolicyOutput = prelude.Unit

M.PutBackupVaultLockConfigurationInput = schema.new({
   id = id.from(_N, "PutBackupVaultLockConfigurationInput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "PutBackupVaultLockConfigurationInput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      MinRetentionDays = schema.new({
         id = id.from(_N, "PutBackupVaultLockConfigurationInput", "MinRetentionDays"),
         type = "long",
         name = "MinRetentionDays",
         target_id = prelude.Long.id,
      }),
      MaxRetentionDays = schema.new({
         id = id.from(_N, "PutBackupVaultLockConfigurationInput", "MaxRetentionDays"),
         type = "long",
         name = "MaxRetentionDays",
         target_id = prelude.Long.id,
      }),
      ChangeableForDays = schema.new({
         id = id.from(_N, "PutBackupVaultLockConfigurationInput", "ChangeableForDays"),
         type = "long",
         name = "ChangeableForDays",
         target_id = prelude.Long.id,
      }),
   },
})

M.PutBackupVaultLockConfigurationOutput = prelude.Unit

M.PutBackupVaultNotificationsInput = schema.new({
   id = id.from(_N, "PutBackupVaultNotificationsInput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "PutBackupVaultNotificationsInput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      SNSTopicArn = schema.new({
         id = id.from(_N, "PutBackupVaultNotificationsInput", "SNSTopicArn"),
         type = "string",
         name = "SNSTopicArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BackupVaultEvents = schema.new({
         id = id.from(_N, "PutBackupVaultNotificationsInput", "BackupVaultEvents"),
         type = "list",
         name = "BackupVaultEvents",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PutBackupVaultNotificationsOutput = prelude.Unit

M.PutRestoreValidationResultInput = schema.new({
   id = id.from(_N, "PutRestoreValidationResultInput"),
   type = "structure",
   members = {
      RestoreJobId = schema.new({
         id = id.from(_N, "PutRestoreValidationResultInput", "RestoreJobId"),
         type = "string",
         name = "RestoreJobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ValidationStatus = schema.new({
         id = id.from(_N, "PutRestoreValidationResultInput", "ValidationStatus"),
         type = "string",
         name = "ValidationStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ValidationStatusMessage = schema.new({
         id = id.from(_N, "PutRestoreValidationResultInput", "ValidationStatusMessage"),
         type = "string",
         name = "ValidationStatusMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.PutRestoreValidationResultOutput = prelude.Unit

M.RevokeRestoreAccessBackupVaultInput = schema.new({
   id = id.from(_N, "RevokeRestoreAccessBackupVaultInput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "RevokeRestoreAccessBackupVaultInput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      RestoreAccessBackupVaultArn = schema.new({
         id = id.from(_N, "RevokeRestoreAccessBackupVaultInput", "RestoreAccessBackupVaultArn"),
         type = "string",
         name = "RestoreAccessBackupVaultArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      RequesterComment = schema.new({
         id = id.from(_N, "RevokeRestoreAccessBackupVaultInput", "RequesterComment"),
         type = "string",
         name = "RequesterComment",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "requesterComment" },
         },
      }),
   },
})

M.RevokeRestoreAccessBackupVaultOutput = prelude.Unit

M.StartBackupJobInput = schema.new({
   id = id.from(_N, "StartBackupJobInput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "StartBackupJobInput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LogicallyAirGappedBackupVaultArn = schema.new({
         id = id.from(_N, "StartBackupJobInput", "LogicallyAirGappedBackupVaultArn"),
         type = "string",
         name = "LogicallyAirGappedBackupVaultArn",
         target_id = prelude.String.id,
      }),
      ResourceArn = schema.new({
         id = id.from(_N, "StartBackupJobInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IamRoleArn = schema.new({
         id = id.from(_N, "StartBackupJobInput", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IdempotencyToken = schema.new({
         id = id.from(_N, "StartBackupJobInput", "IdempotencyToken"),
         type = "string",
         name = "IdempotencyToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      StartWindowMinutes = schema.new({
         id = id.from(_N, "StartBackupJobInput", "StartWindowMinutes"),
         type = "long",
         name = "StartWindowMinutes",
         target_id = prelude.Long.id,
      }),
      CompleteWindowMinutes = schema.new({
         id = id.from(_N, "StartBackupJobInput", "CompleteWindowMinutes"),
         type = "long",
         name = "CompleteWindowMinutes",
         target_id = prelude.Long.id,
      }),
      Lifecycle = schema.new({
         id = id.from(_N, "StartBackupJobInput", "Lifecycle"),
         type = "structure",
         name = "Lifecycle",
         target_id = id.from(_N, "Lifecycle"),
         target = M.Lifecycle,
      }),
      RecoveryPointTags = schema.new({
         id = id.from(_N, "StartBackupJobInput", "RecoveryPointTags"),
         type = "map",
         name = "RecoveryPointTags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      BackupOptions = schema.new({
         id = id.from(_N, "StartBackupJobInput", "BackupOptions"),
         type = "map",
         name = "BackupOptions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      Index = schema.new({
         id = id.from(_N, "StartBackupJobInput", "Index"),
         type = "string",
         name = "Index",
         target_id = prelude.String.id,
      }),
   },
})

M.StartBackupJobOutput = schema.new({
   id = id.from(_N, "StartBackupJobOutput"),
   type = "structure",
   members = {
      BackupJobId = schema.new({
         id = id.from(_N, "StartBackupJobOutput", "BackupJobId"),
         type = "string",
         name = "BackupJobId",
         target_id = prelude.String.id,
      }),
      RecoveryPointArn = schema.new({
         id = id.from(_N, "StartBackupJobOutput", "RecoveryPointArn"),
         type = "string",
         name = "RecoveryPointArn",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "StartBackupJobOutput", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      IsParent = schema.new({
         id = id.from(_N, "StartBackupJobOutput", "IsParent"),
         type = "boolean",
         name = "IsParent",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.StartCopyJobInput = schema.new({
   id = id.from(_N, "StartCopyJobInput"),
   type = "structure",
   members = {
      RecoveryPointArn = schema.new({
         id = id.from(_N, "StartCopyJobInput", "RecoveryPointArn"),
         type = "string",
         name = "RecoveryPointArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SourceBackupVaultName = schema.new({
         id = id.from(_N, "StartCopyJobInput", "SourceBackupVaultName"),
         type = "string",
         name = "SourceBackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DestinationBackupVaultArn = schema.new({
         id = id.from(_N, "StartCopyJobInput", "DestinationBackupVaultArn"),
         type = "string",
         name = "DestinationBackupVaultArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IamRoleArn = schema.new({
         id = id.from(_N, "StartCopyJobInput", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IdempotencyToken = schema.new({
         id = id.from(_N, "StartCopyJobInput", "IdempotencyToken"),
         type = "string",
         name = "IdempotencyToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      Lifecycle = schema.new({
         id = id.from(_N, "StartCopyJobInput", "Lifecycle"),
         type = "structure",
         name = "Lifecycle",
         target_id = id.from(_N, "Lifecycle"),
         target = M.Lifecycle,
      }),
   },
})

M.StartCopyJobOutput = schema.new({
   id = id.from(_N, "StartCopyJobOutput"),
   type = "structure",
   members = {
      CopyJobId = schema.new({
         id = id.from(_N, "StartCopyJobOutput", "CopyJobId"),
         type = "string",
         name = "CopyJobId",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "StartCopyJobOutput", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      IsParent = schema.new({
         id = id.from(_N, "StartCopyJobOutput", "IsParent"),
         type = "boolean",
         name = "IsParent",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.StartReportJobInput = schema.new({
   id = id.from(_N, "StartReportJobInput"),
   type = "structure",
   members = {
      ReportPlanName = schema.new({
         id = id.from(_N, "StartReportJobInput", "ReportPlanName"),
         type = "string",
         name = "ReportPlanName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      IdempotencyToken = schema.new({
         id = id.from(_N, "StartReportJobInput", "IdempotencyToken"),
         type = "string",
         name = "IdempotencyToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.StartReportJobOutput = schema.new({
   id = id.from(_N, "StartReportJobOutput"),
   type = "structure",
   members = {
      ReportJobId = schema.new({
         id = id.from(_N, "StartReportJobOutput", "ReportJobId"),
         type = "string",
         name = "ReportJobId",
         target_id = prelude.String.id,
      }),
   },
})

M.StartRestoreJobInput = schema.new({
   id = id.from(_N, "StartRestoreJobInput"),
   type = "structure",
   members = {
      RecoveryPointArn = schema.new({
         id = id.from(_N, "StartRestoreJobInput", "RecoveryPointArn"),
         type = "string",
         name = "RecoveryPointArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Metadata = schema.new({
         id = id.from(_N, "StartRestoreJobInput", "Metadata"),
         type = "map",
         name = "Metadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IamRoleArn = schema.new({
         id = id.from(_N, "StartRestoreJobInput", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
      }),
      IdempotencyToken = schema.new({
         id = id.from(_N, "StartRestoreJobInput", "IdempotencyToken"),
         type = "string",
         name = "IdempotencyToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      ResourceType = schema.new({
         id = id.from(_N, "StartRestoreJobInput", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
      }),
      CopySourceTagsToRestoredResource = schema.new({
         id = id.from(_N, "StartRestoreJobInput", "CopySourceTagsToRestoredResource"),
         type = "boolean",
         name = "CopySourceTagsToRestoredResource",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.StartRestoreJobOutput = schema.new({
   id = id.from(_N, "StartRestoreJobOutput"),
   type = "structure",
   members = {
      RestoreJobId = schema.new({
         id = id.from(_N, "StartRestoreJobOutput", "RestoreJobId"),
         type = "string",
         name = "RestoreJobId",
         target_id = prelude.String.id,
      }),
   },
})

M.StartScanJobInput = schema.new({
   id = id.from(_N, "StartScanJobInput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "StartScanJobInput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IamRoleArn = schema.new({
         id = id.from(_N, "StartScanJobInput", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IdempotencyToken = schema.new({
         id = id.from(_N, "StartScanJobInput", "IdempotencyToken"),
         type = "string",
         name = "IdempotencyToken",
         target_id = prelude.String.id,
      }),
      MalwareScanner = schema.new({
         id = id.from(_N, "StartScanJobInput", "MalwareScanner"),
         type = "string",
         name = "MalwareScanner",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RecoveryPointArn = schema.new({
         id = id.from(_N, "StartScanJobInput", "RecoveryPointArn"),
         type = "string",
         name = "RecoveryPointArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ScanBaseRecoveryPointArn = schema.new({
         id = id.from(_N, "StartScanJobInput", "ScanBaseRecoveryPointArn"),
         type = "string",
         name = "ScanBaseRecoveryPointArn",
         target_id = prelude.String.id,
      }),
      ScanMode = schema.new({
         id = id.from(_N, "StartScanJobInput", "ScanMode"),
         type = "string",
         name = "ScanMode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ScannerRoleArn = schema.new({
         id = id.from(_N, "StartScanJobInput", "ScannerRoleArn"),
         type = "string",
         name = "ScannerRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartScanJobOutput = schema.new({
   id = id.from(_N, "StartScanJobOutput"),
   type = "structure",
   members = {
      CreationDate = schema.new({
         id = id.from(_N, "StartScanJobOutput", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ScanJobId = schema.new({
         id = id.from(_N, "StartScanJobOutput", "ScanJobId"),
         type = "string",
         name = "ScanJobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StopBackupJobInput = schema.new({
   id = id.from(_N, "StopBackupJobInput"),
   type = "structure",
   members = {
      BackupJobId = schema.new({
         id = id.from(_N, "StopBackupJobInput", "BackupJobId"),
         type = "string",
         name = "BackupJobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.StopBackupJobOutput = prelude.Unit

M.TagResourceInput = schema.new({
   id = id.from(_N, "TagResourceInput"),
   type = "structure",
   members = {
      ResourceArn = schema.new({
         id = id.from(_N, "TagResourceInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "TagResourceInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TagResourceOutput = prelude.Unit

M.UntagResourceInput = schema.new({
   id = id.from(_N, "UntagResourceInput"),
   type = "structure",
   members = {
      ResourceArn = schema.new({
         id = id.from(_N, "UntagResourceInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      TagKeyList = schema.new({
         id = id.from(_N, "UntagResourceInput", "TagKeyList"),
         type = "list",
         name = "TagKeyList",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UntagResourceOutput = prelude.Unit

M.UpdateBackupPlanInput = schema.new({
   id = id.from(_N, "UpdateBackupPlanInput"),
   type = "structure",
   members = {
      BackupPlanId = schema.new({
         id = id.from(_N, "UpdateBackupPlanInput", "BackupPlanId"),
         type = "string",
         name = "BackupPlanId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BackupPlan = schema.new({
         id = id.from(_N, "UpdateBackupPlanInput", "BackupPlan"),
         type = "structure",
         name = "BackupPlan",
         target_id = id.from(_N, "BackupPlanInput"),
         target = M.BackupPlanInput,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateBackupPlanOutput = schema.new({
   id = id.from(_N, "UpdateBackupPlanOutput"),
   type = "structure",
   members = {
      BackupPlanId = schema.new({
         id = id.from(_N, "UpdateBackupPlanOutput", "BackupPlanId"),
         type = "string",
         name = "BackupPlanId",
         target_id = prelude.String.id,
      }),
      BackupPlanArn = schema.new({
         id = id.from(_N, "UpdateBackupPlanOutput", "BackupPlanArn"),
         type = "string",
         name = "BackupPlanArn",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "UpdateBackupPlanOutput", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      VersionId = schema.new({
         id = id.from(_N, "UpdateBackupPlanOutput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
      }),
      AdvancedBackupSettings = schema.new({
         id = id.from(_N, "UpdateBackupPlanOutput", "AdvancedBackupSettings"),
         type = "list",
         name = "AdvancedBackupSettings",
         target_id = prelude.Document.id,
         list_member = M.AdvancedBackupSetting,
      }),
      ScanSettings = schema.new({
         id = id.from(_N, "UpdateBackupPlanOutput", "ScanSettings"),
         type = "list",
         name = "ScanSettings",
         target_id = prelude.Document.id,
         list_member = M.ScanSetting,
      }),
   },
})

M.UpdateFrameworkInput = schema.new({
   id = id.from(_N, "UpdateFrameworkInput"),
   type = "structure",
   members = {
      FrameworkName = schema.new({
         id = id.from(_N, "UpdateFrameworkInput", "FrameworkName"),
         type = "string",
         name = "FrameworkName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      FrameworkDescription = schema.new({
         id = id.from(_N, "UpdateFrameworkInput", "FrameworkDescription"),
         type = "string",
         name = "FrameworkDescription",
         target_id = prelude.String.id,
      }),
      FrameworkControls = schema.new({
         id = id.from(_N, "UpdateFrameworkInput", "FrameworkControls"),
         type = "list",
         name = "FrameworkControls",
         target_id = prelude.Document.id,
         list_member = M.FrameworkControl,
      }),
      IdempotencyToken = schema.new({
         id = id.from(_N, "UpdateFrameworkInput", "IdempotencyToken"),
         type = "string",
         name = "IdempotencyToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.UpdateFrameworkOutput = schema.new({
   id = id.from(_N, "UpdateFrameworkOutput"),
   type = "structure",
   members = {
      FrameworkName = schema.new({
         id = id.from(_N, "UpdateFrameworkOutput", "FrameworkName"),
         type = "string",
         name = "FrameworkName",
         target_id = prelude.String.id,
      }),
      FrameworkArn = schema.new({
         id = id.from(_N, "UpdateFrameworkOutput", "FrameworkArn"),
         type = "string",
         name = "FrameworkArn",
         target_id = prelude.String.id,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "UpdateFrameworkOutput", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.UpdateGlobalSettingsInput = schema.new({
   id = id.from(_N, "UpdateGlobalSettingsInput"),
   type = "structure",
   members = {
      GlobalSettings = schema.new({
         id = id.from(_N, "UpdateGlobalSettingsInput", "GlobalSettings"),
         type = "map",
         name = "GlobalSettings",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.UpdateGlobalSettingsOutput = prelude.Unit

M.UpdateRecoveryPointIndexSettingsInput = schema.new({
   id = id.from(_N, "UpdateRecoveryPointIndexSettingsInput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "UpdateRecoveryPointIndexSettingsInput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      RecoveryPointArn = schema.new({
         id = id.from(_N, "UpdateRecoveryPointIndexSettingsInput", "RecoveryPointArn"),
         type = "string",
         name = "RecoveryPointArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      IamRoleArn = schema.new({
         id = id.from(_N, "UpdateRecoveryPointIndexSettingsInput", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
      }),
      Index = schema.new({
         id = id.from(_N, "UpdateRecoveryPointIndexSettingsInput", "Index"),
         type = "string",
         name = "Index",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateRecoveryPointIndexSettingsOutput = schema.new({
   id = id.from(_N, "UpdateRecoveryPointIndexSettingsOutput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "UpdateRecoveryPointIndexSettingsOutput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
      }),
      RecoveryPointArn = schema.new({
         id = id.from(_N, "UpdateRecoveryPointIndexSettingsOutput", "RecoveryPointArn"),
         type = "string",
         name = "RecoveryPointArn",
         target_id = prelude.String.id,
      }),
      IndexStatus = schema.new({
         id = id.from(_N, "UpdateRecoveryPointIndexSettingsOutput", "IndexStatus"),
         type = "string",
         name = "IndexStatus",
         target_id = prelude.String.id,
      }),
      Index = schema.new({
         id = id.from(_N, "UpdateRecoveryPointIndexSettingsOutput", "Index"),
         type = "string",
         name = "Index",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateRecoveryPointLifecycleInput = schema.new({
   id = id.from(_N, "UpdateRecoveryPointLifecycleInput"),
   type = "structure",
   members = {
      BackupVaultName = schema.new({
         id = id.from(_N, "UpdateRecoveryPointLifecycleInput", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      RecoveryPointArn = schema.new({
         id = id.from(_N, "UpdateRecoveryPointLifecycleInput", "RecoveryPointArn"),
         type = "string",
         name = "RecoveryPointArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Lifecycle = schema.new({
         id = id.from(_N, "UpdateRecoveryPointLifecycleInput", "Lifecycle"),
         type = "structure",
         name = "Lifecycle",
         target_id = id.from(_N, "Lifecycle"),
         target = M.Lifecycle,
      }),
   },
})

M.UpdateRecoveryPointLifecycleOutput = schema.new({
   id = id.from(_N, "UpdateRecoveryPointLifecycleOutput"),
   type = "structure",
   members = {
      BackupVaultArn = schema.new({
         id = id.from(_N, "UpdateRecoveryPointLifecycleOutput", "BackupVaultArn"),
         type = "string",
         name = "BackupVaultArn",
         target_id = prelude.String.id,
      }),
      RecoveryPointArn = schema.new({
         id = id.from(_N, "UpdateRecoveryPointLifecycleOutput", "RecoveryPointArn"),
         type = "string",
         name = "RecoveryPointArn",
         target_id = prelude.String.id,
      }),
      Lifecycle = schema.new({
         id = id.from(_N, "UpdateRecoveryPointLifecycleOutput", "Lifecycle"),
         type = "structure",
         name = "Lifecycle",
         target_id = id.from(_N, "Lifecycle"),
         target = M.Lifecycle,
      }),
      CalculatedLifecycle = schema.new({
         id = id.from(_N, "UpdateRecoveryPointLifecycleOutput", "CalculatedLifecycle"),
         type = "structure",
         name = "CalculatedLifecycle",
         target_id = id.from(_N, "CalculatedLifecycle"),
         target = M.CalculatedLifecycle,
      }),
   },
})

M.UpdateRegionSettingsInput = schema.new({
   id = id.from(_N, "UpdateRegionSettingsInput"),
   type = "structure",
   members = {
      ResourceTypeOptInPreference = schema.new({
         id = id.from(_N, "UpdateRegionSettingsInput", "ResourceTypeOptInPreference"),
         type = "map",
         name = "ResourceTypeOptInPreference",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.Boolean,
      }),
      ResourceTypeManagementPreference = schema.new({
         id = id.from(_N, "UpdateRegionSettingsInput", "ResourceTypeManagementPreference"),
         type = "map",
         name = "ResourceTypeManagementPreference",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.Boolean,
      }),
   },
})

M.UpdateRegionSettingsOutput = prelude.Unit

M.UpdateReportPlanInput = schema.new({
   id = id.from(_N, "UpdateReportPlanInput"),
   type = "structure",
   members = {
      ReportPlanName = schema.new({
         id = id.from(_N, "UpdateReportPlanInput", "ReportPlanName"),
         type = "string",
         name = "ReportPlanName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ReportPlanDescription = schema.new({
         id = id.from(_N, "UpdateReportPlanInput", "ReportPlanDescription"),
         type = "string",
         name = "ReportPlanDescription",
         target_id = prelude.String.id,
      }),
      ReportDeliveryChannel = schema.new({
         id = id.from(_N, "UpdateReportPlanInput", "ReportDeliveryChannel"),
         type = "structure",
         name = "ReportDeliveryChannel",
         target_id = id.from(_N, "ReportDeliveryChannel"),
         target = M.ReportDeliveryChannel,
      }),
      ReportSetting = schema.new({
         id = id.from(_N, "UpdateReportPlanInput", "ReportSetting"),
         type = "structure",
         name = "ReportSetting",
         target_id = id.from(_N, "ReportSetting"),
         target = M.ReportSetting,
      }),
      IdempotencyToken = schema.new({
         id = id.from(_N, "UpdateReportPlanInput", "IdempotencyToken"),
         type = "string",
         name = "IdempotencyToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.UpdateReportPlanOutput = schema.new({
   id = id.from(_N, "UpdateReportPlanOutput"),
   type = "structure",
   members = {
      ReportPlanName = schema.new({
         id = id.from(_N, "UpdateReportPlanOutput", "ReportPlanName"),
         type = "string",
         name = "ReportPlanName",
         target_id = prelude.String.id,
      }),
      ReportPlanArn = schema.new({
         id = id.from(_N, "UpdateReportPlanOutput", "ReportPlanArn"),
         type = "string",
         name = "ReportPlanArn",
         target_id = prelude.String.id,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "UpdateReportPlanOutput", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.RestoreTestingPlanForUpdate = schema.new({
   id = id.from(_N, "RestoreTestingPlanForUpdate"),
   type = "structure",
   members = {
      RecoveryPointSelection = schema.new({
         id = id.from(_N, "RestoreTestingPlanForUpdate", "RecoveryPointSelection"),
         type = "structure",
         name = "RecoveryPointSelection",
         target_id = id.from(_N, "RestoreTestingRecoveryPointSelection"),
         target = M.RestoreTestingRecoveryPointSelection,
      }),
      ScheduleExpression = schema.new({
         id = id.from(_N, "RestoreTestingPlanForUpdate", "ScheduleExpression"),
         type = "string",
         name = "ScheduleExpression",
         target_id = prelude.String.id,
      }),
      ScheduleExpressionTimezone = schema.new({
         id = id.from(_N, "RestoreTestingPlanForUpdate", "ScheduleExpressionTimezone"),
         type = "string",
         name = "ScheduleExpressionTimezone",
         target_id = prelude.String.id,
      }),
      StartWindowHours = schema.new({
         id = id.from(_N, "RestoreTestingPlanForUpdate", "StartWindowHours"),
         type = "integer",
         name = "StartWindowHours",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.UpdateRestoreTestingPlanInput = schema.new({
   id = id.from(_N, "UpdateRestoreTestingPlanInput"),
   type = "structure",
   members = {
      RestoreTestingPlan = schema.new({
         id = id.from(_N, "UpdateRestoreTestingPlanInput", "RestoreTestingPlan"),
         type = "structure",
         name = "RestoreTestingPlan",
         target_id = id.from(_N, "RestoreTestingPlanForUpdate"),
         target = M.RestoreTestingPlanForUpdate,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RestoreTestingPlanName = schema.new({
         id = id.from(_N, "UpdateRestoreTestingPlanInput", "RestoreTestingPlanName"),
         type = "string",
         name = "RestoreTestingPlanName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.UpdateRestoreTestingPlanOutput = schema.new({
   id = id.from(_N, "UpdateRestoreTestingPlanOutput"),
   type = "structure",
   members = {
      CreationTime = schema.new({
         id = id.from(_N, "UpdateRestoreTestingPlanOutput", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RestoreTestingPlanArn = schema.new({
         id = id.from(_N, "UpdateRestoreTestingPlanOutput", "RestoreTestingPlanArn"),
         type = "string",
         name = "RestoreTestingPlanArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RestoreTestingPlanName = schema.new({
         id = id.from(_N, "UpdateRestoreTestingPlanOutput", "RestoreTestingPlanName"),
         type = "string",
         name = "RestoreTestingPlanName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UpdateTime = schema.new({
         id = id.from(_N, "UpdateRestoreTestingPlanOutput", "UpdateTime"),
         type = "timestamp",
         name = "UpdateTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RestoreTestingSelectionForUpdate = schema.new({
   id = id.from(_N, "RestoreTestingSelectionForUpdate"),
   type = "structure",
   members = {
      IamRoleArn = schema.new({
         id = id.from(_N, "RestoreTestingSelectionForUpdate", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
      }),
      ProtectedResourceArns = schema.new({
         id = id.from(_N, "RestoreTestingSelectionForUpdate", "ProtectedResourceArns"),
         type = "list",
         name = "ProtectedResourceArns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ProtectedResourceConditions = schema.new({
         id = id.from(_N, "RestoreTestingSelectionForUpdate", "ProtectedResourceConditions"),
         type = "structure",
         name = "ProtectedResourceConditions",
         target_id = id.from(_N, "ProtectedResourceConditions"),
         target = M.ProtectedResourceConditions,
      }),
      RestoreMetadataOverrides = schema.new({
         id = id.from(_N, "RestoreTestingSelectionForUpdate", "RestoreMetadataOverrides"),
         type = "map",
         name = "RestoreMetadataOverrides",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      ValidationWindowHours = schema.new({
         id = id.from(_N, "RestoreTestingSelectionForUpdate", "ValidationWindowHours"),
         type = "integer",
         name = "ValidationWindowHours",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.UpdateRestoreTestingSelectionInput = schema.new({
   id = id.from(_N, "UpdateRestoreTestingSelectionInput"),
   type = "structure",
   members = {
      RestoreTestingPlanName = schema.new({
         id = id.from(_N, "UpdateRestoreTestingSelectionInput", "RestoreTestingPlanName"),
         type = "string",
         name = "RestoreTestingPlanName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      RestoreTestingSelection = schema.new({
         id = id.from(_N, "UpdateRestoreTestingSelectionInput", "RestoreTestingSelection"),
         type = "structure",
         name = "RestoreTestingSelection",
         target_id = id.from(_N, "RestoreTestingSelectionForUpdate"),
         target = M.RestoreTestingSelectionForUpdate,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RestoreTestingSelectionName = schema.new({
         id = id.from(_N, "UpdateRestoreTestingSelectionInput", "RestoreTestingSelectionName"),
         type = "string",
         name = "RestoreTestingSelectionName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.UpdateRestoreTestingSelectionOutput = schema.new({
   id = id.from(_N, "UpdateRestoreTestingSelectionOutput"),
   type = "structure",
   members = {
      CreationTime = schema.new({
         id = id.from(_N, "UpdateRestoreTestingSelectionOutput", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RestoreTestingPlanArn = schema.new({
         id = id.from(_N, "UpdateRestoreTestingSelectionOutput", "RestoreTestingPlanArn"),
         type = "string",
         name = "RestoreTestingPlanArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RestoreTestingPlanName = schema.new({
         id = id.from(_N, "UpdateRestoreTestingSelectionOutput", "RestoreTestingPlanName"),
         type = "string",
         name = "RestoreTestingPlanName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RestoreTestingSelectionName = schema.new({
         id = id.from(_N, "UpdateRestoreTestingSelectionOutput", "RestoreTestingSelectionName"),
         type = "string",
         name = "RestoreTestingSelectionName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UpdateTime = schema.new({
         id = id.from(_N, "UpdateRestoreTestingSelectionOutput", "UpdateTime"),
         type = "timestamp",
         name = "UpdateTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TieringConfigurationInputForUpdate = schema.new({
   id = id.from(_N, "TieringConfigurationInputForUpdate"),
   type = "structure",
   members = {
      ResourceSelection = schema.new({
         id = id.from(_N, "TieringConfigurationInputForUpdate", "ResourceSelection"),
         type = "list",
         name = "ResourceSelection",
         target_id = prelude.Document.id,
         list_member = M.ResourceSelection,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BackupVaultName = schema.new({
         id = id.from(_N, "TieringConfigurationInputForUpdate", "BackupVaultName"),
         type = "string",
         name = "BackupVaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateTieringConfigurationInput = schema.new({
   id = id.from(_N, "UpdateTieringConfigurationInput"),
   type = "structure",
   members = {
      TieringConfigurationName = schema.new({
         id = id.from(_N, "UpdateTieringConfigurationInput", "TieringConfigurationName"),
         type = "string",
         name = "TieringConfigurationName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      TieringConfiguration = schema.new({
         id = id.from(_N, "UpdateTieringConfigurationInput", "TieringConfiguration"),
         type = "structure",
         name = "TieringConfiguration",
         target_id = id.from(_N, "TieringConfigurationInputForUpdate"),
         target = M.TieringConfigurationInputForUpdate,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateTieringConfigurationOutput = schema.new({
   id = id.from(_N, "UpdateTieringConfigurationOutput"),
   type = "structure",
   members = {
      TieringConfigurationArn = schema.new({
         id = id.from(_N, "UpdateTieringConfigurationOutput", "TieringConfigurationArn"),
         type = "string",
         name = "TieringConfigurationArn",
         target_id = prelude.String.id,
      }),
      TieringConfigurationName = schema.new({
         id = id.from(_N, "UpdateTieringConfigurationOutput", "TieringConfigurationName"),
         type = "string",
         name = "TieringConfigurationName",
         target_id = prelude.String.id,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "UpdateTieringConfigurationOutput", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
      }),
      LastUpdatedTime = schema.new({
         id = id.from(_N, "UpdateTieringConfigurationOutput", "LastUpdatedTime"),
         type = "timestamp",
         name = "LastUpdatedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})


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

M.Service = schema.service({
   id = id.from("com.amazonaws.backup", "CryoControllerUserManager"),
   version = "2018-11-15",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AssociateBackupVaultMpaApprovalTeam = schema.operation({
   id = id.from("com.amazonaws.backup", "AssociateBackupVaultMpaApprovalTeam"),
   input = M.AssociateBackupVaultMpaApprovalTeamInput,
   output = M.AssociateBackupVaultMpaApprovalTeamOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/backup-vaults/{BackupVaultName}/mpaApprovalTeam" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CancelLegalHold = schema.operation({
   id = id.from("com.amazonaws.backup", "CancelLegalHold"),
   input = M.CancelLegalHoldInput,
   output = M.CancelLegalHoldOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/legal-holds/{LegalHoldId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateBackupPlan = schema.operation({
   id = id.from("com.amazonaws.backup", "CreateBackupPlan"),
   input = M.CreateBackupPlanInput,
   output = M.CreateBackupPlanOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/backup/plans" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateBackupSelection = schema.operation({
   id = id.from("com.amazonaws.backup", "CreateBackupSelection"),
   input = M.CreateBackupSelectionInput,
   output = M.CreateBackupSelectionOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/backup/plans/{BackupPlanId}/selections" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateBackupVault = schema.operation({
   id = id.from("com.amazonaws.backup", "CreateBackupVault"),
   input = M.CreateBackupVaultInput,
   output = M.CreateBackupVaultOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/backup-vaults/{BackupVaultName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateFramework = schema.operation({
   id = id.from("com.amazonaws.backup", "CreateFramework"),
   input = M.CreateFrameworkInput,
   output = M.CreateFrameworkOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/audit/frameworks" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateLegalHold = schema.operation({
   id = id.from("com.amazonaws.backup", "CreateLegalHold"),
   input = M.CreateLegalHoldInput,
   output = M.CreateLegalHoldOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/legal-holds" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateLogicallyAirGappedBackupVault = schema.operation({
   id = id.from("com.amazonaws.backup", "CreateLogicallyAirGappedBackupVault"),
   input = M.CreateLogicallyAirGappedBackupVaultInput,
   output = M.CreateLogicallyAirGappedBackupVaultOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/logically-air-gapped-backup-vaults/{BackupVaultName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateReportPlan = schema.operation({
   id = id.from("com.amazonaws.backup", "CreateReportPlan"),
   input = M.CreateReportPlanInput,
   output = M.CreateReportPlanOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/audit/report-plans" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateRestoreAccessBackupVault = schema.operation({
   id = id.from("com.amazonaws.backup", "CreateRestoreAccessBackupVault"),
   input = M.CreateRestoreAccessBackupVaultInput,
   output = M.CreateRestoreAccessBackupVaultOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/restore-access-backup-vaults" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateRestoreTestingPlan = schema.operation({
   id = id.from("com.amazonaws.backup", "CreateRestoreTestingPlan"),
   input = M.CreateRestoreTestingPlanInput,
   output = M.CreateRestoreTestingPlanOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/restore-testing/plans" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateRestoreTestingSelection = schema.operation({
   id = id.from("com.amazonaws.backup", "CreateRestoreTestingSelection"),
   input = M.CreateRestoreTestingSelectionInput,
   output = M.CreateRestoreTestingSelectionOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/restore-testing/plans/{RestoreTestingPlanName}/selections" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateTieringConfiguration = schema.operation({
   id = id.from("com.amazonaws.backup", "CreateTieringConfiguration"),
   input = M.CreateTieringConfigurationInput,
   output = M.CreateTieringConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/tiering-configurations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteBackupPlan = schema.operation({
   id = id.from("com.amazonaws.backup", "DeleteBackupPlan"),
   input = M.DeleteBackupPlanInput,
   output = M.DeleteBackupPlanOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/backup/plans/{BackupPlanId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteBackupSelection = schema.operation({
   id = id.from("com.amazonaws.backup", "DeleteBackupSelection"),
   input = M.DeleteBackupSelectionInput,
   output = M.DeleteBackupSelectionOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/backup/plans/{BackupPlanId}/selections/{SelectionId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteBackupVault = schema.operation({
   id = id.from("com.amazonaws.backup", "DeleteBackupVault"),
   input = M.DeleteBackupVaultInput,
   output = M.DeleteBackupVaultOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/backup-vaults/{BackupVaultName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteBackupVaultAccessPolicy = schema.operation({
   id = id.from("com.amazonaws.backup", "DeleteBackupVaultAccessPolicy"),
   input = M.DeleteBackupVaultAccessPolicyInput,
   output = M.DeleteBackupVaultAccessPolicyOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/backup-vaults/{BackupVaultName}/access-policy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteBackupVaultLockConfiguration = schema.operation({
   id = id.from("com.amazonaws.backup", "DeleteBackupVaultLockConfiguration"),
   input = M.DeleteBackupVaultLockConfigurationInput,
   output = M.DeleteBackupVaultLockConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/backup-vaults/{BackupVaultName}/vault-lock" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteBackupVaultNotifications = schema.operation({
   id = id.from("com.amazonaws.backup", "DeleteBackupVaultNotifications"),
   input = M.DeleteBackupVaultNotificationsInput,
   output = M.DeleteBackupVaultNotificationsOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/backup-vaults/{BackupVaultName}/notification-configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteFramework = schema.operation({
   id = id.from("com.amazonaws.backup", "DeleteFramework"),
   input = M.DeleteFrameworkInput,
   output = M.DeleteFrameworkOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/audit/frameworks/{FrameworkName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteRecoveryPoint = schema.operation({
   id = id.from("com.amazonaws.backup", "DeleteRecoveryPoint"),
   input = M.DeleteRecoveryPointInput,
   output = M.DeleteRecoveryPointOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteReportPlan = schema.operation({
   id = id.from("com.amazonaws.backup", "DeleteReportPlan"),
   input = M.DeleteReportPlanInput,
   output = M.DeleteReportPlanOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/audit/report-plans/{ReportPlanName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteRestoreTestingPlan = schema.operation({
   id = id.from("com.amazonaws.backup", "DeleteRestoreTestingPlan"),
   input = M.DeleteRestoreTestingPlanInput,
   output = M.DeleteRestoreTestingPlanOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/restore-testing/plans/{RestoreTestingPlanName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteRestoreTestingSelection = schema.operation({
   id = id.from("com.amazonaws.backup", "DeleteRestoreTestingSelection"),
   input = M.DeleteRestoreTestingSelectionInput,
   output = M.DeleteRestoreTestingSelectionOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/restore-testing/plans/{RestoreTestingPlanName}/selections/{RestoreTestingSelectionName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteTieringConfiguration = schema.operation({
   id = id.from("com.amazonaws.backup", "DeleteTieringConfiguration"),
   input = M.DeleteTieringConfigurationInput,
   output = M.DeleteTieringConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/tiering-configurations/{TieringConfigurationName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeBackupJob = schema.operation({
   id = id.from("com.amazonaws.backup", "DescribeBackupJob"),
   input = M.DescribeBackupJobInput,
   output = M.DescribeBackupJobOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/backup-jobs/{BackupJobId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeBackupVault = schema.operation({
   id = id.from("com.amazonaws.backup", "DescribeBackupVault"),
   input = M.DescribeBackupVaultInput,
   output = M.DescribeBackupVaultOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/backup-vaults/{BackupVaultName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeCopyJob = schema.operation({
   id = id.from("com.amazonaws.backup", "DescribeCopyJob"),
   input = M.DescribeCopyJobInput,
   output = M.DescribeCopyJobOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/copy-jobs/{CopyJobId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeFramework = schema.operation({
   id = id.from("com.amazonaws.backup", "DescribeFramework"),
   input = M.DescribeFrameworkInput,
   output = M.DescribeFrameworkOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/audit/frameworks/{FrameworkName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeGlobalSettings = schema.operation({
   id = id.from("com.amazonaws.backup", "DescribeGlobalSettings"),
   input = M.DescribeGlobalSettingsInput,
   output = M.DescribeGlobalSettingsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/global-settings" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeProtectedResource = schema.operation({
   id = id.from("com.amazonaws.backup", "DescribeProtectedResource"),
   input = M.DescribeProtectedResourceInput,
   output = M.DescribeProtectedResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/resources/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeRecoveryPoint = schema.operation({
   id = id.from("com.amazonaws.backup", "DescribeRecoveryPoint"),
   input = M.DescribeRecoveryPointInput,
   output = M.DescribeRecoveryPointOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeRegionSettings = schema.operation({
   id = id.from("com.amazonaws.backup", "DescribeRegionSettings"),
   input = M.DescribeRegionSettingsInput,
   output = M.DescribeRegionSettingsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/account-settings" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeReportJob = schema.operation({
   id = id.from("com.amazonaws.backup", "DescribeReportJob"),
   input = M.DescribeReportJobInput,
   output = M.DescribeReportJobOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/audit/report-jobs/{ReportJobId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeReportPlan = schema.operation({
   id = id.from("com.amazonaws.backup", "DescribeReportPlan"),
   input = M.DescribeReportPlanInput,
   output = M.DescribeReportPlanOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/audit/report-plans/{ReportPlanName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeRestoreJob = schema.operation({
   id = id.from("com.amazonaws.backup", "DescribeRestoreJob"),
   input = M.DescribeRestoreJobInput,
   output = M.DescribeRestoreJobOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/restore-jobs/{RestoreJobId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeScanJob = schema.operation({
   id = id.from("com.amazonaws.backup", "DescribeScanJob"),
   input = M.DescribeScanJobInput,
   output = M.DescribeScanJobOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/scan/jobs/{ScanJobId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisassociateBackupVaultMpaApprovalTeam = schema.operation({
   id = id.from("com.amazonaws.backup", "DisassociateBackupVaultMpaApprovalTeam"),
   input = M.DisassociateBackupVaultMpaApprovalTeamInput,
   output = M.DisassociateBackupVaultMpaApprovalTeamOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backup-vaults/{BackupVaultName}/mpaApprovalTeam?delete" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisassociateRecoveryPoint = schema.operation({
   id = id.from("com.amazonaws.backup", "DisassociateRecoveryPoint"),
   input = M.DisassociateRecoveryPointInput,
   output = M.DisassociateRecoveryPointOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/disassociate" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisassociateRecoveryPointFromParent = schema.operation({
   id = id.from("com.amazonaws.backup", "DisassociateRecoveryPointFromParent"),
   input = M.DisassociateRecoveryPointFromParentInput,
   output = M.DisassociateRecoveryPointFromParentOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/parentAssociation" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ExportBackupPlanTemplate = schema.operation({
   id = id.from("com.amazonaws.backup", "ExportBackupPlanTemplate"),
   input = M.ExportBackupPlanTemplateInput,
   output = M.ExportBackupPlanTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/backup/plans/{BackupPlanId}/toTemplate" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetBackupPlan = schema.operation({
   id = id.from("com.amazonaws.backup", "GetBackupPlan"),
   input = M.GetBackupPlanInput,
   output = M.GetBackupPlanOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/backup/plans/{BackupPlanId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetBackupPlanFromJSON = schema.operation({
   id = id.from("com.amazonaws.backup", "GetBackupPlanFromJSON"),
   input = M.GetBackupPlanFromJSONInput,
   output = M.GetBackupPlanFromJSONOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backup/template/json/toPlan" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetBackupPlanFromTemplate = schema.operation({
   id = id.from("com.amazonaws.backup", "GetBackupPlanFromTemplate"),
   input = M.GetBackupPlanFromTemplateInput,
   output = M.GetBackupPlanFromTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/backup/template/plans/{BackupPlanTemplateId}/toPlan" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetBackupSelection = schema.operation({
   id = id.from("com.amazonaws.backup", "GetBackupSelection"),
   input = M.GetBackupSelectionInput,
   output = M.GetBackupSelectionOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/backup/plans/{BackupPlanId}/selections/{SelectionId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetBackupVaultAccessPolicy = schema.operation({
   id = id.from("com.amazonaws.backup", "GetBackupVaultAccessPolicy"),
   input = M.GetBackupVaultAccessPolicyInput,
   output = M.GetBackupVaultAccessPolicyOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/backup-vaults/{BackupVaultName}/access-policy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetBackupVaultNotifications = schema.operation({
   id = id.from("com.amazonaws.backup", "GetBackupVaultNotifications"),
   input = M.GetBackupVaultNotificationsInput,
   output = M.GetBackupVaultNotificationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/backup-vaults/{BackupVaultName}/notification-configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetLegalHold = schema.operation({
   id = id.from("com.amazonaws.backup", "GetLegalHold"),
   input = M.GetLegalHoldInput,
   output = M.GetLegalHoldOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/legal-holds/{LegalHoldId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetRecoveryPointIndexDetails = schema.operation({
   id = id.from("com.amazonaws.backup", "GetRecoveryPointIndexDetails"),
   input = M.GetRecoveryPointIndexDetailsInput,
   output = M.GetRecoveryPointIndexDetailsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/index" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetRecoveryPointRestoreMetadata = schema.operation({
   id = id.from("com.amazonaws.backup", "GetRecoveryPointRestoreMetadata"),
   input = M.GetRecoveryPointRestoreMetadataInput,
   output = M.GetRecoveryPointRestoreMetadataOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/restore-metadata" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetRestoreJobMetadata = schema.operation({
   id = id.from("com.amazonaws.backup", "GetRestoreJobMetadata"),
   input = M.GetRestoreJobMetadataInput,
   output = M.GetRestoreJobMetadataOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/restore-jobs/{RestoreJobId}/metadata" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetRestoreTestingInferredMetadata = schema.operation({
   id = id.from("com.amazonaws.backup", "GetRestoreTestingInferredMetadata"),
   input = M.GetRestoreTestingInferredMetadataInput,
   output = M.GetRestoreTestingInferredMetadataOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/restore-testing/inferred-metadata" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetRestoreTestingPlan = schema.operation({
   id = id.from("com.amazonaws.backup", "GetRestoreTestingPlan"),
   input = M.GetRestoreTestingPlanInput,
   output = M.GetRestoreTestingPlanOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/restore-testing/plans/{RestoreTestingPlanName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetRestoreTestingSelection = schema.operation({
   id = id.from("com.amazonaws.backup", "GetRestoreTestingSelection"),
   input = M.GetRestoreTestingSelectionInput,
   output = M.GetRestoreTestingSelectionOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/restore-testing/plans/{RestoreTestingPlanName}/selections/{RestoreTestingSelectionName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSupportedResourceTypes = schema.operation({
   id = id.from("com.amazonaws.backup", "GetSupportedResourceTypes"),
   input = M.GetSupportedResourceTypesInput,
   output = M.GetSupportedResourceTypesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/supported-resource-types" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetTieringConfiguration = schema.operation({
   id = id.from("com.amazonaws.backup", "GetTieringConfiguration"),
   input = M.GetTieringConfigurationInput,
   output = M.GetTieringConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/tiering-configurations/{TieringConfigurationName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListBackupJobs = schema.operation({
   id = id.from("com.amazonaws.backup", "ListBackupJobs"),
   input = M.ListBackupJobsInput,
   output = M.ListBackupJobsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/backup-jobs" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListBackupJobSummaries = schema.operation({
   id = id.from("com.amazonaws.backup", "ListBackupJobSummaries"),
   input = M.ListBackupJobSummariesInput,
   output = M.ListBackupJobSummariesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/audit/backup-job-summaries" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListBackupPlans = schema.operation({
   id = id.from("com.amazonaws.backup", "ListBackupPlans"),
   input = M.ListBackupPlansInput,
   output = M.ListBackupPlansOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/backup/plans" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListBackupPlanTemplates = schema.operation({
   id = id.from("com.amazonaws.backup", "ListBackupPlanTemplates"),
   input = M.ListBackupPlanTemplatesInput,
   output = M.ListBackupPlanTemplatesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/backup/template/plans" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListBackupPlanVersions = schema.operation({
   id = id.from("com.amazonaws.backup", "ListBackupPlanVersions"),
   input = M.ListBackupPlanVersionsInput,
   output = M.ListBackupPlanVersionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/backup/plans/{BackupPlanId}/versions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListBackupSelections = schema.operation({
   id = id.from("com.amazonaws.backup", "ListBackupSelections"),
   input = M.ListBackupSelectionsInput,
   output = M.ListBackupSelectionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/backup/plans/{BackupPlanId}/selections" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListBackupVaults = schema.operation({
   id = id.from("com.amazonaws.backup", "ListBackupVaults"),
   input = M.ListBackupVaultsInput,
   output = M.ListBackupVaultsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/backup-vaults" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCopyJobs = schema.operation({
   id = id.from("com.amazonaws.backup", "ListCopyJobs"),
   input = M.ListCopyJobsInput,
   output = M.ListCopyJobsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/copy-jobs" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCopyJobSummaries = schema.operation({
   id = id.from("com.amazonaws.backup", "ListCopyJobSummaries"),
   input = M.ListCopyJobSummariesInput,
   output = M.ListCopyJobSummariesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/audit/copy-job-summaries" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListFrameworks = schema.operation({
   id = id.from("com.amazonaws.backup", "ListFrameworks"),
   input = M.ListFrameworksInput,
   output = M.ListFrameworksOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/audit/frameworks" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListIndexedRecoveryPoints = schema.operation({
   id = id.from("com.amazonaws.backup", "ListIndexedRecoveryPoints"),
   input = M.ListIndexedRecoveryPointsInput,
   output = M.ListIndexedRecoveryPointsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/indexes/recovery-point" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListLegalHolds = schema.operation({
   id = id.from("com.amazonaws.backup", "ListLegalHolds"),
   input = M.ListLegalHoldsInput,
   output = M.ListLegalHoldsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/legal-holds" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListProtectedResources = schema.operation({
   id = id.from("com.amazonaws.backup", "ListProtectedResources"),
   input = M.ListProtectedResourcesInput,
   output = M.ListProtectedResourcesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/resources" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListProtectedResourcesByBackupVault = schema.operation({
   id = id.from("com.amazonaws.backup", "ListProtectedResourcesByBackupVault"),
   input = M.ListProtectedResourcesByBackupVaultInput,
   output = M.ListProtectedResourcesByBackupVaultOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/backup-vaults/{BackupVaultName}/resources" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListRecoveryPointsByBackupVault = schema.operation({
   id = id.from("com.amazonaws.backup", "ListRecoveryPointsByBackupVault"),
   input = M.ListRecoveryPointsByBackupVaultInput,
   output = M.ListRecoveryPointsByBackupVaultOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/backup-vaults/{BackupVaultName}/recovery-points" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListRecoveryPointsByLegalHold = schema.operation({
   id = id.from("com.amazonaws.backup", "ListRecoveryPointsByLegalHold"),
   input = M.ListRecoveryPointsByLegalHoldInput,
   output = M.ListRecoveryPointsByLegalHoldOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/legal-holds/{LegalHoldId}/recovery-points" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListRecoveryPointsByResource = schema.operation({
   id = id.from("com.amazonaws.backup", "ListRecoveryPointsByResource"),
   input = M.ListRecoveryPointsByResourceInput,
   output = M.ListRecoveryPointsByResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/resources/{ResourceArn}/recovery-points" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListReportJobs = schema.operation({
   id = id.from("com.amazonaws.backup", "ListReportJobs"),
   input = M.ListReportJobsInput,
   output = M.ListReportJobsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/audit/report-jobs" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListReportPlans = schema.operation({
   id = id.from("com.amazonaws.backup", "ListReportPlans"),
   input = M.ListReportPlansInput,
   output = M.ListReportPlansOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/audit/report-plans" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListRestoreAccessBackupVaults = schema.operation({
   id = id.from("com.amazonaws.backup", "ListRestoreAccessBackupVaults"),
   input = M.ListRestoreAccessBackupVaultsInput,
   output = M.ListRestoreAccessBackupVaultsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/logically-air-gapped-backup-vaults/{BackupVaultName}/restore-access-backup-vaults" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListRestoreJobs = schema.operation({
   id = id.from("com.amazonaws.backup", "ListRestoreJobs"),
   input = M.ListRestoreJobsInput,
   output = M.ListRestoreJobsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/restore-jobs" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListRestoreJobsByProtectedResource = schema.operation({
   id = id.from("com.amazonaws.backup", "ListRestoreJobsByProtectedResource"),
   input = M.ListRestoreJobsByProtectedResourceInput,
   output = M.ListRestoreJobsByProtectedResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/resources/{ResourceArn}/restore-jobs" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListRestoreJobSummaries = schema.operation({
   id = id.from("com.amazonaws.backup", "ListRestoreJobSummaries"),
   input = M.ListRestoreJobSummariesInput,
   output = M.ListRestoreJobSummariesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/audit/restore-job-summaries" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListRestoreTestingPlans = schema.operation({
   id = id.from("com.amazonaws.backup", "ListRestoreTestingPlans"),
   input = M.ListRestoreTestingPlansInput,
   output = M.ListRestoreTestingPlansOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/restore-testing/plans" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListRestoreTestingSelections = schema.operation({
   id = id.from("com.amazonaws.backup", "ListRestoreTestingSelections"),
   input = M.ListRestoreTestingSelectionsInput,
   output = M.ListRestoreTestingSelectionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/restore-testing/plans/{RestoreTestingPlanName}/selections" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListScanJobs = schema.operation({
   id = id.from("com.amazonaws.backup", "ListScanJobs"),
   input = M.ListScanJobsInput,
   output = M.ListScanJobsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/scan/jobs" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListScanJobSummaries = schema.operation({
   id = id.from("com.amazonaws.backup", "ListScanJobSummaries"),
   input = M.ListScanJobSummariesInput,
   output = M.ListScanJobSummariesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/audit/scan-job-summaries" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTags = schema.operation({
   id = id.from("com.amazonaws.backup", "ListTags"),
   input = M.ListTagsInput,
   output = M.ListTagsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/tags/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTieringConfigurations = schema.operation({
   id = id.from("com.amazonaws.backup", "ListTieringConfigurations"),
   input = M.ListTieringConfigurationsInput,
   output = M.ListTieringConfigurationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/tiering-configurations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutBackupVaultAccessPolicy = schema.operation({
   id = id.from("com.amazonaws.backup", "PutBackupVaultAccessPolicy"),
   input = M.PutBackupVaultAccessPolicyInput,
   output = M.PutBackupVaultAccessPolicyOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/backup-vaults/{BackupVaultName}/access-policy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutBackupVaultLockConfiguration = schema.operation({
   id = id.from("com.amazonaws.backup", "PutBackupVaultLockConfiguration"),
   input = M.PutBackupVaultLockConfigurationInput,
   output = M.PutBackupVaultLockConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/backup-vaults/{BackupVaultName}/vault-lock" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutBackupVaultNotifications = schema.operation({
   id = id.from("com.amazonaws.backup", "PutBackupVaultNotifications"),
   input = M.PutBackupVaultNotificationsInput,
   output = M.PutBackupVaultNotificationsOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/backup-vaults/{BackupVaultName}/notification-configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutRestoreValidationResult = schema.operation({
   id = id.from("com.amazonaws.backup", "PutRestoreValidationResult"),
   input = M.PutRestoreValidationResultInput,
   output = M.PutRestoreValidationResultOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/restore-jobs/{RestoreJobId}/validations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RevokeRestoreAccessBackupVault = schema.operation({
   id = id.from("com.amazonaws.backup", "RevokeRestoreAccessBackupVault"),
   input = M.RevokeRestoreAccessBackupVaultInput,
   output = M.RevokeRestoreAccessBackupVaultOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/logically-air-gapped-backup-vaults/{BackupVaultName}/restore-access-backup-vaults/{RestoreAccessBackupVaultArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartBackupJob = schema.operation({
   id = id.from("com.amazonaws.backup", "StartBackupJob"),
   input = M.StartBackupJobInput,
   output = M.StartBackupJobOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/backup-jobs" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartCopyJob = schema.operation({
   id = id.from("com.amazonaws.backup", "StartCopyJob"),
   input = M.StartCopyJobInput,
   output = M.StartCopyJobOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/copy-jobs" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartReportJob = schema.operation({
   id = id.from("com.amazonaws.backup", "StartReportJob"),
   input = M.StartReportJobInput,
   output = M.StartReportJobOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/audit/report-jobs/{ReportPlanName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartRestoreJob = schema.operation({
   id = id.from("com.amazonaws.backup", "StartRestoreJob"),
   input = M.StartRestoreJobInput,
   output = M.StartRestoreJobOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/restore-jobs" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartScanJob = schema.operation({
   id = id.from("com.amazonaws.backup", "StartScanJob"),
   input = M.StartScanJobInput,
   output = M.StartScanJobOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/scan/job" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopBackupJob = schema.operation({
   id = id.from("com.amazonaws.backup", "StopBackupJob"),
   input = M.StopBackupJobInput,
   output = M.StopBackupJobOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backup-jobs/{BackupJobId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.backup", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/tags/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.backup", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/untag/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateBackupPlan = schema.operation({
   id = id.from("com.amazonaws.backup", "UpdateBackupPlan"),
   input = M.UpdateBackupPlanInput,
   output = M.UpdateBackupPlanOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backup/plans/{BackupPlanId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateFramework = schema.operation({
   id = id.from("com.amazonaws.backup", "UpdateFramework"),
   input = M.UpdateFrameworkInput,
   output = M.UpdateFrameworkOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/audit/frameworks/{FrameworkName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateGlobalSettings = schema.operation({
   id = id.from("com.amazonaws.backup", "UpdateGlobalSettings"),
   input = M.UpdateGlobalSettingsInput,
   output = M.UpdateGlobalSettingsOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/global-settings" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateRecoveryPointIndexSettings = schema.operation({
   id = id.from("com.amazonaws.backup", "UpdateRecoveryPointIndexSettings"),
   input = M.UpdateRecoveryPointIndexSettingsInput,
   output = M.UpdateRecoveryPointIndexSettingsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/index" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateRecoveryPointLifecycle = schema.operation({
   id = id.from("com.amazonaws.backup", "UpdateRecoveryPointLifecycle"),
   input = M.UpdateRecoveryPointLifecycleInput,
   output = M.UpdateRecoveryPointLifecycleOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateRegionSettings = schema.operation({
   id = id.from("com.amazonaws.backup", "UpdateRegionSettings"),
   input = M.UpdateRegionSettingsInput,
   output = M.UpdateRegionSettingsOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/account-settings" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateReportPlan = schema.operation({
   id = id.from("com.amazonaws.backup", "UpdateReportPlan"),
   input = M.UpdateReportPlanInput,
   output = M.UpdateReportPlanOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/audit/report-plans/{ReportPlanName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateRestoreTestingPlan = schema.operation({
   id = id.from("com.amazonaws.backup", "UpdateRestoreTestingPlan"),
   input = M.UpdateRestoreTestingPlanInput,
   output = M.UpdateRestoreTestingPlanOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/restore-testing/plans/{RestoreTestingPlanName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateRestoreTestingSelection = schema.operation({
   id = id.from("com.amazonaws.backup", "UpdateRestoreTestingSelection"),
   input = M.UpdateRestoreTestingSelectionInput,
   output = M.UpdateRestoreTestingSelectionOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/restore-testing/plans/{RestoreTestingPlanName}/selections/{RestoreTestingSelectionName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateTieringConfiguration = schema.operation({
   id = id.from("com.amazonaws.backup", "UpdateTieringConfiguration"),
   input = M.UpdateTieringConfigurationInput,
   output = M.UpdateTieringConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/tiering-configurations/{TieringConfigurationName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
