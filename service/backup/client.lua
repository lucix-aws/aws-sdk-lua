local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("backup.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("backup.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "CryoControllerUserManager"
    cfg.signing_name = "backup"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:associateBackupVaultMpaApprovalTeam(input, options)
    return self:invokeOperation(input, {
        name = "AssociateBackupVaultMpaApprovalTeam",
        input_schema = types.AssociateBackupVaultMpaApprovalTeamInput,
        output_schema = types.AssociateBackupVaultMpaApprovalTeamOutput,
        http_method = "PUT",
        http_path = "/backup-vaults/{BackupVaultName}/mpaApprovalTeam",
    }, options)
end

function Client:cancelLegalHold(input, options)
    return self:invokeOperation(input, {
        name = "CancelLegalHold",
        input_schema = types.CancelLegalHoldInput,
        output_schema = types.CancelLegalHoldOutput,
        http_method = "DELETE",
        http_path = "/legal-holds/{LegalHoldId}",
    }, options)
end

function Client:createBackupPlan(input, options)
    return self:invokeOperation(input, {
        name = "CreateBackupPlan",
        input_schema = types.CreateBackupPlanInput,
        output_schema = types.CreateBackupPlanOutput,
        http_method = "PUT",
        http_path = "/backup/plans",
    }, options)
end

function Client:createBackupSelection(input, options)
    return self:invokeOperation(input, {
        name = "CreateBackupSelection",
        input_schema = types.CreateBackupSelectionInput,
        output_schema = types.CreateBackupSelectionOutput,
        http_method = "PUT",
        http_path = "/backup/plans/{BackupPlanId}/selections",
    }, options)
end

function Client:createBackupVault(input, options)
    return self:invokeOperation(input, {
        name = "CreateBackupVault",
        input_schema = types.CreateBackupVaultInput,
        output_schema = types.CreateBackupVaultOutput,
        http_method = "PUT",
        http_path = "/backup-vaults/{BackupVaultName}",
    }, options)
end

function Client:createFramework(input, options)
    return self:invokeOperation(input, {
        name = "CreateFramework",
        input_schema = types.CreateFrameworkInput,
        output_schema = types.CreateFrameworkOutput,
        http_method = "POST",
        http_path = "/audit/frameworks",
    }, options)
end

function Client:createLegalHold(input, options)
    return self:invokeOperation(input, {
        name = "CreateLegalHold",
        input_schema = types.CreateLegalHoldInput,
        output_schema = types.CreateLegalHoldOutput,
        http_method = "POST",
        http_path = "/legal-holds",
    }, options)
end

function Client:createLogicallyAirGappedBackupVault(input, options)
    return self:invokeOperation(input, {
        name = "CreateLogicallyAirGappedBackupVault",
        input_schema = types.CreateLogicallyAirGappedBackupVaultInput,
        output_schema = types.CreateLogicallyAirGappedBackupVaultOutput,
        http_method = "PUT",
        http_path = "/logically-air-gapped-backup-vaults/{BackupVaultName}",
    }, options)
end

function Client:createReportPlan(input, options)
    return self:invokeOperation(input, {
        name = "CreateReportPlan",
        input_schema = types.CreateReportPlanInput,
        output_schema = types.CreateReportPlanOutput,
        http_method = "POST",
        http_path = "/audit/report-plans",
    }, options)
end

function Client:createRestoreAccessBackupVault(input, options)
    return self:invokeOperation(input, {
        name = "CreateRestoreAccessBackupVault",
        input_schema = types.CreateRestoreAccessBackupVaultInput,
        output_schema = types.CreateRestoreAccessBackupVaultOutput,
        http_method = "PUT",
        http_path = "/restore-access-backup-vaults",
    }, options)
end

function Client:createRestoreTestingPlan(input, options)
    return self:invokeOperation(input, {
        name = "CreateRestoreTestingPlan",
        input_schema = types.CreateRestoreTestingPlanInput,
        output_schema = types.CreateRestoreTestingPlanOutput,
        http_method = "PUT",
        http_path = "/restore-testing/plans",
    }, options)
end

function Client:createRestoreTestingSelection(input, options)
    return self:invokeOperation(input, {
        name = "CreateRestoreTestingSelection",
        input_schema = types.CreateRestoreTestingSelectionInput,
        output_schema = types.CreateRestoreTestingSelectionOutput,
        http_method = "PUT",
        http_path = "/restore-testing/plans/{RestoreTestingPlanName}/selections",
    }, options)
end

function Client:createTieringConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateTieringConfiguration",
        input_schema = types.CreateTieringConfigurationInput,
        output_schema = types.CreateTieringConfigurationOutput,
        http_method = "PUT",
        http_path = "/tiering-configurations",
    }, options)
end

function Client:deleteBackupPlan(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBackupPlan",
        input_schema = types.DeleteBackupPlanInput,
        output_schema = types.DeleteBackupPlanOutput,
        http_method = "DELETE",
        http_path = "/backup/plans/{BackupPlanId}",
    }, options)
end

function Client:deleteBackupSelection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBackupSelection",
        input_schema = types.DeleteBackupSelectionInput,
        output_schema = types.DeleteBackupSelectionOutput,
        http_method = "DELETE",
        http_path = "/backup/plans/{BackupPlanId}/selections/{SelectionId}",
    }, options)
end

function Client:deleteBackupVault(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBackupVault",
        input_schema = types.DeleteBackupVaultInput,
        output_schema = types.DeleteBackupVaultOutput,
        http_method = "DELETE",
        http_path = "/backup-vaults/{BackupVaultName}",
    }, options)
end

function Client:deleteBackupVaultAccessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBackupVaultAccessPolicy",
        input_schema = types.DeleteBackupVaultAccessPolicyInput,
        output_schema = types.DeleteBackupVaultAccessPolicyOutput,
        http_method = "DELETE",
        http_path = "/backup-vaults/{BackupVaultName}/access-policy",
    }, options)
end

function Client:deleteBackupVaultLockConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBackupVaultLockConfiguration",
        input_schema = types.DeleteBackupVaultLockConfigurationInput,
        output_schema = types.DeleteBackupVaultLockConfigurationOutput,
        http_method = "DELETE",
        http_path = "/backup-vaults/{BackupVaultName}/vault-lock",
    }, options)
end

function Client:deleteBackupVaultNotifications(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBackupVaultNotifications",
        input_schema = types.DeleteBackupVaultNotificationsInput,
        output_schema = types.DeleteBackupVaultNotificationsOutput,
        http_method = "DELETE",
        http_path = "/backup-vaults/{BackupVaultName}/notification-configuration",
    }, options)
end

function Client:deleteFramework(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFramework",
        input_schema = types.DeleteFrameworkInput,
        output_schema = types.DeleteFrameworkOutput,
        http_method = "DELETE",
        http_path = "/audit/frameworks/{FrameworkName}",
    }, options)
end

function Client:deleteRecoveryPoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRecoveryPoint",
        input_schema = types.DeleteRecoveryPointInput,
        output_schema = types.DeleteRecoveryPointOutput,
        http_method = "DELETE",
        http_path = "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}",
    }, options)
end

function Client:deleteReportPlan(input, options)
    return self:invokeOperation(input, {
        name = "DeleteReportPlan",
        input_schema = types.DeleteReportPlanInput,
        output_schema = types.DeleteReportPlanOutput,
        http_method = "DELETE",
        http_path = "/audit/report-plans/{ReportPlanName}",
    }, options)
end

function Client:deleteRestoreTestingPlan(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRestoreTestingPlan",
        input_schema = types.DeleteRestoreTestingPlanInput,
        output_schema = types.DeleteRestoreTestingPlanOutput,
        http_method = "DELETE",
        http_path = "/restore-testing/plans/{RestoreTestingPlanName}",
    }, options)
end

function Client:deleteRestoreTestingSelection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRestoreTestingSelection",
        input_schema = types.DeleteRestoreTestingSelectionInput,
        output_schema = types.DeleteRestoreTestingSelectionOutput,
        http_method = "DELETE",
        http_path = "/restore-testing/plans/{RestoreTestingPlanName}/selections/{RestoreTestingSelectionName}",
    }, options)
end

function Client:deleteTieringConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTieringConfiguration",
        input_schema = types.DeleteTieringConfigurationInput,
        output_schema = types.DeleteTieringConfigurationOutput,
        http_method = "DELETE",
        http_path = "/tiering-configurations/{TieringConfigurationName}",
    }, options)
end

function Client:describeBackupJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBackupJob",
        input_schema = types.DescribeBackupJobInput,
        output_schema = types.DescribeBackupJobOutput,
        http_method = "GET",
        http_path = "/backup-jobs/{BackupJobId}",
    }, options)
end

function Client:describeBackupVault(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBackupVault",
        input_schema = types.DescribeBackupVaultInput,
        output_schema = types.DescribeBackupVaultOutput,
        http_method = "GET",
        http_path = "/backup-vaults/{BackupVaultName}",
    }, options)
end

function Client:describeCopyJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCopyJob",
        input_schema = types.DescribeCopyJobInput,
        output_schema = types.DescribeCopyJobOutput,
        http_method = "GET",
        http_path = "/copy-jobs/{CopyJobId}",
    }, options)
end

function Client:describeFramework(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFramework",
        input_schema = types.DescribeFrameworkInput,
        output_schema = types.DescribeFrameworkOutput,
        http_method = "GET",
        http_path = "/audit/frameworks/{FrameworkName}",
    }, options)
end

function Client:describeGlobalSettings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGlobalSettings",
        input_schema = types.DescribeGlobalSettingsInput,
        output_schema = types.DescribeGlobalSettingsOutput,
        http_method = "GET",
        http_path = "/global-settings",
    }, options)
end

function Client:describeProtectedResource(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProtectedResource",
        input_schema = types.DescribeProtectedResourceInput,
        output_schema = types.DescribeProtectedResourceOutput,
        http_method = "GET",
        http_path = "/resources/{ResourceArn}",
    }, options)
end

function Client:describeRecoveryPoint(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRecoveryPoint",
        input_schema = types.DescribeRecoveryPointInput,
        output_schema = types.DescribeRecoveryPointOutput,
        http_method = "GET",
        http_path = "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}",
    }, options)
end

function Client:describeRegionSettings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRegionSettings",
        input_schema = types.DescribeRegionSettingsInput,
        output_schema = types.DescribeRegionSettingsOutput,
        http_method = "GET",
        http_path = "/account-settings",
    }, options)
end

function Client:describeReportJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReportJob",
        input_schema = types.DescribeReportJobInput,
        output_schema = types.DescribeReportJobOutput,
        http_method = "GET",
        http_path = "/audit/report-jobs/{ReportJobId}",
    }, options)
end

function Client:describeReportPlan(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReportPlan",
        input_schema = types.DescribeReportPlanInput,
        output_schema = types.DescribeReportPlanOutput,
        http_method = "GET",
        http_path = "/audit/report-plans/{ReportPlanName}",
    }, options)
end

function Client:describeRestoreJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRestoreJob",
        input_schema = types.DescribeRestoreJobInput,
        output_schema = types.DescribeRestoreJobOutput,
        http_method = "GET",
        http_path = "/restore-jobs/{RestoreJobId}",
    }, options)
end

function Client:describeScanJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScanJob",
        input_schema = types.DescribeScanJobInput,
        output_schema = types.DescribeScanJobOutput,
        http_method = "GET",
        http_path = "/scan/jobs/{ScanJobId}",
    }, options)
end

function Client:disassociateBackupVaultMpaApprovalTeam(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateBackupVaultMpaApprovalTeam",
        input_schema = types.DisassociateBackupVaultMpaApprovalTeamInput,
        output_schema = types.DisassociateBackupVaultMpaApprovalTeamOutput,
        http_method = "POST",
        http_path = "/backup-vaults/{BackupVaultName}/mpaApprovalTeam?delete",
    }, options)
end

function Client:disassociateRecoveryPoint(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateRecoveryPoint",
        input_schema = types.DisassociateRecoveryPointInput,
        output_schema = types.DisassociateRecoveryPointOutput,
        http_method = "POST",
        http_path = "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/disassociate",
    }, options)
end

function Client:disassociateRecoveryPointFromParent(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateRecoveryPointFromParent",
        input_schema = types.DisassociateRecoveryPointFromParentInput,
        output_schema = types.DisassociateRecoveryPointFromParentOutput,
        http_method = "DELETE",
        http_path = "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/parentAssociation",
    }, options)
end

function Client:exportBackupPlanTemplate(input, options)
    return self:invokeOperation(input, {
        name = "ExportBackupPlanTemplate",
        input_schema = types.ExportBackupPlanTemplateInput,
        output_schema = types.ExportBackupPlanTemplateOutput,
        http_method = "GET",
        http_path = "/backup/plans/{BackupPlanId}/toTemplate",
    }, options)
end

function Client:getBackupPlan(input, options)
    return self:invokeOperation(input, {
        name = "GetBackupPlan",
        input_schema = types.GetBackupPlanInput,
        output_schema = types.GetBackupPlanOutput,
        http_method = "GET",
        http_path = "/backup/plans/{BackupPlanId}",
    }, options)
end

function Client:getBackupPlanFromJSON(input, options)
    return self:invokeOperation(input, {
        name = "GetBackupPlanFromJSON",
        input_schema = types.GetBackupPlanFromJSONInput,
        output_schema = types.GetBackupPlanFromJSONOutput,
        http_method = "POST",
        http_path = "/backup/template/json/toPlan",
    }, options)
end

function Client:getBackupPlanFromTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetBackupPlanFromTemplate",
        input_schema = types.GetBackupPlanFromTemplateInput,
        output_schema = types.GetBackupPlanFromTemplateOutput,
        http_method = "GET",
        http_path = "/backup/template/plans/{BackupPlanTemplateId}/toPlan",
    }, options)
end

function Client:getBackupSelection(input, options)
    return self:invokeOperation(input, {
        name = "GetBackupSelection",
        input_schema = types.GetBackupSelectionInput,
        output_schema = types.GetBackupSelectionOutput,
        http_method = "GET",
        http_path = "/backup/plans/{BackupPlanId}/selections/{SelectionId}",
    }, options)
end

function Client:getBackupVaultAccessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetBackupVaultAccessPolicy",
        input_schema = types.GetBackupVaultAccessPolicyInput,
        output_schema = types.GetBackupVaultAccessPolicyOutput,
        http_method = "GET",
        http_path = "/backup-vaults/{BackupVaultName}/access-policy",
    }, options)
end

function Client:getBackupVaultNotifications(input, options)
    return self:invokeOperation(input, {
        name = "GetBackupVaultNotifications",
        input_schema = types.GetBackupVaultNotificationsInput,
        output_schema = types.GetBackupVaultNotificationsOutput,
        http_method = "GET",
        http_path = "/backup-vaults/{BackupVaultName}/notification-configuration",
    }, options)
end

function Client:getLegalHold(input, options)
    return self:invokeOperation(input, {
        name = "GetLegalHold",
        input_schema = types.GetLegalHoldInput,
        output_schema = types.GetLegalHoldOutput,
        http_method = "GET",
        http_path = "/legal-holds/{LegalHoldId}",
    }, options)
end

function Client:getRecoveryPointIndexDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetRecoveryPointIndexDetails",
        input_schema = types.GetRecoveryPointIndexDetailsInput,
        output_schema = types.GetRecoveryPointIndexDetailsOutput,
        http_method = "GET",
        http_path = "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/index",
    }, options)
end

function Client:getRecoveryPointRestoreMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetRecoveryPointRestoreMetadata",
        input_schema = types.GetRecoveryPointRestoreMetadataInput,
        output_schema = types.GetRecoveryPointRestoreMetadataOutput,
        http_method = "GET",
        http_path = "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/restore-metadata",
    }, options)
end

function Client:getRestoreJobMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetRestoreJobMetadata",
        input_schema = types.GetRestoreJobMetadataInput,
        output_schema = types.GetRestoreJobMetadataOutput,
        http_method = "GET",
        http_path = "/restore-jobs/{RestoreJobId}/metadata",
    }, options)
end

function Client:getRestoreTestingInferredMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetRestoreTestingInferredMetadata",
        input_schema = types.GetRestoreTestingInferredMetadataInput,
        output_schema = types.GetRestoreTestingInferredMetadataOutput,
        http_method = "GET",
        http_path = "/restore-testing/inferred-metadata",
    }, options)
end

function Client:getRestoreTestingPlan(input, options)
    return self:invokeOperation(input, {
        name = "GetRestoreTestingPlan",
        input_schema = types.GetRestoreTestingPlanInput,
        output_schema = types.GetRestoreTestingPlanOutput,
        http_method = "GET",
        http_path = "/restore-testing/plans/{RestoreTestingPlanName}",
    }, options)
end

function Client:getRestoreTestingSelection(input, options)
    return self:invokeOperation(input, {
        name = "GetRestoreTestingSelection",
        input_schema = types.GetRestoreTestingSelectionInput,
        output_schema = types.GetRestoreTestingSelectionOutput,
        http_method = "GET",
        http_path = "/restore-testing/plans/{RestoreTestingPlanName}/selections/{RestoreTestingSelectionName}",
    }, options)
end

function Client:getSupportedResourceTypes(input, options)
    return self:invokeOperation(input, {
        name = "GetSupportedResourceTypes",
        input_schema = types.GetSupportedResourceTypesInput,
        output_schema = types.GetSupportedResourceTypesOutput,
        http_method = "GET",
        http_path = "/supported-resource-types",
    }, options)
end

function Client:getTieringConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetTieringConfiguration",
        input_schema = types.GetTieringConfigurationInput,
        output_schema = types.GetTieringConfigurationOutput,
        http_method = "GET",
        http_path = "/tiering-configurations/{TieringConfigurationName}",
    }, options)
end

function Client:listBackupJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListBackupJobs",
        input_schema = types.ListBackupJobsInput,
        output_schema = types.ListBackupJobsOutput,
        http_method = "GET",
        http_path = "/backup-jobs",
    }, options)
end

function Client:listBackupJobSummaries(input, options)
    return self:invokeOperation(input, {
        name = "ListBackupJobSummaries",
        input_schema = types.ListBackupJobSummariesInput,
        output_schema = types.ListBackupJobSummariesOutput,
        http_method = "GET",
        http_path = "/audit/backup-job-summaries",
    }, options)
end

function Client:listBackupPlans(input, options)
    return self:invokeOperation(input, {
        name = "ListBackupPlans",
        input_schema = types.ListBackupPlansInput,
        output_schema = types.ListBackupPlansOutput,
        http_method = "GET",
        http_path = "/backup/plans",
    }, options)
end

function Client:listBackupPlanTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListBackupPlanTemplates",
        input_schema = types.ListBackupPlanTemplatesInput,
        output_schema = types.ListBackupPlanTemplatesOutput,
        http_method = "GET",
        http_path = "/backup/template/plans",
    }, options)
end

function Client:listBackupPlanVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListBackupPlanVersions",
        input_schema = types.ListBackupPlanVersionsInput,
        output_schema = types.ListBackupPlanVersionsOutput,
        http_method = "GET",
        http_path = "/backup/plans/{BackupPlanId}/versions",
    }, options)
end

function Client:listBackupSelections(input, options)
    return self:invokeOperation(input, {
        name = "ListBackupSelections",
        input_schema = types.ListBackupSelectionsInput,
        output_schema = types.ListBackupSelectionsOutput,
        http_method = "GET",
        http_path = "/backup/plans/{BackupPlanId}/selections",
    }, options)
end

function Client:listBackupVaults(input, options)
    return self:invokeOperation(input, {
        name = "ListBackupVaults",
        input_schema = types.ListBackupVaultsInput,
        output_schema = types.ListBackupVaultsOutput,
        http_method = "GET",
        http_path = "/backup-vaults",
    }, options)
end

function Client:listCopyJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListCopyJobs",
        input_schema = types.ListCopyJobsInput,
        output_schema = types.ListCopyJobsOutput,
        http_method = "GET",
        http_path = "/copy-jobs",
    }, options)
end

function Client:listCopyJobSummaries(input, options)
    return self:invokeOperation(input, {
        name = "ListCopyJobSummaries",
        input_schema = types.ListCopyJobSummariesInput,
        output_schema = types.ListCopyJobSummariesOutput,
        http_method = "GET",
        http_path = "/audit/copy-job-summaries",
    }, options)
end

function Client:listFrameworks(input, options)
    return self:invokeOperation(input, {
        name = "ListFrameworks",
        input_schema = types.ListFrameworksInput,
        output_schema = types.ListFrameworksOutput,
        http_method = "GET",
        http_path = "/audit/frameworks",
    }, options)
end

function Client:listIndexedRecoveryPoints(input, options)
    return self:invokeOperation(input, {
        name = "ListIndexedRecoveryPoints",
        input_schema = types.ListIndexedRecoveryPointsInput,
        output_schema = types.ListIndexedRecoveryPointsOutput,
        http_method = "GET",
        http_path = "/indexes/recovery-point",
    }, options)
end

function Client:listLegalHolds(input, options)
    return self:invokeOperation(input, {
        name = "ListLegalHolds",
        input_schema = types.ListLegalHoldsInput,
        output_schema = types.ListLegalHoldsOutput,
        http_method = "GET",
        http_path = "/legal-holds",
    }, options)
end

function Client:listProtectedResources(input, options)
    return self:invokeOperation(input, {
        name = "ListProtectedResources",
        input_schema = types.ListProtectedResourcesInput,
        output_schema = types.ListProtectedResourcesOutput,
        http_method = "GET",
        http_path = "/resources",
    }, options)
end

function Client:listProtectedResourcesByBackupVault(input, options)
    return self:invokeOperation(input, {
        name = "ListProtectedResourcesByBackupVault",
        input_schema = types.ListProtectedResourcesByBackupVaultInput,
        output_schema = types.ListProtectedResourcesByBackupVaultOutput,
        http_method = "GET",
        http_path = "/backup-vaults/{BackupVaultName}/resources",
    }, options)
end

function Client:listRecoveryPointsByBackupVault(input, options)
    return self:invokeOperation(input, {
        name = "ListRecoveryPointsByBackupVault",
        input_schema = types.ListRecoveryPointsByBackupVaultInput,
        output_schema = types.ListRecoveryPointsByBackupVaultOutput,
        http_method = "GET",
        http_path = "/backup-vaults/{BackupVaultName}/recovery-points",
    }, options)
end

function Client:listRecoveryPointsByLegalHold(input, options)
    return self:invokeOperation(input, {
        name = "ListRecoveryPointsByLegalHold",
        input_schema = types.ListRecoveryPointsByLegalHoldInput,
        output_schema = types.ListRecoveryPointsByLegalHoldOutput,
        http_method = "GET",
        http_path = "/legal-holds/{LegalHoldId}/recovery-points",
    }, options)
end

function Client:listRecoveryPointsByResource(input, options)
    return self:invokeOperation(input, {
        name = "ListRecoveryPointsByResource",
        input_schema = types.ListRecoveryPointsByResourceInput,
        output_schema = types.ListRecoveryPointsByResourceOutput,
        http_method = "GET",
        http_path = "/resources/{ResourceArn}/recovery-points",
    }, options)
end

function Client:listReportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListReportJobs",
        input_schema = types.ListReportJobsInput,
        output_schema = types.ListReportJobsOutput,
        http_method = "GET",
        http_path = "/audit/report-jobs",
    }, options)
end

function Client:listReportPlans(input, options)
    return self:invokeOperation(input, {
        name = "ListReportPlans",
        input_schema = types.ListReportPlansInput,
        output_schema = types.ListReportPlansOutput,
        http_method = "GET",
        http_path = "/audit/report-plans",
    }, options)
end

function Client:listRestoreAccessBackupVaults(input, options)
    return self:invokeOperation(input, {
        name = "ListRestoreAccessBackupVaults",
        input_schema = types.ListRestoreAccessBackupVaultsInput,
        output_schema = types.ListRestoreAccessBackupVaultsOutput,
        http_method = "GET",
        http_path = "/logically-air-gapped-backup-vaults/{BackupVaultName}/restore-access-backup-vaults",
    }, options)
end

function Client:listRestoreJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListRestoreJobs",
        input_schema = types.ListRestoreJobsInput,
        output_schema = types.ListRestoreJobsOutput,
        http_method = "GET",
        http_path = "/restore-jobs",
    }, options)
end

function Client:listRestoreJobsByProtectedResource(input, options)
    return self:invokeOperation(input, {
        name = "ListRestoreJobsByProtectedResource",
        input_schema = types.ListRestoreJobsByProtectedResourceInput,
        output_schema = types.ListRestoreJobsByProtectedResourceOutput,
        http_method = "GET",
        http_path = "/resources/{ResourceArn}/restore-jobs",
    }, options)
end

function Client:listRestoreJobSummaries(input, options)
    return self:invokeOperation(input, {
        name = "ListRestoreJobSummaries",
        input_schema = types.ListRestoreJobSummariesInput,
        output_schema = types.ListRestoreJobSummariesOutput,
        http_method = "GET",
        http_path = "/audit/restore-job-summaries",
    }, options)
end

function Client:listRestoreTestingPlans(input, options)
    return self:invokeOperation(input, {
        name = "ListRestoreTestingPlans",
        input_schema = types.ListRestoreTestingPlansInput,
        output_schema = types.ListRestoreTestingPlansOutput,
        http_method = "GET",
        http_path = "/restore-testing/plans",
    }, options)
end

function Client:listRestoreTestingSelections(input, options)
    return self:invokeOperation(input, {
        name = "ListRestoreTestingSelections",
        input_schema = types.ListRestoreTestingSelectionsInput,
        output_schema = types.ListRestoreTestingSelectionsOutput,
        http_method = "GET",
        http_path = "/restore-testing/plans/{RestoreTestingPlanName}/selections",
    }, options)
end

function Client:listScanJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListScanJobs",
        input_schema = types.ListScanJobsInput,
        output_schema = types.ListScanJobsOutput,
        http_method = "GET",
        http_path = "/scan/jobs",
    }, options)
end

function Client:listScanJobSummaries(input, options)
    return self:invokeOperation(input, {
        name = "ListScanJobSummaries",
        input_schema = types.ListScanJobSummariesInput,
        output_schema = types.ListScanJobSummariesOutput,
        http_method = "GET",
        http_path = "/audit/scan-job-summaries",
    }, options)
end

function Client:listTags(input, options)
    return self:invokeOperation(input, {
        name = "ListTags",
        input_schema = types.ListTagsInput,
        output_schema = types.ListTagsOutput,
        http_method = "GET",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:listTieringConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListTieringConfigurations",
        input_schema = types.ListTieringConfigurationsInput,
        output_schema = types.ListTieringConfigurationsOutput,
        http_method = "GET",
        http_path = "/tiering-configurations",
    }, options)
end

function Client:putBackupVaultAccessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutBackupVaultAccessPolicy",
        input_schema = types.PutBackupVaultAccessPolicyInput,
        output_schema = types.PutBackupVaultAccessPolicyOutput,
        http_method = "PUT",
        http_path = "/backup-vaults/{BackupVaultName}/access-policy",
    }, options)
end

function Client:putBackupVaultLockConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutBackupVaultLockConfiguration",
        input_schema = types.PutBackupVaultLockConfigurationInput,
        output_schema = types.PutBackupVaultLockConfigurationOutput,
        http_method = "PUT",
        http_path = "/backup-vaults/{BackupVaultName}/vault-lock",
    }, options)
end

function Client:putBackupVaultNotifications(input, options)
    return self:invokeOperation(input, {
        name = "PutBackupVaultNotifications",
        input_schema = types.PutBackupVaultNotificationsInput,
        output_schema = types.PutBackupVaultNotificationsOutput,
        http_method = "PUT",
        http_path = "/backup-vaults/{BackupVaultName}/notification-configuration",
    }, options)
end

function Client:putRestoreValidationResult(input, options)
    return self:invokeOperation(input, {
        name = "PutRestoreValidationResult",
        input_schema = types.PutRestoreValidationResultInput,
        output_schema = types.PutRestoreValidationResultOutput,
        http_method = "PUT",
        http_path = "/restore-jobs/{RestoreJobId}/validations",
    }, options)
end

function Client:revokeRestoreAccessBackupVault(input, options)
    return self:invokeOperation(input, {
        name = "RevokeRestoreAccessBackupVault",
        input_schema = types.RevokeRestoreAccessBackupVaultInput,
        output_schema = types.RevokeRestoreAccessBackupVaultOutput,
        http_method = "DELETE",
        http_path = "/logically-air-gapped-backup-vaults/{BackupVaultName}/restore-access-backup-vaults/{RestoreAccessBackupVaultArn}",
    }, options)
end

function Client:startBackupJob(input, options)
    return self:invokeOperation(input, {
        name = "StartBackupJob",
        input_schema = types.StartBackupJobInput,
        output_schema = types.StartBackupJobOutput,
        http_method = "PUT",
        http_path = "/backup-jobs",
    }, options)
end

function Client:startCopyJob(input, options)
    return self:invokeOperation(input, {
        name = "StartCopyJob",
        input_schema = types.StartCopyJobInput,
        output_schema = types.StartCopyJobOutput,
        http_method = "PUT",
        http_path = "/copy-jobs",
    }, options)
end

function Client:startReportJob(input, options)
    return self:invokeOperation(input, {
        name = "StartReportJob",
        input_schema = types.StartReportJobInput,
        output_schema = types.StartReportJobOutput,
        http_method = "POST",
        http_path = "/audit/report-jobs/{ReportPlanName}",
    }, options)
end

function Client:startRestoreJob(input, options)
    return self:invokeOperation(input, {
        name = "StartRestoreJob",
        input_schema = types.StartRestoreJobInput,
        output_schema = types.StartRestoreJobOutput,
        http_method = "PUT",
        http_path = "/restore-jobs",
    }, options)
end

function Client:startScanJob(input, options)
    return self:invokeOperation(input, {
        name = "StartScanJob",
        input_schema = types.StartScanJobInput,
        output_schema = types.StartScanJobOutput,
        http_method = "PUT",
        http_path = "/scan/job",
    }, options)
end

function Client:stopBackupJob(input, options)
    return self:invokeOperation(input, {
        name = "StopBackupJob",
        input_schema = types.StopBackupJobInput,
        output_schema = types.StopBackupJobOutput,
        http_method = "POST",
        http_path = "/backup-jobs/{BackupJobId}",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/untag/{ResourceArn}",
    }, options)
end

function Client:updateBackupPlan(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBackupPlan",
        input_schema = types.UpdateBackupPlanInput,
        output_schema = types.UpdateBackupPlanOutput,
        http_method = "POST",
        http_path = "/backup/plans/{BackupPlanId}",
    }, options)
end

function Client:updateFramework(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFramework",
        input_schema = types.UpdateFrameworkInput,
        output_schema = types.UpdateFrameworkOutput,
        http_method = "PUT",
        http_path = "/audit/frameworks/{FrameworkName}",
    }, options)
end

function Client:updateGlobalSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGlobalSettings",
        input_schema = types.UpdateGlobalSettingsInput,
        output_schema = types.UpdateGlobalSettingsOutput,
        http_method = "PUT",
        http_path = "/global-settings",
    }, options)
end

function Client:updateRecoveryPointIndexSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRecoveryPointIndexSettings",
        input_schema = types.UpdateRecoveryPointIndexSettingsInput,
        output_schema = types.UpdateRecoveryPointIndexSettingsOutput,
        http_method = "POST",
        http_path = "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/index",
    }, options)
end

function Client:updateRecoveryPointLifecycle(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRecoveryPointLifecycle",
        input_schema = types.UpdateRecoveryPointLifecycleInput,
        output_schema = types.UpdateRecoveryPointLifecycleOutput,
        http_method = "POST",
        http_path = "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}",
    }, options)
end

function Client:updateRegionSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRegionSettings",
        input_schema = types.UpdateRegionSettingsInput,
        output_schema = types.UpdateRegionSettingsOutput,
        http_method = "PUT",
        http_path = "/account-settings",
    }, options)
end

function Client:updateReportPlan(input, options)
    return self:invokeOperation(input, {
        name = "UpdateReportPlan",
        input_schema = types.UpdateReportPlanInput,
        output_schema = types.UpdateReportPlanOutput,
        http_method = "PUT",
        http_path = "/audit/report-plans/{ReportPlanName}",
    }, options)
end

function Client:updateRestoreTestingPlan(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRestoreTestingPlan",
        input_schema = types.UpdateRestoreTestingPlanInput,
        output_schema = types.UpdateRestoreTestingPlanOutput,
        http_method = "PUT",
        http_path = "/restore-testing/plans/{RestoreTestingPlanName}",
    }, options)
end

function Client:updateRestoreTestingSelection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRestoreTestingSelection",
        input_schema = types.UpdateRestoreTestingSelectionInput,
        output_schema = types.UpdateRestoreTestingSelectionOutput,
        http_method = "PUT",
        http_path = "/restore-testing/plans/{RestoreTestingPlanName}/selections/{RestoreTestingSelectionName}",
    }, options)
end

function Client:updateTieringConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTieringConfiguration",
        input_schema = types.UpdateTieringConfigurationInput,
        output_schema = types.UpdateTieringConfigurationOutput,
        http_method = "PUT",
        http_path = "/tiering-configurations/{TieringConfigurationName}",
    }, options)
end

return M
